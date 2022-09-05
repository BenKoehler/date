#!/bin/bash
cd ..
mv date/ date-src/
#remove previous installation
rm -r date-build
rm -r date
mkdir date-build
mkdir date
cd date-build
cmake \
-DCMAKE_BUILD_TYPE=Release \
-DBUILD_SHARED_LIBS=On \
-DCMAKE_INSTALL_PREFIX=../date \
../date-src
make -j 8
make install
cd ..
rm -r date-build
cp date-src/bk.cmake date

