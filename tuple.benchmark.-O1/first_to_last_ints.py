#!/usr/bin/env python
#Purpose:
#  Return space separated list of values
#  based on First, By, Last values provided on command line.

import sys

def first_to_last_ints():
  if len(sys.argv) < 4:
    sys.stderr.write('Usage: '+sys.argv[0]+' First By Last\n')
    sys.exit(1)
  first, by, last = sys.argv[1:]
  first=int(first)
  by=int(by)
  last=int(last)+1
  #print ":first=",first,":by=",by,":last=",last
  values=""
  for i in range(first,last,by):
    #print ":i=",i
    values+=" "+str(i)
  return values

if __name__ == '__main__':
  print first_to_last_ints()
