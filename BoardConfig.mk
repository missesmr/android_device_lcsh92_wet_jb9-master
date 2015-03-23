# inherit from the proprietary version
-include vendor/xiaomi/lcsh92_wet_jb9/BoardConfigVendor.mk

TARGET_BOARD_PLATFORM := mt6592
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_KMODULES := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := lcsh92_wet_jb9
BOARD_CUSTOM_BOOTIMG_MK := boot.mk
BOARD_KERNEL_CMDLINE := console=ttyMT0,921600n1 vmalloc=496M slub_max_order=0 lcm=1-nt35521_hd720_dsi_vdo_auo fps=6130 bootprof.pl_t=876 bootprof.lk_t=1166 printk.disable_uart=0 boot_reason=0
BOARD_KERNEL_BASE := 0x10008000
BOARD_KERNEL_PAGESIZE := 2048

# kernel
TARGET_PREBUILT_KERNEL := device/xiaomi/lcsh92_wet_jb9/kernel
# TARGET_NO_FACTORYIMAGE := true
BOARD_HAS_NO_SELECT_BUTTON := true
USE_CAMERA_STUB := true

# partition info
# fix this up by examining /proc/emmc on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 838860800 # /dev/block/mmcblk0p5
BOARD_USERDATAIMAGE_PARTITION_SIZE := 6453985280 # /dev/block/mmcblk0p7
BOARD_FLASH_BLOCK_SIZE := 512

BOARD_RIL_CLASS := ../../../device/xiaomi/icsh92_wet_jb9/ril/

# eMMC support
ifeq ($(MTK_EMMC_SUPPORT),yes)
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false
endif

# NAND page size
ifeq ($(strip $(MTK_NAND_PAGE_SIZE)), 4K)
  BOARD_NAND_PAGE_SIZE := 4096 -s 128
else
  BOARD_NAND_PAGE_SIZE := 2048 -s 64   # default 2K
endif

# aGPS / GPS
ifeq ($(MTK_AGPS_APP), yes)
   BOARD_AGPS_SUPL_LIBRARIES := true
else
   BOARD_AGPS_SUPL_LIBRARIES := false
endif

ifeq ($(MTK_GPS_SUPPORT), yes)
  BOARD_GPS_LIBRARIES := true
else
  BOARD_GPS_LIBRARIES := false
endif

# WiFi
ifeq ($(MTK_WLAN_SUPPORT), yes)
BOARD_CONNECTIVITY_VENDOR := MediaTek
BOARD_CONNECTIVITY_MODULE := conn_soc
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM:="/dev/wmtWifi"
WIFI_DRIVER_FW_PATH_STA:=STA
WIFI_DRIVER_FW_PATH_AP:=AP
WIFI_DRIVER_FW_PATH_P2P:=P2P
MTK_WIFI_SUPPORT_HOTSPOT_MANAGER:=yes
endif

BOARD_SEPOLICY_DIRS := \
       device/xiaomi/icsh92_wet_jb9/sepolicy

BOARD_SEPOLICY_UNION := \
       device.te \
       app.te \
       system.te \
       file_contexts

# EGL
BOARD_EGL_CFG := $(DEVICE_FOLDER)/egl.cfg



