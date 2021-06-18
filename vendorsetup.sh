#
# 	Please maintain this if you use this script or any part of it
#
FDEVICE="cannong"
#set -o xtrace

fox_get_target_device() {
local chkdev=$(echo "$BASH_SOURCE" | grep -w $FDEVICE)
   if [ -n "$chkdev" ]; then
      FOX_BUILD_DEVICE="$FDEVICE"
   else
      chkdev=$(set | grep BASH_ARGV | grep -w $FDEVICE)
      [ -n "$chkdev" ] && FOX_BUILD_DEVICE="$FDEVICE"
   fi
}

if [ -z "$1" -a -z "$FOX_BUILD_DEVICE" ]; then
   fox_get_target_device
fi

if [ "$1" = "$FDEVICE" -o "$FOX_BUILD_DEVICE" = "$FDEVICE" ]; then
	
       
        export FOX_ADVANCED_SECURITY=1
        export OF_USE_TWRP_SAR_DETECT=1
        export PLATFORM_VERSION="16.1.0"
   	export PLATFORM_SECURITY_PATCH="2099-12-31"
   	export TW_DEFAULT_LANGUAGE="en"
	export OF_KEEP_FORCED_ENCRYPTION=1
	export FOX_USE_NANO_EDITOR=1
	export FOX_USE_ZIP_BINARY=1
	export FOX_REPLACE_BUSYBOX_PS=1
	export OF_USE_SYSTEM_FINGERPRINT=1
	export ALLOW_MISSING_DEPENDENCIES=true
	export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
	export LC_ALL="C"
	export OF_PATCH_AVB20=1
	export OF_DONT_PATCH_ENCRYPTED_DEVICE=1
	export OF_NO_TREBLE_COMPATIBILITY_CHECK=1
	export OF_NO_MIUI_PATCH_WARNING=1
        export FOX_USE_BASH_SHELL=1
	export OF_USE_MAGISKBOOT=1
	export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES=1
	export FOX_ASH_IS_BASH=1
	export FOX_USE_TAR_BINARY=1
	export FOX_USE_SED_BINARY=1
	export FOX_USE_XZ_UTILS=1
	export OF_SKIP_MULTIUSER_FOLDERS_BACKUP=1
	export FOX_DELETE_AROMAFM=1
	export FOX_BUGGED_AOSP_ARB_WORKAROUND="1546300800"
	export OF_FLASHLIGHT_ENABLE=0
	export FOX_VERSION="R11.0"
	export OF_SCREEN_H="2340"
	export OF_HIDE_NOTCH=1
	export OF_ALLOW_DISABLE_NAVBAR=0
	export TARGET_DEVICE_ALT="cannon, cannon"
	export OF_TARGET_DEVICES="cannon, cannon"
	export OF_USE_GREEN_LED=0
	export FOX_RECOVERY_SYSTEM_PARTITION="/dev/block/mapper/system"
	export FOX_RECOVERY_VENDOR_PARTITION="/dev/block/mapper/vendor"
	export OF_STATUS_INDENT_LEFT="150"
	export OF_STATUS_H="98"
	export OF_QUICK_BACKUP_LIST="/boot;/data;"
	# OTA
    	export OF_KEEP_DM_VERITY=1
        export OF_SUPPORT_ALL_BLOCK_OTA_UPDATES=1
   	export OF_FIX_OTA_UPDATE_MANUAL_FLASH_ERROR=1
    	export OF_DISABLE_MIUI_OTA_BY_DEFAULT=1
	export OF_RUN_POST_FORMAT_PROCESS=1
	export OF_FBE_METADATA_MOUNT_IGNORE=1
	#R11
	export FOX_R11=1
	export FOX_BUILD_TYPE= Stable

	# maximum permissible splash image size (in kilobytes); do *NOT* increase!
	export OF_SPLASH_MAX_SIZE=104

	# Prebuilt Kernel and Dtbs
	#if [ "$ANDROID_OUTPUT_VERSION" = "11" ]; then
	#export BOARD_PREBUILT_DTBOIMAGE="device/xiaomi/cannon/prebuilt/dtbo.img"
	#export BOARD_PREBUILT_DTBIMAGE_DIR="device/xiaomi/cannon/prebuilt/dtb.img"
	#export TARGET_PREBUILT_KERNEL="device/xiaomi/cannon/prebuilt/Image.gz"
	#elif [ "$ANDROID_OUTPUT_VERSION" = "10" ]; then
	#	export BOARD_PREBUILT_DTBOIMAGE="device/xiaomi/cannon/prebuilt/dtbo.img"
	#	export BOARD_PREBUILT_DTBIMAGE_DIR="device/xiaomi/cannon/prebuilt/dtb.img"
	#	export TARGET_PREBUILT_KERNEL="device/xiaomi/cannon/prebuilt/Image.gz"
	#else
	#	echo -e "${WHITEONRED}-- Build OrangeFox: FATAL ERROR! ${NC}"
	#	echo -e "${WHITEONRED}-- PLEASE EXPORT THE VAR ANDROID_OUTPUT_VERSION to the version your are building "
	#	abort 100
	#fi

	# let's see what are our build VARs
	if [ -n "$FOX_BUILD_LOG_FILE" -a -f "$FOX_BUILD_LOG_FILE" ]; then
		export | grep "FOX" >> $FOX_BUILD_LOG_FILE
		export | grep "OF_" >> $FOX_BUILD_LOG_FILE
		export | grep "TARGET_" >> $FOX_BUILD_LOG_FILE
		export | grep "TW_" >> $FOX_BUILD_LOG_FILE
	fi
fi
