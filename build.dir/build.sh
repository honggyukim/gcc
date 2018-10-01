#!/bin/bash -x

../configure --prefix=`realpath ../build.install` --enable-languages=c,c++ --disable-multilib \
    CFLAGS="-pg -g -fno-omit-frame-pointer" CXXFLAGS="-pg -g -fno-omit-frame-pointer"

make CFLAGS="-pg -g -fno-omit-frame-pointer" CXXFLAGS="-pg -g -fno-omit-frame-pointer" -j32
