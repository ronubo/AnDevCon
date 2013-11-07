#!/bin/sh

# Create a cache img if it doesn't exist
if [ ! -e cache.img ] ; then
   dd if=/dev/zero of=cache.img bs=1M count=200
   # force ext4 creation on a non block device
   mkfs.ext4 -F cache.img
fi

# Run KVM.
# It works with pretty much any Android kernel (goldfish, XEN, ax86, intel, ...)
# Note the qemu network parameters. Using a tap device is convenient with wired Ethernet
# For wireless it is a whole other story, so -net user is being used to be on the safe side.
# This essentialy provides the same network resolution as in the Android emulator
#
kvm \
-hda system.img \
-hdb userdata.img \
-hdc cache.img \
-kernel bzImage \
-initrd ramdisk.img \
-append "qemu=1 console=ttyS0 androidboot.hardware=aosp_kvm android.checkjni=1 ndns=1 vga=788 androidboot.console=ttyS0" \
-serial /dev/tty \
-net user -net nic \
-m 2048 && stty sane
                                                                                                                                 
