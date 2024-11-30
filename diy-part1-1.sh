#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
sed -i 's/192.168.1.1/192.168.31.1/g' package/base-files/files/bin/config_generate
#sed -i 's/ImmortalWrt/OpenWrt/g' package/base-files/files/bin/config_generate
wget -O target/linux/ramips/patches-4.14/102-mt7621-fix-cpu-clk-add-clkdev.patch https://ghproxy.net/https://raw.githubusercontent.com/qqww4540/rule/main/102-mt7621-fix-cpu-clk-add-clkdev.patch
git clone https://github.com/sirpdboy/luci-app-poweroffdevice package/luci-app-poweroffdevice
