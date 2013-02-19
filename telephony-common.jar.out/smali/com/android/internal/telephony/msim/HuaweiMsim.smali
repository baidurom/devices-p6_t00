.class public Lcom/android/internal/telephony/msim/HuaweiMsim;
.super Ljava/lang/Object;
.source "HuaweiMsim.java"

# interfaces
.implements Lcom/android/internal/telephony/IHuaweiMsim;


# instance fields
.field private mGlobalModeManager:Lcom/android/internal/telephony/msim/GlobalModeManager;

.field private mSubscriptionManager:Lcom/android/internal/telephony/msim/SubscriptionManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/msim/SubscriptionManager;)V
    .locals 1
    .parameter "mMgr"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Lcom/android/internal/telephony/msim/GlobalModeManager;->getInstance()Lcom/android/internal/telephony/msim/GlobalModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/msim/HuaweiMsim;->mGlobalModeManager:Lcom/android/internal/telephony/msim/GlobalModeManager;

    .line 25
    iput-object p1, p0, Lcom/android/internal/telephony/msim/HuaweiMsim;->mSubscriptionManager:Lcom/android/internal/telephony/msim/SubscriptionManager;

    .line 26
    return-void
.end method


# virtual methods
.method public IgnoreManualSelectMode()Z
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/internal/telephony/msim/HuaweiMsim;->mGlobalModeManager:Lcom/android/internal/telephony/msim/GlobalModeManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IgnoreManualSelectMode()Z

    move-result v0

    return v0
.end method

.method public IsReselectionEnabled()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/internal/telephony/msim/HuaweiMsim;->mGlobalModeManager:Lcom/android/internal/telephony/msim/GlobalModeManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsReselectionEnabled()Z

    move-result v0

    return v0
.end method

.method public IsSlot2Gsm()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/internal/telephony/msim/HuaweiMsim;->mGlobalModeManager:Lcom/android/internal/telephony/msim/GlobalModeManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->IsSlot2Gsm()Z

    move-result v0

    return v0
.end method

.method public PowerOnCdmaModem(Z)V
    .locals 1
    .parameter "bOn"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/telephony/msim/HuaweiMsim;->mGlobalModeManager:Lcom/android/internal/telephony/msim/GlobalModeManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/msim/GlobalModeManager;->PowerOnCdmaModem(Z)V

    .line 73
    return-void
.end method

.method public PowerOnGsmModem(Z)V
    .locals 1
    .parameter "bOn"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/internal/telephony/msim/HuaweiMsim;->mGlobalModeManager:Lcom/android/internal/telephony/msim/GlobalModeManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/msim/GlobalModeManager;->PowerOnGsmModem(Z)V

    .line 85
    return-void
.end method

.method public ResetStatus()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/internal/telephony/msim/HuaweiMsim;->mGlobalModeManager:Lcom/android/internal/telephony/msim/GlobalModeManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->ResetStatus()V

    .line 93
    return-void
.end method

.method public SetCdmaCardTypeReady()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/telephony/msim/HuaweiMsim;->mGlobalModeManager:Lcom/android/internal/telephony/msim/GlobalModeManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->SetCdmaCardTypeReady()V

    .line 69
    return-void
.end method

.method public SetCdmaNetworkState(I)V
    .locals 1
    .parameter "nState"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/telephony/msim/HuaweiMsim;->mGlobalModeManager:Lcom/android/internal/telephony/msim/GlobalModeManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/msim/GlobalModeManager;->SetCdmaNetworkState(I)V

    .line 77
    return-void
.end method

.method public SetGsmCardTypeReady()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/internal/telephony/msim/HuaweiMsim;->mGlobalModeManager:Lcom/android/internal/telephony/msim/GlobalModeManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/GlobalModeManager;->SetGsmCardTypeReady()V

    .line 81
    return-void
.end method

