#/bin/bash
#make clean
#rm -rf  output
rm package/gdb/ -rf
cp package/gdb-6800/ package/gdb -rf
make 6800_xep8b_mvebu_armv8_le_defconfig
make -j2
rm package/gdb/ -rf
cp package/gdb-init/ package/gdb -rf
cp .config configs/6800_xep8b_mvebu_armv8_le_defconfig
cp output/build/busybox-1.24.1/.config package/busybox/busybox_xep8.config 

