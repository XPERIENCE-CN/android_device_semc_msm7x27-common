TARGET_SPECIFIC_HEADER_PATH := device/semc/msm7x27-common/include

## Camera
USE_CAMERA_STUB := true
BOARD_USES_ECLAIR_LIBCAMERA := true
#BOARD_USES_ECLAIR_LIBAUDIO := true
#BOARD_USE_FROYO_LIBCAMERA := true
BUILD_CAMERAHAL := true
#BUILD_LIBCAMERA := true

## ARMv6-compatible processor rev 5 (v6l)
TARGET_BOARD_PLATFORM := msm7x27
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true

BOARD_USE_SCREENCAP := true
TARGET_OVERLAY_ALWAYS_DETERMINES_FORMAT := true
TARGET_USE_SOFTWARE_AUDIO_AAC := true
COPYBIT_MSM7K := true

## GPS HAL
#BOARD_GPS_LIBRARIES := libgps librpc
BOARD_USES_QCOM_LIBS := true
#BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_AMSS_VERSION := 1240
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := delta
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 1240

## Bluetooth
BOARD_HAVE_BLUETOOTH := true
#BOARD_HAVE_BLUETOOTH_CUSTOM_HCIATTACH := true
TARGET_CUSTOM_BLUEDROID := ../../../device/semc/msm7x27-common/bluedroid.c

## Wifi
BOARD_WPA_SUPPLICANT_DRIVER := CUSTOM
BOARD_WLAN_DEVICE := wl1271
BOARD_SOFTAP_DEVICE := wl1271
WPA_SUPPLICANT_VERSION := VER_0_6_X
WIFI_DRIVER_MODULE_PATH := /system/lib/modules/tiwlan_drv.ko
WIFI_DRIVER_MODULE_NAME := tiwlan_drv
WIFI_FIRMWARE_LOADER := wlan_loader
WIFI_EXT_MODULE_PATH := /system/lib/modules/sdio.ko
WIFI_EXT_MODULE_NAME := sdio
WIFI_AP_DRIVER_MODULE_PATH := /system/lib/modules/tiap_drv.ko
WIFI_AP_DRIVER_MODULE_NAME := tiap_drv
WIFI_AP_FIRMWARE_LOADER := wlan_ap_loader
PRODUCT_DEFAULT_WIFI_CHANNELS := 14

## Usb
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
BOARD_UMS_LUNFILE := "/sys/devices/platform/usb_mass_storage/lun0/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/usb_mass_storage/lun0/file"

## Custom CFLAGS
COMMON_GLOBAL_CFLAGS += -DTARGET_MSM7x27
#COMMON_GLOBAL_CFLAGS += -DMISSING_EGL_EXTERNAL_IMAGE -DMISSING_GRALLOC_BUFFERS
#COMMON_GLOBAL_CFLAGS += -DMISSING_EGL_PIXEL_FORMAT_YV12
#COMMON_GLOBAL_CFLAGS += -DBOARD_GL_OES_EGL_IMG_EXTERNAL_HACK
COMMON_GLOBAL_CFLAGS += -DFORCE_CPU_UPLOAD -DQCOM_HARDWARE
COMMON_GLOBAL_CFLAGS += -DEGL_TRACE
COMMON_GLOBAL_CFLAGS += -DBINDER_COMPAT
COMMON_GLOBAL_CFLAGS += -DECLAIR_LIBCAMERA
COMMON_GLOBAL_CFLAGS += -DQCOM_LEGACY_OMX
#COMMON_GLOBAL_CFLAGS += -D_INTERNAL_BINDER_PARCEL_

## Jit
WITH_JIT := true
ENABLE_JSC_JIT:= true
ARCH_ARM_HAVE_VFP := true

## browser/yt fix
JS_ENGINE := v8
HTTP := chrome
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

## HW ACCEL
BOARD_EGL_CFG := device/semc/msm7x27-common/prebuilt/egl.cfg
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_LEGACY_QCOM := false
TARGET_USES_GENLOCK := true
#TARGET_USES_OVERLAY := true
TARGET_USES_C2D_COMPOSITION := false
USE_OPENGL_RENDERER := true
BOARD_NO_ALLOW_DEQUEUE_CURRENT_BUFFER := true
TARGET_GRALLOC_USES_ASHMEM := false
#BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
#BOARD_USE_NASTY_PTHREAD_CREATE_HACK := false
#TARGET_HAVE_BYPASS := true # NEEDED(?) when we have new adreno libs (affects libgralloc and libhwcomposer)
#BUILD_WITH_FULL_STAGEFRIGHT=true #not in grep anyways

## Skia
BOARD_USE_SKIA_LCDTEXT := true

## Kernel
BOARD_KERNEL_CMDLINE := console=null
BOARD_KERNEL_BASE := 0x00200000
BOARD_PAGE_SIZE := 0x00000800
BOARD_SDCARD_INTERNAL_DEVICE := /dev/block/mmcblk0p1
#TARGET_PREBUILT_KERNEL := device/semc/msm7x27-common/kernel
#TARGET_NO_KERNEL := true
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
BOARD_CUSTOM_BOOTIMG_MK := device/semc/msm7x27-common/custombootimg.mk

## Audio
TARGET_PROVIDES_LIBAUDIO := true
BOARD_USES_GENERIC_AUDIO := false
BOARD_COMBO_DEVICE_SUPPORTED := true

## Odex
WITH_DEXPREOPT := false

## Bootanimation
TARGET_BOOTANIMATION_PRELOAD := true

## Recovery
TARGET_RECOVERY_PRE_COMMAND := "touch /cache/recovery/boot;sync;"
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/semc/msm7x27-common/recovery/recovery_keys.c

## A custom ota package maker for a device without a boot partition
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/semc/msm7x27-common/releasetools/semc_ota_from_target_files

## Prelinks
PRODUCT_SPECIFIC_DEFINES += TARGET_PRELINKER_MAP=$(TOP)/device/semc/msm7x27-common/prelink-linux-arm-msm7x27.map
