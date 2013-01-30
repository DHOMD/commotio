PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=CanisMajor.ogg \
    ro.config.notification_sound=Proxima.ogg \
    ro.config.alarm_alert=Cesium.ogg \
    dalvik.vm.dexopt-flags=v=n,o=v,u=n,m=y \
    dalvik.vm.heapstartsize=16m \
    dalvik.vm.heapgrowthlimit=128m \
    dalvik.vm.heapsize=320m \
    dalvik.vm.heapminfree=512k \
    dalvik.vm.heapmaxfree=8m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.lockprof.threshold=500 \
    dalvik.vm.stack-trace-file=/data/anr/traces.txt \
    dalvik.vm.verify-bytecode=false \
    ro.config.vc_call_vol_steps=12 
    
#Commotio theme files
    PRODUCT_PACKAGE_OVERLAYS += vendor/commotio/overlay/theme

# Blobs necessary for drm
PRODUCT_COPY_FILES +=  \
   vendor/vanir/proprietary/common/vendor/lib/libwvdrm_L1.so:system/vendor/lib/libwvdrm_L1.so \
   vendor/vanir/proprietary/common/vendor/lib/libwvm.so:system/vendor/lib/libwvm.so \
   vendor/vanir/proprietary/common/vendor/lib/libWVStreamControlAPI_L1.so:system/vendor/lib/libWVStreamControlAPI_L1.so \
   vendor/vanir/proprietary/common/vendor/lib/drm/libdrmwvmplugin.so:system/vendor/lib/drm/libdrmwvmplugin.so

# Copy grouper specific prebuilt files
## FIX ME: bootanimation
PRODUCT_COPY_FILES +=  \
    vendor/vanir/proprietary/smalltab/media/bootanimation.zip:system/media/bootanimation.zip \

