/*

This code complains that the variable 'container' is unused only if optimization
flag is used with g++-5.1.1 while g++-4.8.4 does not produce any warnings in
either case.  Here are the commands to try it out:

$ g++ --version
g++ (GCC) 5.1.1 20150618 (Red Hat 5.1.1-4)
Copyright (C) 2015 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

$ g++ -c -std=c++11 -Wall  -g -O0 test_warnings.cpp

$ g++ -c -std=c++11 -Wall  -O3 test_warnings.cpp
test_warnings.cpp:34:27: warning: ‘container’ defined but not used [-Wunused-variable]
 const std::array<Item, 5> container {} ;
                            ^
*/
#include <array>
struct Item 
{
    int itemValue_ {0} ;
    Item() {} ;
} ;

//
// The warning will go away if you do any one of the following:
// 
// - Comment out the constructor for Item.
// - Remove 'const' from the next line (i.e. make container non-const).
// - Remove '{}' from the next line (i.e. remove initializer list).
//
const std::array<Item, 5> container {} ;
//
// These lines do not produce any warnings:
//
const std::array<Item, 5> container_1 ;
std::array<Item, 5> container_2 ;
std::array<Item, 5> container_3 {} ;
