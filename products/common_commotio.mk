# Commotio OTA Packaging
TARGET_PROVIDES_RELEASETOOLS := true
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := vendor/commotio/tools/ota/ota_from_target_files

# Also see overrides in common
# Sound 
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=CanisMajor.ogg \
    ro.config.notification_sound=Proxima.ogg \
    ro.config.alarm_alert=Cesium.ogg \
    ro.config.vc_call_vol_steps=9 \
    ro.telephony.call_ring.delay=50 \
    persist.sys.camera-sound=0 

# Video - Photo
PRODUCT_PROPERTY_OVERRIDES += \
    ro.media.enc.jpeg.quality=100 \
    ro.media.dec.jpeg.memcap=8000000 \
    ro.media.enc.hprof.vid.bps=8000000 \
    ro.media.enc.hprof.vid.fps=65 

# Dalvik
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.checkjni=false \
    dalvik.vm.debug.alloc=0 \
    dalvik.vm.dexopt-flags=m=y \
    dalvik.vm.execution-mode=int:jit
    dalvik.vm.heapstartsize=16m \
    dalvik.vm.heapgrowthlimit=128m \
    dalvik.vm.heapsize=320m \
    dalvik.vm.heapminfree=512k \
    dalvik.vm.heapmaxfree=8m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.lockprof.threshold=500 \
    dalvik.vm.stack-trace-file=/data/anr/traces.txt \
    dalvik.vm.verify-bytecode=false

# General
PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    debug.sf.hw=1 \
    debug.performance.tuning=1 \
    video.accelerate.hw=1 \
    persist.sys.purgeable_assets=0 \
    persist.sys.use_dithering=0 \
    pm.sleep_mode=1 \
    ro.config.nocheckin=1 \
    ro.kernel.checkjni=0 \
    ro.kernel.android.checkjni=0 \
    ro.HOME_APP_ADJ=1 \
    ro.mot.eri.losalert.delay=800 \
    ro.ril.disable.power.collapse=0 \
    ro.ril.fast.dormancy.rule=0 \
    ro.vold.umsdirtyratio=20 \
    wifi.supplicant_scan_interval=300 \
    windowsmgr.max_events_per_sec=280

