README.Portability warnings:

* String literals: Nothing? Suggest "-Wparentheses-string" (but there exists -Woverlength-strings for a related part though)
* Empty macro arguments: possibly -pedantic; need to check
* Unnecessary test before free: gnulib has its "useless-if-before-free" script; suggest adding a corresponding warning? See bug 80528: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=80528
* Trigraphs: -Wtrigraphs
* Suffixes on Integer Constants: -Wtraditional gets ALL suffixes, but also drags in other unwanted warnings. Suggest splitting off a separate warning just for 'l'?
* errno: not sure what exactly the issue with it being declared as a macro is?
* Implicit int: -Wimplicit-int. However, it only catches the function declarations/definitions; I don't think it catches the "bare unsigned" places.
* Char vs unsigned char vs int: -Wconversion and friends
* Plain char sign/unsigned extending: ???
* Shifts: One of the "-Wshift-*" flags
* Sequence points: -Wsequence-point
* Host vs. target floating point representation: ???
* qsort: ???
* fprintf types: -Wformat and friends
* Putting declaration in wrong place: -Wnested-externs, to a limited extent (only within functions), also -Wmissing-prototypes and -Wmissing-declarations, but those only catch the fallout of the underlying issue, not the exact thing being described here... see bug 91972 for the -Wmissing-declarations part at least: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=91972

Existing warnings to enable when building GCC itself:
* Rename -W to -Wextra
* -Wundef, per glibc
* -Wshadow, as suggested on lists. Bernd is working on this.
* -Wnarrowing (I keep suggesting it whenever people suggest transitioning to a newer standard, such as C++ 11)
* -Wc++11-compat? Invalid for libgcc though. Request to make valid for C?

Warnings for things from GCC manual:
* (TODO)

Warnings for things from preprocessor manual:
* Side effects expanded multiple times; see "Underhanded C"

Warnings for GNU Coding Standards:
* (TODO)

-Wanti-c++-compat:
* pedwarn about C++-style comments, split to separate warning
* -Wold-style-definition
* -Wdeclaration-after-statement
* -Wswitch-default (other stuff about enums)
