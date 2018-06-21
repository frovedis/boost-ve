% Modifications to Boost for SX-Aurora TSUBASA

# 1. Introduction

This module contains the modifications to the boost library. 
Supported version is 1.67.
This is used for Frovedis, and currently only supports serialization,
program options, and lexical cast.

# 2. How to install

The script "build.sh" downloads boost 1.67, modifies the files, and
builds part of libraries (program options, serialization and system)
using boost's build system b2.

You need to modify INSTALLPATH in build.sh Then please call it:

    $ ./build.sh

The directory "modified" contains the modified files to support
SX-Auora TSUBASA. The files are copied in build.sh. 
The directory also contains ncc.jam, which defines the compiler's
definitions used by b2. It also contains configuration file user.hpp.
The other modified files includes __ve__ defines to check if it is
SX-Aurora TSUBASA's compiler.

After building, please also modify INSTALLPATH of install.sh, then
call it as root if it is required:

    # ./install.sh

It copies the include files and built libraries into the INSTALLPATH.