# Beats Audio
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/tuna/app/AudioEffectService.apk:system/app/AudioEffectService.apk \
    vendor/vanir/proprietary/tuna/bin/basimage_gec.bin:system/bin/basimage_gec.bin \
    vendor/vanir/proprietary/tuna/bin/basimage_gec_x.bin:system/bin/basimage_gec_x.bin \
    vendor/vanir/proprietary/tuna/bin/basimage_ibeats.bin:system/bin/basimage_ibeats.bin \
    vendor/vanir/proprietary/tuna/bin/basimage_ibeats_solo.bin:system/bin/basimage_ibeats_solo.bin \
    vendor/vanir/proprietary/tuna/bin/basimage_ibeats_solo_x.bin:system/bin/basimage_ibeats_solo_x.bin \
    vendor/vanir/proprietary/tuna/bin/basimage_ibeats_x.bin:system/bin/basimage_ibeats_x.bin \
    vendor/vanir/proprietary/tuna/bin/dynimage_gec.bin:system/bin/dynimage_gec.bin \
    vendor/vanir/proprietary/tuna/bin/dynimage_gec_x.bin:system/bin/dynimage_gec_x.bin \
    vendor/vanir/proprietary/tuna/bin/dynimage_ibeats.bin:system/bin/dynimage_ibeats.bin \
    vendor/vanir/proprietary/tuna/bin/dynimage_ibeats_solo.bin:system/bin/dynimage_ibeats_solo.bin \
    vendor/vanir/proprietary/tuna/bin/dynimage_ibeats_solo_x.bin:system/bin/dynimage_ibeats_solo_x.bin \
    vendor/vanir/proprietary/tuna/bin/dynimage_ibeats_x.bin:system/bin/dynimage_ibeats_x.bin \
    vendor/vanir/proprietary/tuna/bin/mm-audio-alsa-test:system/bin/mm-audio-alsa-test \
    vendor/vanir/proprietary/tuna/bin/mm-venc-omx-test720p:system/bin/mm-venc-omx-test720p \
    vendor/vanir/proprietary/tuna/bin/mm-video-encdrv-test:system/bin/mm-video-encdrv-test \
    vendor/vanir/proprietary/tuna/bin/peqimage_gec.bin:system/bin/peqimage_gec.bin \
    vendor/vanir/proprietary/tuna/bin/peqimage_gec.bin:system/bin/peqimage_gec.bin \
    vendor/vanir/proprietary/tuna/bin/peqimage_gec_x.bin:system/bin/peqimage_gec_x.bin \
    vendor/vanir/proprietary/tuna/bin/peqimage_ibeats.bin:system/bin/peqimage_ibeats.bin \
    vendor/vanir/proprietary/tuna/bin/peqimage_ibeats_solo.bin:system/bin/peqimage_ibeats_solo.bin \
    vendor/vanir/proprietary/tuna/bin/peqimage_ibeats_solo_x.bin:system/bin/peqimage_ibeats_solo_x.bin \
    vendor/vanir/proprietary/tuna/bin/peqimage_ibeats_x.bin:system/bin/peqimage_ibeats_x.bin \
    vendor/vanir/proprietary/tuna/bin/snd:system/bin/snd \
    vendor/vanir/proprietary/tuna/bin/snd8k:system/bin/snd8k \
    vendor/vanir/proprietary/tuna/bin/sound:system/bin/sound \
    vendor/vanir/proprietary/tuna/bin/sound8x60:system/bin/sound8x60 \
    vendor/vanir/proprietary/tuna/bin/spkamp:system/bin/spkamp \
    vendor/vanir/proprietary/tuna/etc/audio/aeqcoe.txt:system/etc/audio/aeqcoe.txt \
    vendor/vanir/proprietary/tuna/etc/audio/eqfilter.txt:system/etc/audio/eqfilter.txt \
    vendor/vanir/proprietary/tuna/etc/audio/lmfilter.txt:system/etc/audio/lmfilter.txt \
    vendor/vanir/proprietary/tuna/etc/audio/situation.txt:system/etc/audio/situation.txt \
    vendor/vanir/proprietary/tuna/etc/audio/soundbooster.txt:system/etc/audio/soundbooster.txt \
    vendor/vanir/proprietary/tuna/etc/audio/stream_earpiece.txt:system/etc/audio/stream_earpiece.txt \
    vendor/vanir/proprietary/tuna/etc/audio/stream_headset.txt:system/etc/audio/stream_headset.txt \
    vendor/vanir/proprietary/tuna/etc/audio/stream_speaker.txt:system/etc/audio/stream_speaker.txt \
    vendor/vanir/proprietary/tuna/etc/permissions/com.sonyericsson.audioeffectif.xml:system/etc/permissions/com.sonyericsson.audioeffectif.xml \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Bass_Booster.txt:system/etc/soundimage/Sound_Bass_Booster.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Blues.txt:system/etc/soundimage/Sound_Blues.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Classical.txt:system/etc/soundimage/Sound_Classical.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Country.txt:system/etc/soundimage/Sound_Country.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Dolby_A_HP.txt:system/etc/soundimage/Sound_Dolby_A_HP.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Dolby_A_SPK.txt:system/etc/soundimage/Sound_Dolby_A_SPK.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Dolby_V_HP.txt:system/etc/soundimage/Sound_Dolby_V_HP.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Dolby_V_SPK.txt:system/etc/soundimage/Sound_Dolby_V_SPK.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Dualmic.txt:system/etc/soundimage/Sound_Dualmic.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Dualmic_EP.txt:system/etc/soundimage/Sound_Dualmic_EP.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Dualmic_SPK.txt:system/etc/soundimage/Sound_Dualmic_SPK.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Jazz.txt:system/etc/soundimage/Sound_Jazz.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Latin.txt:system/etc/soundimage/Sound_Latin.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_New_Age.txt:system/etc/soundimage/Sound_New_Age.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Original.txt:system/etc/soundimage/Sound_Original.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Original_BCLK.txt:system/etc/soundimage/Sound_Original_BCLK.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Original_Rec_MFG.txt:system/etc/soundimage/Sound_Original_Rec_MFG.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Original_Recording_BCLK.txt:system/etc/soundimage/Sound_Original_Recording_BCLK.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Original_SPK_BCLK.txt:system/etc/soundimage/Sound_Original_SPK_BCLK.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Original_SPK_MFG.txt:system/etc/soundimage/Sound_Original_SPK_MFG.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Phone_Original_HP_BCLK.txt:system/etc/soundimage/Sound_Phone_Original_HP_BCLK.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Phone_Original_HP_WB.txt:system/etc/soundimage/Sound_Phone_Original_HP_WB.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Phone_Original_REC_BCLK.txt:system/etc/soundimage/Sound_Phone_Original_REC_BCLK.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Phone_Original_REC_NEL.txt:system/etc/soundimage/Sound_Phone_Original_REC_NEL.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Phone_Original_REC_WB.txt:system/etc/soundimage/Sound_Phone_Original_REC_WB.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Phone_Original_SPK_BCLK.txt:system/etc/soundimage/Sound_Phone_Original_SPK_BCLK.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Phone_Original_SPK_WB.txt:system/etc/soundimage/Sound_Phone_Original_SPK_WB.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Piano.txt:system/etc/soundimage/Sound_Piano.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Pop.txt:system/etc/soundimage/Sound_Pop.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_R_B.txt:system/etc/soundimage/Sound_R_B.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Recording_Mono.txt:system/etc/soundimage/Sound_Recording_Mono.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Rock.txt:system/etc/soundimage/Sound_Rock.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_SRS_A_HP.txt:system/etc/soundimage/Sound_SRS_A_HP.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_SRS_A_SPK.txt:system/etc/soundimage/Sound_SRS_A_SPK.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_SRS_V_HP.txt:system/etc/soundimage/Sound_SRS_V_HP.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_SRS_V_SPK.txt:system/etc/soundimage/Sound_SRS_V_SPK.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Treble_Booster.txt:system/etc/soundimage/Sound_Treble_Booster.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Vocal_Booster.txt:system/etc/soundimage/Sound_Vocal_Booster.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/srs_bypass.cfg:system/etc/soundimage/srs_bypass.cfg \
    vendor/vanir/proprietary/tuna/etc/soundimage/srsfx_trumedia_51.cfg:system/etc/soundimage/srsfx_trumedia_51.cfg \
    vendor/vanir/proprietary/tuna/etc/soundimage/srsfx_trumedia_movie.cfg:system/etc/soundimage/srsfx_trumedia_movie.cfg \
    vendor/vanir/proprietary/tuna/etc/soundimage/srsfx_trumedia_music.cfg:system/etc/soundimage/srsfx_trumedia_music.cfg \
    vendor/vanir/proprietary/tuna/etc/soundimage/srsfx_trumedia_music_wide.cfg:system/etc/soundimage/srsfx_trumedia_music_wide.cfg \
    vendor/vanir/proprietary/tuna/etc/soundimage/srsfx_trumedia_voice.cfg:system/etc/soundimage/srsfx_trumedia_voice.cfg \
    vendor/vanir/proprietary/tuna/etc/soundimage/srs_geq10.cfg:system/etc/soundimage/srs_geq10.cfg \
    vendor/vanir/proprietary/tuna/etc/soundimage/srs_global.cfg:system/etc/soundimage/srs_global.cfg \
    vendor/vanir/proprietary/tuna/etc/AdieHWCodec.csv:system/etc/AdieHWCodec.csv \
    vendor/vanir/proprietary/tuna/etc/AdieHWCodec_BEATS_HW.csv:system/etc/AdieHWCodec_BEATS_HW.csv \
    vendor/vanir/proprietary/tuna/etc/AIC3254_REG.csv:system/etc/AIC3254_REG.csv \
    vendor/vanir/proprietary/tuna/etc/AIC3254_REG_DualMic.csv:system/etc/AIC3254_REG_DualMic.csv \
    vendor/vanir/proprietary/tuna/etc/AIC3254_REG_XD.csv:system/etc/AIC3254_REG_XD.csv \
    vendor/vanir/proprietary/tuna/etc/audio_effects.conf:system/etc/audio_effects.conf \
    vendor/vanir/proprietary/tuna/etc/be_movie:system/etc/be_movie \
    vendor/vanir/proprietary/tuna/etc/be_photo:system/etc/be_photo \
    vendor/vanir/proprietary/tuna/etc/CodecDSPID.txt:system/etc/CodecDSPID.txt \
    vendor/vanir/proprietary/tuna/etc/media_profiles.xml:system/etc/media_profiles.xml \
    vendor/vanir/proprietary/tuna/etc/TPA2051_CFG.csv:system/etc/TPA2051_CFG.csv \
    vendor/vanir/proprietary/tuna/etc/TPA2051_CFG_BEATS_HW.csv:system/etc/TPA2051_CFG_BEATS_HW.csv \
    vendor/vanir/proprietary/tuna/framework/com.srs.fusion.fx.jar:system/framework/com.srs.fusion.fx.jar \
    vendor/vanir/proprietary/tuna/framework/semc_audioeffectif.jar:system/framework/semc_audioeffectif.jar \
    vendor/vanir/proprietary/tuna/lib/libacdbmapper.so:system/lib/libacdbmapper.so \
    vendor/vanir/proprietary/tuna/lib/libaudcal.so:system/lib/libaudcal.so \
    vendor/vanir/proprietary/tuna/lib/libaudioalsa.so:system/lib/libaudioalsa.so \
    vendor/vanir/proprietary/tuna/lib/libaudioeq.so:system/lib/libaudioeq.so \
    vendor/vanir/proprietary/tuna/lib/libaudio_init.so:system/lib/libaudio_init.so \
    vendor/vanir/proprietary/tuna/lib/libAudioTrimmer.so:system/lib/libAudioTrimmer.so \
    vendor/vanir/proprietary/tuna/lib/libbeatsbass.so:system/lib/libbeatsbass.so \
    vendor/vanir/proprietary/tuna/lib/libbeatscorehtc.so:system/lib/libbeatscorehtc.so \
    vendor/vanir/proprietary/tuna/lib/libbundlewrapper.so:system/lib/libbundlewrapper.so \
    vendor/vanir/proprietary/tuna/lib/libreverbwrapper.so:system/lib/libreverbwrapper.so \
    vendor/vanir/proprietary/tuna/lib/libSR_AudioIn.so:system/lib/libSR_AudioIn.so \
    vendor/vanir/proprietary/tuna/lib/libsrsfx.so:system/lib/libsrsfx.so \
    vendor/vanir/proprietary/tuna/lib/libvisualizer.so:system/lib/libvisualizer.so \
    vendor/vanir/proprietary/tuna/lib/libvoAudioFR.so:system/lib/libvoAudioFR.so \
    vendor/vanir/proprietary/tuna/lib/soundfx/libbeatsbass.so:system/lib/soundfx/libbeatsbass.so \
    vendor/vanir/proprietary/tuna/lib/soundfx/libcyanogen-dsp.so:system/lib/soundfx/libcyanogen-dsp.so \
    vendor/vanir/proprietary/tuna/lib/soundfx/libsrsfx.so:system/lib/soundfx/libsrsfx.so \
    vendor/vanir/proprietary/tuna/lib/soundfx/libxloudwrapper.so:system/lib/soundfx/libxloudwrapper.so \
    vendor/vanir/proprietary/tuna/lib/bluez-plugin/audio.so:system/lib/bluez-plugin/audio.so \
    vendor/vanir/proprietary/tuna/lib/hw/hwcomposer.msm8660.so:system/lib/hw/hwcomposer.msm8660.so \
    vendor/vanir/proprietary/tuna/vendor/etc/audio_effects.conf:system/vendor/etc/audio_effects.conf

