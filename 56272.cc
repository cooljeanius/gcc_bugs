template <typename T> class A
	{
		void Invert ()
		{
			A < double >a;
		}
	};

template class A<double>;

template <> void A < double >::Invert ();
