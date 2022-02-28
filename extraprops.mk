# Extra properties needed outside of system.prop

# Google Assistant
PRODUCT_PROPERTY_OVERRIDES += ro.opa.eligible_device=true

#
# ADDITIONAL BUILD PROPERTIES
#

PRODUCT_PROPERTY_OVERRIDES += \
    persist.audio.fluence.audiorec=false \
    persist.audio.fluence.voicerec=false \
    ro.frp.pst=/dev/block/bootdevice/by-name/config \
    persist.radio.calls.on.ims=true \
    persist.radio.jbims=1 \
    persist.radio.VT_HYBRID_ENABLE=1 \
    persist.radio.user.add.eccList=911,144,110,112,121,141,151,132,153,154,155,156,157,158,159,168,177,183,171,122,136,131 \
    persist.nfc.smartcard.config=SIM1,eSE1 \
    persist.somc.dbg.ims_vilte_on=1 \
    ro.mdtp.package_name2=com.qualcomm.qti.securemsm.mdtp.MdtpDemo
