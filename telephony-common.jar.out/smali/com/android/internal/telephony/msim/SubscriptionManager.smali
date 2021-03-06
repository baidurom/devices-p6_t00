.class public Lcom/android/internal/telephony/msim/SubscriptionManager;
.super Landroid/os/Handler;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;,
        Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;,
        Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;
    }
.end annotation


# static fields
.field public static final DUAL_CARD_MODE_CDMA:I = 0x0

.field public static final DUAL_CARD_MODE_GLOBAL_CDMA:I = 0x2

.field public static final DUAL_CARD_MODE_GLOBAL_GSM:I = 0x3

.field public static final DUAL_CARD_MODE_GSM:I = 0x1

.field private static final EVENT_ALL_CARD_INFO_AVAILABLE:I = 0x2

.field private static final EVENT_ALL_DATA_DISCONNECTED:I = 0x9

.field private static final EVENT_CARD_INFO_AVAILABLE:I = 0x0

.field private static final EVENT_CARD_INFO_NOT_AVAILABLE:I = 0x1

.field private static final EVENT_CLEANUP_DATA_CONNECTION_DONE:I = 0x7

.field private static final EVENT_DISABLE_DATA_CONNECTION_DONE:I = 0x8

.field private static final EVENT_DISABLE_DATA_CONNECTION_DONE_DSDA:I = 0xd

.field private static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0xb

.field private static final EVENT_RADIO_ON:I = 0xa

.field private static final EVENT_RADIO_STATE_CHANGED:I = 0xc

.field private static final EVENT_SET_DATA_SUBSCRIPTION_DONE:I = 0x6

.field private static final EVENT_SET_SUBSCRIPTION_MODE_DONE:I = 0x3

.field private static final EVENT_SET_UICC_SUBSCRIPTION_DONE:I = 0x4

.field private static final EVENT_SUBSCRIPTION_STATUS_CHANGED:I = 0x5

.field static final HUAWEI_DSDA:Ljava/lang/String; = "ro.config.hw_dsda"

.field static final LOG_TAG:Ljava/lang/String; = "SubscriptionManager"

.field public static NUM_SUBSCRIPTIONS:I = 0x0

.field public static final SUB_ACTIVATE_FAILED:Ljava/lang/String; = "ACTIVATE FAILED"

.field public static final SUB_ACTIVATE_NOT_SUPPORTED:Ljava/lang/String; = "ACTIVATE NOT SUPPORTED"

.field public static final SUB_ACTIVATE_SUCCESS:Ljava/lang/String; = "ACTIVATE SUCCESS"

.field public static final SUB_DEACTIVATE_FAILED:Ljava/lang/String; = "DEACTIVATE FAILED"

.field public static final SUB_DEACTIVATE_NOT_SUPPORTED:Ljava/lang/String; = "DEACTIVATE NOT SUPPORTED"

.field public static final SUB_DEACTIVATE_SUCCESS:Ljava/lang/String; = "DEACTIVATE SUCCESS"

.field private static SUB_ID:Ljava/lang/String; = null

.field public static final SUB_NOT_CHANGED:Ljava/lang/String; = "NO CHANGE IN SUBSCRIPTION"

.field private static SUB_STATE:Ljava/lang/String; = null

.field private static final SUB_STATUS_ACTIVATED:I = 0x1

.field private static final SUB_STATUS_DEACTIVATED:I

.field private static USER_PREF_SUB_FIELDS:I

.field private static sSubscriptionManager:Lcom/android/internal/telephony/msim/SubscriptionManager;


# instance fields
.field private final EVENT_ADJUST_PROP_MTKSLOTID:I

.field private IS_CHINA_TELECOM:Z

.field private mActivatePending:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;",
            "Lcom/android/internal/telephony/msim/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field private mAdjustPropMtkSlotId:Z

.field private mAllCardsStatusAvailable:Z

.field private mCCardChanged:Z

