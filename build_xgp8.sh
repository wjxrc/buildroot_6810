#/bin/bash
make clean
make xgp8_be_defconfig
make
cp .config configs/xgp8_be_defconfig
cp output/build/busybox-1.24.1/.config package/busybox/busybox_xgp8.config 
