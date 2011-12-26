# Copyright 2006 The Android Open Source Project

LOCAL_CFLAGS += -DCONFIG_CTRL_IFACE_CLIENT_DIR=\"/data/misc/wifi/sockets\"
LOCAL_CFLAGS += -DCONFIG_CTRL_IFACE_CLIENT_PREFIX=\"wpa_ctrl_\"

ifdef WIFI_DRIVER_MODULE_PATH
LOCAL_CFLAGS += -DWIFI_DRIVER_MODULE_PATH=\"$(WIFI_DRIVER_MODULE_PATH)\"
endif
ifdef WIFI_DRIVER_MODULE_ARG
LOCAL_CFLAGS += -DWIFI_DRIVER_MODULE_ARG=\"$(WIFI_DRIVER_MODULE_ARG)\"
endif
ifdef WIFI_DRIVER_MODULE_NAME
LOCAL_CFLAGS += -DWIFI_DRIVER_MODULE_NAME=\"$(WIFI_DRIVER_MODULE_NAME)\"
endif
ifdef WIFI_FIRMWARE_LOADER
LOCAL_CFLAGS += -DWIFI_FIRMWARE_LOADER=\"$(WIFI_FIRMWARE_LOADER)\"
endif
ifdef WIFI_DRIVER_FW_PATH_STA
LOCAL_CFLAGS += -DWIFI_DRIVER_FW_PATH_STA=\"$(WIFI_DRIVER_FW_PATH_STA)\"
endif
ifdef WIFI_DRIVER_FW_PATH_AP
LOCAL_CFLAGS += -DWIFI_DRIVER_FW_PATH_AP=\"$(WIFI_DRIVER_FW_PATH_AP)\"
endif
ifdef WIFI_DRIVER_FW_PATH_P2P
LOCAL_CFLAGS += -DWIFI_DRIVER_FW_PATH_P2P=\"$(WIFI_DRIVER_FW_PATH_P2P)\"
endif
ifdef WIFI_DRIVER_FW_PATH_PARAM
LOCAL_CFLAGS += -DWIFI_DRIVER_FW_PATH_PARAM=\"$(WIFI_DRIVER_FW_PATH_PARAM)\"
endif


# nano sdio wifi module
ifeq ($(SW_BOARD_USR_WIFI), nanowifi)
LOCAL_CFLAGS += -DNANO_SDIO_WIFI_USED
endif

# ar6302 sdio wifi module
ifeq ($(SW_BOARD_USR_WIFI), ar6302)
LOCAL_CFLAGS += -DAR6302_SDIO_WIFI_USED
endif

# ar6003 sdio wifi module
ifeq ($(SW_BOARD_USR_WIFI), ar6003)
LOCAL_CFLAGS += -DAR6003_SDIO_WIFI_USED
endif

# usi 4329 sdio wifi module
ifeq ($(SW_BOARD_USR_WIFI), usibcm4329)
LOCAL_CFLAGS += -DUSI_BCM4329_SDIO_WIFI_USED
endif

# huawei mw629v2 sdio wifi module
ifeq ($(SW_BOARD_USR_WIFI), hwmw269v2)
LOCAL_CFLAGS += -DHWMW269V2_SDIO_WIFI_USED
endif

# samsung b23 sdio wifi module
ifeq ($(SW_BOARD_USR_WIFI), swbb23)
LOCAL_CFLAGS += -DSWBB23_SDIO_WIFI_USED
endif

# apm 6xxx sdio wifi module
ifeq ($(SW_BOARD_USR_WIFI), apm6xxx)
LOCAL_CFLAGS += -DAPM6xxx_SDIO_WIFI_USED
endif

# realtek usb wifi module
ifeq ($(SW_BOARD_USR_WIFI), rtl8192cu)
LOCAL_CFLAGS += -DRTL_USB_WIFI_USED
endif

LOCAL_SRC_FILES += wifi/wifi.c

LOCAL_SHARED_LIBRARIES += libnetutils
