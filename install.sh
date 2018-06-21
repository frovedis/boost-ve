#!/bin/sh

INSTALLPATH=/opt/nec/nosupport/frovedis/ve/opt/boost

cd boost_1_67_0
./b2 --prefix=${INSTALLPATH} toolset=ncc --with-program_options --with-serialization --with-system link=static install
cp LICENSE_1_0.txt ${INSTALLPATH}/
