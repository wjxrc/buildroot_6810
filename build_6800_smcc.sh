#/bin/bash
#make clean
rm -rf  output
rm package/gdb/ -rf
cp package/gdb-6800/ package/gdb -rf
#make 6810_mvebu_armv8_le_defconfig
set -x
make 6800_smcc_ls1043_defconfig
make
set +x
rm package/gdb/ -rf
cp package/gdb-init/ package/gdb -rf
cp .config configs/6800_smcc_mvebu_armv8_le_defconfig
cp output/build/busybox-1.24.1/.config package/busybox/busybox_smcc.config 

