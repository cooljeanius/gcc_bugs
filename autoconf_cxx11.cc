/* taken from autoconf, to see why this particular conftest takes so long to
 * compile when run during configure scripts */
#include <deque>
#include <functional>
#include <memory>
#include <tuple>
#include <array>
#include <regex>
#include <iostream>

namespace cxx11test
{
  typedef std::shared_ptr<std::string> sptr;
  typedef std::weak_ptr<std::string> wptr;

  typedef std::tuple<std::string,int,double> tp;
  typedef std::array<int, 20> int_array;

  constexpr int get_val() { return 20; }

  struct testinit
  {
    int i;
    double d;
  };

  class delegate  {
  public:
    delegate(int n) : n(n) {}
    delegate(): delegate(2354) {}

    virtual int getval() { return this->n; };
  protected:
    int n;
  };

  class overridden : public delegate {
  public:
    overridden(int n): delegate(n) {}
    virtual int getval() override final { return (this->n * 2); }
  };

  class nocopy {
  public:
    nocopy(int i): i(i) {}
    nocopy() = default;
    nocopy(const nocopy&) = delete;
    nocopy & operator=(const nocopy&) = delete;
  private:
    int i;
  };
}


#include <algorithm>
#include <cstdlib>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <list>
#include <map>
#include <set>
#include <sstream>
#include <stdexcept>
#include <string>
#include <utility>
#include <vector>

namespace test {
  typedef std::vector<std::string> string_vec;
  typedef std::pair<int,bool> map_value;
  typedef std::map<std::string,map_value> map_type;
  typedef std::set<int> set_type;

  template<typename T>
  class printer {
  public:
    printer(std::ostringstream& os): os(os) {}
    void operator() (T elem) { os << elem << std::endl; }
  private:
    std::ostringstream& os;
  };
}

/* */
int
main(void)
{
  {
    // Test auto and decltype
    std::deque<int> d;
    d.push_front(43);
    d.push_front(484);
    d.push_front(3);
    d.push_front(844);
    int total = 0;
    for (auto i = d.begin(); i != d.end(); ++i) { total += *i; }

    auto a1 = 6538;
    auto a2 = 48573953.4;
    auto a3 = "String literal";

    decltype(a2) a4 = 34895.034;
    (void)a1;
    (void)a3;
    (void)a4;
  }
  {
    // Test constexpr
    short sa[cxx11test::get_val()] = { 0 };
    (void)sa;
  }
  {
    // Test initializer lists
    cxx11test::testinit il = { 4323, 435234.23544 };
    (void)il;
  }
  {
    // Test range-based for and lambda
    cxx11test::int_array array = {
      9, 7, 13, 15, 4, 18, 12, 10, 5, 3, 14, 19, 17, 8, 6, 20, 16, 2, 11, 1
    };
    for (int &x : array) { x += 23; }
    std::for_each(array.begin(), array.end(), [](int v1){ std::cout << v1; });
  }
  {
    using cxx11test::sptr;
    using cxx11test::wptr;

    sptr sp(new std::string("ASCII string"));
    wptr wp(sp);
    sptr sp2(wp);
  }
  {
    cxx11test::tp tuple("test", 54, 45.53434);
    double d = std::get<2>(tuple);
    std::string s;
    int i;
    std::tie(s,i,d) = tuple;
  }
  {
    static std::regex filename_regex("^_?([a-z0-9_.]+-)+[a-z0-9]+$");
    std::string testmatch("Test if this string matches");
    bool match = std::regex_search(testmatch, filename_regex);
    if (match) {
      (void)match;
    }
  }
  {
    cxx11test::int_array array = {
      9, 7, 13, 15, 4, 18, 12, 10, 5, 3, 14, 19, 17, 8, 6, 20, 16, 2, 11, 1
    };
    cxx11test::int_array::size_type size = array.size();
    (void)size;
  }
  {
    // Test constructor delegation
    cxx11test::delegate d1;
    cxx11test::delegate d2();
    cxx11test::delegate d3(45);
  }
  {
    // Test override and final
    cxx11test::overridden o1(55464);
  }
  {
    // Test nullptr
    char *c = nullptr;
    if (c == NULL) {
      (void)c;
    }
  }
  {
    // Test template brackets
    std::vector<std::pair<int,char*>> v1;
  }
  {
    // Unicode literals
    const char *utf8 = u8"UTF-8 string \u2500";
    const char16_t *utf16 = u"UTF-8 string \u2500";
    const char32_t *utf32 = U"UTF-32 string \u2500";
    (void)utf8;
    (void)utf16;
    (void)utf32;
  }

  /* */
  try {
    // Basic string.
    std::string teststr("ASCII text");
    teststr += " string";

    // Simple vector.
    test::string_vec testvec;
    testvec.push_back(teststr);
    testvec.push_back("foo");
    testvec.push_back("bar");
    if (testvec.size() != 3) {
      throw std::runtime_error("vector size is not 1");
    }

    // Dump vector into stringstream and obtain string.
    std::ostringstream os;
    for (test::string_vec::const_iterator i = testvec.begin();
	 i != testvec.end(); ++i) {
      if (i + 1 != testvec.end()) {
	os << teststr << '\n';
      }
    }
    // Check algorithms work.
    std::for_each(testvec.begin(), testvec.end(),
		  test::printer<std::string>(os));
    std::string os_out = os.str();

    // Test pair and map.
    test::map_type testmap;
    testmap.insert(std::make_pair(std::string("key"),
				  std::make_pair(53, false)));

    // Test set.
    int values[] = {
      9, 7, 13, 15, 4, 18, 12, 10, 5, 3, 14, 19, 17, 8, 6, 20, 16, 2, 11, 1
    };
    test::set_type testset(values, (values + (sizeof(values)
					      / sizeof(values[0]))));
    std::list<int> testlist(testset.begin(), testset.end());
    std::copy(testset.begin(), testset.end(), std::back_inserter(testlist));
  } catch (const std::exception& e) {
    std::cerr << "Caught exception: " << e.what() << std::endl;

    // Test fstream
    std::ofstream of("test.txt");
    of << "Test ASCII text\n" << std::flush;
    of << "N= " << std::hex << std::setw(8) << std::left << 534 << std::endl;
    of.close();
  }
  std::exit(0);

  return 0;
}

/* EOF */
