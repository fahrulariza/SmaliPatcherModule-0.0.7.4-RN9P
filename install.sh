SKIPMOUNT=false
PROPFILE=false
POSTFSDATA=false
LATESTARTSERVICE=false

REPLACE = "/system/framework/services.jar
/system/framework/services.odex
/system/framework/arm/services.odex
/system/framework/arm64/services.odex
/system/framework/oat/arm/services.odex
/system/framework/oat/arm64/services.odex
/system/framework/oat/arm64/services.vdex
"

print_modname() {
   ui_print "*******************************"
   ui_print "          Smali Patcher        "
   ui_print "           fOmey @ XDA         "
   ui_print "*******************************"
}

on_install() {
   ui_print "- Extracting module files"
   unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
}

set_permissions() {
  set_perm_recursive $MODPATH 0 0 0755 0644
}