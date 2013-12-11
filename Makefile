# Makefile Reference
# Please use this file as the project Makefile reference


##############################################################################
# Default DALVIK_VM_BUILD setting is 27
# android 4.0: 27
# android 4.1: 28
# htc t328t is special one
#-----------------------------------------------------------------------------
DALVIK_VM_BUILD := 27

##############################################################################
# Default DENSITY setting is hdpi
# this depends on the device's resolution
#-----------------------------------------------------------------------------
DENSITY := xhdpi

##############################################################################
# Directorys which you want to remove in vendor directory
#-----------------------------------------------------------------------------
vendor_remove_dirs := app media/audio/notifications media/Pre-loaded media/video themes asr tts/lang_iflytek vendor/pittpatt etc/facerecognition

##############################################################################
# Files which you want to remove in vendor directory
#-----------------------------------------------------------------------------
#vendor_remove_files := bin/zchgd

##############################################################################
# Vendor apks you want to use
#-----------------------------------------------------------------------------
vendor_saved_apps := Bluetooth HwBluetoothImport DolbyMobileAudioEffectService

##############################################################################
# Apks build from current project root directory
# if the apk is decode from baidu:
# 1, check if the apk in LOCAL_BAIDU_UPDATE_RES_APPS (you can see it in build/baidu_default.mk)
# 2, if in, you need to change the resource id to "#type@name#t" or "#type@name#a" by idtoname.py:
#	a, use "apktool d source/system/framework/framework-res.apk other/TMP/framework-res"
#	b, use "idtoname.py other/TMP/framework-res/res/values/public_master.xml XXXX/smali" 
#		(XXXX is the directory where you decode baidu's apk to)
# 3, if not, just decode it
# 
# if the apk is decode from vendor: just decode it
#
# eg: vendor_modify_apps := FMRadio
# you need decode FMRadio.apk to the project directory (use apktool d FMRadio.apk) first
# then you can make it by:   make FMRadio
#-----------------------------------------------------------------------------
vendor_modify_apps := HwFMRadio HwGlobalDolbyEffect

##############################################################################
# Jars build from current project root directory
# if the jar is decode from baidu:
# 1, check if the jar in LOCAL_BAIDU_UPDATE_RES_APPS (you can see it in build/baidu_default.mk)
# 2, if in, you need to change the resource id to "#type@name#t" or "#type@name#a" by idtoname.py:
#	a, use "apktool d source/system/framework/framework-res.apk other/TMP/framework-res"
#	b, use "idtoname.py other/TMP/framework-res/res/values/public_master.xml XXXX/smali" 
#		(XXXX is the directory where you decode baidu's jar to)
# 3, if not, just decode it
# 
# if the apk is decode from vendor: just decode it
#
# eg: vendor_modify_jars := android.policy
# you need decode android.policy.jar to the project directory (use apktool d android.policy.jar) first
# then you can make it by:   make android.policy
#-----------------------------------------------------------------------------
vendor_modify_jars := framework services hwframework telephony-common

##############################################################################
# Files which you want to saved in baidu directory
#-----------------------------------------------------------------------------
baidu_saved_files := bin/bootanimation fonts/Clockopia.ttf

##############################################################################
# baidu_remove_apps: those baidu apk you want remove 
#-----------------------------------------------------------------------------
# baidu_remove_apps := BaiduUpdate

##############################################################################
# baidu_modify_apps: which base the baidu's apk
# just override the res, append *.smali.part
#-----------------------------------------------------------------------------
baidu_modify_apps := Phone Settings

##############################################################################
# baidu_modify_jars: which base the baidu's jar
# just append *.smali.part
#-----------------------------------------------------------------------------
baidu_modify_jars := android.policy

##############################################################################
# override_property: this property will override the build.prop
#-----------------------------------------------------------------------------

# property to show/hide feature of defaultWrite Settings
override_property += \
    ro.baidu.default_write.settable=true \
    ro.baidu.recovery.pixelformat=RGB_565 \
	ro.baidu.secure=0 \
	ro.baidu.debuggable=1 \
	ro.call.record=1 \

# properties from cust.img
override_property += \
    fake.baseband.version.enabled=true \
    fake.kernel.version.enabled=true \
    ro.config.addAct=true \
    ro.config.agps_server_setting=true \
    ro.config.auth.timeout=true \
    ro.config.autoconnect.swich=true \
    ro.config.balongTD_mms_test=true \
    ro.config.browser_agent=true \
    ro.config.cmccCustmccmnc = true \
    ro.config.cmcc_forbidden_net=true \
    ro.config.cmdm_apn_not_display=true \
    ro.config.customized_mms_retry=1,1,10 \
    ro.config.delay_alarm_in_call=true \
    ro.config.ds_verbose_log_on=true \
    ro.config.hw_always_allow_mms=true \
    ro.config.hw_browser_operator=1 \
    ro.config.hw_cmcc_emerg_invisi=1 \
    ro.config.hw_eapsim=true \
    ro.config.hw_incall_report_on=true \
    ro.config.hw_opta=01 \
    ro.config.hw_optb=156 \
    ro.config.hw_ramSize=2097152 \
    ro.config.hw_RemindWifiToPdp=true \
    ro.config.hw_support_callbar=true \
    ro.config.hw_virtual_key=true \
    ro.config.hw_voicerecord=true \
    ro.config.hw_wifi_frequency=0 \
    ro.config.networkmodeset=true \
    ro.config.RoamingNetwork=true \
    ro.config.show2846=true \
    ro.config.show_mms_storage=true \
    ro.config.sms_set_cmms=true \
    ro.config.sprd_refresh_rsp=true \
    ro.config.updatelocation=true \
    ro.gsm.systemui.carriericon=true \
    ro.huawei.cust.toolbox_airwifi=true \
    ro.hw.cpcompileversion=sc8800g_sp8803g \
    ro.hw.hardwareversion=EDGE_TDV3 \
    ro.hw.versioninfo=true \
    ro.modem.type=sprd \
    ro.product.alert_time=true \
    ro.product.canplaypause=true \
    ro.product.cmcc.rtspcon=true \
    ro.product.CustCVersion=C01 \
    ro.product.CustDVersion=D117SP01 \
    ro.product.hardwareversion=HT1TEDGEM_VB \
    ro.product.model=HUAWEI P6-T00 \
    ro.product.only_2Gnetwork=false \
    ro.product.playreq.range=true \
    ro.product.streaming.custom=true \

##############################################################################
# override_property: this property will override the build.prop
#-----------------------------------------------------------------------------
#remove_property += \
        ro.operator.optr \
        ro.operator.spec \
        ro.operator.seg


##############################################################################
# if NOT_CUSTOM_FRAMEWORK-RES is true, when build framework-res, the custom_app.sh will not be called!
# becarefull if you want to config this
# add this config just because sometimes apktool may failed to build framework-res after call custom_app.sh
#-----------------------------------------------------------------------------
NOT_CUSTOM_FRAMEWORK-RES := true

USE_FIVE_PARAM_FORMAT := true

include $(PORT_BUILD)/main.mk
include $(PORT_BUILD)/autopatch.mk
