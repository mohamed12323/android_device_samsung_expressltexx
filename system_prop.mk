# Set composition for USB
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Set read only default composition for USB
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.usb.default.config=mtp

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/system/lib/libsec-ril.so \
    rild.libargs=-d/dev/smd0 \
    telephony.lteOnGsmDevice=1 \
    ro.telephony.default_network=9 \
    persist.rild.nitz_plmn="" \
    persist.rild.nitz_long_ons_0="" \
    persist.rild.nitz_long_ons_1="" \
    persist.rild.nitz_long_ons_2="" \
    persist.rild.nitz_long_ons_3="" \
    persist.rild.nitz_short_ons_0="" \
    persist.rild.nitz_short_ons_1="" \
    persist.rild.nitz_short_ons_2="" \
    persist.rild.nitz_short_ons_3="" \
    ril.subscription.types=NV,RUIM \
    ro.telephony.ril_class=ExpressRIL \
    persist.radio.add_power_save=1

# GPS
PRODUCT_PROPERTY_OVERRIDES += \
    persist.gps.qmienabled=true \
    persist.gps.qc_nlp_in_use=1 \
    ro.qc.sdk.izat.premium_enabled=0 \
    ro.qc.sdk.izat.service_mask=0x0 \
    ro.gps.agps_provider=1

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    audio.gapless.playback.disable=true \
    audio.offload.disable=1 \
    mm.enable.qcom_parser=3310129 \
    mm.enable.smoothstreaming=true \
    persist.audio.fluence.mode=endfire \
    persist.audio.vr.enable=false \
    persist.audio.handset.mic=digital \
    persist.audio.lowlatency.rec=false \
    qcom.hw.aac.encoder=true \
    media.aac_51_output_enabled=true

# Graphics
PRODUCT_PROPERTY_OVERRIDES += \
    debug.composition.type=c2d \
    persist.debug.wfd.enable=1 \
    persist.sys.wfd.virtual=0 \
    ro.sf.lcd_density=240 \
    ro.opengles.version=196608 \
    ro.qualcomm.cabl=0 \
    ro.hwui.text_large_cache_height=2048 \
    ro.hwui.text_cache_width=2048 \
    ro.hwui.text_cache_height=256

# Performance and battery tweaks
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.disable.power.collapse=0 \
    debug.performance.tuning=1 \
    video.accelerate.hw=1 \
    debug.sf.hw=1 \
    persist.sys.ui.hw=true \
    ro.media.dec.jpeg.memcap=8000000 \
    ro.media.enc.jpeg.quality=100 \
    pm.sleep_mode=1 \
    ro.mot.eri.losalert.delay=500 \
    wifi.supplicant_scan_interval=180 \
    ro.max.fling_velocity=25000 \
    ro.min.fling_velocity=12000 \
    windowsmgr.max_events_per_sec=150 \
    persist.service.lgospd.enable=0 \
    persist.service.pcsync.enable=0

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    camera2.portability.force_api=1

# Misc
PRODUCT_PROPERTY_OVERRIDES += \
    ro.chipname=MSM8930 \
    ro.product_ship=true \
    ro.warmboot.capability=1 \
    ro.vold.umsdirtyratio=50 \
    ro.config.max_starting_bg=8 \
    persist.timed.enable=true \
    wifi.interface=wlan0 \
    ro.qualcomm.bt.hci_transport=smd \
    persist.sys.isUsbOtgEnabled=true \
    ro.sys.fw.dex2oat_thread_count=4

# QC Perf
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=/system/lib/libqc-opt.so

# Art
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.image-dex2oat-filter=everything \
    dalvik.vm.dex2oat-filter=everything \
    dalvik.vm.dex2oat-flags=--no-watch-dog

# Low-RAM optimizations
ADDITIONAL_BUILD_PROPERTIES += \
	ro.config.low_ram=true \
	persist.sys.force_highendgfx=true \
	dalvik.vm.jit.codecachesize=0 \
	config.disable_atlas=true \
	ro.sys.fw.bg_apps_limit=16

# Trim properties
PRODUCT_PROPERTY_OVERRIDES += \
	ro.sys.fw.use_trim_settings=true \
	ro.sys.fw.empty_app_percent=50 \
	ro.sys.fw.trim_empty_percent=100 \
	ro.sys.fw.trim_cache_percent=100 \
	ro.sys.fw.trim_enable_memory=900775936

# Enable B service adj transition by default
PRODUCT_PROPERTY_OVERRIDES += \
	ro.sys.fw.bservice_enable=true \
	ro.sys.fw.bservice_limit=5 \
	ro.sys.fw.bservice_age=5000 \
