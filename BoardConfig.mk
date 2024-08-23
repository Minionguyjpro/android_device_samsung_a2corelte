USE_CAMERA_STUB := true

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := universal7870_go

# Platform
TARGET_BOARD_PLATFORM := exynos5
TARGET_BOARD_PLATFORM_GPU := mali-t830mp2

# Flags
#TARGET_GLOBAL_CFLAGS +=
#TARGET_GLOBAL_CPPFLAGS +=
#COMMON_GLOBAL_CFLAGS +=

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

BOARD_KERNEL_CMDLINE := # Exynos doesn't take cmdline arguments from boot image
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
# 000RU = recovery kernel, 000KU = system kernel
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --board SRPSB21A012RU

BOARD_BOOTIMAGE_PARTITION_SIZE     := 0x002000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x002600000
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 0x054000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x334000000
BOARD_CACHEIMAGE_PARTITION_SIZE    := 0x002800000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/samsung/a2corelte/prebuilt/Image
TARGET_PREBUILT_DTB := device/samsung/a2corelte/prebuilt/dtb.img

# Use this flag if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_CANT_BUILD_RECOVERY_FROM_BOOT_PATCH := true
BOARD_CUSTOM_BOOTIMG_MK :=  device/samsung/a2corelte/bootimg.mk

PLATFORM_VERSION := 8.1.0
PLATFORM_SECURITY_PATCH := 2021-10-01

# Extras
TARGET_SYSTEM_PROP += device/samsung/a2corelte/system.prop
TW_INCLUDE_RESETPROP := true

# TWRP specific build flags
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
#BOARD_HAS_NO_REAL_SDCARD := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/13600000.usb/13600000.dwc3/gadget/lun%d/file"
TW_BRIGHTNESS_PATH := "/sys/devices/14800000.dsim/backlight/panel/brightness"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 162
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_USE_NEW_MINADBD := true
TW_USE_TOOLBOX := true
TW_MTP_DEVICE := "/dev/usb_mtp_gadget"
TW_EXCLUDE_SUPERSU := true

# Color fix
TARGET_RECOVERY_PIXEL_FORMAT := "ABGR_8888"

# Encryption support
TW_INCLUDE_CRYPTO := true
#TW_INCLUDE_CRYPTO_SAMSUNG := true
#TARGET_HW_DISK_ENCRYPTION := true

# Additional Libraries
#RECOVERY_LIBRARY_SOURCE_FILES += $(TARGET_OUT_SHARED_LIBRARIES)/libicui18n.so

# Debug flags
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true