.method public SwitchModem(I)V
    .locals 1
    .parameter "iMode"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/internal/telephony/msim/HuaweiMsim;->mGlobalModeManager:Lcom/android/internal/telephony/msim/GlobalModeManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/msim/GlobalModeManager;->SwitchModem(I)V

    .line 101
    return-void
.end method

.method public cdmaCardInGsmMode(I)Z
    .locals 2
    .parameter "dualCardMode"

    .prologue
    const/4 v0, 0x1

    .line 63
    if-eq v0, p1, :cond_0

    const/4 v1, 0x3

    if-ne v1, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearUserPrefWhenChangeMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/telephony/msim/HuaweiMsim;->mSubscriptionManager:Lcom/android/internal/telephony/msim/SubscriptionManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->clearUserPrefWhenChangeMode(I)V

    .line 50
    return-void
.end method

.method public getCurrentSubscriptionOnSlot(I)Lcom/android/internal/telephony/IHuaweiMsim$SubInfo;
    .locals 3
    .parameter "slot"

    .prologue
    .line 52
    iget-object v2, p0, Lcom/android/internal/telephony/msim/HuaweiMsim;->mSubscriptionManager:Lcom/android/internal/telephony/msim/SubscriptionManager;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscriptionOnSlot(I)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v1

    .line 53
    .local v1, sub:Lcom/android/internal/telephony/msim/Subscription;
    new-instance v0, Lcom/android/internal/telephony/IHuaweiMsim$SubInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/IHuaweiMsim$SubInfo;-><init>()V

    .line 54
    .local v0, si:Lcom/android/internal/telephony/IHuaweiMsim$SubInfo;
    if-eqz v1, :cond_0

    .line 55
    iget v2, v1, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    iput v2, v0, Lcom/android/internal/telephony/IHuaweiMsim$SubInfo;->subId:I

    .line 56
    iget v2, v1, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    iput v2, v0, Lcom/android/internal/telephony/IHuaweiMsim$SubInfo;->slotId:I

    .line 57
    iget-object v2, v1, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/internal/telephony/IHuaweiMsim$SubInfo;->appType:Ljava/lang/String;

    .line 59
    :cond_0
    return-object v0
.end method

.method public getSlotIdFromSubId(I)I
    .locals 1
    .parameter "sub"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/internal/telephony/msim/HuaweiMsim;->mSubscriptionManager:Lcom/android/internal/telephony/msim/SubscriptionManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getSlotIdFromSubId(I)I

    move-result v0

    return v0
.end method

.method public getSubidFromSlotId(I)I
    .locals 1
    .parameter "slot"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/internal/telephony/msim/HuaweiMsim;->mSubscriptionManager:Lcom/android/internal/telephony/msim/SubscriptionManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getSubidFromSlotId(I)I

    move-result v0

    return v0
.end method

.method public isCardPresent(I)Z
    .locals 1
    .parameter "slot"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/internal/telephony/msim/HuaweiMsim;->mSubscriptionManager:Lcom/android/internal/telephony/msim/SubscriptionManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->isCardPresent(I)Z

    move-result v0

    return v0
.end method

.method public isSubActive(I)Z
    .locals 1
    .parameter "sub"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/internal/telephony/msim/HuaweiMsim;->mSubscriptionManager:Lcom/android/internal/telephony/msim/SubscriptionManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->isSubActive(I)Z

    move-result v0

    return v0
.end method

.method public isSubDeactived(I)Z
    .locals 1
    .parameter "sub"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/telephony/msim/HuaweiMsim;->mSubscriptionManager:Lcom/android/internal/telephony/msim/SubscriptionManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->isSubDeactived(I)Z

    move-result v0

    return v0
.end method

.method public setDualCardMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/internal/telephony/msim/HuaweiMsim;->mGlobalModeManager:Lcom/android/internal/telephony/msim/GlobalModeManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/msim/GlobalModeManager;->setDualCardMode(I)V

    .line 97
    return-void
.end method
