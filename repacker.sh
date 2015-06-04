#!/bin/bash

set -e

echo "Unzipping"
unzip -p sailfishos-*.zip hybris-boot.img > old-hybris-boot.img

echo "Extracting original image"
abootimg -x old-hybris-boot.img

echo "Searching for files"
cp ../SONY_BLOB .
cp ../cmdline .

echo "Repacking image"
mkelf.py -o hybris-boot.img zImage@0x80208000 initrd.img@0x81900000,ramdisk SONY_BLOB@0x00020000,rpm cmdline@cmdline

echo "Adding image to zip"
zip -u sailfishos-*.zip hybris-boot.img
