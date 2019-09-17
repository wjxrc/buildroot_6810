#/bin/bash
make clean
make 6810_mvebu_armv8_le_defconfig
make
cp .config configs/6810_mvebu_armv8_le_defconfig 
cp output/build/busybox-1.24.1/.config package/busybox/busybox.config 
