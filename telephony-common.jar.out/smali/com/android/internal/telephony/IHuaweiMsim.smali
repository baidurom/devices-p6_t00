.class public interface abstract Lcom/android/internal/telephony/IHuaweiMsim;
.super Ljava/lang/Object;
.source "IHuaweiMsim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IHuaweiMsim$SubInfo;
    }
.end annotation


# virtual methods
.method public abstract IgnoreManualSelectMode()Z
.end method

.method public abstract IsReselectionEnabled()Z
.end method

.method public abstract IsSlot2Gsm()Z
.end method

.method public abstract PowerOnCdmaModem(Z)V
.end method

.method public abstract PowerOnGsmModem(Z)V
.end method

.method public abstract ResetStatus()V
.end method

.method public abstract SetCdmaCardTypeReady()V
.end method

.method public abstract SetCdmaNetworkState(I)V
.end method

.method public abstract SetGsmCardTypeReady()V
.end method

.method public abstract SwitchModem(I)V
.end method

.method public abstract cdmaCardInGsmMode(I)Z
.end method

.method public abstract clearUserPrefWhenChangeMode(I)V
.end method

.method public abstract getCurrentSubscriptionOnSlot(I)Lcom/android/internal/telephony/IHuaweiMsim$SubInfo;
.end method

.method public abstract getSlotIdFromSubId(I)I
.end method

.method public abstract getSubidFromSlotId(I)I
.end method

.method public abstract isCardPresent(I)Z
.end method

.method public abstract isSubActive(I)Z
.end method

.method public abstract isSubDeactived(I)Z
.end method

.method public abstract setDualCardMode(I)V
.end method
