# Silence errors/warnings
DISABLE_ARTIFACT_PATH_REQUIREMENTS := true
PRODUCT_ENFORCE_ARTIFACT_PATH_REQUIREMENTS := false
BUILD_BROKEN_DUP_RULES := true

## Definitions
# DeviceAsWebcam
TARGET_BUILD_DEVICE_AS_WEBCAM := true

## Include extras
# PixelParts
$(call inherit-product-if-exists, packages/apps/PixelParts/device.mk)

# Google Face Unlock
$(call inherit-product-if-exists, vendor/google/faceunlock/config.mk)

# Google Pixel Camera
$(call inherit-product-if-exists, vendor/google/camera/config.mk)
PRODUCT_BROKEN_VERIFY_USES_LIBRARIES := true

# BCR (Basic Call Recorder)
$(call inherit-product-if-exists, vendor/bcr/bcr.mk)

# ViPER4AndroidFX
$(call inherit-product-if-exists, packages/apps/ViPER4AndroidFX/config.mk)
$(call inherit-product, hardware/interfaces/audio/aidl/default/audio_effects.mk)
