################################################################################
#
# gconf
#
################################################################################

GCONF_VERSION_MAJOR = 3.2
GCONF_VERSION_MINOR = 6
GCONF_SOURCE = GConf-$(GCONF_VERSION_MAJOR).$(GCONF_VERSION_MINOR).tar.xz
GCONF_SITE = http://ftp.gnome.org/pub/gnome/sources/GConf/$(GCONF_VERSION_MAJOR)
GCONF_LICENSE = license
GCONF_LICENSE_FILES = LICENSE
GCONF_INSTALL_STAGING = YES

GCONF_CONF_OPT += --disable-orbit 

$(eval $(autotools-package))
$(eval $(host-autotools-package))
