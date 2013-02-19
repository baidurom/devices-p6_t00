.class public Lcom/android/internal/telephony/msim/MSimIccCardProxy;
.super Lcom/android/internal/telephony/IccCardProxy;
.source "MSimIccCardProxy.java"


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_ICC_RECORD_EVENTS:I = 0x1f4

.field private static final EVENT_SUBSCRIPTION_ACTIVATED:I = 0x1f5

.field private static final EVENT_SUBSCRIPTION_DEACTIVATED:I = 0x1f6

.field private static final LOG_TAG:Ljava/lang/String; = "RIL_MSimIccCardProxy"


# instance fields
.field private bHuaweiDSDA:Z

.field private mCardIndex:Ljava/lang/Integer;

.field private mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)V
    .locals 4
    .parameter "context"
    .parameter "ci"
    .parameter "cardIndex"

    .prologue
    const/4 v3, 0x0

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/IccCardProxy;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 71
    iput-object v3, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    .line 72
    iput-object v3, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;

    .line 75
    const-string v1, "ro.config.hw_dsda"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->bHuaweiDSDA:Z

    .line 82
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    .line 85
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v0

    .line 87
    .local v0, subMgr:Lcom/android/internal/telephony/msim/SubscriptionManager;
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x1f5

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->registerForSubscriptionActivatedOnSlot(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 88
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x1f6

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->registerForSubscriptionDeactivatedOnSlot(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->resetProperties()V

    .line 92
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 93
    return-void
.end method

.method private onSubscriptionActivated()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 178
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v0

    .line 180
    .local v0, subMgr:Lcom/android/internal/telephony/msim/SubscriptionManager;
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscriptionOnSlot(I)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;

    .line 183
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;

    iget-object v1, v1, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 184
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;

    iget-object v1, v1, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    const-string v2, "SIM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;

    iget-object v1, v1, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    const-string v2, "USIM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCurrentAppType:I

    if-eq v1, v3, :cond_2

    .line 187
    const-string v1, "update App Family to 3GPP"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->log(Ljava/lang/String;)V

    .line 188
    iput v3, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCurrentAppType:I

    .line 202
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->bHuaweiDSDA:Z

    if-eqz v1, :cond_4

    .line 203
    const-string v1, "DSDA!, we didn\'t reset properities, because this event may be later after EVENT_RECORDS_LOADED"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->log(Ljava/lang/String;)V

    .line 209
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->updateIccAvailability()V

    .line 210
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->updateStateProperty()V

    .line 211
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->setOperatorPropAfterActivated()V

    .line 212
    return-void

    .line 189
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;

    iget-object v1, v1, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    const-string v2, "RUIM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;

    iget-object v1, v1, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    const-string v2, "CSIM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_3
    iget v1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCurrentAppType:I

    if-eq v1, v4, :cond_1

    .line 192
    const-string v1, "update App Family to 3GPP2"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->log(Ljava/lang/String;)V

    .line 193
    iput v4, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCurrentAppType:I

    goto :goto_0

    .line 205
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->resetProperties()V

    goto :goto_1
.end method

.method private onSubscriptionDeactivated()V
    .locals 2

    .prologue
    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;

    .line 218
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    .line 225
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->resetProperties()V

    .line 226
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->updateIccAvailability()V

    .line 227
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->updateStateProperty()V

    .line 228
    return-void
.end method

.method private updateStateProperty()V
    .locals 3

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;

    if-eqz v0, :cond_0

    .line 301
    const-string v0, "gsm.sim.state"

    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCardConstants$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/telephony/MSimTelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 305
    :cond_0
    return-void
.end method


# virtual methods
.method public broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "value"
    .parameter "reason"

    .prologue
    .line 323
    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    if-nez v2, :cond_0

    .line 324
    const-string v2, "broadcastIccStateChangedIntent: Card Index is not set; Return!!"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->loge(Ljava/lang/String;)V

    .line 348
    :goto_0
    return-void

    .line 328
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 329
    .local v1, subId:I
    iget-boolean v2, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mQuietMode:Z

    if-eqz v2, :cond_1

    .line 330
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QuietMode: NOT Broadcasting intent ACTION_SIM_STATE_CHANGED "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reason "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 335
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 339
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "phoneName"

    const-string v3, "Phone"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    const-string v2, "ss"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    const-string v2, "reason"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    const-string v2, "subscription"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 344
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcasting intent ACTION_SIM_STATE_CHANGED "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reason "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for subscription : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->log(Ljava/lang/String;)V

    .line 346
    const-string v2, "android.permission.READ_PHONE_STATE"

    const/4 v3, -0x1

    invoke-static {v0, v2, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0}, Lcom/android/internal/telephony/IccCardProxy;->dispose()V

    .line 99
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->resetProperties()V

    .line 100
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v8, 0x1

    .line 104
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 173
    invoke-super {p0, p1}, Lcom/android/internal/telephony/IccCardProxy;->handleMessage(Landroid/os/Message;)V

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 106
    :sswitch_0
    const-string v5, "EVENT_SUBSCRIPTION_ACTIVATED"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->log(Ljava/lang/String;)V

    .line 107
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->onSubscriptionActivated()V

    goto :goto_0

    .line 111
    :sswitch_1
    const-string v5, "EVENT_SUBSCRIPTION_DEACTIVATED"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->log(Ljava/lang/String;)V

    .line 112
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->onSubscriptionDeactivated()V

    goto :goto_0

    .line 117
    :sswitch_2
    iget v5, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCurrentAppType:I

    if-eq v5, v8, :cond_1

    iget v5, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCurrentAppType:I

    if-ne v5, v6, :cond_3

    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v5, :cond_3

    .line 118
    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v5}, Lcom/android/internal/telephony/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, operator:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;

    iget v4, v5, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    .line 121
    .local v4, sub:I
    :cond_2
    if-eqz v3, :cond_4

    .line 123
    const-string v5, "gsm.sim.operator.numeric"

    iget-object v6, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6, v3}, Landroid/telephony/MSimTelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 130
    :goto_1
    iget v5, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCurrentAppType:I

    if-ne v5, v8, :cond_3

    .line 131
    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    check-cast v5, Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, countryCode:Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 134
    const-string v5, "gsm.sim.operator.iso-country"

    iget-object v6, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/telephony/MSimTelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 145
    .end local v1           #countryCode:Ljava/lang/String;
    .end local v3           #operator:Ljava/lang/String;
    .end local v4           #sub:I
    :cond_3
    :goto_2
    const-string v5, "LOADED"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 127
    .restart local v3       #operator:Ljava/lang/String;
    .restart local v4       #sub:I
    :cond_4
    const-string v5, "EVENT_RECORDS_LOADED Operator name is null"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 139
    .restart local v1       #countryCode:Ljava/lang/String;
    :cond_5
    const-string v5, "EVENT_RECORDS_LOADED Country code is null"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 150
    .end local v1           #countryCode:Ljava/lang/String;
    .end local v3           #operator:Ljava/lang/String;
    .end local v4           #sub:I
    :sswitch_3
    iget v5, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCurrentAppType:I

    if-eq v5, v8, :cond_6

    iget v5, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCurrentAppType:I

    if-ne v5, v6, :cond_0

    :cond_6
    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v5, :cond_0

    .line 151
    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;

    iget v4, v5, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    .line 152
    .restart local v4       #sub:I
    :cond_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 153
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 154
    .local v2, eventCode:I
    if-ne v2, v6, :cond_0

    .line 156
    const-string v5, "gsm.sim.operator.alpha"

    iget-object v6, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v7}, Lcom/android/internal/telephony/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/telephony/MSimTelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 166
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v2           #eventCode:I
    .end local v4           #sub:I
    :sswitch_4
    invoke-super {p0, p1}, Lcom/android/internal/telephony/IccCardProxy;->handleMessage(Landroid/os/Message;)V

    .line 167
    const-string v5, "RIL_MSimIccCardProxy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCardIndex == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", setRadioOffState["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5, v8}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->setRadioOffState(IZ)V

    goto/16 :goto_0

    .line 104
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x7 -> :sswitch_2
        0x1f4 -> :sswitch_3
        0x1f5 -> :sswitch_0
        0x1f6 -> :sswitch_1
    .end sparse-switch
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 397
    const-string v0, "RIL_MSimIccCardProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CardIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 402
    const-string v0, "RIL_MSimIccCardProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CardIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    return-void
.end method

.method protected registerUiccCardEvents()V
    .locals 3

    .prologue
    .line 309
    invoke-super {p0}, Lcom/android/internal/telephony/IccCardProxy;->registerUiccCardEvents()V

    .line 310
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    const/16 v1, 0x1f4

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/IccRecords;->registerForRecordsEvents(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 313
    :cond_0
    return-void
.end method

.method resetProperties()V
    .locals 3

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCurrentAppType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 288
    const-string v0, "gsm.sim.operator.numeric"

    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/telephony/MSimTelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 290
    const-string v0, "gsm.sim.operator.iso-country"

    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/telephony/MSimTelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 292
    const-string v0, "gsm.sim.operator.alpha"

    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/telephony/MSimTelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 296
    :cond_0
    return-void
.end method

.method protected setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 5
    .parameter "newState"

    .prologue
    .line 352
    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    if-nez v2, :cond_1

    .line 353
    const-string v2, "setExternalState: Card Index is not set; Return!!"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->loge(Ljava/lang/String;)V

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p1, v2, :cond_0

    .line 362
    const-string v2, "RIL_MSimIccCardProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setExternalState mCardIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->isPinLocked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 365
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v1

    .line 366
    .local v1, subMgr:Lcom/android/internal/telephony/msim/SubscriptionManager;
    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->isSubLastDeactivate(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->isSubRunToActivate(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 368
    const-string v2, "RIL_MSimIccCardProxy"

    const-string v3, "setExternalState isSubRunToActivate = false, so return"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 374
    .end local v1           #subMgr:Lcom/android/internal/telephony/msim/SubscriptionManager;
    :cond_2
    iput-object p1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 375
    const-string v2, "gsm.sim.state"

    iget-object v3, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccCardConstants$State;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/telephony/MSimTelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 382
    const/4 v0, 0x0

    .line 384
    .local v0, notBroadcast:Z
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->DEACTIVED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, p1, :cond_3

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getUserPrefSubStatus(I)Z

    move-result v3

    if-ne v2, v3, :cond_3

    .line 385
    const/4 v0, 0x1

    .line 389
    :cond_3
    iget-boolean v2, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mInitialized:Z

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    .line 390
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->broadcastCurrentState()V

    goto/16 :goto_0
.end method

.method setOperatorPropAfterActivated()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 407
    iget v2, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCurrentAppType:I

    if-eq v2, v4, :cond_0

    iget v2, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCurrentAppType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v2, :cond_2

    .line 409
    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 410
    .local v1, operator:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 411
    const-string v2, "gsm.sim.operator.numeric"

    iget-object v3, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3, v1}, Landroid/telephony/MSimTelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 415
    :cond_1
    iget v2, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCurrentAppType:I

    if-ne v2, v4, :cond_2

    .line 416
    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    check-cast v2, Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 417
    .local v0, countryCode:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 418
    const-string v2, "gsm.sim.operator.iso-country"

    iget-object v3, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/telephony/MSimTelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 424
    .end local v0           #countryCode:Ljava/lang/String;
    .end local v1           #operator:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method protected unregisterUiccCardEvents()V
    .locals 1

    .prologue
    .line 317
    invoke-super {p0}, Lcom/android/internal/telephony/IccCardProxy;->unregisterUiccCardEvents()V

    .line 318
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccRecords;->unregisterForRecordsEvents(Landroid/os/Handler;)V

    .line 319
    :cond_0
    return-void
.end method

.method protected updateIccAvailability()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 232
    iget-object v4, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/UiccCard;

    move-result-object v1

    .line 233
    .local v1, newCard:Lcom/android/internal/telephony/UiccCard;
    sget-object v3, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    .line 234
    .local v3, state:Lcom/android/internal/telephony/IccCardStatus$CardState;
    const/4 v0, 0x0

    .line 235
    .local v0, newApp:Lcom/android/internal/telephony/UiccCardApplication;
    const/4 v2, 0x0

    .line 236
    .local v2, newRecords:Lcom/android/internal/telephony/IccRecords;
    if-eqz v1, :cond_4

    .line 237
    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v3

    .line 238
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Card State = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->log(Ljava/lang/String;)V

    .line 241
    iget-boolean v4, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->IS_CHINA_TELECOM:Z

    if-ne v7, v4, :cond_0

    const/4 v4, 0x2

    iget v5, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCurrentAppType:I

    if-ne v4, v5, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCard;->getCdmaSubscriptionAppIndex()I

    move-result v4

    if-gez v4, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCard;->getGsmUmtsSubscriptionAppIndex()I

    move-result v4

    if-ltz v4, :cond_0

    .line 245
    iput v7, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCurrentAppType:I

    .line 249
    :cond_0
    iget v4, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCurrentAppType:I

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/UiccCard;->getApplication(I)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v0

    .line 250
    if-eqz v0, :cond_1

    .line 251
    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v2

    .line 257
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-ne v4, v2, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-ne v4, v0, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eq v4, v1, :cond_3

    .line 258
    :cond_2
    const-string v4, "Icc changed. Reregestering."

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->log(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->unregisterUiccCardEvents()V

    .line 260
    iput-object v6, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    .line 261
    iput-object v6, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    .line 262
    iput-object v6, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 264
    if-eqz v2, :cond_5

    .line 265
    iput-object v1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    .line 266
    iput-object v0, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    .line 267
    iput-object v2, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 268
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->registerUiccCardEvents()V

    .line 270
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->updateActiveRecord()V

    .line 281
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->updateExternalState()V

    .line 282
    return-void

    .line 254
    :cond_4
    const-string v4, "No card available"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 273
    :cond_5
    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    .line 275
    iput-object v1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    .line 276
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->registerUiccCardEvents()V

    goto :goto_1
.end method
