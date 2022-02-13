# vendor/e and ExtendROM

# vendor/e stuff
$(call inherit-product, vendor/e/config/common.mk)

# ExtendROM stuff
ENABLE_EXTENDROM := true
EXTENDROM_PACKAGES := "additional_repos.xml noEOSappstore com.android.vending.xml phonesky-permissions.xml MicroGmsCore F-Droid F-DroidPriviledgedExtension AuroraStore"
$(call inherit-product, vendor/extendrom/config/common.mk)
