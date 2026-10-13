# AV
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.media.avsync=true

# Audio
ifeq ($(TARGET_AUDIO_HAL),mainline)
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.audio.mainline.card.0.rates=48000 \
    vendor.audio.mainline.card.0.bits=16
else ifeq ($(TARGET_AUDIO_HAL),baylibre)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.audio.primary.device=3
endif

# Charger
PRODUCT_SYSTEM_PROPERTY_OVERRIDES += \
    persist.sys.NV_ECO.IF.CHARGING=false

# Display Mirroring Dialog
PRODUCT_SYSTEM_EXT_PROPERTIES += \
    persist.sysui.disable_mirroring_confirmation_dialog=true

# GMS
PRODUCT_SYSTEM_EXT_PROPERTIES += \
    atv.setup.bt_remote_pairing=false

# Graphics
ifneq ($(filter 4.9 5.10, $(TARGET_KERNEL_VERSION)),)
PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.latch_unsignaled=1 \
    ro.surface_flinger.force_hwc_copy_for_virtual_displays=true \
    ro.surface_flinger.max_frame_buffer_acquired_buffers=3 \
    ro.surface_flinger.max_virtual_display_dimension=4096
endif

# HWC
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.tegra.stb.mode=0

# USB configfs
PRODUCT_PROPERTY_OVERRIDES += \
	ro.vendor.usb.pid.adb=7104 \
	ro.vendor.usb.pid.accessory=EE0A \
	ro.vendor.usb.pid.accessory.adb=7105 \
	ro.vendor.usb.pid.accessory.audio_source=EE0C \
	ro.vendor.usb.pid.accessory.audio_source.adb=EE0D \
	ro.vendor.usb.pid.audio_source=EE0B \
	ro.vendor.usb.pid.audio_source.adb=7106 \
	ro.vendor.usb.pid.ncm=7107 \
	ro.vendor.usb.pid.ncm.adb=7108 \
	ro.vendor.usb.pid.midi=7109 \
	ro.vendor.usb.pid.midi.adb=710A \
	ro.vendor.usb.pid.uvc=710B \
	ro.vendor.usb.pid.uvc.adb=710C \
	ro.vendor.usb.vid=057E \
	ro.vendor.usb.pid.mtp=2000 \
	ro.vendor.usb.pid.mtp.adb=2000 \
	ro.vendor.usb.pid.ptp=2000 \
	ro.vendor.usb.pid.ptp.adb=2000 \
	ro.vendor.usb.pid.rndis=2000 \
	ro.vendor.usb.pid.rndis.adb=2000 \
	ro.vendor.usb.vid=057E \
	ro.recovery.usb.vid=057E \
	ro.recovery.usb.adb.pid=2000 \
	ro.recovery.usb.fastboot.pid=2000
