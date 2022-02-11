#!/bin/bash
cd /home/zaphkito/Source/OpenWrt
git pull
make clean
./scripts/feeds update -a && ./scripts/feeds install -a
make defconfig
make -j8 download V=s
make -j$(($(nproc) + 1)) V=s
