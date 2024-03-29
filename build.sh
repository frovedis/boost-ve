#!/bin/sh
set -eu

INSTALLPATH=/opt/nec/frovedis/ve/opt/boost

if [ ! -f boost_1_67_0.tar.gz ]; then
	wget https://boostorg.jfrog.io/artifactory/main/release/1.67.0/source/boost_1_67_0.tar.gz
fi
tar -zxf boost_1_67_0.tar.gz
cp -r modified/* boost_1_67_0/
./deal_with_glitch.sh
cd boost_1_67_0
./bootstrap.sh
./b2 --prefix=${INSTALLPATH} toolset=ncc --with-program_options --with-serialization --with-system link=static
