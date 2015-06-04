Note: made for Sony Xperia SP, but is easily adaptable to other Sony devices.

This script will get 'hybris-boot.img' out of the zip,
unpack it, repack it into an Sony ELF bootfile, and replace
the original file in the zip with the repacked version.

The zip can then be flashed with recovery and the boot flashing then works.

Note: not all Sony devices use the ELF boot thingy, 
make sure yours does before applying this.

Also: get yourself the SONY_BLOB and cmdline from your cyanogenmod repo.

Requirements: mkelf.py, abootimg and 7z available on $PATH.
