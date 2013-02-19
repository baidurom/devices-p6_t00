.class final Lcom/android/internal/telephony/msim/MSimGsmServiceStateTracker;
.super Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
.source "MSimGsmServiceStateTracker.java"


# static fields
.field static final DBG:Z = true

.field static final LOG_TAG:Ljava/lang/String; = "GSM"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 0
    .parameter "phone"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    .line 39
    return-void
.end method


# virtual methods
.method public getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "property"
    .parameter "defValue"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimGsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    check-cast v0, Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->getSubscription()I

    move-result v0

    invoke-static {p1, v0, p2}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUiccCardApplication()Lcom/android/internal/telephony/UiccCardApplication;
    .locals 4

    .prologue
    .line 46
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimGsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    check-cast v1, Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->getSubscriptionInfo()Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v0

    .line 47
    .local v0, subscriptionData:Lcom/android/internal/telephony/msim/Subscription;
    if-eqz v0, :cond_0

    .line 48
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimGsmServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v2, v0, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v1

    .line 51
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 61
    const-string v1, "GSM"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GsmSST] [SUB : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimGsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    check-cast v0, Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->getSubscription()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 66
    const-string v1, "GSM"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GsmSST] [SUB : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimGsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    check-cast v0, Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->getSubscription()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method

.method public updateRecords()V
    .locals 0

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimGsmServiceStateTracker;->onUpdateIccAvailability()V

    .line 43
    return-void
.end method
