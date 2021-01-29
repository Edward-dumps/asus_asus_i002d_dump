#!/system/vendor/bin/sh
#CopyDir, 1:/asdf/mcu_bak-->/vendorfactory;  2:/vendor/factory/mcu_bak-->asdf;  3:/asdf/mcu_raw-->/vendor/factory
action_log='/dev/console'

CopyDir=`getprop persist.vendor.asus.motor`

if test "$CopyDir" -eq 1; then
	if [ -f "/asdf/mcu_bak" ];then
	   cp /asdf/mcu_bak /vendor/factory/
	   echo "Copy /asdf/mcu_bak to /vendor/factory success." > $action_log
	else
	   echo "Copy /asdf/mcu_bak to /vendor/factory fail!" > $action_log
	fi	
else
	if test "$CopyDir" -eq 2; then
	   if [ -f "/vendor/factory/mcu_bak" ];then
	      cp /vendor/factory/mcu_bak /asdf/
	      echo "Copy /vendor/factory/mcu_bak to /asdf success." > $action_log
	   else
	      echo "Copy /vendor/factory/mcu_bak to /asdf fail!" > $action_log
	   fi
	else
	   if test "$CopyDir" -eq 3; then
		   if [ -f "/asdf/mcu_raw" ];then
		      cp /asdf/mcu_raw /vendor/factory/
		      echo "Copy /asdf/mcu_raw to /factory success." > $action_log
		   else
		      echo "Copy /asdf/mcu_raw to /factory fail!" > $action_log
		   fi
	    fi
	fi
fi
