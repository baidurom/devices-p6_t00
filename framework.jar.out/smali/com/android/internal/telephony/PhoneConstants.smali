.class public Lcom/android/internal/telephony/PhoneConstants;
.super Ljava/lang/Object;
.source "PhoneConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/PhoneConstants$DataState;,
        Lcom/android/internal/telephony/PhoneConstants$State;
    }
.end annotation


# static fields
.field public static final APN_ALREADY_ACTIVE:I = 0x0

.field public static final APN_ALREADY_INACTIVE:I = 0x4

.field public static final APN_REQUEST_FAILED:I = 0x3

.field public static final APN_REQUEST_STARTED:I = 0x1

.field public static final APN_TYPE_ALL:Ljava/lang/String; = "*"

.field public static final APN_TYPE_CBS:Ljava/lang/String; = "cbs"

.field public static final APN_TYPE_CMMAIL:Ljava/lang/String; = "cmmail"

.field public static final APN_TYPE_DEFAULT:Ljava/lang/String; = "default"

.field public static final APN_TYPE_DM:Ljava/lang/String; = "dm"

.field public static final APN_TYPE_DUN:Ljava/lang/String; = "dun"

.field public static final APN_TYPE_FOTA:Ljava/lang/String; = "fota"

.field public static final APN_TYPE_HIPRI:Ljava/lang/String; = "hipri"

.field public static final APN_TYPE_IMS:Ljava/lang/String; = "ims"

.field public static final APN_TYPE_MMS:Ljava/lang/String; = "mms"

.field public static final APN_TYPE_NET:Ljava/lang/String; = "net"

.field public static final APN_TYPE_NOT_AVAILABLE:I = 0x2

.field public static final APN_TYPE_SUPL:Ljava/lang/String; = "supl"

.field public static final APN_TYPE_WAP:Ljava/lang/String; = "wap"

.field public static final DATA_APN_KEY:Ljava/lang/String; = "apn"

.field public static final DATA_APN_TYPE_KEY:Ljava/lang/String; = "apnType"

.field public static final DATA_IFACE_NAME_KEY:Ljava/lang/String; = "iface"

.field public static final DATA_LINK_CAPABILITIES_KEY:Ljava/lang/String; = "linkCapabilities"

.field public static final DATA_LINK_PROPERTIES_KEY:Ljava/lang/String; = "linkProperties"

.field public static final DATA_NETWORK_ROAMING_KEY:Ljava/lang/String; = "networkRoaming"

.field public static final DUALIP_NOT_PARTIAL_RETRY:I = 0x0

.field public static final DUALIP_PARTIAL_RETRY:I = 0x1

.field public static final FAILURE_REASON_KEY:Ljava/lang/String; = "reason"

.field public static final LTE_ON_CDMA_FALSE:I = 0x0

.field public static final LTE_ON_CDMA_TRUE:I = 0x1

.field public static final LTE_ON_CDMA_UNKNOWN:I = -0x1

.field public static final NETWORK_UNAVAILABLE_KEY:Ljava/lang/String; = "networkUnvailable"

.field public static final PHONE_IN_ECM_STATE:Ljava/lang/String; = "phoneinECMState"

.field public static final PHONE_NAME_KEY:Ljava/lang/String; = "phoneName"

.field public static final PHONE_TYPE_CDMA:I = 0x2

.field public static final PHONE_TYPE_GSM:I = 0x1

.field public static final PHONE_TYPE_NONE:I = 0x0

.field public static final PHONE_TYPE_SIP:I = 0x3

.field public static final PIN_GENERAL_FAILURE:I = 0x2

.field public static final PIN_PASSWORD_INCORRECT:I = 0x1

.field public static final PIN_RESULT_SUCCESS:I = 0x0

.field public static PRESENTATION_ALLOWED:I = 0x0

.field public static PRESENTATION_PAYPHONE:I = 0x0

.field public static PRESENTATION_RESTRICTED:I = 0x0

