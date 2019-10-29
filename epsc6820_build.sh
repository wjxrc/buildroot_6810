#/bin/bash
#rm -rf output
#make 6820gpsc_tool_alone_defconfig
dc="6820epsc_defconfig"
bc="package/busybox/busybox_epsc.config"
function help()
{
		set +x
		echo "you input is $*"
		echo "you input is $@"
		echo "usage is:"
		echo "$0 1---only make"
		echo "$0 2---menuconfig"
		echo "$0 3---busybox menuconfig"
		echo "$0 4---rebuild all"
		echo "$0 1---only make"
		echo "$0 1---only make"
}
set -x
if [ $# -lt 1 ] ; then
	help $*
	exit 0
elif [ $1 = 1 -o $1 = "make" ]; then
	make 
elif [ $1 = 2 -o $1 = "menuconfig" ]; then
	make menuconfig
	exit 0
elif [ $1 = 3 ]; then
	make busybox-menuconfig
	exit 0
elif [ $1 = "a" -o $1 = 4 ]; then 
	rm -rf output
	make  $dc
	make
fi

cp .config configs/${dc}
cp output/build/busybox-1.24.1/.config  $bc

cd output ||  exit  

rm -rf rootfs*
cp target rootfs -r
mkdir -p home/root
tar -jcf rootfs.tar.bz2 rootfs
cp rootfs.tar.bz2 ../
