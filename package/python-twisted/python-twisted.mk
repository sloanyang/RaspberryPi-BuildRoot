################################################################################
#
# python-twisted
#
################################################################################

PYTHON_TWISTED_VERSION_MAJOR = 13.2
PYTHON_TWISTED_VERSION_MINOR = 0
PYTHON_TWISTED_VERSION = $(PYTHON_TWISTED_VERSION_MAJOR).$(PYTHON_TWISTED_VERSION_MINOR)
PYTHON_TWISTED_SOURCE  = Twisted-$(PYTHON_TWISTED_VERSION).tar.bz2
PYTHON_TWISTED_SITE    = http://twistedmatrix.com/Releases/Twisted/$(PYTHON_TWISTED_VERSION_MAJOR)
PYTHON_TWISTED_DEPENDENCIES = python python-zope-interface 

define PYTHON_TWISTED_BUILD_CMDS
	(cd $(@D); \
		CC="$(TARGET_CC)"		\
		CFLAGS="$(TARGET_CFLAGS)" 	\
		LDSHARED="$(TARGET_CC) -shared" \
		LDFLAGS="$(TARGET_LDFLAGS) -L$(TAGET_DIR)/usr/lib -lpython2.7" 	\
	$(HOST_DIR)/usr/bin/python setup.py build_ext \
	--include-dirs=$(STAGING_DIR)/usr/include/python2.7 \
	--library-dirs=$(TARGET_DIR)/usr/lib/python2.7)  
	(cd $(@D); $(HOST_DIR)/usr/bin/python setup.py build)
endef

define PYTHON_TWISTED_INSTALL_TARGET_CMDS
	(cd $(@D); $(HOST_DIR)/usr/bin/python setup.py install --prefix=$(TARGET_DIR)/usr)
endef

$(eval $(generic-package))
