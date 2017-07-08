# Data modules config
PRODUCT_PROPERTY_OVERRIDES += \
    ro.data.large_tcp_window_size=true

# Time-service
PRODUCT_PROPERTY_OVERRIDES += \
    persist.timed.enable=true

# Bluetooth HandsFree profile
PRODUCT_PROPERTY_OVERRIDES += \
    bluetooth.hfp.client=1

# Display rendering
PRODUCT_PROPERTY_OVERRIDES += \
    persist.hwc.mdpcomp.enable=true \
    debug.mdpcomp.logs=0 \
    debug.mdpcomp.4k2kSplit=1 \
    debug.mdpcomp.4k2kSplit=true \
    dev.pm.dyn_samplingrate=1

# OpenGL ES 3.0
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=196608

# HDMI
PRODUCT_PROPERTY_OVERRIDES += \
    persist.demo.hdmirotationlock=false \
    ro.hdmi.enable=true

# Google WiFi-Display
PRODUCT_PROPERTY_OVERRIDES += \
    persist.debug.wfd.enable=1 \
    tunnel.audio.encode = false

# Snapdragon audio processing
PRODUCT_PROPERTY_OVERRIDES += \
    persist.speaker.prot.enable=false \
    audio.deep_buffer.media=true \
    af.fast_track_multiplier=1 \
    audio_hal.period_size=192 \
    audio.offload.pcm.16bit.enable=true \
    audio.offload.pcm.24bit.enable=true \
    audio.offload.buffer.size.kb=32 \
    audio.offload.video=false \
    audio.offload.gapless.enabled=false \
    av.streaming.offload.enable=enable \
    media.aac_51_output_enabled=true \
    qcom.hw.aac.encoder=true

# Storage & USB OTG
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.sdcardfs=true \
    persist.sys.isUsbOtgEnabled=true

# Dalvik
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.boot-dex2oat-threads=4 \
    dalvik.vm.dex2oat-threads=2 \
    dalvik.vm.image-dex2oat-threads=4

# Touchscreen
PRODUCT_PROPERTY_OVERRIDES += \
    ro.input.noresample=1

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qc.sdk.camera.facialproc=false \
    ro.qc.sdk.gestures.camera=false \
    camera.disable_zsl_mode=1

# CameraAV MM HAL1 hacks
PRODUCT_PROPERTY_OVERRIDES += \
    media.stagefright.legacyencoder=true \
    media.stagefright.less-secure=true

# MPDecision
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qualcomm.perf.cores_online=2 \
    ro.vendor.extension_library=libqti-perfd-client.so

# Misc
PRODUCT_PROPERTY_OVERRIDES += \
    persist.data.qmi.adb_logmask=0
