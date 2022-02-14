#!/bin/bash
cd /home/zaphkito/Source
rm -rf OpenWrt
git clone https://github.com/coolsnowwolf/lede OpenWrt
cd OpenWrt
echo "src-git openclash https://github.com/vernesong/OpenClash" >> ./feeds.conf.default
echo "src-git helloworld https://github.com/fw876/helloworld.git" >> ./feeds.conf.default
echo "src-git passwall https://github.com/xiaorouji/openwrt-passwall" >> ./feeds.conf.default
./scripts/feeds update -a && ./scripts/feeds install -a
wget https://github.com/Zaphkito/Linux/blob/master/Source/OpenWrt/.config
make defconfig
make -j8 download V=s
make -j$(nproc) || make -j1 || make -j1 V=s
