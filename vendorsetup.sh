# AOSP forces prebuilt but we haven't done a proper implementation that build
# system would recognize that there's a prebuilt kernel yet.
mkdir -p $(gettop)/out/target/product/teos/obj/KERNEL_OBJ/usr

# Write configuration file for Pure Nexus Project and add lunch combos.
if [[ -d vendor/pure ]]
then
    echo "include device/vestel/teos/aosp_teos.mk" > vendor/pure/products/teos.mk
    add_lunch_combo aosp_teos-eng
    add_lunch_combo aosp_teos-userdebug
    add_lunch_combo teos-user
fi