# Inherit common product files.
$(call inherit-product, vendor/commotio/products/common_tabs.mk)

# Inherit AOSP device configuration for grouper
$(call inherit-product, device/asus/grouper/full_grouper.mk)

# Setup device specific product configuration.
PRODUCT_NAME := commotio_grouper
PRODUCT_BRAND := google
PRODUCT_DEVICE := grouper
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := asus

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=nakasi BUILD_FINGERPRINT=google/nakasi/grouper:4.2.1/JOP40D/405518:user/release-keys PRIVATE_BUILD_DESC="nakasi-user 4.2.1 JOP40D 405518 release-keys" BUILD_NUMBER=405518

# Commotio
PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/system/app/ApexLauncher.apk:system/app/ApexLauncher.apk \
    vendor/commotio/proprietary/system/app/ChromeBookmarksSyncAdapter.apk:system/app/ChromeBookmarksSyncAdapter.apk \
    vendor/commotio/proprietary/system/app/GenieWidget.apk:system/app/GenieWidget.apk \
    vendor/commotio/proprietary/system/app/Gmail.apk:system/app/Gmail.apk \
    vendor/commotio/proprietary/system/app/GmsCore.apk:system/app/GmsCore.apk \
    vendor/commotio/proprietary/system/app/GoogleBackupTransport.apk:system/app/GoogleBackupTransport.apk \
    vendor/commotio/proprietary/system/app/GoogleCalendarSyncAdapter.apk:system/app/GoogleCalendarSyncAdapter.apk \
    vendor/commotio/proprietary/system/app/GoogleContactsSyncAdapter.apk:system/app/GoogleContactsSyncAdapter.apk \
    vendor/commotio/proprietary/system/app/GoogleEars.apk:system/app/GoogleEars.apk \
    vendor/commotio/proprietary/system/app/GoogleFeedback.apk:system/app/GoogleFeedback.apk \
    vendor/commotio/proprietary/system/app/GoogleLoginService.apk:system/app/GoogleLoginService.apk \
    vendor/commotio/proprietary/system/app/GoogleNow.apk:system/app/GoogleNow.apk \
    vendor/commotio/proprietary/system/app/GooglePartnerSetup.apk:system/app/GooglePartnerSetup.apk \
    vendor/commotio/proprietary/system/app/GoogleServicesFramework.apk:system/app/GoogleServicesFramework.apk \
    vendor/commotio/proprietary/system/app/GoogleTTS.apk:system/app/GoogleTTS.apk \
    vendor/commotio/proprietary/system/app/HTMLViewer.apk:system/app/HTMLViewer.apk \
    vendor/commotio/proprietary/system/app/LatinImeDictionaryPack.apk:system/app/LatinImeDictionaryPack.apk \
    vendor/commotio/proprietary/system/app/MediaUploader.apk:system/app/MediaUploader.apk \
    vendor/commotio/proprietary/system/app/Music.apk:system/app/Music.apk \
    vendor/commotio/proprietary/system/app/NetworkLocation.apk:system/app/NetworkLocation.apk \
    vendor/commotio/proprietary/system/app/OneTimeInitializer.apk:system/app/OneTimeInitializer.apk \
    vendor/commotio/proprietary/system/app/SetupWizard.apk:system/app/SetupWizard.apk \
    vendor/commotio/proprietary/system/app/Talk.apk:system/app/Talk.apk \
    vendor/commotio/proprietary/system/app/Talkback.apk:system/app/Talkback.apk \
    vendor/commotio/proprietary/system/app/Thinkfree.apk:system/app/Thinkfree.apk \
    vendor/commotio/proprietary/system/app/Phonesky.apk:system/app/Phonesky.apk \
    vendor/commotio/proprietary/system/etc/gps.conf.old:system/etc/gps.conf.old \
    vendor/commotio/proprietary/system/etc/gps.conf.old2:system/etc/gps.conf.old2 \
    vendor/commotio/proprietary/system/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/commotio/proprietary/system/etc/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
    vendor/commotio/proprietary/system/etc/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
    vendor/commotio/proprietary/system/etc/permissions/com.google.widevine.software.drm.xml:system/etc/permissions/com.google.widevine.software.drm.xml \
    vendor/commotio/proprietary/system/etc/permissions/features.xml:system/etc/permissions/features.xml \
    vendor/commotio/proprietary/system/framework/com.google.android.maps.jar:system/framework/com.google.android.maps.jar \
    vendor/commotio/proprietary/system/framework/com.google.android.media.effects.jar:system/framework/com.google.android.media.effects.jar \
    vendor/commotio/proprietary/system/framework/com.google.widevine.software.drm.jar:system/framework/com.google.widevine.software.drm.jar \
    vendor/commotio/proprietary/system/lib/libfacelock_jni.so:system/lib/libfacelock_jni.so \
    vendor/commotio/proprietary/system/lib/libfilterpack_facedetect.so:system/lib/libfilterpack_facedetect.so \
    vendor/commotio/proprietary/system/lib/libflint_engine_jni_api.so:system/lib/libflint_engine_jni_api.so \
    vendor/commotio/proprietary/system/lib/libfrsdk.so:system/lib/libfrsdk.so \
    vendor/commotio/proprietary/system/lib/libgcomm_jni.so:system/lib/libgcomm_jni.so \
    vendor/commotio/proprietary/system/lib/libgoogle_recognizer_jni_l.so:system/lib/libgoogle_recognizer_jni_l.so \
    vendor/commotio/proprietary/system/lib/libgtalk_jni.so:system/lib/libgtalk_jni.so \
    vendor/commotio/proprietary/system/lib/libjni_latinimegoogle.so:system/lib/libjni_latinimegoogle.so \
    vendor/commotio/proprietary/system/lib/libpatts_engine_jni_api.so:system/lib/libpatts_engine_jni_api.so \
    vendor/commotio/proprietary/system/lib/libpicowrapper.so:system/lib/libpicowrapper.so \
    vendor/commotio/proprietary/system/lib/libspeexwrapper.so:system/lib/libspeexwrapper.so \
    vendor/commotio/proprietary/system/lib/libvideochat_jni.so:system/lib/libvideochat_jni.so \
    vendor/commotio/proprietary/system/lib/libvideochat_stabilize.so:system/lib/libvideochat_stabilize.so \
    vendor/commotio/proprietary/system/lib/libvoicesearch.so:system/lib/libvoicesearch.so \
    vendor/commotio/proprietary/system/tts/lang_pico/en-US_lh0_sg.bin:system/tts/lang_pico/en-US_lh0_sg.bin \
    vendor/commotio/proprietary/system/tts/lang_pico/en-US_ta.bin:system/tts/lang_pico/en-US_ta.bin \
    vendor/commotio/proprietary/data/app/FileManager.apk:data/app/FileManager.apk \
    vendor/commotio/proprietary/data/app/GoogleVoice.apk:data/app/GoogleVoice.apk \
    vendor/commotio/proprietary/data/app/Term.apk:data/app/Term.apk \
    vendor/commotio/proprietary/data/app/TitaniumBackup.apk:data/app/TitaniumBackup.apk 

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true \
    ro.ril.fast.dormancy.rule=0 \
    debug.sf.hw=1 \
    debug.performance.tuning=1 \
    video.accelerate.hw=1 \
    persist.sys.purgeable_assets=1 \
    persist.sys.use_dithering=0 \
    pm.sleep_mode=1 \
    ro.kernel.android.checkjni=0 \
    ro.ril.disable.power.collapse=0 \
    ro.HOME_APP_ADJ=1 \
    wifi.supplicant_scan_interval=300 \
    windowsmgr.max_events_per_sec=280 \
    ro.mot.eri.losalert.delay=800 \
    persist.sys.camera-sound=0 \
    ro.media.enc.jpeg.quality=100 \
    ro.media.dec.jpeg.memcap=8000000 \
    ro.media.enc.hprof.vid.bps=8000000 \
    ro.media.enc.hprof.vid.fps=65 \
    ro.semc.xloud.supported=true \
    persist.service.xloud.enable=1 \
    ro.semc.sound_effects_enabled=true \
    ro.service.swiqi.supported=true \
    persist.service.swiqi.enable=1 \
    ro.telephony.call_ring.delay=50 \
    ro.goo.rom=Commotio-GROUPER 
