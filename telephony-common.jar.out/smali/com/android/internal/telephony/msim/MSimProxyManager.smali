.class public Lcom/android/internal/telephony/msim/MSimProxyManager;
.super Ljava/lang/Object;
.source "MSimProxyManager.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "PROXY"

.field private static sMSimProxyManager:Lcom/android/internal/telephony/msim/MSimProxyManager;


# instance fields
.field private mCardSubscriptionManager:Lcom/android/internal/telephony/msim/CardSubscriptionManager;

.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mMSimIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/msim/MSimIccPhoneBookInterfaceManagerProxy;

.field private mMSimIccSmsInterfaceManager:Lcom/android/internal/telephony/msim/MSimIccSmsInterfaceManager;

.field private mMSimPhoneSubInfoProxy:Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;

.field private mProxyPhones:[Lcom/android/internal/telephony/Phone;

.field private mSubscriptionManager:Lcom/android/internal/telephony/msim/SubscriptionManager;

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 2
    .parameter "context"
    .parameter "phoneProxy"
    .parameter "uiccController"
    .parameter "ci"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const-string v0, "Constructor - Enter"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/MSimProxyManager;->logd(Ljava/lang/String;)V

    .line 75
    iput-object p1, p0, Lcom/android/internal/telephony/msim/MSimProxyManager;->mContext:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/android/internal/telephony/msim/MSimProxyManager;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    .line 77
    iput-object p3, p0, Lcom/android/internal/telephony/msim/MSimProxyManager;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 78
    iput-object p4, p0, Lcom/android/internal/telephony/msim/MSimProxyManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 80
    new-instance v0, Lcom/android/internal/telephony/msim/MSimIccPhoneBookInterfaceManagerProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimProxyManager;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/msim/MSimIccPhoneBookInterfaceManagerProxy;-><init>([Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/msim/MSimProxyManager;->mMSimIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/msim/MSimIccPhoneBookInterfaceManagerProxy;

    .line 82
    new-instance v0, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimProxyManager;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;-><init>([Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/msim/MSimProxyManager;->mMSimPhoneSubInfoProxy:Lcom/android/internal/telephony/MSimPhoneSubInfoProxy;

    .line 83
    new-instance v0, Lcom/android/internal/telephony/msim/MSimIccSmsInterfaceManager;

    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimProxyManager;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/msim/MSimIccSmsInterfaceManager;-><init>([Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/msim/MSimProxyManager;->mMSimIccSmsInterfaceManager:Lcom/android/internal/telephony/msim/MSimIccSmsInterfaceManager;

    .line 84
    invoke-static {p1, p3, p4}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/msim/MSimProxyManager;->mCardSubscriptionManager:Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    .line 85
    invoke-static {p1, p3, p4}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/msim/MSimProxyManager;->mSubscriptionManager:Lcom/android/internal/telephony/msim/SubscriptionManager;

    .line 87
    const-string v0, "Constructor - Exit"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/msim/MSimProxyManager;->logd(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/msim/MSimProxyManager;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/android/internal/telephony/msim/MSimProxyManager;->sMSimProxyManager:Lcom/android/internal/telephony/msim/MSimProxyManager;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/msim/MSimProxyManager;
    .locals 1
    .parameter "context"
    .parameter "phoneProxy"
    .parameter "uiccController"
    .parameter "ci"

    .prologue
    .line 61
    sget-object v0, Lcom/android/internal/telephony/msim/MSimProxyManager;->sMSimProxyManager:Lcom/android/internal/telephony/msim/MSimProxyManager;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/android/internal/telephony/msim/MSimProxyManager;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/msim/MSimProxyManager;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/android/internal/telephony/msim/MSimProxyManager;->sMSimProxyManager:Lcom/android/internal/telephony/msim/MSimProxyManager;

    .line 64
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/msim/MSimProxyManager;->sMSimProxyManager:Lcom/android/internal/telephony/msim/MSimProxyManager;

    return-object v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 123
    const-string v0, "PROXY"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void
.end method


# virtual methods
.method public checkAndUpdatePhoneObject(Lcom/android/internal/telephony/msim/Subscription;)V
    .locals 3
    .parameter "userSub"

    .prologue
    .line 108
    iget v0, p1, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    .line 109
    .local v0, subId:I
    iget-object v1, p1, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    const-string v2, "SIM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    const-string v2, "USIM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimProxyManager;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GSM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 112
    const-string v1, "gets New GSM phone"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/MSimProxyManager;->logd(Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimProxyManager;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/PhoneProxy;->updatePhoneObject(I)V

    .line 120
    :cond_1
    :goto_0
    return-void

    .line 114
    :cond_2
    iget-object v1, p1, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    const-string v2, "RUIM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    const-string v2, "CSIM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimProxyManager;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CDMA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 117
    const-string v1, "gets New CDMA phone"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/msim/MSimProxyManager;->logd(Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimProxyManager;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/PhoneProxy;->updatePhoneObject(I)V

    goto :goto_0
.end method

.method public disableDataConnectivity(ILandroid/os/Message;)V
    .locals 2
    .parameter "sub"
    .parameter "dataCleanedUpMsg"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimProxyManager;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    check-cast v0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->setInternalDataEnabled(ZLandroid/os/Message;)V

    .line 101
    return-void
.end method

.method public enableDataConnectivity(I)V
    .locals 2
    .parameter "sub"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimProxyManager;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    check-cast v0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->setInternalDataEnabled(Z)V

    .line 96
    return-void
.end method

.method public registerForAllDataDisconnected(ILandroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "sub"
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimProxyManager;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    check-cast v0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 128
    return-void
.end method

.method public updateCurrentCarrierInProvider(I)V
    .locals 1
    .parameter "sub"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimProxyManager;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    check-cast v0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->updateCurrentCarrierInProvider()Z

    .line 105
    return-void
.end method

.method public updateDataConnectionTracker(I)V
    .locals 1
    .parameter "sub"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimProxyManager;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    check-cast v0, Lcom/android/internal/telephony/msim/MSimPhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/MSimPhoneProxy;->updateDataConnectionTracker()V

    .line 92
    return-void
.end method
