# Inherit device configuration
$(call inherit-product, device/samsung/jenad/jenad.mk)

# Inherit some common AOKP stuff.
$(call inherit-product, vendor/aokp/configs/common.mk)

# Specify phone tech before including full_phone
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Release name and versioning
PRODUCT_NAME := aokp_jenad
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := GT-S6500D
PRODUCT_RELEASE_NAME := GT-S6500D
PRODUCT_DEVICE := jenad

UTC_DATE := $(shell date +%s)
DATE := $(shell date +%Y%m%d)

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-S6500D TARGET_DEVICE=GT-S6500D BUILD_FINGERPRINT="samsung/GT-6500D/GT-S6500D:4.2.2/JDQ39/XXLPQ:user/release-keys" PRIVATE_BUILD_DESC="GT-S6500D-user 4.2.2 JDQ39 XXLPQ release-keys"

## Bootanimation
PRODUCT_COPY_FILES += \
vendor/aokp/prebuilt/bootanimation/bootanimation_320_480.zip:system/media/bootanimation-alt.zip
