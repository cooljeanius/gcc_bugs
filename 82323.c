int __attribute__ ((ifunc ("foo")))
foo (void) { return 0; }
