#!/bin/sh

set -x

SOURCE_DIR=`pwd`
BUILD_DIR=${BUILD_DIR:-../jackson-build}
BUILD_TYPE=${BUILD_TYPE:-Release}
INSTALL_DIR=${INSTALL_DIR:-../${BUILD_TYPE}-install}
BUILD_BENCHMARK=${BUILD_BENCHMARK:-0}

mkdir -p $BUILD_DIR/$BUILD_TYPE \
    && cd $BUILD_DIR/$BUILD_TYPE \
    && cmake \
        -DCMAKE_BUILD_TYPE=$BUILD_TYPE \
        -DCMAKE_INSTALL_PREFIX=$INSTALL_DIR \
        -DCMAKE_BUILD_BENCHMARK=$BUILD_BENCHMARK \
        $SOURCE_DIR \
    && make $*