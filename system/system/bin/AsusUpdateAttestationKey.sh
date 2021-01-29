#!/system/bin/sh

setprop vendor.sys.asus.setenforce 1
echo "[SHIPPING_REWK][UpdateAttKey] setenforce: permissive" > /proc/asusevtlog
sleep 2
/vendor/bin/install_key_server zf7prov
setprop vendor.sys.asus.setenforce 0
echo "[SHIPPING_REWK][UpdateAttKey] setenforce: enforcing" > /proc/asusevtlog
