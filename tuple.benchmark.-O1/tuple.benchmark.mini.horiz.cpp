#if !defined(TUPLE_SIZE)
  //This only used when not running several benchmarks where
  //macro values are set on command line with -DMACRO=VALUE.
  //See tuple.benchmark.mini.horiz.mk.
  #define TUPLE_SIZE 4
    //^size of the tuple used.
    //Also, the number of at_test calls in test_row<I,J>::exec.
  #define LAST_LESS TUPLE_SIZE
    //^determines number of instantiations of test_col and test_row.
  #define TRACE_BENCHMARK
  #define TRACE_MAIN
  #define SLIM_IMPL
#endif
  //#define VERT_AMORT
    //Purpose:
    //  Account for the amortized cost of
    //  amortized::make_indexes
  //Use something less than TUPLE_SIZE as LAST_LESS
  //if compile times become too large.
#define LAST_RC ((LAST_LESS>TUPLE_SIZE)?TUPLE_SIZE:LAST_LESS)
#define LAST_ROW LAST_RC
#define LAST_COL LAST_RC
    //test_row<I,J>::exec for I=0...LAST_ROW-1, for J=0...LAST_COL-1
    //is called.
namespace amortized
{
  template<int Max,int... Indices>
  struct make_indexes:
  	make_indexes<Max-1,Max-1,Indices...>
  /**@brief
   *  Starting from:
   *    max_indexes<5>
   *  this produces:
   *    max_indexes<5>
   *      : max_indexes<4,4>
   *        : max_indexes<3,3,4>
   *          : max_indexes<2,2,3,4>
   *            : max_indexes<1,1,2,3,4>
   *              : max_indexes<0,0,1,2,3,4>
   *                //using the specialization below
   *              {
   *                  typedef int_indexes<0,1,2,3,4> type;
   *              };
   */        
  {};
  template<int...>
  struct int_indexes
  {};
  template<int... Indices>
  struct make_indexes<0,Indices...>
  {
  	typedef int_indexes<Indices...> type;
  };
  
}

template<int Index>
struct int_key //key's (or indices) to values stored in tuple.
{
};

  template<typename Key, typename Value>
  struct element
  ;
  template<int Key, typename Value>
  struct element<int_key<Key>,Value>
  {
      Value value;
  };
  template<typename Keys, typename... Args>
  struct tuple_impl
  ;
  template<int... Indices, typename... Args>
  struct tuple_impl<amortized::int_indexes<Indices...>, Args...>
    : element<int_key<Indices>, Args>... 
  {};
  
  template<typename... Args>
  struct tuple
    : tuple_impl<typename amortized::make_indexes<sizeof...(Args)>::type, Args...> 
  {
  };

#ifdef SLIM_IMPL  
  //This section of code tries to emulate the slim library
  //method of tagged vector implementation in hopes that this code
  //will reproduce the performance problems present
  //in the full slim implementation.
  //
  //slim library is found here:
  //
  //  http://ch.ristopher.com/git/?p=slim;a=summary
  //
  //[following copied from:
  // ../slim/include/slim/support/internal/base/ref_impl.hpp
      template < typename T > struct add_lref
    {
      typedef T & type;
    };


      template < typename T > struct add_lref <T && >
    {
      typedef T && type;
    };



      template < typename T > struct add_lref <T & >
    {
      typedef T & type;
    };
  //]above copied from ../slim/include/slim/support/internal/base/ref_impl.hpp
  template<int Key, typename Value>
    typename add_lref<Value>::type&
  get(element<int_key<Key>,Value>& key_val)
  /**@brief
   *  This essentially is used in place of at_helper<Key,Value> from
   *  ../slim/include/slim/container/vector/detail/variadic_templates/tagged_impl.hpp
   */
  {
      return key_val.value;
  }
#else
  template<int Key, typename Value>
    auto
  get(element<int_key<Key>,Value>& key_val)
    -> decltype(key_val.value)
  /**@brief
   *  This "trailing-return-type" get implementation has
   *  one obvious advantage over slim's get implementation:
   *    it's simpler because there's no need for the 
   *    add_lref metafunction.
   */
  {
      return key_val.value;
  }
#endif  
  
template<int Value>
struct int_value //values stored in tuple
{
    int_value(void)
    : value(Value)
    {}
    int const value;
};

template<int I,int J, int Max, typename... Args>
struct make_tuple:
	make_tuple<I,J,Max-1,int_value<I*TUPLE_SIZE*TUPLE_SIZE+J*TUPLE_SIZE+Max>,Args...>
{};
template<int I,int J, typename... Args>
struct make_tuple<I,J,0, Args...>
{
	typedef tuple<Args...> type;
};

#if defined(TRACE_BENCHMARK)||defined(TRACE_MAIN)
  #include <iostream>
#endif

#ifdef TRACE_BENCHMARK
int test_row_at_test_sum=0;
#endif

template<int I,int J=0>
struct test_row
{
 private:
	typedef typename make_tuple<I, J, TUPLE_SIZE>::type tuple_type;

	template<int K>
	static int at_test(tuple_type& t,int_key<K>)
	{
		int const value=
                  get<K>(t).value
                ;
              #ifdef TRACE_BENCHMARK
                test_row_at_test_sum+=value;
                std::cout
                  <<"at_test"
                  <<":I="<<I
                  <<":J="<<J
                  <<":K="<<K
                  <<":value="<<value
                  <<":test_row_at_test_sum="<<test_row_at_test_sum
                  <<"\n";
              #endif
		return value+at_test(t,int_key<K+1>());
	}
	static int at_test(tuple_type&,int_key<TUPLE_SIZE>)
        {
            return 0;
        }
 public:
	static int exec()
	{
		tuple_type t;
		int const value=at_test(t,int_key<0>());
                //The combination of the above at_test specialized function
                //and the at_test general function means the above call
                //actually calls:
                //  at_test'<K>
                //for k=0...J%TUPLE_SIZE-1
                //where at_test' is just at_test without the
                //recursive call to at_test<K+1>(...).
		return value+test_row<I,J+1>::exec();
	}
};
template<int I>
struct test_row<I,LAST_ROW>
{
	static int exec()
        {
            return 0;
        }
};

//The combination of the above test_row special and the preceding general
//templates means the call:
//  test_row<I>::exec()
//executes:
//  test_row<I,J>::exec'()
//for J=0...LAST_ROW
//where exec' is exec without the recursive call to test_row<I,J+1>::exec().

template<int I=0>
struct test_col
{
	static int exec()
	{
		int const value=test_row<I>::exec();
		return value+test_col<I+1>::exec();
	}
};

template<>
struct test_col<LAST_COL>
{
	static int exec()
        {
            return 0;
        }
};

int main()
{
    
	int const value=test_col<>::exec();
    //The combination of the test_col general and special templates
    //means the above call executes:
    //  test_row<I>::exec() 
    //for I=0...LAST_COL
  #ifdef TRACE_MAIN
    std::cout<<":value="<<value<<"\n";
    std::cout<<":TUPLE_SIZE="<<TUPLE_SIZE<<"\n";
    std::cout<<":LAST_LESS="<<LAST_LESS<<"\n";
  #endif
    return value==0;
}