.field public static PRESENTATION_UNKNOWN:I = 0x0

.field public static final QOS_REQUEST_FAILURE:I = 0x1

.field public static final QOS_REQUEST_SUCCESS:I = 0x0

.field public static final REASON_APN_CHANGED:Ljava/lang/String; = "apnChanged"

.field public static final REASON_APN_FAILED:Ljava/lang/String; = "apnFailed"

.field public static final REASON_APN_SWITCHED:Ljava/lang/String; = "apnSwitched"

.field public static final REASON_CDMA_DATA_ATTACHED:Ljava/lang/String; = "cdmaDataAttached"

.field public static final REASON_CDMA_DATA_DETACHED:Ljava/lang/String; = "cdmaDataDetached"

.field public static final REASON_DATA_ATTACHED:Ljava/lang/String; = "dataAttached"

.field public static final REASON_DATA_DEPENDENCY_MET:Ljava/lang/String; = "dependencyMet"

.field public static final REASON_DATA_DEPENDENCY_UNMET:Ljava/lang/String; = "dependencyUnmet"

.field public static final REASON_DATA_DETACHED:Ljava/lang/String; = "dataDetached"

.field public static final REASON_DATA_DISABLED:Ljava/lang/String; = "dataDisabled"

.field public static final REASON_DATA_ENABLED:Ljava/lang/String; = "dataEnabled"

.field public static final REASON_DATA_READINESS_CHECKS_MODIFIED:Ljava/lang/String; = "dataReadinessChecksModified"

.field public static final REASON_DIALUP_OFF:Ljava/lang/String; = "dialupOff"

.field public static final REASON_DIALUP_ON:Ljava/lang/String; = "dialupOn"

.field public static final REASON_DUALIP_PARTIAL_FAILURE_RETRY:Ljava/lang/String; = "DualIpPartialFailureRetry"

.field public static final REASON_LINK_PROPERTIES_CHANGED:Ljava/lang/String; = "linkPropertiesChanged"

.field public static final REASON_NV_READY:Ljava/lang/String; = "NvReady"

.field public static final REASON_NW_TYPE_CHANGED:Ljava/lang/String; = "nwTypeChanged"

.field public static final REASON_PDP_RESET:Ljava/lang/String; = "pdpReset"

.field public static final REASON_PS_RESTRICT_DISABLED:Ljava/lang/String; = "psRestrictDisabled"

.field public static final REASON_PS_RESTRICT_ENABLED:Ljava/lang/String; = "psRestrictEnabled"

.field public static final REASON_RADIO_TURNED_OFF:Ljava/lang/String; = "radioTurnedOff"

.field public static final REASON_RAT_CHANGED:Ljava/lang/String; = "RatChanged"

.field public static final REASON_RESTORE_DEFAULT_APN:Ljava/lang/String; = "restoreDefaultApn"

.field public static final REASON_ROAMING_OFF:Ljava/lang/String; = "roamingOff"

.field public static final REASON_ROAMING_ON:Ljava/lang/String; = "roamingOn"

.field public static final REASON_SIM_LOADED:Ljava/lang/String; = "simLoaded"

.field public static final REASON_SINGLE_PDN_ARBITRATION:Ljava/lang/String; = "SinglePdnArbitration"

.field public static final REASON_TETHERED_MODE_STATE_CHANGED:Ljava/lang/String; = "tetheredModeStateChanged"

.field public static final REASON_VOICE_CALL_ENDED:Ljava/lang/String; = "2GVoiceCallEnded"

.field public static final REASON_VOICE_CALL_STARTED:Ljava/lang/String; = "2GVoiceCallStarted"

.field public static final STATE_CHANGE_REASON_KEY:Ljava/lang/String; = "reason"

.field public static final STATE_KEY:Ljava/lang/String; = "state"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    sput v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    .line 68
    const/4 v0, 0x2

    sput v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    .line 69
    const/4 v0, 0x3

    sput v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    .line 70
    const/4 v0, 0x4

    sput v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_PAYPHONE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
