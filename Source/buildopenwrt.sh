#!/bin/bash
cd /home/zaphkito/Source
rm -rf OpenWrt
git clone https://github.com/coolsnowwolf/lede OpenWrt
cd OpenWrt
echo "src-git openclash https://github.com/vernesong/OpenClash" >> ./feeds.conf.default
echo "src-git helloworld https://github.com/fw876/helloworld.git" >> ./feeds.conf.default
echo "src-git passwall https://github.com/xiaorouji/openwrt-passwall" >> ./feeds.conf.default
git clone https://github.com/esirplayground/luci-app-poweroff package/luci-app-poweroff
git clone https://github.com/rufengsuixing/luci-app-adguardhome package/luci-app-adguardhome
./scripts/feeds update -a && ./scripts/feeds install -a
wget https://github.com/Zaphkito/Linux/raw/main/Source/OpenWrt/.config
make defconfig
make download -j$(nproc) V=s
find dl -size -1024c -exec ls -l {} \;
find dl -size -1024c -exec rm -f {} \;
make download -j$(nproc) V=s
make -j$(($(nproc) + 1)) V=s || make -j1 || make -j1 V=s
