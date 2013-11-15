################################################################################
#
# harfbuzz
#
################################################################################

HARFBUZZ_VERSION = 0.9.7
HARFBUZZ_SOURCE = harfbuzz-$(HARFBUZZ_VERSION).tar.bz2
HARFBUZZ_SITE = http://www.freedesktop.org/software/harfbuzz/release
HARFBUZZ_LICENSE = license
HARFBUZZ_LICENSE_FILES = LICENSE
HARFBUZZ_INSTALL_STAGING = YES

$(eval $(autotools-package))
$(eval $(host-autotools-package))
