#!/bin/bash
# ^ rocks btw (pun intended)

# See https://gitlab.e.foundation/steadfasterX/android_vendor_e#vendorsetupsh-your-device-tree
# for this whole thing.

# Set product.
export EOS_DEVICE=teos

# Don't use CCACHE when Beru is the builder. Her username is either
# "windowzytch" or "windowz414".
who_tf_am_i=$(whoami)

if [ ${who_tf_am_i} == "windowzytch" ]; then
    export EOS_USE_CCACHE=0
elif [ ${who_tf_am_i} == "windowz414" ]; then
    export EOS_USE_CCACHE=0
fi

# Add full signature spoofing support (in user controllable scale).
export EOS_SIGNATURE_SPOOFING=yes

# This is Nougat, so we build Nougat.
export EOS_BRANCH_NAME=v1-nougat

# Ship with LineageSU. It doesn't bite. x3
export EOS_WITH_SU=true

# Set key subject for signed builds. Beru is the maintainer. :>
export EOS_KEYS_SUBJECT='/C=TR/ST=Turkey/L=Samsun/O=Beru Shinsetsu/OU=Beru Shinsetsu/CN=Beru Shinsetsu/emailAddress=windowz414@1337.lgbt'

########### extendrom section ###########
export ENABLE_EXTENDROM=true
export EXTENDROM_PACKAGES="additional_repos.xml noEOSappstore com.android.vending.xml phonesky-permissions.xml MicroGmsCore F-Droid F-DroidPriviledgedExtension AuroraStore"
$PWD/vendor/extendrom/get_prebuilts.sh
