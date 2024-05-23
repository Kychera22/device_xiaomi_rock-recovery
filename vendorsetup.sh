 #
#	This file is part of the OrangeFox Recovery Project
# 	Copyright (C) 2020-2024 The OrangeFox Recovery Project
#
#	OrangeFox is free software: you can redistribute it and/or modify
#	it under the terms of the GNU General Public License as published by
#	the Free Software Foundation, either version 3 of the License, or
#	any later version.
#
#	OrangeFox is distributed in the hope that it will be useful,
#	but WITHOUT ANY WARRANTY; without even the implied warranty of
#	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#	GNU General Public License for more details.
#
# 	This software is released under GPL version 3 or any later version.
#	See <http://www.gnu.org/licenses/>.
#
# 	Please maintain this if you use this script or any part of it
#
    export FOX_BUILD_DEVICE=rock
	export LC_ALL="C.UTF-8"
 	export ALLOW_MISSING_DEPENDENCIES=true

 	#OFR build settings & info
	export FOX_VARIANT="A13+"     
    export OF_MAINTAINER="Kychera22"
    export FOX_BUILD_TYPE="Stable"
	
	export TARGET_DEVICE_ALT="rock,stone"
	export FOX_RECOVERY_SYSTEM_PARTITION="/dev/block/mapper/system"
	export FOX_RECOVERY_VENDOR_PARTITION="/dev/block/mapper/vendor"
	
	export OF_RECOVERY_AB_FULL_REFLASH_RAMDISK=1
    export FOX_VENDOR_BOOT_RECOVERY_FULL_REFLASH=1
    export FOX_VENDOR_BOOT_RECOVERY=1
	
    #export FOX_DELETE_MAGISK_ADDON=1
    export FOX_DELETE_AROMAFM=1
    export FOX_ENABLE_APP_MANAGER=1    
    export FOX_RESET_SETTINGS=1

    #export OF_DONT_KEEP_LOG_HISTORY=1
    #export OF_REFRESH_ENCRYPTION_PROPS_BEFORE_FORMAT=1
    #export OF_IGNORE_LOGICAL_MOUNT_ERRORS=1
    #export OF_UNBIND_SDCARD_F2FS=1
    export OF_FIX_DECRYPTION_ON_DATA_MEDIA=1
    #export OF_WIPE_METADATA_AFTER_DATAFORMAT=1

    #OFR binary files
    export FOX_USE_BASH_SHELL=1
    export FOX_USE_NANO_EDITOR=1
    export FOX_USE_TAR_BINARY=1
    export FOX_USE_SED_BINARY=1
    export FOX_USE_XZ_UTILS=1
    export FOX_ASH_IS_BASH=1
    #export OF_ENABLE_LPTOOLS=1
    export FOX_INSTALLER_DEBUG_MODE=1

    #OTA
	export FOX_AB_DEVICE=1
    export FOX_VIRTUAL_AB_DEVICE=1

    #Flashlight
    export OF_FL_PATH1=/sys/class/leds/flashlight
    export OF_FL_PATH2=/sys/class/leds/torch-light0


	# let's see what are our build VARs
	if [ -n "$FOX_BUILD_LOG_FILE" -a -f "$FOX_BUILD_LOG_FILE" ]; then
  	   export | grep "FOX" >> $FOX_BUILD_LOG_FILE
  	   export | grep "OF_" >> $FOX_BUILD_LOG_FILE
   	   export | grep "TARGET_" >> $FOX_BUILD_LOG_FILE
  	   export | grep "TW_" >> $FOX_BUILD_LOG_FILE
 	fi

    # CCache
       export USE_CCACHE=1
       export CCACHE_EXEC=/usr/bin/ccache
       export CCACHE_MAXSIZE="20G"
       export CCACHE_DIR="~/ccache"

if [ ! -d ${CCACHE_DIR} ]; then
  echo "CCACHE Directory/Partition is not mounted at \"${CCACHE_DIR}\""
  echo "Please edit the CCACHE_DIR build variable or mount the directory."
fi
