.class public Lcom/huawei/telephony/HuaweiPhone;
.super Ljava/lang/Object;
.source "HuaweiPhone.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HuaweiPhone"


# instance fields
.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .parameter "phoneproxy"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/huawei/telephony/HuaweiPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 46
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 107
    const-string v0, "HuaweiPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneIntfMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void
.end method


# virtual methods
.method public getCdmaPrlVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/huawei/telephony/HuaweiPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDemoString(Ljava/lang/Object;)V
    .locals 3
    .parameter "obj"

    .prologue
    .line 53
    const-string v1, "getDemoString"

    invoke-direct {p0, v1}, Lcom/huawei/telephony/HuaweiPhone;->log(Ljava/lang/String;)V

    .line 54
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 55
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "test"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 57
    :try_start_0
    check-cast p1, Lcom/huawei/telephony/IPhoneCallback;

    .end local p1
    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-interface {p1, v1, v2, v0}, Lcom/huawei/telephony/IPhoneCallback;->onCallback3(IILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getEsn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, esnStr:Ljava/lang/String;
    iget-object v1, p0, Lcom/huawei/telephony/HuaweiPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/huawei/telephony/HuaweiPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getEsn()Ljava/lang/String;

    move-result-object v0

    .line 94
    :cond_0
    return-object v0
.end method

.method public getMin()Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, minStr:Ljava/lang/String;
    iget-object v1, p0, Lcom/huawei/telephony/HuaweiPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/huawei/telephony/HuaweiPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v0

    .line 86
    :cond_0
    return-object v0
.end method

.method public getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/huawei/telephony/HuaweiPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    return-object v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 2

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, servState:Landroid/telephony/ServiceState;
    iget-object v1, p0, Lcom/huawei/telephony/HuaweiPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/huawei/telephony/HuaweiPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 76
    :cond_0
    return-object v0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 2

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, sigStrength:Landroid/telephony/SignalStrength;
    iget-object v1, p0, Lcom/huawei/telephony/HuaweiPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/huawei/telephony/HuaweiPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    .line 68
    :cond_0
    return-object v0
.end method

.method public getUimid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, esnStr:Ljava/lang/String;
    iget-object v1, p0, Lcom/huawei/telephony/HuaweiPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/huawei/telephony/HuaweiPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getUimid()Ljava/lang/String;

    move-result-object v0

    .line 103
    :cond_0
    return-object v0
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "strings"
    .parameter "response"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/huawei/telephony/HuaweiPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 121
    return-void
.end method
