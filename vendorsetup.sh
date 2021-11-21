##### AOSiP #####

# Considering logged in username as maintainer name.
export maintainer="$(whoami) (Generated by device tree.)"

# Write a simple configuration file for AOSiP.
if [[ -d vendor/aosip/products ]]
then
    echo ""
    echo "Considering logged in username as maintainer, please review vendor/aosip/products/aosip_teos.mk once envsetup is done."
    echo "# Simple configuration file for teos" > vendor/aosip/products/aosip_teos.mk
    echo "\$(call inherit-product, device/vestel/teos/aosp_teos.mk)" >> vendor/aosip/products/aosip_teos.mk
    echo "PRODUCT_BUILD_PROP_OVERRIDES := DEVICE_MAINTAINERS=\"${maintainer}\"" >> vendor/aosip/products/aosip_teos.mk
    sed -i 's/aosp\/common.mk/aosip\/config\/common_full_phone.mk/' device/vestel/teos/aosp_teos.mk
    sed -i 's/aosp_teos/aosip_teos/' device/vestel/teos/aosp_teos.mk
    add_lunch_combo aosip_teos-eng
    add_lunch_combo aosip_teos-userdebug
    add_lunch_combo aosip_teos-user
    echo ""
fi
#################

##### Pure Nexus Project #####

if [[ -d vendor/pure ]]
then
    # Undefine custom audio policy to avoid missing libaudiopolicy
    sed -i 's/AUDIO_POLICY := 1/AUDIO_POLICY := 0/' device/vestel/teos/BoardConfig.mk

    # And then write a simple configuration file for proper lunch
    echo "\$(call inherit-product, device/vestel/teos/aosp_teos.mk)" > vendor/pure/products/teos.mk
    sed -i 's/aosp\/common.mk/pure\/configs\/pure_phone.mk/' device/vestel/teos/aosp_teos.mk
    sed -i 's/longPressOnHomeBehavior\">3/longPressOnHomeBehavior\">2/' device/vestel/teos/overlay/frameworks/base/core/res/res/values/config.xml
    add_lunch_combo aosp_teos-eng
    add_lunch_combo aosp_teos-userdebug
    add_lunch_combo teos-user
    echo ""
    echo "To build Pure Nexus, you have to use aosp_teos-eng/userdebug or teos-user lunch combo."
    echo "Open up lunch menu for possible combos."
    echo ""
fi
