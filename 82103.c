extern void f(void);
extern void *memset();

#define memset(p, v, n)              \
  ({                                 \
    void *__p = p;                   \
    unsigned int __n = n;            \
    if (__n != 0)                    \
      memset(__p, v, __n);           \
    (__p);                           \
  })

void g(char *data, unsigned int frame_size, _Bool c)
{
        memset(data, 5, frame_size);
        if (c)
                f();
        memset(&data[frame_size / 2], 0, frame_size / 2 - 1);
        memset(&data[frame_size / 2 + 0], 4, frame_size / 2 - 11);
}
