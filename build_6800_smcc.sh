#/bin/bash
#make clean
rm -rf  output
#make 6810_mvebu_armv8_le_defconfig
make 6800_smcc_ls1043_defconfig
make
cp .config configs/6800_smcc_ls1043_defconfig
#cp .config configs/6810_mvebu_armv8_le_defconfig
cp output/build/busybox-1.24.1/.config package/busybox/busybox_smcc.config 