.field private mCardInfoAvailable:[Z

.field private mCardSubMgr:Lcom/android/internal/telephony/msim/CardSubscriptionManager;

.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrentDds:I

.field private mCurrentSubscriptions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;",
            "Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDataActive:Z

.field private mDeactivatePending:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;",
            "Lcom/android/internal/telephony/msim/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field private mDesiredRadioStates:[Lcom/android/internal/telephony/CommandsInterface$RadioState;

.field private mDisableDdsInProgress:Z

.field private mFirstPowerUp:Z

.field private mHuaweiDSDA:Z

.field private mIsNewCard:[Z

.field private mOperationDones:[Z

.field private mQueuedDds:I

.field private mRadioOn:[Z

.field private mSetDdsCompleteMsg:Landroid/os/Message;

.field private mSetDdsRequired:Z

.field private mSetSubsModeRequired:Z

.field private mSetSubscriptionInProgress:Z

.field private mSetSubscriptionRegistrants:Landroid/os/RegistrantList;

.field private mSubActivatedRegistrants:[Landroid/os/RegistrantList;

.field private mSubActivatedRegistrantsOnSlot:[Landroid/os/RegistrantList;

.field private mSubDeactivatedRegistrants:[Landroid/os/RegistrantList;

.field private mSubDeactivatedRegistrantsOnSlot:[Landroid/os/RegistrantList;

.field private mSubResult:[Ljava/lang/String;

.field private mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

.field private mcardDefault:[Z

.field private mlastIccIds:[Ljava/lang/String;

.field private oldDataSub:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    const-string v0, "state"

    sput-object v0, Lcom/android/internal/telephony/msim/SubscriptionManager;->SUB_STATE:Ljava/lang/String;

    .line 109
    const-string v0, "subID"

    sput-object v0, Lcom/android/internal/telephony/msim/SubscriptionManager;->SUB_ID:Ljava/lang/String;

    .line 151
    const/4 v0, 0x2

    sput v0, Lcom/android/internal/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    .line 156
    const/16 v0, 0x8

    sput v0, Lcom/android/internal/telephony/msim/SubscriptionManager;->USER_PREF_SUB_FIELDS:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 8
    .parameter "context"
    .parameter "UiccController"
    .parameter "ci"

    .prologue
    .line 305
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 87
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput-object v7, v5, v6

    iput-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mlastIccIds:[Ljava/lang/String;

    .line 88
    const/4 v5, 0x2

    new-array v5, v5, [Z

    fill-array-data v5, :array_0

    iput-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mcardDefault:[Z

    .line 93
    const/4 v5, 0x2

    new-array v5, v5, [Lcom/android/internal/telephony/CommandsInterface$RadioState;

    const/4 v6, 0x0

    sget-object v7, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    aput-object v7, v5, v6

    iput-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDesiredRadioStates:[Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 94
    const/4 v5, 0x2

    new-array v5, v5, [Z

    fill-array-data v5, :array_1

    iput-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mOperationDones:[Z

    .line 95
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mHuaweiDSDA:Z

    .line 112
    const-string v5, "ro.config.hw_opta"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "92"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "ro.config.hw_optb"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "156"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    iput-boolean v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->IS_CHINA_TELECOM:Z

    .line 182
    const/16 v5, 0xe

    iput v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->EVENT_ADJUST_PROP_MTKSLOTID:I

    .line 209
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    .line 212
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubsModeRequired:Z

    .line 214
    const/4 v5, 0x2

    new-array v5, v5, [Z

    fill-array-data v5, :array_2

    iput-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardInfoAvailable:[Z

    .line 221
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mAllCardsStatusAvailable:Z

    .line 223
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetDdsRequired:Z

    .line 229
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionInProgress:Z

    .line 233
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDataActive:Z

    .line 235
    const/4 v5, 0x2

    new-array v5, v5, [Z

    fill-array-data v5, :array_3

    iput-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mIsNewCard:[Z

    .line 239
    new-instance v5, Landroid/os/RegistrantList;

    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionRegistrants:Landroid/os/RegistrantList;

    .line 241
    sget v5, Lcom/android/internal/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubResult:[Ljava/lang/String;

    .line 243
    const/4 v5, 0x2

    new-array v5, v5, [Z

    fill-array-data v5, :array_4

    iput-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mRadioOn:[Z

    .line 246
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCCardChanged:Z

    .line 247
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mFirstPowerUp:Z

    .line 251
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mAdjustPropMtkSlotId:Z

    .line 262
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->oldDataSub:I

    .line 306
    const-string v5, "Constructor - Enter"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 308
    iput-object p1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 311
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getUserPreferredSubs()V

    .line 313
    invoke-static {p1, p2, p3}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardSubMgr:Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    .line 314
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/4 v5, 0x2

    if-ge v1, v5, :cond_1

    .line 315
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardSubMgr:Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v1, p0, v6, v7}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->registerForCardInfoAvailable(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 316
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardSubMgr:Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v1, p0, v6, v7}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->registerForCardInfoUnavailable(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 314
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 112
    .end local v1           #i:I
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 318
    .restart local v1       #i:I
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardSubMgr:Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {v5, p0, v6, v7}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->registerForAllCardsInfoAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 320
    iput-object p3, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 321
    const/4 v1, 0x0

    :goto_2
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v5, v5

    if-ge v1, v5, :cond_2

    .line 322
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v1

    const/4 v6, 0x5

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForSubscriptionStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 323
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v1

    const/16 v6, 0xb

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 325
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v1

    const/16 v6, 0xa

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 328
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v1

    const/16 v6, 0xc

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 321
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 333
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/16 v6, 0xe

    const/4 v7, 0x0

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForUnsolPropMtkSlotid(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 336
    const/4 v5, 0x2

    new-array v5, v5, [Landroid/os/RegistrantList;

    iput-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubDeactivatedRegistrants:[Landroid/os/RegistrantList;

    .line 337
    const/4 v5, 0x2

    new-array v5, v5, [Landroid/os/RegistrantList;

    iput-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubActivatedRegistrants:[Landroid/os/RegistrantList;

    .line 339
    const/4 v5, 0x2

    new-array v5, v5, [Landroid/os/RegistrantList;

    iput-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubDeactivatedRegistrantsOnSlot:[Landroid/os/RegistrantList;

    .line 340
    const/4 v5, 0x2

    new-array v5, v5, [Landroid/os/RegistrantList;

    iput-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubActivatedRegistrantsOnSlot:[Landroid/os/RegistrantList;

    .line 342
    const/4 v1, 0x0

    :goto_3
    const/4 v5, 0x2

    if-ge v1, v5, :cond_3

    .line 343
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubDeactivatedRegistrants:[Landroid/os/RegistrantList;

    new-instance v6, Landroid/os/RegistrantList;

    invoke-direct {v6}, Landroid/os/RegistrantList;-><init>()V

    aput-object v6, v5, v1

    .line 344
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubActivatedRegistrants:[Landroid/os/RegistrantList;

    new-instance v6, Landroid/os/RegistrantList;

    invoke-direct {v6}, Landroid/os/RegistrantList;-><init>()V

    aput-object v6, v5, v1

    .line 346
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubDeactivatedRegistrantsOnSlot:[Landroid/os/RegistrantList;

    new-instance v6, Landroid/os/RegistrantList;

    invoke-direct {v6}, Landroid/os/RegistrantList;-><init>()V

    aput-object v6, v5, v1

    .line 347
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubActivatedRegistrantsOnSlot:[Landroid/os/RegistrantList;

    new-instance v6, Landroid/os/RegistrantList;

    invoke-direct {v6}, Landroid/os/RegistrantList;-><init>()V

    aput-object v6, v5, v1

    .line 342
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 350
    :cond_3
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    .line 351
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    .line 352
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_4
    if-ge v2, v3, :cond_4

    aget-object v4, v0, v2

    .line 353
    .local v4, t:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 359
    .end local v4           #t:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->getDataSubscription()I

    move-result v5

    iput v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    .line 360
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In MSimProxyManager constructor current active dds is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 362
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    .line 363
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v3, :cond_5

    aget-object v4, v0, v2

    .line 364
    .restart local v4       #t:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    new-instance v6, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;

    invoke-direct {v6, p0}, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;-><init>(Lcom/android/internal/telephony/msim/SubscriptionManager;)V

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 368
    .end local v4           #t:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    :cond_5
    const-string v5, "ro.config.hw_dsda"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mHuaweiDSDA:Z

    .line 372
    const/4 v5, -0x1

    const-string v6, "persist.radio.hw.ctmode"

    const/4 v7, -0x1

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-ne v5, v6, :cond_6

    .line 373
    const-string v5, "persist.radio.hw.ctmode"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :cond_6
    const-string v5, "Constructor - Exit"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 377
    return-void

    .line 88
    :array_0
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 94
    nop

    :array_1
    .array-data 0x1
        0x1t
        0x1t
    .end array-data

    .line 214
    nop

    :array_2
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 235
    nop

    :array_3
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 243
    nop

    :array_4
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method private getCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription;
    .locals 1
    .parameter "subId"

    .prologue
    .line 1805
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;->sub:Lcom/android/internal/telephony/msim/Subscription;

    return-object v0
.end method

.method private getCurrentSubscriptionReadiness(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Z
    .locals 1
    .parameter "subId"

    .prologue
    .line 1828
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;

    iget-boolean v0, v0, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;->subReady:Z

    return v0
.end method

.method private getCurrentSubscriptionStatus(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;
    .locals 1
    .parameter "subId"

    .prologue
    .line 1824
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;->sub:Lcom/android/internal/telephony/msim/Subscription;

    iget-object v0, v0, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    return-object v0
.end method

.method public static getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;
    .locals 1

    .prologue
    .line 295
    sget-object v0, Lcom/android/internal/telephony/msim/SubscriptionManager;->sSubscriptionManager:Lcom/android/internal/telephony/msim/SubscriptionManager;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/msim/SubscriptionManager;
    .locals 2
    .parameter "context"
    .parameter "uiccController"
    .parameter "ci"

    .prologue
    .line 283
    const-string v0, "SubscriptionManager"

    const-string v1, "getInstance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    sget-object v0, Lcom/android/internal/telephony/msim/SubscriptionManager;->sSubscriptionManager:Lcom/android/internal/telephony/msim/SubscriptionManager;

    if-nez v0, :cond_0

    .line 285
    new-instance v0, Lcom/android/internal/telephony/msim/SubscriptionManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/msim/SubscriptionManager;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/android/internal/telephony/msim/SubscriptionManager;->sSubscriptionManager:Lcom/android/internal/telephony/msim/SubscriptionManager;

    .line 287
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/msim/SubscriptionManager;->sSubscriptionManager:Lcom/android/internal/telephony/msim/SubscriptionManager;

    return-object v0
.end method

.method private getSetSubscriptionResults()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 1150
    sget v2, Lcom/android/internal/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    new-array v1, v2, [Ljava/lang/String;

    .line 1151
    .local v1, result:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v2, Lcom/android/internal/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge v0, v2, :cond_0

    .line 1152
    iget-object v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;->cause:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 1151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1155
    :cond_0
    return-object v1
.end method

.method private getStringFrom(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "str"

    .prologue
    .line 2355
    if-eqz p1, :cond_0

    if-eqz p1, :cond_1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2356
    :cond_0
    const/4 p1, 0x0

    .line 2358
    .end local p1
    :cond_1
    return-object p1
.end method

.method private getUserPreferredSubs()V
    .locals 13

    .prologue
    const/4 v10, 0x2

    const/4 v12, 0x0

    const/4 v11, -0x1

    .line 2201
    const/4 v1, 0x0

    .line 2203
    .local v1, errorOnParsing:Z
    new-instance v8, Lcom/android/internal/telephony/msim/SubscriptionData;

    sget v9, Lcom/android/internal/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/msim/SubscriptionData;-><init>(I)V

    iput-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    .line 2205
    new-array v8, v10, [Ljava/lang/String;

    iput-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mlastIccIds:[Ljava/lang/String;

    .line 2208
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    sget v8, Lcom/android/internal/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge v3, v8, :cond_7

    .line 2209
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/Settings$System;->USER_PREFERRED_SUBS:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2211
    .local v6, strUserSub:Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 2212
    const-string v8, "SubscriptionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getUserPreferredSubs: strUserSub = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2215
    :try_start_0
    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2218
    .local v5, splitUserSub:[Ljava/lang/String;
    array-length v8, v5

    sget v9, Lcom/android/internal/telephony/msim/SubscriptionManager;->USER_PREF_SUB_FIELDS:I

    if-ne v8, v9, :cond_6

    .line 2219
    const/4 v8, 0x0

    aget-object v8, v5, v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2220
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v8, v8, v3

    const/4 v9, 0x0

    aget-object v9, v5, v9

    iput-object v9, v8, Lcom/android/internal/telephony/msim/Subscription;->iccId:Ljava/lang/String;

    .line 2222
    :cond_0
    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 2223
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v8, v8, v3

    const/4 v9, 0x1

    aget-object v9, v5, v9

    iput-object v9, v8, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    .line 2225
    :cond_1
    const/4 v8, 0x2

    aget-object v8, v5, v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 2226
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v8, v8, v3

    const/4 v9, 0x2

    aget-object v9, v5, v9

    iput-object v9, v8, Lcom/android/internal/telephony/msim/Subscription;->appId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2230
    :cond_2
    const/4 v8, 0x3

    :try_start_1
    aget-object v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 2231
    .local v7, subStatus:I
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v8, v8, v3

    invoke-static {}, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->values()[Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    move-result-object v9

    aget-object v9, v9, v7

    iput-object v9, v8, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2238
    .end local v7           #subStatus:I
    :goto_1
    :try_start_2
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v8, v8, v3

    const/4 v9, 0x4

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/android/internal/telephony/msim/Subscription;->m3gppIndex:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2245
    :goto_2
    :try_start_3
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v8, v8, v3

    const/4 v9, 0x5

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/android/internal/telephony/msim/Subscription;->m3gpp2Index:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_3 .. :try_end_3} :catch_1

    .line 2254
    :goto_3
    :try_start_4
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v8, v8, v3

    const/4 v9, 0x6

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v8, Lcom/android/internal/telephony/msim/Subscription;->slotId:I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_4 .. :try_end_4} :catch_1

    .line 2262
    :goto_4
    :try_start_5
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mlastIccIds:[Ljava/lang/String;

    const/4 v9, 0x7

    aget-object v9, v5, v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getStringFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_5 .. :try_end_5} :catch_1

    .line 2280
    .end local v5           #splitUserSub:[Ljava/lang/String;
    :cond_3
    :goto_5
    if-eqz v6, :cond_4

    if-eqz v1, :cond_5

    .line 2282
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ",,,"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_INVALID:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    invoke-virtual {v9}, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->ordinal()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2291
    .local v0, defaultUserSub:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/Settings$System;->USER_PREFERRED_SUBS:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-static {v8, v9, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2294
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v8, v8, v3

    iput-object v12, v8, Lcom/android/internal/telephony/msim/Subscription;->iccId:Ljava/lang/String;

    .line 2295
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v8, v8, v3

    iput-object v12, v8, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    .line 2296
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v8, v8, v3

    iput-object v12, v8, Lcom/android/internal/telephony/msim/Subscription;->appId:Ljava/lang/String;

    .line 2297
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v8, v8, v3

    sget-object v9, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_INVALID:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iput-object v9, v8, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    .line 2298
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v8, v8, v3

    iput v11, v8, Lcom/android/internal/telephony/msim/Subscription;->m3gppIndex:I

    .line 2299
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v8, v8, v3

    iput v11, v8, Lcom/android/internal/telephony/msim/Subscription;->m3gpp2Index:I

    .line 2302
    .end local v0           #defaultUserSub:Ljava/lang/String;
    :cond_5
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v8, v8, v3

    iput v3, v8, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    .line 2304
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getUserPreferredSubs: mUserPrefSubs.subscription["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v9, v9, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 2208
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 2232
    .restart local v5       #splitUserSub:[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 2233
    .local v2, ex:Ljava/lang/NumberFormatException;
    :try_start_6
    const-string v8, "SubscriptionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getUserPreferredSubs: NumberFormatException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2234
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v8, v8, v3

    sget-object v9, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_INVALID:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iput-object v9, v8, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;
    :try_end_6
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    .line 2273
    .end local v2           #ex:Ljava/lang/NumberFormatException;
    .end local v5           #splitUserSub:[Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 2274
    .local v4, pe:Ljava/util/regex/PatternSyntaxException;
    const-string v8, "SubscriptionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getUserPreferredSubs: PatternSyntaxException while split : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2275
    const/4 v1, 0x1

    goto/16 :goto_5

    .line 2239
    .end local v4           #pe:Ljava/util/regex/PatternSyntaxException;
    .restart local v5       #splitUserSub:[Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 2240
    .restart local v2       #ex:Ljava/lang/NumberFormatException;
    :try_start_7
    const-string v8, "SubscriptionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getUserPreferredSubs:m3gppIndex: NumberFormatException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2241
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v8, v8, v3

    const/4 v9, -0x1

    iput v9, v8, Lcom/android/internal/telephony/msim/Subscription;->m3gppIndex:I

    goto/16 :goto_2

    .line 2246
    .end local v2           #ex:Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v2

    .line 2247
    .restart local v2       #ex:Ljava/lang/NumberFormatException;
    const-string v8, "SubscriptionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getUserPreferredSubs:m3gpp2Index: NumberFormatException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2248
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v8, v8, v3

    const/4 v9, -0x1

    iput v9, v8, Lcom/android/internal/telephony/msim/Subscription;->m3gpp2Index:I

    goto/16 :goto_3

    .line 2255
    .end local v2           #ex:Ljava/lang/NumberFormatException;
    :catch_4
    move-exception v2

    .line 2256
    .restart local v2       #ex:Ljava/lang/NumberFormatException;
    const-string v8, "SubscriptionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getUserPreferredSubs:slotId: NumberFormatException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2257
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v8, v8, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v8, v8, v3

    const/4 v9, -0x1

    iput v9, v8, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    goto/16 :goto_4

    .line 2263
    .end local v2           #ex:Ljava/lang/NumberFormatException;
    :catch_5
    move-exception v2

    .line 2264
    .restart local v2       #ex:Ljava/lang/NumberFormatException;
    const-string v8, "SubscriptionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getmlastIccIds: NumberFormatException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2265
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mlastIccIds:[Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v9, v8, v3

    goto/16 :goto_5

    .line 2270
    .end local v2           #ex:Ljava/lang/NumberFormatException;
    :cond_6
    const-string v8, "SubscriptionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getUserPreferredSubs: splitUserSub.length != "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/internal/telephony/msim/SubscriptionManager;->USER_PREF_SUB_FIELDS:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_7 .. :try_end_7} :catch_1

    .line 2271
    const/4 v1, 0x1

    goto/16 :goto_5

    .line 2307
    .end local v5           #splitUserSub:[Ljava/lang/String;
    .end local v6           #strUserSub:Ljava/lang/String;
    :cond_7
    return-void
.end method

.method private isAllCardsInfoAvailable()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1484
    const/4 v4, 0x1

    .line 1485
    .local v4, result:Z
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardInfoAvailable:[Z

    .local v0, arr$:[Z
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-boolean v1, v0, v2

    .line 1486
    .local v1, available:Z
    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    move v4, v5

    .line 1485
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v4, v6

    .line 1486
    goto :goto_1

    .line 1488
    .end local v1           #available:Z
    :cond_1
    if-nez v4, :cond_2

    iget-boolean v7, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mAllCardsStatusAvailable:Z

    if-eqz v7, :cond_3

    :cond_2
    move v6, v5

    :cond_3
    return v6
.end method

.method private isAllRadioOn()Z
    .locals 5

    .prologue
    .line 1476
    const/4 v4, 0x1

    .line 1477
    .local v4, result:Z
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mRadioOn:[Z

    .local v0, arr$:[Z
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-boolean v3, v0, v1

    .line 1478
    .local v3, radioOn:Z
    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    .line 1477
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1478
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 1480
    .end local v3           #radioOn:Z
    :cond_1
    return v4
.end method

.method private isAnyPendingActivateRequest(I)Z
    .locals 3
    .parameter "subId"

    .prologue
    .line 1749
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/msim/Subscription;

    .line 1750
    .local v0, newSub:Lcom/android/internal/telephony/msim/Subscription;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v2, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v1, v2, :cond_0

    .line 1752
    const/4 v1, 0x1

    .line 1754
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isNewCardAvailable()Z
    .locals 5

    .prologue
    .line 1491
    const/4 v4, 0x0

    .line 1492
    .local v4, result:Z
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mIsNewCard:[Z

    .local v0, arr$:[Z
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_2

    aget-boolean v2, v0, v1

    .line 1493
    .local v2, isNew:Z
    if-nez v4, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    const/4 v4, 0x1

    .line 1492
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1493
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 1495
    .end local v2           #isNew:Z
    :cond_2
    return v4
.end method

.method private isPresentInActivatePendingList(Lcom/android/internal/telephony/msim/Subscription;)Z
    .locals 6
    .parameter "userSub"

    .prologue
    .line 1446
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v1

    .local v1, arr$:[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    .line 1447
    .local v4, sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/msim/Subscription;

    .line 1448
    .local v0, actPendingSub:Lcom/android/internal/telephony/msim/Subscription;
    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/msim/Subscription;->isSame(Lcom/android/internal/telephony/msim/Subscription;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1449
    const/4 v5, 0x1

    .line 1452
    .end local v0           #actPendingSub:Lcom/android/internal/telephony/msim/Subscription;
    .end local v4           #sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    :goto_1
    return v5

    .line 1446
    .restart local v0       #actPendingSub:Lcom/android/internal/telephony/msim/Subscription;
    .restart local v4       #sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1452
    .end local v0           #actPendingSub:Lcom/android/internal/telephony/msim/Subscription;
    .end local v4           #sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 2371
    const-string v0, "SubscriptionManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2372
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 2375
    const-string v0, "SubscriptionManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2376
    return-void
.end method

.method private notifySlotSubscriptionActivated(I)V
    .locals 3
    .parameter "subId"

    .prologue
    .line 1923
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v0

    .line 1924
    .local v0, changedSub:Lcom/android/internal/telephony/msim/Subscription;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySlotSubscriptionActivated changedSub = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1925
    if-eqz v0, :cond_0

    const/4 v1, -0x1

    iget v2, v0, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    if-eq v1, v2, :cond_0

    .line 1926
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySlotSubscriptionActivated:subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1927
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubActivatedRegistrantsOnSlot:[Landroid/os/RegistrantList;

    iget v2, v0, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1929
    :cond_0
    return-void
.end method

.method private notifySlotSubscriptionDeactivated(I)V
    .locals 3
    .parameter "subId"

    .prologue
    .line 1910
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v0

    .line 1911
    .local v0, changedSub:Lcom/android/internal/telephony/msim/Subscription;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySlotSubscriptionDeactivated changedSub = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1912
    if-eqz v0, :cond_0

    const/4 v1, -0x1

    iget v2, v0, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    if-eq v1, v2, :cond_0

    .line 1913
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySlotSubscriptionDeactivated:subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1914
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubDeactivatedRegistrantsOnSlot:[Landroid/os/RegistrantList;

    iget v2, v0, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1916
    :cond_0
    return-void
.end method

.method private notifySubscriptionActivated(I)V
    .locals 1
    .parameter "subId"

    .prologue
    .line 1901
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubActivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1902
    return-void
.end method

.method private notifySubscriptionDeactivated(I)V
    .locals 1
    .parameter "subId"

    .prologue
    .line 1893
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubDeactivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1894
    return-void
.end method

.method private printPendingActivateRequests()V
    .locals 7

    .prologue
    .line 1597
    const-string v5, "ActivatePending Queue : "

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1598
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 1599
    .local v4, sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/msim/Subscription;

    .line 1600
    .local v3, newSub:Lcom/android/internal/telephony/msim/Subscription;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1598
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1602
    .end local v3           #newSub:Lcom/android/internal/telephony/msim/Subscription;
    .end local v4           #sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    :cond_0
    return-void
.end method

.method private printPendingDeactivateRequests()V
    .locals 7

    .prologue
    .line 1608
    const-string v5, "DeactivatePending Queue : "

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1609
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 1610
    .local v4, sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/msim/Subscription;

    .line 1611
    .local v3, newSub:Lcom/android/internal/telephony/msim/Subscription;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1609
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1613
    .end local v3           #newSub:Lcom/android/internal/telephony/msim/Subscription;
    .end local v4           #sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    :cond_0
    return-void
.end method

.method private processActivateRequests()V
    .locals 2

    .prologue
    .line 1667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processActivateRequests: mSetSubscriptionInProgress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionInProgress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSetSubsModeRequired = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubsModeRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1670
    iget-boolean v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionInProgress:Z

    if-nez v0, :cond_0

    .line 1671
    iget-boolean v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubsModeRequired:Z

    if-eqz v0, :cond_1

    .line 1672
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->setSubscriptionMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionInProgress:Z

    .line 1673
    iget-boolean v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionInProgress:Z

    if-eqz v0, :cond_0

    .line 1674
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubsModeRequired:Z

    .line 1680
    :cond_0
    :goto_0
    return-void

    .line 1678
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->startNextPendingActivateRequests()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionInProgress:Z

    goto :goto_0
.end method

.method private processAdjustProp()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 2584
    const-string v1, "SubscriptionManager"

    const-string v2, "processAdjustProp"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2586
    invoke-static {}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDefault()Lcom/huawei/telephony/HuaweiTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDualCardMode()I

    move-result v0

    .line 2587
    .local v0, ctmode:I
    if-eqz v0, :cond_0

    if-ne v4, v0, :cond_2

    .line 2588
    :cond_0
    const-string v1, "persist.radio.switchto.modem"

    const-string v2, "MODEM_CDMA"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2593
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->clearCGIccid()V

    .line 2594
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->resetCardsSubsInfo()V

    .line 2595
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->setAdjustPropMtkSlotId(Z)V

    .line 2596
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/msim/SubscriptionManager;->restartRild(I)V

    .line 2597
    return-void

    .line 2589
    :cond_2
    if-eq v3, v0, :cond_3

    const/4 v1, 0x3

    if-ne v1, v0, :cond_1

    .line 2590
    :cond_3
    const-string v1, "persist.radio.switchto.modem"

    const-string v2, "MODEM_GSM"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processAllCardsInfoAvailable()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 1250
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->isAllRadioOn()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1251
    const-string v2, "processAllCardsInfoAvailable: Radio Not Available "

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1286
    :cond_0
    :goto_0
    return-void

    .line 1257
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mHuaweiDSDA:Z

    if-eqz v2, :cond_2

    .line 1258
    const-string v2, "SubscriptionManager"

    const-string v3, "processAllCardsInfoAvailable, DSDA do nothing!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1264
    :cond_2
    const/4 v0, 0x0

    .line 1265
    .local v0, availableCards:I
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mAllCardsStatusAvailable:Z

    .line 1267
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_5

    .line 1268
    iget-object v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardInfoAvailable:[Z

    aget-boolean v2, v2, v1

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardSubMgr:Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->isCardAbsentOrError(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1269
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 1267
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1273
    :cond_5
    if-ne v0, v3, :cond_6

    iget-boolean v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionInProgress:Z

    if-nez v2, :cond_6

    .line 1275
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->processActivateRequests()V

    .line 1278
    :cond_6
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->isNewCardAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1281
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->notifyNewCardsAvailable()V

    .line 1282
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mIsNewCard:[Z

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 1283
    iget-object v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mIsNewCard:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    .line 1282
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private processAllDataDisconnected(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    .line 849
    if-nez p1, :cond_1

    .line 850
    const-string v2, "processAllDataDisconnected: ar is null!! return!!"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 868
    :cond_0
    :goto_0
    return-void

    .line 854
    :cond_1
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 855
    .local v0, sub:Ljava/lang/Integer;
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v1, v2, v3

    .line 856
    .local v1, subId:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processAllDataDisconnected: sub = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - subscriptionReadiness["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscriptionReadiness(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 859
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscriptionReadiness(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 861
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->notifySlotSubscriptionDeactivated(I)V

    .line 863
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->resetCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)V

    .line 865
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->updateSubPreferences()V

    .line 866
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->notifySubscriptionDeactivated(I)V

    goto :goto_0
.end method

.method private processCardInfoAvailable(Landroid/os/AsyncResult;)V
    .locals 14
    .parameter "ar"

    .prologue
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 1348
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 1351
    .local v1, cardIndex:Ljava/lang/Integer;
    iget-boolean v10, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mHuaweiDSDA:Z

    if-eqz v10, :cond_2

    .line 1352
    const-string v10, "SubscriptionManager"

    const-string v11, "processCardInfoAvailable, DSDA do nothing!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    iget-object v10, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "airplane_mode_on"

    invoke-static {v10, v11, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_1

    .line 1355
    const-string v10, "processCardInfoAvailableDSDA, airPlaneModeOn = true! do nothing!"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1443
    :cond_0
    :goto_0
    return-void

    .line 1359
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/msim/SubscriptionManager;->processCardInfoAvailableDSDA(I)V

    goto :goto_0

    .line 1365
    :cond_2
    iget-object v10, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mRadioOn:[Z

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aget-boolean v10, v10, v11

    if-nez v10, :cond_3

    .line 1366
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processCardInfoAvailable: Radio Not Available on cardIndex = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 1370
    :cond_3
    iget-object v10, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardInfoAvailable:[Z

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aput-boolean v12, v10, v11

    .line 1376
    iget-object v10, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardSubMgr:Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->getCardSubscriptions(I)Lcom/android/internal/telephony/msim/SubscriptionData;

    move-result-object v2

    .line 1378
    .local v2, cardSubInfo:Lcom/android/internal/telephony/msim/SubscriptionData;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processCardInfoAvailable: cardIndex = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n Card Sub Info = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1381
    iget-object v10, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v0, v10, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    .local v0, arr$:[Lcom/android/internal/telephony/msim/Subscription;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_5

    aget-object v9, v0, v5

    .line 1382
    .local v9, userSub:Lcom/android/internal/telephony/msim/Subscription;
    iget v8, v9, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    .line 1383
    .local v8, subId:I
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v10

    aget-object v10, v10, v8

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v3

    .line 1385
    .local v3, currentSub:Lcom/android/internal/telephony/msim/Subscription;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processCardInfoAvailable: subId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n user pref sub = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n current sub   = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1389
    iget-object v10, v9, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v11, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v10, v11, :cond_4

    iget-object v10, v3, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v11, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-eq v10, v11, :cond_4

    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/msim/SubscriptionData;->hasSubscription(Lcom/android/internal/telephony/msim/Subscription;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/msim/SubscriptionManager;->isPresentInActivatePendingList(Lcom/android/internal/telephony/msim/Subscription;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 1393
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processCardInfoAvailable: subId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " need to activate!!!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1399
    iget-object v10, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v11

    aget-object v11, v11, v8

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_4

    .line 1400
    new-instance v7, Lcom/android/internal/telephony/msim/Subscription;

    invoke-direct {v7}, Lcom/android/internal/telephony/msim/Subscription;-><init>()V

    .line 1401
    .local v7, sub:Lcom/android/internal/telephony/msim/Subscription;
    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/msim/SubscriptionData;->getSubscription(Lcom/android/internal/telephony/msim/Subscription;)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/android/internal/telephony/msim/Subscription;->copyFrom(Lcom/android/internal/telephony/msim/Subscription;)Lcom/android/internal/telephony/msim/Subscription;

    .line 1402
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v7, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    .line 1403
    iput v8, v7, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    .line 1404
    sget-object v10, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iput-object v10, v7, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    .line 1405
    iget-object v10, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v11

    aget-object v11, v11, v8

    invoke-virtual {v10, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1381
    .end local v7           #sub:Lcom/android/internal/telephony/msim/Subscription;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 1414
    .end local v3           #currentSub:Lcom/android/internal/telephony/msim/Subscription;
    .end local v8           #subId:I
    .end local v9           #userSub:Lcom/android/internal/telephony/msim/Subscription;
    :cond_5
    iget-object v10, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mIsNewCard:[Z

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aput-boolean v12, v10, v11

    .line 1415
    iget-object v10, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v0, v10, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    array-length v6, v0

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v6, :cond_7

    aget-object v9, v0, v5

    .line 1416
    .restart local v9       #userSub:Lcom/android/internal/telephony/msim/Subscription;
    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/msim/SubscriptionData;->hasSubscription(Lcom/android/internal/telephony/msim/Subscription;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1417
    iget-object v10, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mIsNewCard:[Z

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aput-boolean v13, v10, v11

    .line 1415
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1420
    .end local v9           #userSub:Lcom/android/internal/telephony/msim/Subscription;
    :cond_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processCardInfoAvailable: mIsNewCard ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mIsNewCard:[Z

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aget-boolean v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1423
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->isAllCardsInfoAvailable()Z

    move-result v10

    if-nez v10, :cond_8

    .line 1424
    const-string v10, "All cards info not available!! Waiting for all info before processing"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1428
    :cond_8
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processCardInfoAvailable: mSetSubscriptionInProgress = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionInProgress:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1431
    iget-boolean v10, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionInProgress:Z

    if-nez v10, :cond_9

    .line 1432
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->processActivateRequests()V

    .line 1435
    :cond_9
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->isNewCardAvailable()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1438
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->notifyNewCardsAvailable()V

    .line 1439
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    iget-object v10, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mIsNewCard:[Z

    array-length v10, v10

    if-ge v4, v10, :cond_0

    .line 1440
    iget-object v10, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mIsNewCard:[Z

    aput-boolean v13, v10, v4

    .line 1439
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method

.method private processCardInfoAvailableDSDA(I)V
    .locals 8
    .parameter "cardIndex"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1293
    move v2, p1

    .line 1294
    .local v2, subId:I
    iget-object v4, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v4, v4, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v3, v4, v2

    .line 1295
    .local v3, userSub:Lcom/android/internal/telephony/msim/Subscription;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(I)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v0

    .line 1296
    .local v0, currentSub:Lcom/android/internal/telephony/msim/Subscription;
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 1297
    .local v1, radiostate:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    iget-object v4, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardInfoAvailable:[Z

    aput-boolean v7, v4, p1

    .line 1304
    const-string v4, "Enter here, I assumed that this card not changed! so I can use the userPref info"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1306
    iget-object v4, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v4, v4, v2

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    .line 1308
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processCardInfoAvailableDSDA: subId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n user pref sub = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n current sub   = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1312
    iget-object v4, v3, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v5, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v4, v5, :cond_2

    .line 1314
    iget-object v4, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDesiredRadioStates:[Lcom/android/internal/telephony/CommandsInterface$RadioState;

    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SUB_TO_ACTIVATE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    aput-object v5, v4, v2

    .line 1316
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/uicc/UiccController;->notifyIccChanged(I)V

    .line 1318
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(I)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/msim/Subscription;->copyFrom(Lcom/android/internal/telephony/msim/Subscription;)Lcom/android/internal/telephony/msim/Subscription;

    .line 1319
    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1320
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processCardInfoAvailableDSDA: subId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " need to activate!!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1321
    iget-object v4, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mOperationDones:[Z

    aput-boolean v6, v4, v2

    .line 1322
    invoke-static {v2}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4, v7}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 1338
    :cond_0
    :goto_0
    return-void

    .line 1324
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processCardInfoAvailableDSDA: radio already ON, subId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1325
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->processRadioStateChanged(I)V

    goto :goto_0

    .line 1327
    :cond_2
    iget-object v4, v3, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v5, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v4, v5, :cond_0

    .line 1330
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processCardInfoAvailableDSDA: subId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " need to deactivate!!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1331
    iget-object v4, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDesiredRadioStates:[Lcom/android/internal/telephony/CommandsInterface$RadioState;

    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    aput-object v5, v4, v2

    .line 1332
    iget-object v4, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mOperationDones:[Z

    aput-boolean v6, v4, v2

    .line 1333
    invoke-static {v2}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4, v6}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 1334
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(I)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/msim/Subscription;->copyFrom(Lcom/android/internal/telephony/msim/Subscription;)Lcom/android/internal/telephony/msim/Subscription;

    goto :goto_0
.end method

.method private processCardInfoNotAvailable(Landroid/os/AsyncResult;)V
    .locals 12
    .parameter "ar"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1533
    iget-object v10, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_0

    iget-object v10, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v10, :cond_2

    .line 1534
    :cond_0
    const-string v8, "processCardInfoNotAvailable - Exception"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1590
    :cond_1
    :goto_0
    return-void

    .line 1538
    :cond_2
    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    .line 1539
    .local v3, cardIndex:Ljava/lang/Integer;
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;

    .line 1541
    .local v6, reason:Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processCardInfoNotAvailable on cardIndex = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " reason = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1544
    iget-object v10, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardInfoAvailable:[Z

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aput-boolean v9, v10, v11

    .line 1548
    iget-boolean v10, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mHuaweiDSDA:Z

    if-eqz v10, :cond_3

    .line 1550
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {p0, v8, v6}, Lcom/android/internal/telephony/msim/SubscriptionManager;->processCardInfoNotAvailableDSDA(ILcom/android/internal/telephony/MSimConstants$CardUnavailableReason;)V

    goto :goto_0

    .line 1559
    :cond_3
    const/4 v0, 0x1

    .line 1560
    .local v0, allCardsUnavailable:Z
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardInfoAvailable:[Z

    .local v1, arr$:[Z
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_5

    aget-boolean v2, v1, v4

    .line 1561
    .local v2, available:Z
    if-eqz v0, :cond_4

    if-nez v2, :cond_4

    move v0, v8

    .line 1560
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    move v0, v9

    .line 1561
    goto :goto_2

    .line 1563
    .end local v2           #available:Z
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processCardInfoNotAvailable allCardsUnavailable = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1564
    if-eqz v0, :cond_6

    .line 1565
    iput-boolean v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubsModeRequired:Z

    .line 1566
    iput-boolean v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetDdsRequired:Z

    .line 1568
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "processCardInfoNotAvailable mSetSubsModeRequired = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v10, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubsModeRequired:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1572
    sget-object v8, Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;->REASON_RADIO_UNAVAILABLE:Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;

    if-eq v6, v8, :cond_7

    sget-object v8, Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;->REASON_SIM_REFRESH_RESET:Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;

    if-ne v6, v8, :cond_9

    .line 1576
    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v1

    .local v1, arr$:[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    array-length v5, v1

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v5, :cond_9

    aget-object v7, v1, v4

    .line 1577
    .local v7, sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v8

    iget v8, v8, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v8, v10, :cond_8

    .line 1579
    invoke-virtual {v7}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/msim/SubscriptionManager;->notifySlotSubscriptionDeactivated(I)V

    .line 1581
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/msim/SubscriptionManager;->resetCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)V

    .line 1582
    invoke-virtual {v7}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/msim/SubscriptionManager;->notifySubscriptionDeactivated(I)V

    .line 1576
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1587
    .end local v1           #arr$:[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    .end local v7           #sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    :cond_9
    sget-object v8, Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;->REASON_RADIO_UNAVAILABLE:Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;

    if-ne v6, v8, :cond_1

    .line 1588
    iput-boolean v9, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mAllCardsStatusAvailable:Z

    goto/16 :goto_0
.end method

.method private processCardInfoNotAvailableDSDA(ILcom/android/internal/telephony/MSimConstants$CardUnavailableReason;)V
    .locals 5
    .parameter "cardIndex"
    .parameter "reason"

    .prologue
    .line 1501
    move v1, p1

    .line 1502
    .local v1, subId:I
    new-instance v0, Lcom/android/internal/telephony/msim/Subscription;

    invoke-direct {v0}, Lcom/android/internal/telephony/msim/Subscription;-><init>()V

    .line 1504
    .local v0, currentSub:Lcom/android/internal/telephony/msim/Subscription;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processCardInfoNotAvailableDSDA cardIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1506
    iget-object v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 1507
    const-string v2, "processCardInfoNotAvailableDSDA, airPlaneModeOn = true! do nothing!"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1522
    :cond_0
    :goto_0
    return-void

    .line 1511
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;->REASON_SIM_REFRESH_RESET:Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;

    if-eq p2, v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;->REASON_CARD_REMOVED:Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;

    if-eq p2, v2, :cond_2

    .line 1513
    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/Subscription;->clear()V

    .line 1514
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(I)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/msim/Subscription;->copyFrom(Lcom/android/internal/telephony/msim/Subscription;)Lcom/android/internal/telephony/msim/Subscription;

    .line 1517
    :cond_2
    sget-object v2, Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;->REASON_CARD_REMOVED:Lcom/android/internal/telephony/MSimConstants$CardUnavailableReason;

    if-ne v2, p2, :cond_0

    .line 1518
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->setDefaultSubAndDataSub()V

    .line 1519
    iget-object v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDesiredRadioStates:[Lcom/android/internal/telephony/CommandsInterface$RadioState;

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    aput-object v3, v2, v1

    goto :goto_0
.end method

.method private processCleanupDataConnectionDone(Ljava/lang/Integer;)V
    .locals 2
    .parameter "subId"

    .prologue
    .line 937
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mRadioOn:[Z

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    .line 938
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processCleanupDataConnectionDone: Radio Not Available on subId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 946
    :goto_0
    return-void

    .line 944
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDataActive:Z

    .line 945
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->startNextPendingDeactivateRequests()Z

    goto :goto_0
.end method

.method private processDisableDataConnectionDone(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    .line 924
    const/4 v1, 0x6

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mQueuedDds:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 927
    .local v0, msgSetDataSub:Landroid/os/Message;
    const-string v1, "SubscriptionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set DDS to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mQueuedDds:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Calling cmd interface setDataSubscription"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    iget v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mQueuedDds:I

    aget-object v1, v1, v2

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->setDataSubscription(Landroid/os/Message;)V

    .line 930
    return-void
.end method

.method private processDisableDataConnectionDoneDSDA(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter "ar"

    .prologue
    const/4 v2, 0x0

    .line 817
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDisableDdsInProgress:Z

    .line 818
    iget v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mQueuedDds:I

    invoke-static {v0}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->setDataSubscription(I)V

    .line 819
    iget v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    iget v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mQueuedDds:I

    if-eq v0, v1, :cond_0

    .line 820
    invoke-static {}, Lcom/android/internal/telephony/msim/MSimProxyManager;->getInstance()Lcom/android/internal/telephony/msim/MSimProxyManager;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/msim/MSimProxyManager;->updateDataConnectionTracker(I)V

    .line 823
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mQueuedDds:I

    iput v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    .line 824
    invoke-static {}, Lcom/android/internal/telephony/msim/MSimProxyManager;->getInstance()Lcom/android/internal/telephony/msim/MSimProxyManager;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/msim/MSimProxyManager;->updateDataConnectionTracker(I)V

    .line 825
    invoke-static {}, Lcom/android/internal/telephony/msim/MSimProxyManager;->getInstance()Lcom/android/internal/telephony/msim/MSimProxyManager;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mQueuedDds:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/msim/MSimProxyManager;->enableDataConnectivity(I)V

    .line 828
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetDdsCompleteMsg:Landroid/os/Message;

    if-eqz v0, :cond_1

    .line 829
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetDdsCompleteMsg:Landroid/os/Message;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 830
    const-string v0, "Enable Data Connectivity Done!! Sending the cnf back!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 831
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetDdsCompleteMsg:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 832
    iput-object v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetDdsCompleteMsg:Landroid/os/Message;

    .line 834
    :cond_1
    return-void
.end method

.method private processRadioStateChanged(I)V
    .locals 9
    .parameter "subId"

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 595
    const/4 v0, 0x0

    .line 596
    .local v0, bOperationDone:Z
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(I)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v1

    .line 598
    .local v1, currSub:Lcom/android/internal/telephony/msim/Subscription;
    const-string v3, "SubscriptionManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processRadioStateChanged mDesiredRadioStates["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDesiredRadioStates:[Lcom/android/internal/telephony/CommandsInterface$RadioState;

    aget-object v7, v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mCi["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "].getRadioState() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v7, v7, p1

    invoke-interface {v7}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    iget-object v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDesiredRadioStates:[Lcom/android/internal/telephony/CommandsInterface$RadioState;

    aget-object v6, v6, p1

    if-eq v3, v6, :cond_7

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SUB_TO_ACTIVATE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    iget-object v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDesiredRadioStates:[Lcom/android/internal/telephony/CommandsInterface$RadioState;

    aget-object v6, v6, p1

    if-ne v3, v6, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, p1

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    sget-object v6, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v3, v6, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, p1

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    sget-object v6, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v3, v6, :cond_1

    :cond_0
    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    iget-object v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDesiredRadioStates:[Lcom/android/internal/telephony/CommandsInterface$RadioState;

    aget-object v6, v6, p1

    if-ne v3, v6, :cond_7

    iget-object v3, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, p1

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v3

    if-nez v3, :cond_7

    .line 607
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDesiredRadioStates:[Lcom/android/internal/telephony/CommandsInterface$RadioState;

    aget-object v3, v3, p1

    sget-object v6, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SUB_TO_ACTIVATE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v3, v6, :cond_6

    .line 608
    sget-object v3, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iput-object v3, v1, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    .line 620
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mOperationDones:[Z

    aput-boolean v4, v3, p1

    .line 621
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->saveUserPreferredSubscription(ILcom/android/internal/telephony/msim/Subscription;)V

    .line 623
    iget-object v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubResult:[Ljava/lang/String;

    iget-object v3, v1, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v7, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v3, v7, :cond_8

    const-string v3, "ACTIVATE SUCCESS"

    :goto_1
    aput-object v3, v6, p1

    .line 625
    const-string v3, "SubscriptionManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mOperationDones[0] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mOperationDones:[Z

    aget-boolean v7, v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mOperationDones[1] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mOperationDones:[Z

    aget-boolean v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    const-string v3, "SubscriptionManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mDesiredRadioStates[0] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDesiredRadioStates:[Lcom/android/internal/telephony/CommandsInterface$RadioState;

    aget-object v7, v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mDesiredRadioStates[1] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDesiredRadioStates:[Lcom/android/internal/telephony/CommandsInterface$RadioState;

    aget-object v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    const-string v3, "SubscriptionManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCardInfoAvailable[0] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardInfoAvailable:[Z

    aget-boolean v7, v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mCardInfoAvailable[1] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardInfoAvailable:[Z

    aget-boolean v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget-object v3, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mOperationDones:[Z

    aget-boolean v3, v3, v5

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mOperationDones:[Z

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    iget-object v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDesiredRadioStates:[Lcom/android/internal/telephony/CommandsInterface$RadioState;

    aget-object v6, v6, v5

    if-eq v3, v6, :cond_3

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    iget-object v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDesiredRadioStates:[Lcom/android/internal/telephony/CommandsInterface$RadioState;

    aget-object v6, v6, v4

    if-eq v3, v6, :cond_3

    .line 633
    const/4 v0, 0x1

    .line 636
    :cond_3
    if-eqz v0, :cond_4

    .line 637
    const-string v3, "SubscriptionManager"

    const-string v6, "bOperationDone."

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->setDefaultSubAndDataSub()V

    .line 643
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionRegistrants:Landroid/os/RegistrantList;

    if-eqz v3, :cond_5

    .line 644
    iget-object v3, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionRegistrants:Landroid/os/RegistrantList;

    new-instance v6, Landroid/os/AsyncResult;

    iget-object v7, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubResult:[Ljava/lang/String;

    invoke-direct {v6, v8, v7, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v6}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 648
    :cond_5
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.ACTION_SET_SUBSCRIPTION_DONE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 649
    .local v2, intent:Landroid/content/Intent;
    sget-object v6, Lcom/android/internal/telephony/msim/SubscriptionManager;->SUB_STATE:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v7, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v3, v7, :cond_9

    move v3, v4

    :goto_2
    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 650
    sget-object v3, Lcom/android/internal/telephony/msim/SubscriptionManager;->SUB_ID:Ljava/lang/String;

    iget v4, v1, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 651
    iget-object v3, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 655
    iget-object v3, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, p1

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->notifySimStatusChanged()V

    .line 664
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->notifySubscriptionActivated(I)V

    .line 665
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->notifySlotSubscriptionActivated(I)V

    .line 667
    .end local v2           #intent:Landroid/content/Intent;
    :goto_3
    return-void

    .line 609
    :cond_6
    iget-object v3, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDesiredRadioStates:[Lcom/android/internal/telephony/CommandsInterface$RadioState;

    aget-object v3, v3, p1

    sget-object v6, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v3, v6, :cond_2

    .line 613
    sget-object v3, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iput-object v3, v1, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    goto/16 :goto_0

    .line 616
    :cond_7
    const-string v3, "SubscriptionManager"

    const-string v4, "processRadioStateChanged! Don\'t care this state!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 623
    :cond_8
    const-string v3, "DEACTIVATE SUCCESS"

    goto/16 :goto_1

    .restart local v2       #intent:Landroid/content/Intent;
    :cond_9
    move v3, v5

    .line 649
    goto :goto_2
.end method

.method private processSetDataSubscriptionDone(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    const/4 v4, 0x0

    .line 875
    const/4 v0, 0x0

    .line 877
    .local v0, result:Z
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    .line 879
    iget v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mQueuedDds:I

    invoke-static {v1}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->setDataSubscription(I)V

    .line 881
    iget v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    iget v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mQueuedDds:I

    if-eq v1, v2, :cond_0

    .line 884
    invoke-static {}, Lcom/android/internal/telephony/msim/MSimProxyManager;->getInstance()Lcom/android/internal/telephony/msim/MSimProxyManager;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/msim/MSimProxyManager;->updateDataConnectionTracker(I)V

    .line 887
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mQueuedDds:I

    iput v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    .line 890
    invoke-static {}, Lcom/android/internal/telephony/msim/MSimProxyManager;->getInstance()Lcom/android/internal/telephony/msim/MSimProxyManager;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/msim/MSimProxyManager;->updateDataConnectionTracker(I)V

    .line 893
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataSubscriptionSource is Successful  Enable Data Connectivity on Subscription "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 895
    invoke-static {}, Lcom/android/internal/telephony/msim/MSimProxyManager;->getInstance()Lcom/android/internal/telephony/msim/MSimProxyManager;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/msim/MSimProxyManager;->enableDataConnectivity(I)V

    .line 896
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDataActive:Z

    .line 898
    const/4 v0, 0x1

    .line 907
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDisableDdsInProgress:Z

    .line 910
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetDdsCompleteMsg:Landroid/os/Message;

    if-eqz v1, :cond_1

    .line 911
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetDdsCompleteMsg:Landroid/os/Message;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 912
    const-string v1, "Enable Data Connectivity Done!! Sending the cnf back!"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 913
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetDdsCompleteMsg:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 914
    iput-object v4, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetDdsCompleteMsg:Landroid/os/Message;

    .line 916
    :cond_1
    return-void

    .line 904
    :cond_2
    const-string v1, "SubscriptionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataSubscriptionSource Failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private processSetSubscriptionModeDone()V
    .locals 1

    .prologue
    .line 1237
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->isAllRadioOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1238
    const-string v0, "processSetSubscriptionModeDone: Radio Not Available"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionInProgress:Z

    .line 1244
    :goto_0
    return-void

    .line 1243
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->startNextPendingActivateRequests()Z

    goto :goto_0
.end method

.method private processSetUiccSubscriptionDone(Landroid/os/AsyncResult;)V
    .locals 12
    .parameter "ar"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 1009
    iget-object v4, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;

    .line 1010
    .local v4, setSubParam:Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;
    const/4 v0, 0x0

    .line 1011
    .local v0, cause:Ljava/lang/String;
    sget-object v5, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_INVALID:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    .line 1012
    .local v5, subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;
    const/4 v1, 0x0

    .line 1014
    .local v1, currentSub:Lcom/android/internal/telephony/msim/Subscription;
    iget-object v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mRadioOn:[Z

    iget v9, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-boolean v6, v6, v9

    if-nez v6, :cond_1

    .line 1015
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processSetUiccSubscriptionDone: Radio Not Available on subId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1143
    :cond_0
    :goto_0
    return-void

    .line 1020
    :cond_1
    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_9

    .line 1023
    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v6, v6, Lcom/android/internal/telephony/CommandException;

    if-eqz v6, :cond_2

    .line 1024
    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v6, Lcom/android/internal/telephony/CommandException;

    check-cast v6, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    .line 1026
    .local v2, error:Lcom/android/internal/telephony/CommandException$Error;
    if-eqz v2, :cond_2

    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->SUBSCRIPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v6, :cond_2

    .line 1028
    const-string v0, "DEACTIVATE NOT SUPPORTED"

    .line 1032
    .end local v2           #error:Lcom/android/internal/telephony/CommandException$Error;
    :cond_2
    iget-object v6, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v9, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v6, v9, :cond_5

    .line 1034
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "subscription of SUB:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " Activate Failed"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1035
    if-nez v0, :cond_3

    .line 1036
    const-string v0, "ACTIVATE FAILED"

    .line 1038
    :cond_3
    sget-object v5, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    .line 1039
    iget-object v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v9

    iget v10, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v9, v9, v10

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #currentSub:Lcom/android/internal/telephony/msim/Subscription;
    check-cast v1, Lcom/android/internal/telephony/msim/Subscription;

    .line 1042
    .restart local v1       #currentSub:Lcom/android/internal/telephony/msim/Subscription;
    iget-object v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v9

    iget v10, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v9, v9, v10

    invoke-virtual {v6, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    :cond_4
    :goto_1
    const-string v6, "set uicc subscription done. update the current subscriptions"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1105
    iget v6, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-direct {p0, v6, v1, v5, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->updateCurrentSubscription(ILcom/android/internal/telephony/msim/Subscription;Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;Ljava/lang/String;)V

    .line 1110
    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_c

    .line 1111
    iget v6, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v9

    iget v10, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v9, v9, v10

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v9

    invoke-virtual {p0, v6, v9}, Lcom/android/internal/telephony/msim/SubscriptionManager;->saveUserPreferredSubscription(ILcom/android/internal/telephony/msim/Subscription;)V

    .line 1119
    :goto_2
    iget-object v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubResult:[Ljava/lang/String;

    iget v9, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    aput-object v0, v6, v9

    .line 1121
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->startNextPendingDeactivateRequests()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1123
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->startNextPendingActivateRequests()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1126
    iput-boolean v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionInProgress:Z

    .line 1127
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->updateSubPreferences()V

    .line 1129
    iget-object v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionRegistrants:Landroid/os/RegistrantList;

    if-eqz v6, :cond_0

    .line 1130
    iget-object v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionRegistrants:Landroid/os/RegistrantList;

    new-instance v9, Landroid/os/AsyncResult;

    iget-object v10, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubResult:[Ljava/lang/String;

    invoke-direct {v9, v11, v10, v11}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v6, v9}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1135
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.ACTION_SET_SUBSCRIPTION_DONE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1136
    .local v3, intent:Landroid/content/Intent;
    sget-object v6, Lcom/android/internal/telephony/msim/SubscriptionManager;->SUB_STATE:Ljava/lang/String;

    sget-object v9, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v5, v9, :cond_e

    :goto_3
    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1137
    sget-object v6, Lcom/android/internal/telephony/msim/SubscriptionManager;->SUB_ID:Ljava/lang/String;

    iget v7, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1138
    iget-object v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1043
    .end local v3           #intent:Landroid/content/Intent;
    :cond_5
    iget-object v6, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v9, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v6, v9, :cond_8

    .line 1045
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "subscription of SUB:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " Deactivate Failed"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1050
    if-nez v0, :cond_6

    .line 1051
    iget v6, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/SubscriptionManager;->isAnyPendingActivateRequest(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1052
    const-string v0, "ACTIVATE FAILED"

    .line 1057
    iget-object v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v9

    iget v10, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v9, v9, v10

    invoke-virtual {v6, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    :cond_6
    :goto_4
    sget-object v5, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    .line 1063
    iget-object v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v9

    iget v10, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v9, v9, v10

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #currentSub:Lcom/android/internal/telephony/msim/Subscription;
    check-cast v1, Lcom/android/internal/telephony/msim/Subscription;

    .line 1065
    .restart local v1       #currentSub:Lcom/android/internal/telephony/msim/Subscription;
    iget-object v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v9

    iget v10, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v9, v9, v10

    invoke-virtual {v6, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    iget v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    iget v9, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    if-ne v6, v9, :cond_4

    .line 1069
    invoke-static {}, Lcom/android/internal/telephony/msim/MSimProxyManager;->getInstance()Lcom/android/internal/telephony/msim/MSimProxyManager;

    move-result-object v6

    iget v9, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/msim/MSimProxyManager;->enableDataConnectivity(I)V

    goto/16 :goto_1

    .line 1059
    :cond_7
    const-string v0, "DEACTIVATE FAILED"

    goto :goto_4

    .line 1072
    :cond_8
    const-string v6, "UNKOWN: SHOULD NOT HIT HERE"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1076
    :cond_9
    iget-object v6, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v9, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v6, v9, :cond_a

    .line 1078
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "subscription of SUB:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " Activated"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1079
    sget-object v5, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    .line 1080
    const-string v0, "ACTIVATE SUCCESS"

    .line 1081
    iget-object v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v9

    iget v10, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v9, v9, v10

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #currentSub:Lcom/android/internal/telephony/msim/Subscription;
    check-cast v1, Lcom/android/internal/telephony/msim/Subscription;

    .line 1084
    .restart local v1       #currentSub:Lcom/android/internal/telephony/msim/Subscription;
    iget-object v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v9

    iget v10, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v9, v9, v10

    invoke-virtual {v6, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1085
    :cond_a
    iget-object v6, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v9, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v6, v9, :cond_b

    .line 1087
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "subscription of SUB:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " Deactivated"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1088
    sget-object v5, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    .line 1089
    const-string v0, "DEACTIVATE SUCCESS"

    .line 1090
    iget-object v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v9

    iget v10, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v9, v9, v10

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #currentSub:Lcom/android/internal/telephony/msim/Subscription;
    check-cast v1, Lcom/android/internal/telephony/msim/Subscription;

    .line 1092
    .restart local v1       #currentSub:Lcom/android/internal/telephony/msim/Subscription;
    iget-object v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v9

    iget v10, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    aget-object v9, v9, v10

    invoke-virtual {v6, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
    iget v6, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/SubscriptionManager;->notifySubscriptionDeactivated(I)V

    .line 1096
    iget v6, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/SubscriptionManager;->notifySlotSubscriptionDeactivated(I)V

    goto/16 :goto_1

    .line 1099
    :cond_b
    const-string v6, "UNKOWN: SHOULD NOT HIT HERE"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1115
    :cond_c
    iget v9, v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;->subId:I

    sget-object v6, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v5, v6, :cond_d

    move v6, v7

    :goto_5
    invoke-direct {p0, v9, v6}, Lcom/android/internal/telephony/msim/SubscriptionManager;->updateSubscriptionReadiness(IZ)V

    goto/16 :goto_2

    :cond_d
    move v6, v8

    goto :goto_5

    .restart local v3       #intent:Landroid/content/Intent;
    :cond_e
    move v7, v8

    .line 1136
    goto/16 :goto_3
.end method

.method private processSubscriptionStatusChanged(Landroid/os/AsyncResult;)V
    .locals 8
    .parameter "ar"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 953
    iget-object v2, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 954
    .local v2, subId:Ljava/lang/Integer;
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    aget v0, v3, v5

    .line 955
    .local v0, actStatus:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSubscriptionStatusChanged sub = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " actStatus = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 958
    iget-object v3, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mRadioOn:[Z

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-boolean v3, v3, v6

    if-nez v3, :cond_0

    .line 959
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processSubscriptionStatusChanged: Radio Not Available on subId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1002
    :goto_0
    return-void

    .line 963
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v0, v4, :cond_2

    move v3, v4

    :goto_1
    invoke-direct {p0, v6, v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->updateSubscriptionReadiness(IZ)V

    .line 964
    if-ne v0, v4, :cond_3

    .line 966
    iget-boolean v3, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetDdsRequired:Z

    if-eqz v3, :cond_1

    .line 967
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    if-ne v3, v4, :cond_1

    .line 968
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDataSubscription on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 971
    iget v3, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    iput v3, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mQueuedDds:I

    .line 972
    const/4 v3, 0x6

    new-instance v4, Ljava/lang/Integer;

    iget v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    invoke-direct {v4, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p0, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 975
    .local v1, msgSetDdsDone:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    iget v4, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    aget-object v3, v3, v4

    invoke-interface {v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->setDataSubscription(Landroid/os/Message;)V

    .line 976
    iput-boolean v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetDdsRequired:Z

    .line 979
    .end local v1           #msgSetDdsDone:Landroid/os/Message;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->notifySubscriptionActivated(I)V

    .line 981
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->notifySlotSubscriptionActivated(I)V

    goto :goto_0

    :cond_2
    move v3, v5

    .line 963
    goto :goto_1

    .line 983
    :cond_3
    if-nez v0, :cond_5

    .line 987
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    if-ne v3, v4, :cond_4

    .line 988
    const-string v3, "Register for the all data disconnect"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 989
    invoke-static {}, Lcom/android/internal/telephony/msim/MSimProxyManager;->getInstance()Lcom/android/internal/telephony/msim/MSimProxyManager;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x9

    new-instance v6, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, p0, v5, v6}, Lcom/android/internal/telephony/msim/MSimProxyManager;->registerForAllDataDisconnected(ILandroid/os/Handler;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 993
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->notifySlotSubscriptionDeactivated(I)V

    .line 995
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->resetCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)V

    .line 996
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->updateSubPreferences()V

    .line 997
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->notifySubscriptionDeactivated(I)V

    goto/16 :goto_0

    .line 1000
    :cond_5
    const-string v3, "handleSubscriptionStatusChanged INVALID"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private resetCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)V
    .locals 2
    .parameter "subId"

    .prologue
    .line 1797
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/Subscription;->clear()V

    .line 1798
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iput-object v1, v0, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    .line 1800
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;->cause:Ljava/lang/String;

    .line 1801
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;->subReady:Z

    .line 1802
    return-void
.end method

.method private setDefaultSubAndDataSub()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 523
    const/4 v2, 0x0

    .line 524
    .local v2, nCount:I
    const/4 v0, 0x0

    .line 526
    .local v0, activeSubId:I
    const-string v3, "SubscriptionManager"

    const-string v4, "setDefaultSubAndDataSub"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const-string v3, "SubscriptionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDesiredRadioStates[0] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDesiredRadioStates:[Lcom/android/internal/telephony/CommandsInterface$RadioState;

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mDesiredRadioStates[1] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDesiredRadioStates:[Lcom/android/internal/telephony/CommandsInterface$RadioState;

    aget-object v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const-string v3, "SubscriptionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCardInfoAvailable[0] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardInfoAvailable:[Z

    aget-boolean v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mCardInfoAvailable[1] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardInfoAvailable:[Z

    aget-boolean v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDesiredRadioStates:[Lcom/android/internal/telephony/CommandsInterface$RadioState;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 531
    iget-object v3, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDesiredRadioStates:[Lcom/android/internal/telephony/CommandsInterface$RadioState;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardInfoAvailable:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_0

    .line 533
    move v0, v1

    .line 534
    add-int/lit8 v2, v2, 0x1

    .line 530
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 538
    :cond_1
    const-string v3, "SubscriptionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processRadioStateChanged activated count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    if-nez v2, :cond_3

    .line 583
    :cond_2
    :goto_1
    return-void

    .line 543
    :cond_3
    const-string v3, "SubscriptionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "defaultSub = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->getDefaultSubscription()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mFirstPowerUp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mFirstPowerUp:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mCCardChanged = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCCardChanged:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    if-ne v7, v2, :cond_4

    .line 548
    invoke-static {v0}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->setDefaultSubscription(I)V

    .line 549
    invoke-static {v0}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->setSMSSubscription(I)V

    .line 550
    invoke-static {v0}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->setVoiceSubscription(I)V

    .line 551
    invoke-virtual {p0, v0, v8}, Lcom/android/internal/telephony/msim/SubscriptionManager;->setDataSubscriptionDSDA(ILandroid/os/Message;)V

    goto :goto_1

    .line 553
    :cond_4
    iget-boolean v3, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->IS_CHINA_TELECOM:Z

    if-eqz v3, :cond_2

    .line 554
    iget-boolean v3, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mFirstPowerUp:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCCardChanged:Z

    if-eqz v3, :cond_5

    .line 557
    invoke-static {v6}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->setDefaultSubscription(I)V

    .line 558
    invoke-static {v6}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->setSMSSubscription(I)V

    .line 559
    invoke-static {v6}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->setVoiceSubscription(I)V

    .line 561
    iput-boolean v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mFirstPowerUp:Z

    .line 562
    iput-boolean v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCCardChanged:Z

    .line 570
    :cond_5
    invoke-static {}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDefault()Lcom/huawei/telephony/HuaweiTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDualCardMode()I

    move-result v3

    if-eq v7, v3, :cond_6

    const/4 v3, 0x3

    invoke-static {}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDefault()Lcom/huawei/telephony/HuaweiTelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDualCardMode()I

    move-result v4

    if-eq v3, v4, :cond_6

    const-string v3, "persist.service.gsmdataservice"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/msim/SubscriptionManager;->isCardPresent(I)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDefault()Lcom/huawei/telephony/HuaweiTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/telephony/HuaweiTelephonyManager;->isGsmImsiContainsSpecPlmn()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 575
    :cond_6
    invoke-virtual {p0, v7, v8}, Lcom/android/internal/telephony/msim/SubscriptionManager;->setDataSubscriptionDSDA(ILandroid/os/Message;)V

    goto/16 :goto_1

    .line 577
    :cond_7
    invoke-virtual {p0, v6, v8}, Lcom/android/internal/telephony/msim/SubscriptionManager;->setDataSubscriptionDSDA(ILandroid/os/Message;)V

    goto/16 :goto_1
.end method

.method private setSubscriptionDSDA(Lcom/android/internal/telephony/msim/SubscriptionData;)V
    .locals 11
    .parameter "subData"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 689
    const-string v5, "SubscriptionManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setSubscriptionDSDA: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubResult:[Ljava/lang/String;

    const-string v6, "NO CHANGE IN SUBSCRIPTION"

    aput-object v6, v5, v9

    .line 692
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubResult:[Ljava/lang/String;

    const-string v6, "NO CHANGE IN SUBSCRIPTION"

    aput-object v6, v5, v10

    .line 695
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_6

    aget-object v4, v0, v2

    .line 697
    .local v4, subId:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    const-string v5, "SubscriptionManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCi["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "].getRadioState() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v4}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v8

    aget-object v7, v7, v8

    invoke-interface {v7}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    const-string v5, "SubscriptionManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCurrentSubscriptionStatus("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscriptionStatus(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    sget-object v5, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iget-object v6, p1, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    invoke-virtual {v4}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v7

    aget-object v6, v6, v7

    iget-object v6, v6, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v5, v6, :cond_3

    sget-object v5, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscriptionStatus(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    move-result-object v6

    if-eq v5, v6, :cond_3

    .line 704
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDesiredRadioStates:[Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v6

    sget-object v7, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    aput-object v7, v5, v6

    .line 705
    const/4 v1, 0x0

    .line 715
    .local v1, bRadioPower:Z
    const-string v5, "SubscriptionManager"

    const-string v6, "setSubscriptionDSDA: SUB_DEACTIVATE"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :goto_1
    const-string v5, "SubscriptionManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setSubscriptionDSDA, subId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", radio = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    const-string v5, "SubscriptionManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mDesiredRadioStates["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDesiredRadioStates:[Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardInfoAvailable:[Z

    invoke-virtual {v4}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v6

    aput-boolean v10, v5, v6

    .line 742
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v4}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v6

    aget-object v5, v5, v6

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v4}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v6

    aget-object v5, v5, v6

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v5, v6, :cond_1

    :cond_0
    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SUB_TO_ACTIVATE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    iget-object v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDesiredRadioStates:[Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v7

    aget-object v6, v6, v7

    if-eq v5, v6, :cond_2

    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v4}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v6

    aget-object v5, v5, v6

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v5

    if-nez v5, :cond_5

    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    iget-object v6, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDesiredRadioStates:[Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v7

    aget-object v6, v6, v7

    if-ne v5, v6, :cond_5

    .line 753
    :cond_2
    const-string v5, "SubscriptionManager"

    const-string v6, "setSubscriptionDSDA, no change radio state, just update user pref!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v5

    iget-object v6, p1, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    invoke-virtual {v4}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/msim/Subscription;->copyFrom(Lcom/android/internal/telephony/msim/Subscription;)Lcom/android/internal/telephony/msim/Subscription;

    .line 756
    invoke-virtual {v4}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->processRadioStateChanged(I)V

    .line 695
    .end local v1           #bRadioPower:Z
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 717
    :cond_3
    sget-object v5, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iget-object v6, p1, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    invoke-virtual {v4}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v7

    aget-object v6, v6, v7

    iget-object v6, v6, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v5, v6, :cond_4

    sget-object v5, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscriptionStatus(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    move-result-object v6

    if-eq v5, v6, :cond_4

    .line 721
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDesiredRadioStates:[Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v6

    sget-object v7, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SUB_TO_ACTIVATE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    aput-object v7, v5, v6

    .line 723
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/UiccController;->notifyIccChanged(I)V

    .line 725
    const/4 v1, 0x1

    .line 726
    .restart local v1       #bRadioPower:Z
    const-string v5, "SubscriptionManager"

    const-string v6, "setSubscriptionDSDA: SUB_ACTIVATE"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 729
    .end local v1           #bRadioPower:Z
    :cond_4
    const-string v5, "SubscriptionManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nothing to do for SUB "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 759
    .restart local v1       #bRadioPower:Z
    :cond_5
    const-string v5, "SubscriptionManager"

    const-string v6, "setSubscriptionDSDA, change radio state!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mOperationDones:[Z

    invoke-virtual {v4}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v6

    aput-boolean v9, v5, v6

    .line 762
    invoke-virtual {v4}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 763
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v5

    iget-object v6, p1, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    invoke-virtual {v4}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/msim/Subscription;->copyFrom(Lcom/android/internal/telephony/msim/Subscription;)Lcom/android/internal/telephony/msim/Subscription;

    goto :goto_2

    .line 766
    .end local v1           #bRadioPower:Z
    .end local v4           #subId:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    :cond_6
    return-void
.end method

.method private setSubscriptionMode()Z
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 1850
    const/4 v3, 0x0

    .line 1851
    .local v3, numSubsciptions:I
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v6, v0, v1

    .line 1852
    .local v6, sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/msim/Subscription;

    .line 1853
    .local v4, pendingSub:Lcom/android/internal/telephony/msim/Subscription;
    if-eqz v4, :cond_0

    iget-object v8, v4, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v9, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v8, v9, :cond_0

    .line 1855
    add-int/lit8 v3, v3, 0x1

    .line 1851
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1859
    .end local v4           #pendingSub:Lcom/android/internal/telephony/msim/Subscription;
    .end local v6           #sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setSubscriptionMode numSubsciptions = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1861
    if-lez v3, :cond_2

    sget v8, Lcom/android/internal/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-gt v3, v8, :cond_2

    .line 1862
    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1865
    .local v5, setSubsModeDone:Landroid/os/Message;
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v7, v8, v7

    invoke-interface {v7, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->setSubscriptionMode(ILandroid/os/Message;)V

    .line 1866
    const/4 v7, 0x1

    .line 1868
    .end local v5           #setSubsModeDone:Landroid/os/Message;
    :cond_2
    return v7
.end method

.method private startNextPendingActivateRequests()Z
    .locals 12

    .prologue
    .line 1716
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->printPendingActivateRequests()V

    .line 1718
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v6

    .local v6, arr$:[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    array-length v8, v6

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_2

    aget-object v11, v6, v7

    .line 1719
    .local v11, sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/msim/Subscription;

    .line 1720
    .local v9, newSub:Lcom/android/internal/telephony/msim/Subscription;
    if-eqz v9, :cond_0

    iget-object v0, v9, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v1, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v0, v1, :cond_0

    .line 1721
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/msim/SubscriptionManager;->validateActivationRequest(Lcom/android/internal/telephony/msim/Subscription;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1723
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1718
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1728
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/msim/MSimProxyManager;->getInstance()Lcom/android/internal/telephony/msim/MSimProxyManager;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/msim/MSimProxyManager;->checkAndUpdatePhoneObject(Lcom/android/internal/telephony/msim/Subscription;)V

    .line 1730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startNextPendingActivateRequests: Activating SUB : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1731
    new-instance v10, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;

    iget v0, v9, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    iget-object v1, v9, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    invoke-direct {v10, p0, v0, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;-><init>(Lcom/android/internal/telephony/msim/SubscriptionManager;ILcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;)V

    .line 1732
    .local v10, setSubParam:Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;
    const/4 v0, 0x4

    invoke-static {p0, v0, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1735
    .local v5, msgSetUiccSubDone:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    iget v1, v9, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    aget-object v0, v0, v1

    iget v1, v9, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    invoke-virtual {v9}, Lcom/android/internal/telephony/msim/Subscription;->getAppIndex()I

    move-result v2

    iget v3, v9, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    iget-object v4, v9, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    invoke-virtual {v4}, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->ordinal()I

    move-result v4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setUiccSubscription(IIIILandroid/os/Message;)V

    .line 1742
    const/4 v0, 0x1

    .line 1745
    .end local v5           #msgSetUiccSubDone:Landroid/os/Message;
    .end local v9           #newSub:Lcom/android/internal/telephony/msim/Subscription;
    .end local v10           #setSubParam:Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;
    .end local v11           #sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private startNextPendingDeactivateRequests()Z
    .locals 14

    .prologue
    const/4 v13, 0x1

    .line 1622
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->printPendingDeactivateRequests()V

    .line 1624
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v7

    .local v7, arr$:[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    array-length v9, v7

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_0
    if-ge v8, v9, :cond_3

    aget-object v12, v7, v8

    .line 1625
    .local v12, sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/msim/Subscription;

    .line 1626
    .local v10, newSub:Lcom/android/internal/telephony/msim/Subscription;
    if-eqz v10, :cond_0

    iget-object v0, v10, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v1, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v0, v1, :cond_0

    .line 1627
    invoke-direct {p0, v10}, Lcom/android/internal/telephony/msim/SubscriptionManager;->validateDeactivationRequest(Lcom/android/internal/telephony/msim/Subscription;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1629
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1624
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1633
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startNextPendingDeactivateRequests: Need to deactivating SUB : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1634
    iget v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    iget v1, v10, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDataActive:Z

    if-eqz v0, :cond_2

    .line 1639
    const-string v0, "Deactivate all the data calls if there is any"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1640
    const/4 v0, 0x7

    iget v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 1642
    .local v6, allDataCleanedUpMsg:Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/msim/MSimProxyManager;->getInstance()Lcom/android/internal/telephony/msim/MSimProxyManager;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/telephony/msim/MSimProxyManager;->disableDataConnectivity(ILandroid/os/Message;)V

    .line 1643
    iput-boolean v13, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetDdsRequired:Z

    .end local v6           #allDataCleanedUpMsg:Landroid/os/Message;
    :goto_1
    move v0, v13

    .line 1660
    .end local v10           #newSub:Lcom/android/internal/telephony/msim/Subscription;
    .end local v12           #sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    :goto_2
    return v0

    .line 1645
    .restart local v10       #newSub:Lcom/android/internal/telephony/msim/Subscription;
    .restart local v12       #sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    :cond_2
    const-string v0, "startNextPendingDeactivateRequests: Deactivating now"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1646
    new-instance v11, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;

    iget v0, v10, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    iget-object v1, v10, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    invoke-direct {v11, p0, v0, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;-><init>(Lcom/android/internal/telephony/msim/SubscriptionManager;ILcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;)V

    .line 1647
    .local v11, setSubParam:Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;
    const/4 v0, 0x4

    invoke-static {p0, v0, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1650
    .local v5, msgSetUiccSubDone:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    iget v1, v10, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    aget-object v0, v0, v1

    iget v1, v10, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    invoke-virtual {v10}, Lcom/android/internal/telephony/msim/Subscription;->getAppIndex()I

    move-result v2

    iget v3, v10, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    iget-object v4, v10, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    invoke-virtual {v4}, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->ordinal()I

    move-result v4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setUiccSubscription(IIIILandroid/os/Message;)V

    goto :goto_1

    .line 1660
    .end local v5           #msgSetUiccSubDone:Landroid/os/Message;
    .end local v10           #newSub:Lcom/android/internal/telephony/msim/Subscription;
    .end local v11           #setSubParam:Lcom/android/internal/telephony/msim/SubscriptionManager$SetUiccSubsParams;
    .end local v12           #sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private updateCurrentSubscription(ILcom/android/internal/telephony/msim/Subscription;Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;Ljava/lang/String;)V
    .locals 3
    .parameter "subId"
    .parameter "subscription"
    .parameter "subStatus"
    .parameter "cause"

    .prologue
    .line 1759
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v1

    aget-object v0, v1, p1

    .line 1761
    .local v0, sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCurrentSubscription: subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " subStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n subscription = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1764
    sget-object v1, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne p3, v1, :cond_1

    .line 1765
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/msim/Subscription;->copyFrom(Lcom/android/internal/telephony/msim/Subscription;)Lcom/android/internal/telephony/msim/Subscription;

    .line 1771
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v1

    iput-object p3, v1, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    .line 1772
    if-nez p4, :cond_0

    .line 1773
    const-string p4, "NO CHANGE IN SUBSCRIPTION"

    .line 1775
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;

    iput-object p4, v1, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;->cause:Ljava/lang/String;

    .line 1776
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;->subReady:Z

    .line 1777
    return-void

    .line 1767
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/Subscription;->clear()V

    .line 1769
    sget-object p3, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    goto :goto_0
.end method

.method private updateSubPreferences()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1162
    const/4 v1, 0x0

    .line 1163
    .local v1, activeSubCount:I
    const/4 v0, 0x0

    .line 1165
    .local v0, activeSub:Lcom/android/internal/telephony/msim/Subscription;
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v2

    .local v2, arr$:[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v6, v2, v4

    .line 1166
    .local v6, sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscriptionStatus(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v8, v9, :cond_0

    .line 1167
    add-int/lit8 v1, v1, 0x1

    .line 1168
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v0

    .line 1165
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1173
    .end local v6           #sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    :cond_1
    const/4 v8, 0x2

    if-ne v8, v1, :cond_2

    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mcardDefault:[Z

    aget-boolean v8, v8, v10

    if-ne v11, v8, :cond_2

    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mcardDefault:[Z

    aget-boolean v8, v8, v11

    if-ne v11, v8, :cond_2

    .line 1174
    const/4 v1, 0x1

    .line 1175
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(I)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v0

    .line 1176
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mcardDefault:[Z

    aput-boolean v10, v8, v10

    .line 1177
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mcardDefault:[Z

    aput-boolean v10, v8, v11

    .line 1183
    :cond_2
    if-ne v1, v11, :cond_4

    .line 1184
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateSubPreferences: only SUB:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is Active.  Update the default/voice/sms and data subscriptions"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1186
    iget v8, v0, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    invoke-static {v8}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->setVoiceSubscription(I)V

    .line 1187
    iget v8, v0, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    invoke-static {v8}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->setSMSSubscription(I)V

    .line 1188
    invoke-static {v10}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->setPromptEnabled(Z)V

    .line 1190
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateSubPreferences: current defaultSub = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->getDefaultSubscription()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1192
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateSubPreferences: current mCurrentDds = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1193
    invoke-static {}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->getDefaultSubscription()I

    move-result v8

    iget v9, v0, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    if-eq v8, v9, :cond_3

    .line 1194
    iget v8, v0, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    invoke-static {v8}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->setDefaultSubscription(I)V

    .line 1208
    :cond_3
    iget v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    iget v9, v0, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    if-eq v8, v9, :cond_4

    .line 1214
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v8

    iget v9, v0, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    aget-object v7, v8, v9

    .line 1215
    .local v7, subId:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscriptionReadiness(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1216
    iget v8, v0, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    iput v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mQueuedDds:I

    .line 1217
    const/4 v8, 0x6

    iget v9, v0, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1219
    .local v3, callback:Landroid/os/Message;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "update setDataSubscription to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1220
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    iget v9, v0, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    aget-object v8, v8, v9

    invoke-interface {v8, v3}, Lcom/android/internal/telephony/CommandsInterface;->setDataSubscription(Landroid/os/Message;)V

    .line 1221
    iput-boolean v10, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetDdsRequired:Z

    .line 1231
    .end local v3           #callback:Landroid/os/Message;
    .end local v7           #subId:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    :cond_4
    :goto_1
    return-void

    .line 1225
    .restart local v7       #subId:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    :cond_5
    iput-boolean v11, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetDdsRequired:Z

    .line 1226
    iget v8, v0, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    iput v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    goto :goto_1
.end method

.method private updateSubscriptionReadiness(IZ)V
    .locals 3
    .parameter "subId"
    .parameter "ready"

    .prologue
    .line 1780
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v1

    aget-object v0, v1, p1

    .line 1781
    .local v0, sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSubscriptionReadiness("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1784
    if-eqz p2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v2, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v1, v2, :cond_0

    .line 1785
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;->subReady:Z

    .line 1790
    :goto_0
    return-void

    .line 1789
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;->subReady:Z

    goto :goto_0
.end method

.method private validateActivationRequest(Lcom/android/internal/telephony/msim/Subscription;)Z
    .locals 3
    .parameter "sub"

    .prologue
    .line 1700
    iget-object v0, p1, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v1, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    sget v1, Lcom/android/internal/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge v0, v1, :cond_0

    iget v0, p1, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    sget v1, Lcom/android/internal/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/msim/Subscription;->getAppIndex()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/msim/Subscription;->getAppIndex()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardSubMgr:Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    iget v2, p1, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->getCardSubscriptions(I)Lcom/android/internal/telephony/msim/SubscriptionData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/SubscriptionData;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1706
    const/4 v0, 0x1

    .line 1708
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private validateDeactivationRequest(Lcom/android/internal/telephony/msim/Subscription;)Z
    .locals 3
    .parameter "sub"

    .prologue
    .line 1686
    iget-object v0, p1, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v1, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    sget v1, Lcom/android/internal/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge v0, v1, :cond_0

    iget v0, p1, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    sget v1, Lcom/android/internal/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/msim/Subscription;->getAppIndex()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/msim/Subscription;->getAppIndex()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardSubMgr:Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    iget v2, p1, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->getCardSubscriptions(I)Lcom/android/internal/telephony/msim/SubscriptionData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/SubscriptionData;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1692
    const/4 v0, 0x1

    .line 1694
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public activateGsm()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2564
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/msim/SubscriptionManager;->isCardPresent(I)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v4, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->SUB2:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscriptionStatus(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    move-result-object v4

    if-eq v3, v4, :cond_1

    .line 2579
    :cond_0
    :goto_0
    return-void

    .line 2569
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/msim/SubscriptionData;

    sget v3, Lcom/android/internal/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/msim/SubscriptionData;-><init>(I)V

    .line 2570
    .local v1, selSub:Lcom/android/internal/telephony/msim/SubscriptionData;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget v3, Lcom/android/internal/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge v0, v3, :cond_2

    .line 2571
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(I)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v2

    .line 2572
    .local v2, sub:Lcom/android/internal/telephony/msim/Subscription;
    iget-object v3, v1, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/msim/Subscription;->copyFrom(Lcom/android/internal/telephony/msim/Subscription;)Lcom/android/internal/telephony/msim/Subscription;

    .line 2570
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2574
    .end local v2           #sub:Lcom/android/internal/telephony/msim/Subscription;
    :cond_2
    iget-object v3, v1, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v3, v3, v5

    iput v5, v3, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    .line 2575
    iget-object v3, v1, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v3, v3, v5

    iput v5, v3, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    .line 2576
    iget-object v3, v1, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v3, v3, v5

    sget-object v4, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iput-object v4, v3, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    .line 2578
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->setSubscription(Lcom/android/internal/telephony/msim/SubscriptionData;)Z

    goto :goto_0
.end method

.method public clearCGIccid()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 510
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mlastIccIds:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    .line 511
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mlastIccIds:[Ljava/lang/String;

    const/4 v1, 0x1

    aput-object v2, v0, v1

    .line 512
    return-void
.end method

.method public clearUserPrefWhenChangeMode(I)V
    .locals 9
    .parameter "nMode"

    .prologue
    const/4 v8, -0x1

    .line 2526
    const-string v5, "SubscriptionManager"

    const-string v6, "clearUserPrefWhenChangeMode"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2528
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 2529
    .local v3, subId:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ",,,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_INVALID:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    invoke-virtual {v6}, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->ordinal()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2539
    .local v4, userSub:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2545
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Settings$System;->USER_PREFERRED_SUBS:[Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v7

    aget-object v6, v6, v7

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2528
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2548
    .end local v3           #subId:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    .end local v4           #userSub:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public copyCIccidToGIccid()V
    .locals 4

    .prologue
    .line 515
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardSubMgr:Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->getCardSubscriptions(I)Lcom/android/internal/telephony/msim/SubscriptionData;

    move-result-object v0

    .line 516
    .local v0, cardSubData:Lcom/android/internal/telephony/msim/SubscriptionData;
    if-eqz v0, :cond_0

    .line 517
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mlastIccIds:[Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/SubscriptionData;->getIccId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 519
    :cond_0
    return-void
.end method

.method public getActiveSubscriptionsCount()I
    .locals 8

    .prologue
    .line 2379
    const/4 v0, 0x0

    .line 2380
    .local v0, activeSubCount:I
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v1

    .local v1, arr$:[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    .line 2381
    .local v4, sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscriptionStatus(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v5, v6, :cond_0

    .line 2382
    add-int/lit8 v0, v0, 0x1

    .line 2380
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2385
    .end local v4           #sub:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    :cond_1
    const-string v5, "SubscriptionManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "count of subs activated "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2386
    return v0
.end method

.method public getAdjustPropMtkSlotId()Z
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mAdjustPropMtkSlotId:Z

    return v0
.end method

.method public getCCardChanged()Z
    .locals 1

    .prologue
    .line 2558
    iget-boolean v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCCardChanged:Z

    return v0
.end method

.method public getCurrentSubscription(I)Lcom/android/internal/telephony/msim/Subscription;
    .locals 1
    .parameter "subId"

    .prologue
    .line 1809
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentSubscriptionOnSlot(I)Lcom/android/internal/telephony/msim/Subscription;
    .locals 4
    .parameter "slotId"

    .prologue
    .line 1814
    const/4 v1, 0x0

    .line 1815
    .local v1, sub:Lcom/android/internal/telephony/msim/Subscription;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v2, Lcom/android/internal/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge v0, v2, :cond_0

    .line 1816
    iget-object v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentSubscriptions:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;

    iget-object v1, v2, Lcom/android/internal/telephony/msim/SubscriptionManager$PhoneSubscriptionInfo;->sub:Lcom/android/internal/telephony/msim/Subscription;

    .line 1817
    if-eqz v1, :cond_1

    iget v2, v1, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    if-ne v2, p1, :cond_1

    .line 1819
    :cond_0
    return-object v1

    .line 1815
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getLastIccidInfo()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2366
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mlastIccIds:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getSlotIdFromSubId(I)I
    .locals 6
    .parameter "subId"

    .prologue
    const/4 v4, 0x1

    const/4 v2, -0x1

    .line 2442
    if-ltz p1, :cond_0

    if-le p1, v4, :cond_1

    :cond_0
    move p1, v2

    .line 2464
    .end local p1
    :goto_0
    return p1

    .line 2447
    .restart local p1
    :cond_1
    iget-boolean v3, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mHuaweiDSDA:Z

    if-eqz v3, :cond_2

    .line 2448
    const-string v2, "SubscriptionManager"

    const-string v3, "DSDA, slotId == subId"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2454
    :cond_2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(I)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v1

    .line 2455
    .local v1, sub:Lcom/android/internal/telephony/msim/Subscription;
    iget v3, v1, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    if-eqz v3, :cond_3

    iget v3, v1, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    if-ne v3, v4, :cond_4

    :cond_3
    iget-object v3, v1, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v4, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v3, v4, :cond_4

    iget v3, v1, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    if-ne v3, p1, :cond_4

    .line 2458
    iget p1, v1, Lcom/android/internal/telephony/msim/Subscription;->slotId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2460
    .end local v1           #sub:Lcom/android/internal/telephony/msim/Subscription;
    :catch_0
    move-exception v0

    .line 2461
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "zhangfeng"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSlotIdFromSubId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v2

    .line 2462
    goto :goto_0

    .end local v0           #ex:Ljava/lang/Exception;
    .restart local v1       #sub:Lcom/android/internal/telephony/msim/Subscription;
    :cond_4
    move p1, v2

    .line 2464
    goto :goto_0
.end method

.method public getSubidFromSlotId(I)I
    .locals 7
    .parameter "slotId"

    .prologue
    const/4 v3, -0x1

    .line 2413
    if-ltz p1, :cond_0

    const/4 v4, 0x2

    if-le p1, v4, :cond_1

    :cond_0
    move p1, v3

    .line 2437
    .end local p1
    :goto_0
    return p1

    .line 2418
    .restart local p1
    :cond_1
    iget-boolean v4, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mHuaweiDSDA:Z

    if-eqz v4, :cond_2

    .line 2419
    const-string v3, "SubscriptionManager"

    const-string v4, "DSDA, slotId == subId"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2425
    :cond_2
    const/4 v0, 0x0

    .line 2426
    .local v0, culsub:Lcom/android/internal/telephony/msim/Subscription;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    :try_start_0
    sget v4, Lcom/android/internal/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge v2, v4, :cond_4

    .line 2427
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(I)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v0

    .line 2428
    iget-object v4, v0, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v5, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v4, v5, :cond_3

    iget v4, v0, Lcom/android/internal/telephony/msim/Subscription;->slotId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, p1, :cond_3

    move p1, v2

    .line 2430
    goto :goto_0

    .line 2426
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2433
    :catch_0
    move-exception v1

    .line 2434
    .local v1, ex:Ljava/lang/Exception;
    const-string v4, "zhangfeng"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSubidFromSlotId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v3

    .line 2435
    goto :goto_0

    .end local v1           #ex:Ljava/lang/Exception;
    :cond_4
    move p1, v3

    .line 2437
    goto :goto_0
.end method

.method public getUserPrefRadioState(I)Z
    .locals 3
    .parameter "subId"

    .prologue
    .line 770
    const/4 v0, 0x1

    .line 773
    .local v0, bRet:Z
    sget-object v1, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iget-object v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v2, v2, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v1, v2, :cond_0

    .line 774
    const/4 v0, 0x0

    .line 777
    :cond_0
    return v0
.end method

.method public getUserPrefSubStatus(I)Z
    .locals 7
    .parameter "slotid"

    .prologue
    const/4 v4, 0x0

    .line 2473
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    if-nez v5, :cond_0

    .line 2474
    const-string v5, "SubscriptionManager"

    const-string v6, "null == mUserPrefSubs"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2487
    :goto_0
    return v4

    .line 2478
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v0, v5, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    .local v0, arr$:[Lcom/android/internal/telephony/msim/Subscription;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 2479
    .local v3, userSub:Lcom/android/internal/telephony/msim/Subscription;
    iget v5, v3, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    if-ne v5, p1, :cond_2

    .line 2480
    iget-object v5, v3, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v6, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-eq v5, v6, :cond_1

    iget-object v5, v3, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v6, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v5, v6, :cond_2

    .line 2481
    :cond_1
    const-string v4, "SubscriptionManager"

    const-string v5, "getUserPrefSubStatus:true"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2482
    const/4 v4, 0x1

    goto :goto_0

    .line 2478
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2486
    .end local v3           #userSub:Lcom/android/internal/telephony/msim/Subscription;
    :cond_3
    const-string v5, "SubscriptionManager"

    const-string v6, "getUserPrefSubStatus:false"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getUserSubInfo()Lcom/android/internal/telephony/msim/SubscriptionData;
    .locals 1

    .prologue
    .line 2362
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 383
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 385
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 386
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 387
    .local v1, subId:Ljava/lang/Integer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_RADIO_OFF_OR_NOT_AVAILABLE on SUB: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 388
    iget-object v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mRadioOn:[Z

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput-boolean v4, v2, v3

    .line 389
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->isAllRadioOn()Z

    move-result v2

    if-nez v2, :cond_0

    .line 390
    iput-boolean v4, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionInProgress:Z

    goto :goto_0

    .line 395
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #subId:Ljava/lang/Integer;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 396
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 397
    .restart local v1       #subId:Ljava/lang/Integer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_RADIO_ON on SUB: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 398
    iget-object v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mRadioOn:[Z

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    goto :goto_0

    .line 402
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #subId:Ljava/lang/Integer;
    :pswitch_2
    const-string v2, "EVENT_CARD_INFO_AVAILABLE"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 403
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->processCardInfoAvailable(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 407
    :pswitch_3
    const-string v2, "EVENT_CARD_INFO_NOT_AVAILABLE"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 408
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->processCardInfoNotAvailable(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 412
    :pswitch_4
    const-string v2, "EVENT_ALL_CARD_INFO_AVAILABLE"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 413
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->processAllCardsInfoAvailable()V

    goto :goto_0

    .line 417
    :pswitch_5
    const-string v2, "EVENT_SET_SUBSCRIPTION_MODE_DONE"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 418
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->processSetSubscriptionModeDone()V

    goto/16 :goto_0

    .line 422
    :pswitch_6
    const-string v2, "EVENT_SET_UICC_SUBSCRIPTION_DONE"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 423
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->processSetUiccSubscriptionDone(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 427
    :pswitch_7
    const-string v2, "EVENT_SUBSCRIPTION_STATUS_CHANGED"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 428
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->processSubscriptionStatusChanged(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 432
    :pswitch_8
    const-string v2, "EVENT_CLEANUP_DATA_CONNECTION_DONE"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 433
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->processCleanupDataConnectionDone(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 437
    :pswitch_9
    const-string v2, "EVENT_DISABLE_DATA_CONNECTION_DONE"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 438
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->processDisableDataConnectionDone(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 442
    :pswitch_a
    const-string v2, "EVENT_SET_DATA_SUBSCRIPTION_DONE"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 443
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->processSetDataSubscriptionDone(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 447
    :pswitch_b
    const-string v2, "SubscriptionManager"

    const-string v3, "EVENT_ALL_DATA_DISCONNECTED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->processAllDataDisconnected(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 455
    :pswitch_c
    const-string v2, "SubscriptionManager"

    const-string v3, "EVENT_RADIO_STATE_CHANGED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-boolean v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mHuaweiDSDA:Z

    if-eqz v2, :cond_0

    .line 457
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 458
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->processRadioStateChanged(I)V

    goto/16 :goto_0

    .line 466
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_d
    const-string v2, "SubscriptionManager"

    const-string v3, "EVENT_DISABLE_DATA_CONNECTION_DONE_DSDA"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-boolean v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mHuaweiDSDA:Z

    if-eqz v2, :cond_0

    .line 468
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->processDisableDataConnectionDoneDSDA(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 477
    :pswitch_e
    const-string v2, "SubscriptionManager"

    const-string v3, "EVENT_ADJUST_PROP_MTKSLOTID"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-boolean v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mHuaweiDSDA:Z

    if-eqz v2, :cond_0

    .line 479
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->processAdjustProp()V

    goto/16 :goto_0

    .line 383
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_a
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_1
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public isCardPresent(I)Z
    .locals 5
    .parameter "slotId"

    .prologue
    const/4 v2, 0x0

    .line 2397
    if-ltz p1, :cond_0

    const/4 v3, 0x2

    if-le p1, v3, :cond_1

    .line 2405
    :cond_0
    :goto_0
    return v2

    .line 2402
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/UiccCard;

    move-result-object v1

    .line 2403
    .local v1, uiccCard:Lcom/android/internal/telephony/UiccCard;
    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/IccCardStatus$CardState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 2404
    .end local v1           #uiccCard:Lcom/android/internal/telephony/UiccCard;
    :catch_0
    move-exception v0

    .line 2405
    .local v0, ex:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public isSetSubscriptionInProgress()Z
    .locals 1

    .prologue
    .line 2390
    iget-boolean v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionInProgress:Z

    return v0
.end method

.method public isSubActive(I)Z
    .locals 3
    .parameter "subscription"

    .prologue
    .line 1832
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(I)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v0

    .line 1833
    .local v0, currentSelSub:Lcom/android/internal/telephony/msim/Subscription;
    iget-object v1, v0, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v2, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSubDeactived(I)Z
    .locals 3
    .parameter "subscription"

    .prologue
    .line 1838
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(I)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v0

    .line 1839
    .local v0, currentSelSub:Lcom/android/internal/telephony/msim/Subscription;
    iget-object v1, v0, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v2, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSubLastDeactivate(I)Z
    .locals 3
    .parameter "subId"

    .prologue
    .line 675
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    if-eqz v1, :cond_1

    .line 676
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v1, v1, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v0, v1, p1

    .line 677
    .local v0, userSub:Lcom/android/internal/telephony/msim/Subscription;
    sget-object v1, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iget-object v2, v0, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iget-object v2, v0, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v1, v2, :cond_1

    .line 679
    :cond_0
    const/4 v1, 0x1

    .line 682
    .end local v0           #userSub:Lcom/android/internal/telephony/msim/Subscription;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSubRunToActivate(I)Z
    .locals 2
    .parameter "subId"

    .prologue
    .line 671
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SUB_TO_ACTIVATE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDesiredRadioStates:[Lcom/android/internal/telephony/CommandsInterface$RadioState;

    aget-object v1, v1, p1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method notifyNewCardsAvailable()V
    .locals 0

    .prologue
    .line 1471
    return-void
.end method

.method public declared-synchronized registerForSetSubscriptionCompleted(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2179
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2180
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2181
    monitor-exit p0

    return-void

    .line 2179
    .end local v0           #r:Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public registerForSubscriptionActivated(ILandroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "subId"
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2118
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p2, p3, p4}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2119
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubActivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v2, v1, p1

    monitor-enter v2

    .line 2120
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubActivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 2121
    monitor-exit v2

    .line 2122
    return-void

    .line 2121
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForSubscriptionActivatedOnSlot(ILandroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "slotId"
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2139
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p2, p3, p4}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2140
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubActivatedRegistrantsOnSlot:[Landroid/os/RegistrantList;

    aget-object v2, v1, p1

    monitor-enter v2

    .line 2141
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubActivatedRegistrantsOnSlot:[Landroid/os/RegistrantList;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 2142
    monitor-exit v2

    .line 2143
    return-void

    .line 2142
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForSubscriptionDeactivated(ILandroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "subId"
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2098
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p2, p3, p4}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2099
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubDeactivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v2, v1, p1

    monitor-enter v2

    .line 2100
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubDeactivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 2101
    monitor-exit v2

    .line 2102
    return-void

    .line 2101
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForSubscriptionDeactivatedOnSlot(ILandroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "slotId"
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2159
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p2, p3, p4}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2160
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubDeactivatedRegistrantsOnSlot:[Landroid/os/RegistrantList;

    aget-object v2, v1, p1

    monitor-enter v2

    .line 2161
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubDeactivatedRegistrantsOnSlot:[Landroid/os/RegistrantList;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 2162
    monitor-exit v2

    .line 2163
    return-void

    .line 2162
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resetCardsSubsInfo()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 491
    iget-object v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardSubMgr:Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->resetCardsInfo()V

    .line 492
    iget-object v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDesiredRadioStates:[Lcom/android/internal/telephony/CommandsInterface$RadioState;

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    aput-object v3, v2, v4

    .line 493
    iget-object v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDesiredRadioStates:[Lcom/android/internal/telephony/CommandsInterface$RadioState;

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    aput-object v3, v2, v5

    .line 495
    iput-boolean v5, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mFirstPowerUp:Z

    .line 496
    iput-boolean v4, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCCardChanged:Z

    .line 497
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->oldDataSub:I

    .line 499
    invoke-static {v5}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/msim/MSimPhoneProxy;

    move-object v1, v2

    check-cast v1, Lcom/android/internal/telephony/msim/MSimPhoneProxy;

    .line 500
    .local v1, simPhoneProxy:Lcom/android/internal/telephony/msim/MSimPhoneProxy;
    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 501
    .local v0, gsmphone:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->setDesiredPowerState(Z)V

    .line 503
    const-string v2, "ro.config.hw_dsda"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ro.config.hw_globalmode"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 504
    invoke-static {}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDefault()Lcom/huawei/telephony/HuaweiTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/telephony/HuaweiTelephonyManager;->ResetStatus()V

    .line 507
    :cond_0
    return-void
.end method

.method public restartRild(I)V
    .locals 4
    .parameter "subid"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1873
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1874
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, v3

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->restartRild(Landroid/os/Message;)V

    .line 1875
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, v2

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->restartRild(Landroid/os/Message;)V

    .line 1881
    :cond_0
    :goto_0
    return-void

    .line 1876
    :cond_1
    if-nez p1, :cond_2

    .line 1877
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, v3

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->restartRild(Landroid/os/Message;)V

    goto :goto_0

    .line 1878
    :cond_2
    if-ne p1, v2, :cond_0

    .line 1879
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, v2

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->restartRild(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public resumeSubscriptionDSDA()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2494
    const-string v1, "SubscriptionManager"

    const-string v2, "resumeSubscriptionDSDA"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2497
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v1, Lcom/android/internal/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge v0, v1, :cond_1

    .line 2498
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardInfoAvailable:[Z

    aget-boolean v1, v1, v0

    if-ne v4, v1, :cond_0

    .line 2499
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->processCardInfoAvailableDSDA(I)V

    .line 2497
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2501
    :cond_0
    const-string v1, "SubscriptionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radio on sub "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2502
    invoke-static {v0}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    goto :goto_1

    .line 2518
    :cond_1
    return-void
.end method

.method public saveUserPreferredSubscription(ILcom/android/internal/telephony/msim/Subscription;)V
    .locals 6
    .parameter "subIndex"
    .parameter "userPrefSub"

    .prologue
    .line 2313
    sget v3, Lcom/android/internal/telephony/msim/SubscriptionManager;->NUM_SUBSCRIPTIONS:I

    if-ge p1, v3, :cond_0

    if-nez p2, :cond_1

    .line 2314
    :cond_0
    const-string v3, "SubscriptionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveUserPreferredSubscription: INVALID PARAMETERS: subIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " userPrefSub = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2351
    :goto_0
    return-void

    .line 2320
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v3, v3, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v3, v3, p1

    invoke-virtual {v3, p2}, Lcom/android/internal/telephony/msim/Subscription;->copyFrom(Lcom/android/internal/telephony/msim/Subscription;)Lcom/android/internal/telephony/msim/Subscription;

    .line 2321
    iget-object v3, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mUserPrefSubs:Lcom/android/internal/telephony/msim/SubscriptionData;

    iget-object v3, v3, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v3, v3, p1

    iput p1, v3, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    .line 2325
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p2, Lcom/android/internal/telephony/msim/Subscription;->iccId:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p2, Lcom/android/internal/telephony/msim/Subscription;->iccId:Ljava/lang/String;

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p2, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p2, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    :goto_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p2, Lcom/android/internal/telephony/msim/Subscription;->appId:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p2, Lcom/android/internal/telephony/msim/Subscription;->appId:Ljava/lang/String;

    :goto_3
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    invoke-virtual {v4}, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/android/internal/telephony/msim/Subscription;->m3gppIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/android/internal/telephony/msim/Subscription;->m3gpp2Index:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2333
    .local v2, userSub:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardSubMgr:Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->getCardSubscriptions(I)Lcom/android/internal/telephony/msim/SubscriptionData;

    move-result-object v0

    .line 2334
    .local v0, cardSubData:Lcom/android/internal/telephony/msim/SubscriptionData;
    if-eqz v0, :cond_6

    .line 2335
    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/SubscriptionData;->getIccId()Ljava/lang/String;

    move-result-object v1

    .line 2336
    .local v1, mIccIds:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_5

    .end local v1           #mIccIds:Ljava/lang/String;
    :goto_4
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2343
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveUserPreferredSubscription: userPrefSub = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 2344
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveUserPreferredSubscription: subIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", userSub = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 2349
    iget-object v3, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Settings$System;->USER_PREFERRED_SUBS:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 2325
    .end local v0           #cardSubData:Lcom/android/internal/telephony/msim/SubscriptionData;
    .end local v2           #userSub:Ljava/lang/String;
    :cond_2
    const-string v3, ""

    goto/16 :goto_1

    :cond_3
    const-string v3, ""

    goto/16 :goto_2

    :cond_4
    const-string v3, ""

    goto/16 :goto_3

    .line 2336
    .restart local v0       #cardSubData:Lcom/android/internal/telephony/msim/SubscriptionData;
    .restart local v1       #mIccIds:Ljava/lang/String;
    .restart local v2       #userSub:Ljava/lang/String;
    :cond_5
    const-string v1, " "

    goto :goto_4

    .line 2338
    .end local v1           #mIccIds:Ljava/lang/String;
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5
.end method

.method public setAdjustPropMtkSlotId(Z)V
    .locals 0
    .parameter "bNeedAdjust"

    .prologue
    .line 256
    iput-boolean p1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mAdjustPropMtkSlotId:Z

    .line 257
    return-void
.end method

.method public setCCardChanged(Z)V
    .locals 0
    .parameter "bChanged"

    .prologue
    .line 2554
    iput-boolean p1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCCardChanged:Z

    .line 2555
    return-void
.end method

.method public setCardInfoAvailable(I)V
    .locals 2
    .parameter "cardIndex"

    .prologue
    .line 2520
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCardInfoAvailable:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 2521
    return-void
.end method

.method public setDataSubscription(ILandroid/os/Message;)V
    .locals 4
    .parameter "subscription"
    .parameter "onCompleteMsg"

    .prologue
    .line 2052
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataSubscription: mCurrentDds = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new subscription = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 2057
    iget-boolean v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mHuaweiDSDA:Z

    if-eqz v1, :cond_1

    .line 2058
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->setDataSubscriptionDSDA(ILandroid/os/Message;)V

    .line 2087
    :cond_0
    :goto_0
    return-void

    .line 2064
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscriptionReadiness(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2065
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataSubscription: requested SUB:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not yet activated, returning failure"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->loge(Ljava/lang/String;)V

    .line 2067
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Subscription not active"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p2, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2070
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 2074
    :cond_2
    iput-object p2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetDdsCompleteMsg:Landroid/os/Message;

    .line 2081
    iput p1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mQueuedDds:I

    .line 2082
    iget-boolean v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDisableDdsInProgress:Z

    if-nez v1, :cond_0

    .line 2083
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2084
    .local v0, allDataDisabledMsg:Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/msim/MSimProxyManager;->getInstance()Lcom/android/internal/telephony/msim/MSimProxyManager;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/msim/MSimProxyManager;->disableDataConnectivity(ILandroid/os/Message;)V

    .line 2085
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDisableDdsInProgress:Z

    goto :goto_0
.end method

.method public setDataSubscriptionDSDA(ILandroid/os/Message;)V
    .locals 5
    .parameter "subscription"
    .parameter "onCompleteMsg"

    .prologue
    const/4 v4, 0x1

    .line 783
    const-string v1, "SubscriptionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataSubscriptionDSDA, sub = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    iget v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->oldDataSub:I

    if-ne v1, p1, :cond_1

    if-nez p2, :cond_1

    .line 813
    :cond_0
    :goto_0
    return-void

    .line 791
    :cond_1
    iput p1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->oldDataSub:I

    .line 794
    iput p1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mQueuedDds:I

    .line 795
    invoke-static {}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->getDataSubscription()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    .line 797
    iget v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mQueuedDds:I

    iget v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    if-ne v1, v2, :cond_2

    if-eqz p2, :cond_2

    .line 800
    const-string v1, "SubscriptionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataSubscriptionDSDA: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p2, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 802
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 806
    :cond_2
    iput-object p2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetDdsCompleteMsg:Landroid/os/Message;

    .line 808
    iget-boolean v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDisableDdsInProgress:Z

    if-nez v1, :cond_0

    .line 809
    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 810
    .local v0, allDataDisabledMsg:Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/msim/MSimProxyManager;->getInstance()Lcom/android/internal/telephony/msim/MSimProxyManager;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCurrentDds:I

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/msim/MSimProxyManager;->disableDataConnectivity(ILandroid/os/Message;)V

    .line 811
    iput-boolean v4, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDisableDdsInProgress:Z

    goto :goto_0
.end method

.method public setDefaultSubscription(Lcom/android/internal/telephony/msim/SubscriptionData;I)V
    .locals 3
    .parameter "subData"
    .parameter "subId"

    .prologue
    .line 2027
    iget-boolean v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mHuaweiDSDA:Z

    if-eqz v1, :cond_0

    .line 2028
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->setSubscription(Lcom/android/internal/telephony/msim/SubscriptionData;)Z

    .line 2043
    :goto_0
    return-void

    .line 2034
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mcardDefault:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p2

    .line 2035
    iget-boolean v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionInProgress:Z

    if-eqz v1, :cond_1

    .line 2036
    const-string v1, "setDefaultSubscription, in progress, "

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 2037
    new-instance v0, Lcom/android/internal/telephony/msim/Subscription;

    invoke-direct {v0}, Lcom/android/internal/telephony/msim/Subscription;-><init>()V

    .line 2038
    .local v0, newSub:Lcom/android/internal/telephony/msim/Subscription;
    iget-object v1, p1, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/msim/Subscription;->copyFrom(Lcom/android/internal/telephony/msim/Subscription;)Lcom/android/internal/telephony/msim/Subscription;

    .line 2039
    iget-object v1, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v2

    aget-object v2, v2, p2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2041
    .end local v0           #newSub:Lcom/android/internal/telephony/msim/Subscription;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->setSubscription(Lcom/android/internal/telephony/msim/SubscriptionData;)Z

    goto :goto_0
.end method

.method public setSubscription(Lcom/android/internal/telephony/msim/SubscriptionData;)Z
    .locals 11
    .parameter "subData"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1958
    const/4 v5, 0x0

    .line 1962
    .local v5, ret:Z
    iget-boolean v9, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mHuaweiDSDA:Z

    if-eqz v9, :cond_0

    .line 1963
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->setSubscriptionDSDA(Lcom/android/internal/telephony/msim/SubscriptionData;)V

    .line 2020
    :goto_0
    return v7

    .line 1973
    :cond_0
    iget-boolean v9, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionInProgress:Z

    if-eqz v9, :cond_1

    move v7, v8

    .line 1974
    goto :goto_0

    .line 1977
    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubResult:[Ljava/lang/String;

    const-string v10, "NO CHANGE IN SUBSCRIPTION"

    aput-object v10, v9, v8

    .line 1978
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubResult:[Ljava/lang/String;

    const-string v9, "NO CHANGE IN SUBSCRIPTION"

    aput-object v9, v8, v7

    .line 1981
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->values()[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_5

    aget-object v6, v0, v2

    .line 1986
    .local v6, subId:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v8

    iget-object v9, p1, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    invoke-virtual {v6}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v10

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/msim/Subscription;->equals(Lcom/android/internal/telephony/msim/Subscription;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1987
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscriptionStatus(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v8, v9, :cond_4

    .line 1988
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Need to deactivate current SUB :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1989
    new-instance v4, Lcom/android/internal/telephony/msim/Subscription;

    invoke-direct {v4}, Lcom/android/internal/telephony/msim/Subscription;-><init>()V

    .line 1990
    .local v4, newSub:Lcom/android/internal/telephony/msim/Subscription;
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscription(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/msim/Subscription;->copyFrom(Lcom/android/internal/telephony/msim/Subscription;)Lcom/android/internal/telephony/msim/Subscription;

    .line 1991
    sget-object v8, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    iput-object v8, v4, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    .line 1992
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mDeactivatePending:Ljava/util/HashMap;

    invoke-virtual {v8, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1998
    .end local v4           #newSub:Lcom/android/internal/telephony/msim/Subscription;
    :cond_2
    :goto_2
    iget-object v8, p1, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    invoke-virtual {v6}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v9

    aget-object v8, v8, v9

    iget-object v8, v8, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v9, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_ACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v8, v9, :cond_3

    .line 1999
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Need to activate new SUB : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/msim/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 2000
    new-instance v4, Lcom/android/internal/telephony/msim/Subscription;

    invoke-direct {v4}, Lcom/android/internal/telephony/msim/Subscription;-><init>()V

    .line 2001
    .restart local v4       #newSub:Lcom/android/internal/telephony/msim/Subscription;
    iget-object v8, p1, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    invoke-virtual {v6}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/msim/Subscription;->copyFrom(Lcom/android/internal/telephony/msim/Subscription;)Lcom/android/internal/telephony/msim/Subscription;

    .line 2002
    iget-object v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mActivatePending:Ljava/util/HashMap;

    invoke-virtual {v8, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1981
    .end local v4           #newSub:Lcom/android/internal/telephony/msim/Subscription;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 1993
    :cond_4
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscriptionStatus(Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;)Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATED:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v8, v9, :cond_2

    iget-object v8, p1, Lcom/android/internal/telephony/msim/SubscriptionData;->subscription:[Lcom/android/internal/telephony/msim/Subscription;

    invoke-virtual {v6}, Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;->ordinal()I

    move-result v9

    aget-object v8, v8, v9

    iget-object v8, v8, Lcom/android/internal/telephony/msim/Subscription;->subStatus:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    sget-object v9, Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;->SUB_DEACTIVATE:Lcom/android/internal/telephony/msim/Subscription$SubscriptionStatus;

    if-ne v8, v9, :cond_2

    goto :goto_2

    .line 2007
    .end local v6           #subId:Lcom/android/internal/telephony/msim/SubscriptionManager$SubscriptionId;
    :cond_5
    iget-boolean v8, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionInProgress:Z

    if-nez v8, :cond_6

    .line 2008
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->startNextPendingDeactivateRequests()Z

    move-result v1

    .line 2009
    .local v1, deactivateInProgress:Z
    if-eqz v1, :cond_8

    .line 2010
    iput-boolean v7, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionInProgress:Z

    .line 2016
    .end local v1           #deactivateInProgress:Z
    :cond_6
    :goto_3
    iget-boolean v7, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionInProgress:Z

    if-eqz v7, :cond_7

    .line 2018
    const/4 v5, 0x1

    :cond_7
    move v7, v5

    .line 2020
    goto/16 :goto_0

    .line 2012
    .restart local v1       #deactivateInProgress:Z
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/SubscriptionManager;->processActivateRequests()V

    goto :goto_3
.end method

.method public switchMtkSimTo(ILandroid/os/Message;)V
    .locals 2
    .parameter "toSim"
    .parameter "onCompleteMsg"

    .prologue
    .line 1884
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->switchMtkSim(ILandroid/os/Message;)V

    .line 1885
    return-void
.end method

.method public declared-synchronized unRegisterForSetSubscriptionCompleted(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 2188
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSetSubscriptionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2189
    monitor-exit p0

    return-void

    .line 2188
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterForSubscriptionActivated(ILandroid/os/Handler;)V
    .locals 2
    .parameter "subId"
    .parameter "h"

    .prologue
    .line 2125
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubActivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v1, v0, p1

    monitor-enter v1

    .line 2126
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubActivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2127
    monitor-exit v1

    .line 2128
    return-void

    .line 2127
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForSubscriptionActivatedOnSlot(ILandroid/os/Handler;)V
    .locals 2
    .parameter "slotId"
    .parameter "h"

    .prologue
    .line 2146
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubActivatedRegistrantsOnSlot:[Landroid/os/RegistrantList;

    aget-object v1, v0, p1

    monitor-enter v1

    .line 2147
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubActivatedRegistrantsOnSlot:[Landroid/os/RegistrantList;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2148
    monitor-exit v1

    .line 2149
    return-void

    .line 2148
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForSubscriptionDeactivated(ILandroid/os/Handler;)V
    .locals 2
    .parameter "subId"
    .parameter "h"

    .prologue
    .line 2105
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubDeactivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v1, v0, p1

    monitor-enter v1

    .line 2106
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubDeactivatedRegistrants:[Landroid/os/RegistrantList;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2107
    monitor-exit v1

    .line 2108
    return-void

    .line 2107
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForSubscriptionDeactivatedOnSlot(ILandroid/os/Handler;)V
    .locals 2
    .parameter "slotId"
    .parameter "h"

    .prologue
    .line 2166
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubDeactivatedRegistrantsOnSlot:[Landroid/os/RegistrantList;

    aget-object v1, v0, p1

    monitor-enter v1

    .line 2167
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/msim/SubscriptionManager;->mSubDeactivatedRegistrantsOnSlot:[Landroid/os/RegistrantList;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2168
    monitor-exit v1

    .line 2169
    return-void

    .line 2168
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
