#!/bin/bash
sudo apt-get update
sudo apt-get -y install samba aria2 qbittorrent lm-sensors vim neofetch npm openssh-server net-tools build-essential asciidoc binutils bzip2 gawk gettext git libncurses5-dev libz-dev patch python3 python2.7 unzip zlib1g-dev lib32gcc1 libc6-dev-i386 subversion flex uglifyjs git-core gcc-multilib p7zip p7zip-full msmtp libssl-dev texinfo libglib2.0-dev xmlto qemu-utils upx libelf-dev autoconf automake libtool autopoint device-tree-compiler g++-multilib antlr3 gperf wget curl swig rsync
sudo npm install -g t-get
sudo service cron start
sudo systemctl enable cron
sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo wget https://issuepcdn.baidupcs.com/issue/netdisk/LinuxGuanjia/4.3.0/baidunetdisk_4.3.0_amd64.deb
sudo dpkg -i baidunetdisk_4.3.0_amd64.deb
sudo wget https://dtapp-pub.dingtalk.com/dingtalk-desktop/xc_dingtalk_update/linux_deb/Release/com.alibabainc.dingtalk_1.2.0.132_amd64.deb
sudo dpkg -i com.alibabainc.dingtalk_1.2.0.132_amd64.deb
wget -O install.sh http://download.bt.cn/install/install-ubuntu_6.0.sh && sudo bash install.sh
rm -rf google-chrome-stable_current_amd64.deb
rm -rf baidunetdisk_4.3.0_amd64.deb
rm -rf install.sh
rm -rf com.alibabainc.dingtalk_1.2.0.132_amd64.deb
cd /home/zaphkito
git clone https://github.com/coolsnowwolf/lede Source/OpenWrt
cd Source
wget https://github.com/Zaphkito/Linux/raw/main/Source/buildopenwrt.sh
sh buildopenwrt.sh
crontab -e
