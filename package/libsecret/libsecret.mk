################################################################################
#
# libsecret
#
################################################################################

LIBSECRET_VERSION = 0.11
LIBSECRET_SOURCE = libsecret-$(LIBSECRET_VERSION).tar.gz
LIBSECRET_SITE = https://www.dropbox.com/s/gnlaw6d00s5p5g1
LIBSECRET_LICENSE = license
LIBSECRET_LICENSE_FILES = LICENSE
LIBSECRET_INSTALL_STAGING = YES

LIBSECRET_CONF_OPT += --with-libgcrypt-prefix=$(STAGING_DIR)/usr --enable-gtk-doc-html=no --disable-man-pages

$(eval $(autotools-package))
$(eval $(host-autotools-package))
