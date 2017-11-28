struct pthread_mutex {
	void *m_ptr;
};

struct M {
	pthread_mutex m = { ((void *) 1LL) };
};

constexpr M m;