## Commotio common
#PRODUCT_COPY_FILES += \
#    vendor/commotio/proprietary/system/app/ApexLauncher.apk:system/app/ApexLauncher.apk \
#    vendor/commotio/proprietary/system/app/CellBroadcastReceiver.apk:system/app/CellBroadcastReceiver.apk \
#    vendor/commotio/proprietary/system/app/ConfigUpdater.apk:system/app/ConfigUpdater.apk \
#    vendor/commotio/proprietary/system/app/ChromeBookmarksSyncAdapter.apk:system/app/ChromeBookmarksSyncAdapter.apk \
#    vendor/commotio/proprietary/system/app/GenieWidget.apk:system/app/GenieWidget.apk \
#    vendor/commotio/proprietary/system/app/Gmail.apk:system/app/Gmail.apk \
#    vendor/commotio/proprietary/system/app/GmsCore.apk:system/app/GmsCore.apk \
#    vendor/commotio/proprietary/system/app/GoogleBackupTransport.apk:system/app/GoogleBackupTransport.apk \
#    vendor/commotio/proprietary/system/app/GoogleContactsSyncAdapter.apk:system/app/GoogleContactsSyncAdapter.apk \
#    vendor/commotio/proprietary/system/app/GoogleFeedback.apk:system/app/GoogleFeedback.apk \
#    vendor/commotio/proprietary/system/app/GoogleLoginService.apk:system/app/GoogleLoginService.apk \
#    vendor/commotio/proprietary/system/app/GooglePartnerSetup.apk:system/app/GooglePartnerSetup.apk \
#    vendor/commotio/proprietary/system/app/GoogleServicesFramework.apk:system/app/GoogleServicesFramework.apk \
#    vendor/commotio/proprietary/system/app/GoogleTTS.apk:system/app/GoogleTTS.apk \
#    vendor/commotio/proprietary/system/app/LatinImeDictionaryPack.apk:system/app/LatinImeDictionaryPack.apk \
#    vendor/commotio/proprietary/system/app/MediaUploader.apk:system/app/MediaUploader.apk \
#    vendor/commotio/proprietary/system/app/NetworkLocation.apk:system/app/NetworkLocation.apk \
#    vendor/commotio/proprietary/system/app/OneTimeInitializer.apk:system/app/OneTimeInitializer.apk \
#    vendor/commotio/proprietary/system/app/SetupWizard.apk:system/app/SetupWizard.apk \
#    vendor/commotio/proprietary/system/app/Talkback.apk:system/app/Talkback.apk \
#    vendor/commotio/proprietary/system/app/Phonesky.apk:system/app/Phonesky.apk \
#    vendor/commotio/proprietary/system/etc/gps.conf.old:system/etc/gps.conf.old \
#    vendor/commotio/proprietary/system/etc/gps.conf.old2:system/etc/gps.conf.old2 \
#    vendor/commotio/proprietary/system/etc/sysctl.conf:system/etc/sysctl.conf \
#    vendor/commotio/proprietary/system/etc/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
#    vendor/commotio/proprietary/system/etc/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
#    vendor/commotio/proprietary/system/etc/permissions/com.google.widevine.software.drm.xml:system/etc/permissions/com.google.widevine.software.drm.xml \
#    vendor/commotio/proprietary/system/etc/permissions/features.xml:system/etc/permissions/features.xml \
#    vendor/commotio/proprietary/system/framework/com.google.android.maps.jar:system/framework/com.google.android.maps.jar \
#    vendor/commotio/proprietary/system/framework/com.google.android.media.effects.jar:system/framework/com.google.android.media.effects.jar \
#    vendor/commotio/proprietary/system/framework/com.google.widevine.software.drm.jar:system/framework/com.google.widevine.software.drm.jar \
#    vendor/commotio/proprietary/system/lib/libAppDataSearch.so:system/lib/libAppDataSearch.so \
#    vendor/commotio/proprietary/system/lib/libfacelock_jni.so:system/lib/libfacelock_jni.so \
#    vendor/commotio/proprietary/system/lib/libfilterpack_facedetect.so:system/lib/libfilterpack_facedetect.so \
#    vendor/commotio/proprietary/system/lib/libgames_rtmp_jni.so:system/lib/libgames_rtmp_jni.so \
#    vendor/commotio/proprietary/system/lib/libgoggles_clientvision.so:system/lib/libgoggles_clientvision.so \
#    vendor/commotio/proprietary/system/lib/libgoogle_recognizer_jni_l.so:system/lib/libgoogle_recognizer_jni_l.so \
#    vendor/commotio/proprietary/system/lib/libgtalk_jni.so:system/lib/libgtalk_jni.so \
#    vendor/commotio/proprietary/system/lib/libgtalk_stabilize.so:system/lib/libgtalk_stabilize.so \
#    vendor/commotio/proprietary/system/lib/libjni_latinime.so:system/lib/libjni_latinime.so \
#    vendor/commotio/proprietary/system/lib/liblightcycle.so:system/lib/liblightcycle.so \
#    vendor/commotio/proprietary/system/lib/libpatts_engine_jni_api.so:system/lib/libpatts_engine_jni_api.so \
#    vendor/commotio/proprietary/system/lib/libspeexwrapper.so:system/lib/libspeexwrapper.so \
#    vendor/commotio/proprietary/system/lib/libwebrtc_audio_coding.so:system/lib/libwebrtc_audio_coding.so \
#    vendor/commotio/proprietary/system/lib/libvcdecoder_jni.so:system/lib/libvcdecoder_jni.so \
#    vendor/commotio/proprietary/system/lib/libvideochat_jni.so:system/lib/libvideochat_jni.so \
#    vendor/commotio/proprietary/system/xbin/zipalign:system/xbin/zipalign \
#    vendor/commotio/proprietary/data/app/Amazon_Appstore-release.apk:data/app/Amazon_Appstore-release.apk \
#    vendor/commotio/proprietary/data/app/DashClockWidget.apk:data/app/DashClockWidget.apk \
#    vendor/commotio/proprietary/data/app/GoogleNow.apk:data/app/GoogleNow.apk \
#    vendor/commotio/proprietary/data/app/GoogleVoice.apk:data/app/GoogleVoice.apk \
#    vendor/commotio/proprietary/data/app/Hangouts.apk:data/app/Hangouts.apk \
#    vendor/commotio/proprietary/data/app/Term.apk:data/app/Term.apk \
#    vendor/commotio/proprietary/data/app/TitaniumBackup.apk:data/app/TitaniumBackup.apk 
