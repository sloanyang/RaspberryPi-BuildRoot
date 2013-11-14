################################################################################
#
# libsecret
#
################################################################################

LIBSECRET_VERSION = 0.11
LIBSECRET_SOURCE = libsecret-$(LIBSECRET_VERSION).tar.xz
LIBSECRET_SITE = http://ftp.gnome.org/pub/gnome/sources/libsecret/$(LIBSECRET_VERSION)
LIBSECRET_LICENSE = license
LIBSECRET_LICENSE_FILES = LICENSE
LIBSECRET_INSTALL_STAGING = YES

$(eval $(autotools-package))
$(eval $(host-autotools-package))
