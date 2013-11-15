################################################################################
#
# gobject-introspection
#
################################################################################

GOBJECT_INTROSPECTION_VERSION_MAJOR = 1.34
GOBJECT_INTROSPECTION_VERSION_MINOR = 1.1

GOBJECT_INTROSPECTION_SOURCE = gobject-introspection-$(GOBJECT_INTROSPECTION_VERSION_MAJOR).$(GOBJECT_INTROSPECTION_VERSION_MINOR).tar.xz
GOBJECT_INTROSPECTION_SITE = http://ftp.gnome.org/pub/gnome/sources/gobject-introspection/$(GOBJECT_INTROSPECTION_VERSION_MAJOR)
GOBJECT_INTROSPECTION_LICENSE = license
GOBJECT_INTROSPECTION_LICENSE_FILES = LICENSE
GOBJECT_INTROSPECTION_INSTALL_STAGING = YES

GOBJECT_INTROSPECTION_CONF_OPT = --with-sysroot=$(STAGING_DIR)
GOBJECT_INTROSPECTION_CONF_ENV = \
	PYTHON="$(STAGING_DIR)/usr/bin/python"

$(eval $(autotools-package))
$(eval $(host-autotools-package))
