$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full.mk)
LOCAL_PATH := $(call my-dir)
DEVICE_PACKAGE_OVERLAYS := device/nubo/aosp_kvm/overlay
PRODUCT_PACKAGES +=
PRODUCT_COPY_FILES +=
PRODUCT_NAME := andevcon_2013_aosp_kvm # This must be equal to the  Makefile prefix defined in AndroidProducts
PRODUCT_DEVICE := aosp_kvm
PRODUCT_MODEL := AOSP KVM build for AnDevCon 2013
BUILD_DISPLAY_ID := Fake build display ID - Hi Settings!
BUILD_ID := AnDevCon_2013.11.03

# Openssh
PRODUCT_PACKAGES += \
        AndroidTerm \
        openssh \
        scp \
        sftp \
        ssh \
        sshd \
        sshd_config \
        ssh-keygen \
        start-ssh

PRODUCT_COPY_FILES += \
        device/AnDevCon/aosp_kvm/init.aosp_kvm.rc:root/init.aosp_kvm.rc \
        device/AnDevCon/aosp_kvm/init.andevcon_2013_aosp_kvm.sh:system/etc/init.andevcon_2013_aosp_kvm.sh \
        device/AnDevCon/aosp_kvm/kvm.sh:kvm.sh \
        device/AnDevCon/aosp_kvm/bzImage:kernel \
        device/AnDevCon/aosp_kvm/vold.fstab:system/etc/vold.fstab

PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapstartsize=8m \
    dalvik.vm.heapgrowthlimit=64m \
    dalvik.vm.heapsize=384m

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.display.id=Fake_Display_ID.AnDevCon_override

