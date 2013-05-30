# config.mk
#
# Product-specific compile-time definitions.
#

LOCAL_PATH := $(call my-dir)

# The generic product target doesn't have any hardware-specific pieces.
TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := true
TARGET_CPU_ABI := x86
TARGET_ARCH := x86
TARGET_ARCH_VARIANT := x86
TARGET_PRELINK_MODULE := false
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 354572800
BOARD_USERDATAIMAGE_PARTITION_SIZE := 104857600
BOARD_FLASH_BLOCK_SIZE := 4096

# The IA emulator (qemu) uses the Goldfish devices
HAVE_HTC_AUDIO_DRIVER := true
BOARD_USES_GENERIC_AUDIO := true

# no hardware camera
USE_CAMERA_STUB := true

# customize the malloced address to be 16-byte aligned
BOARD_MALLOC_ALIGNMENT := 16

# Set /system/bin/sh to ash, not mksh, to make sure we can switch back.
TARGET_SHELL := ash

# Enable dex-preoptimization to speed up the first boot sequence
# of an SDK AVD. Note that this operation only works on Linux for now
ifeq ($(HOST_OS),linux)
WITH_DEXPREOPT := true
endif

BOARD_EGL_CFG := device/nubo/aosp_kvm/egl.cfg
# Build OpenGLES emulation host and guest libraries
BUILD_EMULATOR_OPENGL := true

# Build and enable the OpenGL ES View renderer. When running on the emulator,
# the GLES renderer disables itself if host GL acceleration isn't available.
USE_OPENGL_RENDERER := true
