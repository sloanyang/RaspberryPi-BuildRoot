################################################################################
#
# python-zope-interface
#
################################################################################

PYTHON_ZOPE_INTERFACE_VERSION = 3.8.0
PYTHON_ZOPE_INTERFACE_SOURCE  = zope.interface-$(PYTHON_ZOPE_INTERFACE_VERSION).tar.gz
PYTHON_ZOPE_INTERFACE_SITE    = https://pypi.python.org/packages/source/z/zope.interface
PYTHON_ZOPE_INTERFACE_DEPENDENCIES = python 

define HOST_PYTHON_ZOPE_INTERFACE_BUILD_CMDS
	(cd $(@D); $(HOST_DIR)/usr/bin/python setup.py build)
endef

define HOST_PYTHON_ZOPE_INTERFACE_INSTALL_CMDS
	(cd $(@D); \
	$(HOST_DIR)/usr/bin/python setup.py install --prefix=$(HOST_DIR)/usr)
endef

define PYTHON_ZOPE_INTERFACE_BUILD_CMDS
	(cd $(@D); \
		CC="$(TARGET_CC)"		\
		CFLAGS="$(TARGET_CFLAGS)" 	\
		LDSHARED="$(TARGET_CC) -shared" \
		LDFLAGS="$(TARGET_LDFLAGS)" 	\
	$(HOST_DIR)/usr/bin/python setup.py build_ext \
	--include-dirs=$(STAGING_DIR)/usr/include/python$(PYTHON_VERSION_MAJOR))
	(cd $(@D); $(HOST_DIR)/usr/bin/python setup.py build)
endef

define PYTHON_ZOPE_INTERFACE_INSTALL_TARGET_CMDS
	(cd $(@D); $(HOST_DIR)/usr/bin/python setup.py install --prefix=$(TARGET_DIR)/usr)
endef

$(eval $(generic-package))
$(eval $(host-generic-package))
