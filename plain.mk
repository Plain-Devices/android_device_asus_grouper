# Release name
PRODUCT_RELEASE_NAME := Nexus7

# Boot animation
PRODUCT_COPY_FILES += \
    vendor/plain/prebuilt/bootanimation/800.zip:system/media/bootanimation.zip

# Inherit some common CM stuff.
$(call inherit-product, vendor/plain/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/asus/grouper/full_grouper.mk)

# Aroma installer device overlay
$(call inherit-product, device/asus/grouper/aroma/aroma.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := grouper
PRODUCT_NAME := plain_grouper
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := Asus

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=nakasi BUILD_FINGERPRINT="google/nakasi/grouper:4.3/JWR66V/573038:user/release-keys" PRIVATE_BUILD_DESC="nakasi-user 4.3 JWR66V 573038 release-keys"

