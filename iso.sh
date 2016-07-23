#!/bin/sh
set -e
. ./build.sh

mkdir -p isodir
mkdir -p isodir/boot
mkdir -p isodir/boot/grub

cp sysroot/boot/gig_os.kernel isodir/boot/gig_os.kernel
cat > isodir/boot/grub/grub.cfg << EOF
menuentry "gig_os" {
	multiboot /boot/gig_os.kernel
}
EOF
grub-mkrescue -o gig_os.iso isodir
