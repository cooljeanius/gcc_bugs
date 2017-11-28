extern void abort (void) __attribute__ ((__nothrow__)) __attribute__ ((__noreturn__));

extern long chan_process[1024];

int
wait_reading_process_output (void)
{
  while (1)
    {
      int nfds = 0;
      int channel;
      for (channel = 0; channel < 1024; ++channel)
	if (chan_process[channel])
	  {
	    ((nfds < 1000) ? (void) 0 : abort ()); /*1*/
	    if (nfds >= 1000) break;               /*2*/
	    nfds++;
	  }
      if (nfds < 0)
	return 27;
    }
  return 0;
}
