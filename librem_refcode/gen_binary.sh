#!/bin/sh

REFCODE=broadwell_refcode_librem.elf

objcopy -O binary "$REFCODE" refcode.bin
fallocate -l 201464 refcode.bin

readelf -r "$REFCODE" | cut -d' ' -f1 | grep '^[0-9]' \
	| sed -e 's/^/0x/g' -e 's/$/,/g' > refcode_reloc.txt
