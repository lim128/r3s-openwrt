#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
#sed -i 's/OpenWrt/P3TERX-Router/g' package/base-files/files/bin/config_generate
sed -i 's/192.168.1.1/192.168.31.1/g' package/base-files/files/bin/config_generate
rm -rf feeds/luci/applications/{luci-app-openclash,luci-app-passwall}
rm -rf feeds/packages/net/{brook,chinadns-ng,dns2socks,dns2tcp,hysteria,ipt2socks,microsocks,mihomo,mosdns,naiveproxy,pdnsd-alt,redsocks2,shadow-tls,simple-obfs,sing-box,ssocks,tcping,trojan-go,trojan-plus,trojan,tuic-client,v2dat,v2ray-core,v2ray-geodata,v2ray-geoview,v2ray-plugin,v2raya,xray-core,xray-plugin}
git clone -b master --single-branch https://github.com/kenzok8/small.git package/small
rm -rf package/small/{luci-app-homeproxy,luci-app-mosdns,mosdns,v2ray-geodata}
rm -rf feeds/packages/lang/golang
git clone -b 23.x --single-branch https://github.com/sbwml/packages_lang_golang.git feeds/packages/lang/golang
git clone -b v5 --single-branch https://github.com/sbwml/luci-app-mosdns.git package/mosdns
git clone -b master --single-branch https://github.com/sbwml/v2ray-geodata.git package/v2ray-geodata
git clone -b master --single-branch https://github.com/muink/openwrt-stuntman.git package/stuntman
git clone -b main --single-branch https://github.com/sirpdboy/luci-app-poweroffdevice.git package/luci-app-poweroffdevice
