################################################################################
#
# geoclue
#
################################################################################

GEOCLUE_VERSION = 0.12.0
GEOCLUE_SOURCE = geoclue-$(GEOCLUE_VERSION).tar.gz
GEOCLUE_SITE = https://www.dropbox.com/s/o9ar3nsxm273wd9
GEOCLUE_LICENSE = license
GEOCLUE_LICENSE_FILES = LICENSE
GEOCLUE_INSTALL_STAGING = YES

$(eval $(autotools-package))
$(eval $(host-autotools-package))
