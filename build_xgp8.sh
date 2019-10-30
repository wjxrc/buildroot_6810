#/bin/bash
#make clean
rm -rf  output
make xgp8_be_defconfig
make
cp .config configs/xgp8_be_defconfig
cp output/build/busybox-1.24.1/.config package/busybox/busybox_xgp8.config 
cd output/images/
rm -rf rootfs
mkdir rootfs
tar -xf rootfs.tar -C rootfs/
rm -rf rootfs.tar
tar -cf rootfs.tar rootfs
cd ../../
cp output/images/rootfs.tar .
