.class public Lcom/android/internal/telephony/msim/MSimPhoneProxy;
.super Lcom/android/internal/telephony/PhoneProxy;
.source "MSimPhoneProxy.java"


# instance fields
.field private mSubscription:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .parameter "phone"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/Phone;)V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mSubscription:I

    .line 48
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mSubscription:I

    .line 49
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 158
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneProxy("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 166
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneProxy("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 170
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneProxy("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 154
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneProxy("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 162
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneProxy("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-void
.end method


# virtual methods
.method protected createNewPhone(I)V
    .locals 2
    .parameter "newVoiceRadioTech"

    .prologue
    .line 58
    invoke-static {p1}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    const-string v0, "PHONE"

    const-string v1, "MSimPhoneProxy: deleteAndCreatePhone: Creating MSimCdmaPhone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mSubscription:I

    invoke-static {v0}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->getMSimCdmaPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    invoke-static {p1}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const-string v0, "PHONE"

    const-string v1, "MSimPhoneProxy: deleteAndCreatePhone: Creating MSimGsmPhone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mSubscription:I

    invoke-static {v0}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->getMSimGsmPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    goto :goto_0
.end method

.method public getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    return-object v0
.end method

.method public getIccPhoneBookInterfaceManagerProxy()Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    return-object v0
.end method

.method public getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    return-object v0
.end method

.method public getPhoneSubInfoProxy()Lcom/android/internal/telephony/PhoneSubInfoProxy;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mPhoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;

    return-object v0
.end method

.method public getSubscription()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mSubscription:I

    return v0
.end method

.method protected init()V
    .locals 4

    .prologue
    .line 52
    new-instance v0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)V

    iput-object v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/IccCardProxy;

    .line 54
    return-void
.end method

.method public registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    instance-of v0, v0, Lcom/android/internal/telephony/msim/MSimCDMAPhone;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/msim/MSimCDMAPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/msim/MSimCDMAPhone;->registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 137
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    instance-of v0, v0, Lcom/android/internal/telephony/msim/MSimGSMPhone;

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 135
    :cond_1
    const-string v0, "Phone object is not MultiSim. This should not hit!!!!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected sendBroadcastStickyIntent()V
    .locals 3

    .prologue
    .line 70
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 72
    const-string v1, "phoneName"

    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string v1, "subscription"

    iget v2, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mSubscription:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 74
    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 75
    return-void
.end method

.method public setInternalDataEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->setInternalDataEnabled(ZLandroid/os/Message;)V

    .line 117
    return-void
.end method

.method public setInternalDataEnabled(ZLandroid/os/Message;)V
    .locals 1
    .parameter "enable"
    .parameter "onCompleteMsg"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    instance-of v0, v0, Lcom/android/internal/telephony/msim/MSimCDMAPhone;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/msim/MSimCDMAPhone;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/msim/MSimCDMAPhone;->setInternalDataEnabled(ZLandroid/os/Message;)V

    .line 127
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    instance-of v0, v0, Lcom/android/internal/telephony/msim/MSimGSMPhone;

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->setInternalDataEnabled(ZLandroid/os/Message;)V

    goto :goto_0

    .line 125
    :cond_1
    const-string v0, "Phone object is not MultiSim. This should not hit!!!!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unregisterForAllDataDisconnected(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    instance-of v0, v0, Lcom/android/internal/telephony/msim/MSimCDMAPhone;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/msim/MSimCDMAPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/msim/MSimCDMAPhone;->unregisterForAllDataDisconnected(Landroid/os/Handler;)V

    .line 147
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    instance-of v0, v0, Lcom/android/internal/telephony/msim/MSimGSMPhone;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->unregisterForAllDataDisconnected(Landroid/os/Handler;)V

    goto :goto_0

    .line 145
    :cond_1
    const-string v0, "Phone object is not MultiSim. This should not hit!!!!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateCurrentCarrierInProvider()Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    instance-of v0, v0, Lcom/android/internal/telephony/msim/MSimCDMAPhone;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/msim/MSimCDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/MSimCDMAPhone;->updateCurrentCarrierInProvider()Z

    move-result v0

    .line 100
    :goto_0
    return v0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    instance-of v0, v0, Lcom/android/internal/telephony/msim/MSimGSMPhone;

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->updateCurrentCarrierInProvider()Z

    move-result v0

    goto :goto_0

    .line 99
    :cond_1
    const-string v0, "Phone object is not MultiSim. This should not hit!!!!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->logd(Ljava/lang/String;)V

    .line 100
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateDataConnectionTracker()V
    .locals 1

    .prologue
    .line 105
    const-string v0, "Updating Data Connection Tracker"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->logd(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    instance-of v0, v0, Lcom/android/internal/telephony/msim/MSimCDMAPhone;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/msim/MSimCDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/MSimCDMAPhone;->updateDataConnectionTracker()V

    .line 113
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    instance-of v0, v0, Lcom/android/internal/telephony/msim/MSimGSMPhone;

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->updateDataConnectionTracker()V

    goto :goto_0

    .line 111
    :cond_1
    const-string v0, "Phone object is not MultiSim. This should not hit!!!!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method
