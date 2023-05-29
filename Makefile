#
# Copyright (C) 2015 - 2029. Asytumn Technology Co., Ltd.
#
# This is free software, licensed under the Apache License, Version 2.0 .
#

include $(TOPDIR)/rules.mk

LUCI_TITLE:=Azalea Theme
LUCI_DEPENDS:=+curl +jsonfilter
PKG_VERSION:=1.0.1
PKG_RELEASE:=20230528

define Package/luci-theme-azalea/postrm
#!/bin/sh
[ -n "$${IPKG_INSTROOT}" ] || {
	uci -q delete luci.themes.Azalea
	uci commit luci
}
endef

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature


