#!/system/bin/sh
# This script is needed to automatically set device props.
load_X3()
{
	echo "Setting up props for Realme X3"
    resetprop "ro.product.model" "Realme X3"
    resetprop "ro.product.device" "RMX2081L1"
	resetprop "ro.commonsoft.ota" "RMX2081L1"
}

load_X3SZ()
{
	echo "Setting up props for Realme X3 SuperZoom"
    resetprop "ro.product.model" "Realme X3 SuperZoom"
    resetprop "ro.product.device" "RMX2085L1"
	resetprop "ro.commonsoft.ota" "RMX2085L1"
}

load_X3SZ1()
{
	echo "Setting up props for Realme X3"
    resetprop "ro.product.model" "Realme X3"
    resetprop "ro.product.device" "RMX2082L1"
	resetprop "ro.commonsoft.ota" "RMX2082L1"
}

load_X3SZ2()
{
	echo "Setting up props for Realme X3 SuperZoom"
    resetprop "ro.product.model" "Realme X3 SuperZoom"
    resetprop "ro.product.device" "RMX2086L1"
	resetprop "ro.commonsoft.ota" "RMX2086L1"
}

load_X3SZ3()
{
	echo "Setting up props for Realme X3"
    resetprop "ro.product.model" "Realme X3"
    resetprop "ro.product.device" "RMX2083L1"
	resetprop "ro.commonsoft.ota" "RMX2083L1"
}

project=$(cat /proc/oppoVersion/prjName)
echo $project

case $project in
     "19696")
         load_X3
         ;;
     "19710")
         load_X3SZ
		 ;;
	"19697")
         load_X3SZ1
		 ;;
	"19711")
         load_X3SZ2
		 ;;
	"19698")
         load_X3SZ3
		 ;;
     *)
 	load_X3
 	;;
esac

exit 0
#

