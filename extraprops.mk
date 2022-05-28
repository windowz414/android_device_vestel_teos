# Delegation for OEM customization
PRODUCT_OEM_PROPERTIES += \
    ro.product.device \
    ro.product.name \
    ro.product.manufacturer \
    ro.product.model \
    ro.product.brand \
    ro.config.ringtone \
    ro.config.notification_sound \
    ro.config.alarm_alert \
    ro.config.wallpaper \
    ro.config.manual_path \
    ro.product.locale \
    ro.oem.* \
    oem.* \


# Extra properties needed outside of system.prop

PRODUCT_PROPERTY_OVERRIDES += persist.sys.mb_serialno=0

#
# ADDITIONAL BUILD PROPERTIES
#

PRODUCT_PROPERTY_OVERRIDES += \
    persist.audio.fluence.audiorec=false \
    persist.audio.fluence.voicerec=false \
    ro.frp.pst=/dev/block/bootdevice/by-name/config \
    persist.sys.version=1.19.0 \
    persist.radio.calls.on.ims=true \
    persist.radio.jbims=1 \
    persist.radio.VT_HYBRID_ENABLE=1 \
    persist.radio.user.add.eccList=911,144,110,112,121,141,151,132,153,154,155,156,157,158,159,168,177,183,171,122,136,131 \
    persist.nfc.smartcard.config=SIM1,eSE1 \
    persist.somc.dbg.ims_vilte_on=1 \
    ro.mdtp.package_name2=com.qualcomm.qti.securemsm.mdtp.MdtpDemo \
    ro.com.android.dataroaming=false \
    ro.com.android.mobiledata=true \
    ro.com.google.gmsversion=7.1_r201803 \
    ro.setupwizard.mode=OPTIONAL
