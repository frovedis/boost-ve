#!/bin/sh
# modify files to deal with the glitch of nc++ 5.2.0

sed s@-O3\ \;@-O3\ -fno-cse-after-vectorization\ \;@g -i ./modified/tools/build/src/tools/ncc.jam

sed 146s@\!\!@@g -i ./boost_1_67_0/boost/lexical_cast/detail/lcast_unsigned_converters.hpp
