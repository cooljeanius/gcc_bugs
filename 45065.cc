class __attribute__ ((visibility("default"))) Base
	{
	public:
		Base();
		virtual ~Base();
		virtual void func()  const;
		virtual void inlineFunc()	{}
	};

class Derived : public Base
	{
	public:
		Derived();
		void func() const;
		virtual ~Derived();
	};

void Derived::func() const
{}
