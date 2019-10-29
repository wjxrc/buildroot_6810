#/bin/bash
#rm -rf output
#make 6820gpsc_tool_alone_defconfig
set -x
if [ $# -lt 1 ] ; then
	make
elif [ $1 = menuconfig ]; then
	make menuconfig
elif [ $1 = "a" ]; then 
	rm -rf output
	make 6820gpsc_tool_alone_defconfig
	make
fi

cp .config configs/6820gpsc_tool_alone_defconfig
cp output/build/busybox-1.24.1/.config  package/busybox/busybox_gpsc.config
