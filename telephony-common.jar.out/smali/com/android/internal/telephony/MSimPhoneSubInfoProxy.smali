.class public Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;
.super Lcom/android/internal/telephony/IPhoneSubInfoMSim$Stub;
.source "MSimPhoneSubInfoProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MSimPhoneSubInfoProxy"


# instance fields
.field private mPhone:[Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>([Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .parameter "phone"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/internal/telephony/IPhoneSubInfoMSim$Stub;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;->mPhone:[Lcom/android/internal/telephony/Phone;

    .line 36
    const-string v0, "iphonesubinfo_msim"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 37
    const-string v0, "iphonesubinfo_msim"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 39
    :cond_0
    return-void
.end method

.method private getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;
    .locals 5
    .parameter "subscription"

    .prologue
    const/4 v2, 0x0

    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, p1

    check-cast v1, Lcom/android/internal/telephony/msim/MSimPhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->getPhoneSubInfoProxy()Lcom/android/internal/telephony/PhoneSubInfoProxy;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 158
    :goto_0
    return-object v1

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "MSimPhoneSubInfoProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " For subscription :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    move-object v1, v2

    .line 154
    goto :goto_0

    .line 155
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 156
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "MSimPhoneSubInfoProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " For subscription :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    move-object v1, v2

    .line 158
    goto :goto_0
.end method


# virtual methods
.method public getCompleteVoiceMailNumber(I)Ljava/lang/String;
    .locals 4
    .parameter "subscription"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .line 112
    .local v0, phoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    .line 113
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getCompleteVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    .line 117
    :goto_0
    return-object v1

    .line 115
    :cond_0
    const-string v1, "MSimPhoneSubInfoProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCompleteVoiceMailNumber phoneSubInfoProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .locals 4
    .parameter "subscription"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .line 43
    .local v0, phoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    .line 44
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 48
    :goto_0
    return-object v1

    .line 46
    :cond_0
    const-string v1, "MSimPhoneSubInfoProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceId phoneSubInfoProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIccSerialNumber(I)Ljava/lang/String;
    .locals 4
    .parameter "subscription"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .line 68
    .local v0, phoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    .line 69
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v1

    .line 73
    :goto_0
    return-object v1

    .line 71
    :cond_0
    const-string v1, "MSimPhoneSubInfoProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIccSerialNumber phoneSubInfoProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLine1AlphaTag(I)Ljava/lang/String;
    .locals 4
    .parameter "subscription"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .line 90
    .local v0, phoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    .line 91
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v1

    .line 95
    :goto_0
    return-object v1

    .line 93
    :cond_0
    const-string v1, "MSimPhoneSubInfoProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLine1AlphaTag phoneSubInfoProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLine1Number(I)Ljava/lang/String;
    .locals 4
    .parameter "subscription"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .line 79
    .local v0, phoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    .line 80
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 84
    :goto_0
    return-object v1

    .line 82
    :cond_0
    const-string v1, "MSimPhoneSubInfoProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLine1Number phoneSubInfoProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPesn(I)Ljava/lang/String;
    .locals 4
    .parameter "subscription"

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .line 124
    .local v0, phoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    .line 125
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 129
    :goto_0
    return-object v1

    .line 127
    :cond_0
    const-string v1, "MSimPhoneSubInfoProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceId phoneSubInfoProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 4
    .parameter "subscription"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .line 54
    .local v0, phoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    .line 55
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 59
    :goto_0
    return-object v1

    .line 57
    :cond_0
    const-string v1, "MSimPhoneSubInfoProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSubscriberId phoneSubInfoProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVoiceMailAlphaTag(I)Ljava/lang/String;
    .locals 4
    .parameter "subscription"

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .line 136
    .local v0, phoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    .line 137
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    .line 141
    :goto_0
    return-object v1

    .line 139
    :cond_0
    const-string v1, "MSimPhoneSubInfoProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVoiceMailAlphaTag phoneSubInfoProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVoiceMailNumber(I)Ljava/lang/String;
    .locals 4
    .parameter "subscription"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v0

    .line 101
    .local v0, phoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;
    if-eqz v0, :cond_0

    .line 102
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;->getPhoneSubInfoProxy(I)Lcom/android/internal/telephony/PhoneSubInfoProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    .line 106
    :goto_0
    return-object v1

    .line 104
    :cond_0
    const-string v1, "MSimPhoneSubInfoProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVoiceMailNumber phoneSubInfoProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 v1, 0x0

    goto :goto_0
.end method
