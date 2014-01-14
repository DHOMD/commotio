#Data
PRODUCT_PACKAGES += \
    Amazon_Appstore \
    Gmail \
    GoogleNow \
    GoogleTTS \
    GoogleVoice \
    Term \
    TitaniumBackup

#Apps
PRODUCT_PACKAGES += \
    ChromeBookmarksSyncAdapter \
    GenieWidget \
    GoogleCalendarSyncAdapter

#Apps-priv
PRODUCT_PACKAGES += \
    GoogleBackupTransport \
    GoogleFeedback \
    GoogleLoginService \
    GooglePartnerSetup \
    GoogleServicesFramework \
    SetupWizard

# ROM will explode if you resign these
PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/system/app/GMScore.apk:system/app/GMScore.apk \
    vendor/commotio/proprietary/system/app/Phonesky.apk:system/app/Phonesky.apk

# ETC
PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/system/etc/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
    vendor/commotio/proprietary/system/etc/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
    vendor/commotio/proprietary/system/etc/permissions/com.google.widevine.software.drm.xml:system/etc/permissions/com.google.widevine.software.drm.xml \
    vendor/commotio/proprietary/system/etc/permissions/features.xml:system/etc/permissions/features.xml

# framework
PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/system/framework/com.google.android.maps.jar:system/framework/com.google.android.maps.jar \
    vendor/commotio/proprietary/system/framework/com.google.android.media.effects.jar:system/framework/com.google.android.media.effects.jar \
    vendor/commotio/proprietary/system/framework/com.google.widevine.software.drm.jar:system/framework/com.google.widevine.software.drm.jar

# framework
PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/system/lib/libAppDataSearch.so:system/lib/libAppDataSearch.so \
    vendor/commotio/proprietary/system/lib/libdocscanner_image-v7a.so:system/lib/libdocscanner_image-v7a.so \
    vendor/commotio/proprietary/system/lib/libdocsimageutils.so:system/lib/libdocsimageutils.so \
    vendor/commotio/proprietary/system/lib/libgames_rtmp_jni.so:system/lib/libgames_rtmp_jni.so \
    vendor/commotio/proprietary/system/lib/libgoogle_recognizer_jni_l.so:system/lib/libgoogle_recognizer_jni_l.so \
    vendor/commotio/proprietary/system/lib/liblatency.so:system/lib/liblatency.so \
    vendor/commotio/proprietary/system/lib/liblinearalloc.so:system/lib/liblinearalloc.so \
    vendor/commotio/proprietary/system/lib/libndk1.so:system/lib/libndk1.so \
    vendor/commotio/proprietary/system/lib/libpatts_engine_jni_api.so:system/lib/libpatts_engine_jni_api.so \
    vendor/commotio/proprietary/system/lib/librectifier-v7a.so:system/lib/librectifier-v7a.so \
    vendor/commotio/proprietary/system/lib/libspeexwrapper.so:system/lib/libspeexwrapper.so \
    vendor/commotio/proprietary/system/lib/libtitanium.so:system/lib/libtitanium.so \
    vendor/commotio/proprietary/system/lib/libvcdecoder_jni.so:system/lib/libvcdecoder_jni.so

# usr
PRODUCT_COPY_FILES += \
    vendor/commotio/proprietary/system/usr/srec/en-US/c_fst:system/usr/srec/en-US/c_fst \
    vendor/commotio/proprietary/system/usr/srec/en-US/clg:system/usr/srec/en-US/clg \
    vendor/commotio/proprietary/system/usr/srec/en-US/commands.abnf:system/usr/srec/en-US/commands.abnf \
    vendor/commotio/proprietary/system/usr/srec/en-US/compile_grammar.config:system/usr/srec/en-US/compile_grammar.config \
    vendor/commotio/proprietary/system/usr/srec/en-US/contacts.abnf:system/usr/srec/en-US/contacts.abnf \
    vendor/commotio/proprietary/system/usr/srec/en-US/dict:system/usr/srec/en-US/dict \
    vendor/commotio/proprietary/system/usr/srec/en-US/dictation.config:system/usr/srec/en-US/dictation.config \
    vendor/commotio/proprietary/system/usr/srec/en-US/dnn:system/usr/srec/en-US/dnn \
    vendor/commotio/proprietary/system/usr/srec/en-US/endpointer_dictation.config:system/usr/srec/en-US/endpointer_dictation.config \
    vendor/commotio/proprietary/system/usr/srec/en-US/endpointer_voicesearch.config:system/usr/srec/en-US/endpointer_voicesearch.config \
    vendor/commotio/proprietary/system/usr/srec/en-US/ep_acoustic_model:system/usr/srec/en-US/ep_acoustic_model \
    vendor/commotio/proprietary/system/usr/srec/en-US/g2p_fst:system/usr/srec/en-US/g2p_fst \
    vendor/commotio/proprietary/system/usr/srec/en-US/grammar.config:system/usr/srec/en-US/grammar.config \
    vendor/commotio/proprietary/system/usr/srec/en-US/hclg_shotword:system/usr/srec/en-US/hclg_shotword \
    vendor/commotio/proprietary/system/usr/srec/en-US/hmm_symbols:system/usr/srec/en-US/hmm_symbols \
    vendor/commotio/proprietary/system/usr/srec/en-US/hmmlist:system/usr/srec/en-US/hmmlist \
    vendor/commotio/proprietary/system/usr/srec/en-US/hotword_classifier:system/usr/srec/en-US/hotword_classifier \
    vendor/commotio/proprietary/system/usr/srec/en-US/hotword_normalizer:system/usr/srec/en-US/hotword_normalizer \
    vendor/commotio/proprietary/system/usr/srec/en-US/hotword_word_symbols:system/usr/srec/en-US/hotword_word_symbols \
    vendor/commotio/proprietary/system/usr/srec/en-US/hotword.config:system/usr/srec/en-US/hotword.config \
    vendor/commotio/proprietary/system/usr/srec/en-US/metadata:system/usr/srec/en-US/metadata \
    vendor/commotio/proprietary/system/usr/srec/en-US/norm_fst:system/usr/srec/en-US/norm_fst \
    vendor/commotio/proprietary/system/usr/srec/en-US/normalizer:system/usr/srec/en-US/normalizer \
    vendor/commotio/proprietary/system/usr/srec/en-US/offensive_word_normalizer:system/usr/srec/en-US/offensive_word_normalizer \
    vendor/commotio/proprietary/system/usr/srec/en-US/phone_state_map:system/usr/srec/en-US/phone_state_map \
    vendor/commotio/proprietary/system/usr/srec/en-US/phonelist:system/usr/srec/en-US/phonelist \
    vendor/commotio/proprietary/system/usr/srec/en-US/rescoring_lm:system/usr/srec/en-US/rescoring_lm \
    vendor/commotio/proprietary/system/usr/srec/en-US/wordlist:system/usr/srec/en-US/wordlist \
    vendor/commotio/proprietary/system/usr/srec/en-US/hotword_prompt.txt:system/usr/srec/en-US/hotword_prompt.txt
