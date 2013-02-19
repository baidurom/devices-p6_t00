.class public final Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;
.super Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;
.source "MSimGsmDataConnectionTracker.java"


# instance fields
.field private mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

.field private mDisconnectAllCompleteMsgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field protected mDisconnectPendingCount:I

.field protected mPendingDataDisableCompleteMsg:Landroid/os/Message;

.field protected mPhone:Lcom/android/internal/telephony/msim/MSimGSMPhone;

.field protected mSubscription:I

.field mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/msim/MSimGSMPhone;)V
    .locals 3
    .parameter "p"

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mDisconnectAllCompleteMsgList:Ljava/util/ArrayList;

    .line 60
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    .line 62
    iput v0, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mDisconnectPendingCount:I

    .line 69
    iput-object p1, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimGSMPhone;

    .line 70
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->getSubscription()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mSubscription:I

    .line 71
    iget v1, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mSubscription:I

    invoke-static {}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->getDataSubscription()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mInternalDataEnabled:Z

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mInternalDataEnabled (is data sub?) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mInternalDataEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 73
    return-void
.end method


# virtual methods
.method protected broadcastMessenger()V
    .locals 1

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->isActiveDataSubscription()Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    :goto_0
    return-void

    .line 261
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->broadcastMessenger()V

    goto :goto_0
.end method

.method public cleanUpAllConnections(Ljava/lang/String;)V
    .locals 1
    .parameter "cause"

    .prologue
    .line 332
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->cleanUpAllConnections(Ljava/lang/String;Landroid/os/Message;)V

    .line 333
    return-void
.end method

.method public cleanUpAllConnections(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "cause"
    .parameter "disconnectAllCompleteMsg"

    .prologue
    .line 342
    const-string v1, "cleanUpAllConnections"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 343
    if-eqz p2, :cond_0

    .line 344
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mDisconnectAllCompleteMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    :cond_0
    const v1, 0x4201d

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 348
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 349
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 350
    return-void
.end method

.method protected cleanUpAllConnections(ZLjava/lang/String;)V
    .locals 2
    .parameter "tearDown"
    .parameter "reason"

    .prologue
    .line 149
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpAllConnections(ZLjava/lang/String;)V

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cleanUpConnection: mDisconnectPendingCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mDisconnectPendingCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 152
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mDisconnectPendingCount:I

    if-nez v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->notifyDataDisconnectComplete()V

    .line 154
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->notifyAllDataDisconnected()V

    .line 156
    :cond_0
    return-void
.end method

.method protected cleanUpConnection(ZLcom/android/internal/telephony/ApnContext;)V
    .locals 10
    .parameter "tearDown"
    .parameter "apnContext"

    .prologue
    const/4 v9, 0x0

    .line 161
    if-nez p2, :cond_1

    .line 162
    const-string v6, "cleanUpConnection: apn context is null"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cleanUpConnection: tearDown="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " reason="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v1

    .line 170
    .local v1, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    if-eqz p1, :cond_9

    .line 171
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v6, v7, :cond_3

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v6, v7, :cond_3

    const/4 v4, 0x1

    .line 173
    .local v4, isConnected:Z
    :goto_1
    if-nez v4, :cond_4

    .line 176
    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p2, v6}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 177
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->isReady()Z

    move-result v6

    if-nez v6, :cond_2

    .line 178
    invoke-virtual {p2, v9}, Lcom/android/internal/telephony/ApnContext;->setDataConnection(Lcom/android/internal/telephony/DataConnection;)V

    .line 179
    invoke-virtual {p2, v9}, Lcom/android/internal/telephony/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/DataConnectionAc;)V

    .line 230
    .end local v4           #isConnected:Z
    :cond_2
    :goto_2
    if-eqz v1, :cond_0

    .line 231
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionAc;->getApnListSync()Ljava/util/Collection;

    move-result-object v0

    .line 232
    .local v0, apnList:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/ApnContext;>;"
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 233
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->cancelReconnectAlarm(Lcom/android/internal/telephony/DataConnectionAc;)V

    goto :goto_0

    .line 171
    .end local v0           #apnList:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/ApnContext;>;"
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 183
    .restart local v4       #isConnected:Z
    :cond_4
    if-eqz v1, :cond_8

    .line 184
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/DctConstants$State;->DISCONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v6, v7, :cond_2

    .line 185
    const/4 v2, 0x0

    .line 186
    .local v2, disconnectAll:Z
    const-string v6, "dun"

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 187
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->fetchDunApn()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v3

    .line 188
    .local v3, dunSetting:Lcom/android/internal/telephony/ApnSetting;
    if-eqz v3, :cond_5

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getApnSetting()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/ApnSetting;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 190
    const-string v6, "tearing down dedicated DUN connection"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 195
    const/4 v2, 0x1

    .line 199
    .end local v3           #dunSetting:Lcom/android/internal/telephony/ApnSetting;
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cleanUpConnection: tearing down"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v2, :cond_6

    const-string v6, " all"

    :goto_3
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 201
    const v6, 0x4200f

    invoke-virtual {p0, v6, p2}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 202
    .local v5, msg:Landroid/os/Message;
    if-eqz v2, :cond_7

    .line 203
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v6

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lcom/android/internal/telephony/DataConnection;->tearDownAll(Ljava/lang/String;Landroid/os/Message;)V

    .line 207
    :goto_4
    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->DISCONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p2, v6}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 209
    iget v6, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mDisconnectPendingCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mDisconnectPendingCount:I

    goto :goto_2

    .line 199
    .end local v5           #msg:Landroid/os/Message;
    :cond_6
    const-string v6, ""

    goto :goto_3

    .line 205
    .restart local v5       #msg:Landroid/os/Message;
    :cond_7
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v6

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lcom/android/internal/telephony/DataConnection;->tearDown(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_4

    .line 214
    .end local v2           #disconnectAll:Z
    .end local v5           #msg:Landroid/os/Message;
    :cond_8
    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p2, v6}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 215
    iget-object v6, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 221
    .end local v4           #isConnected:Z
    :cond_9
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionAc;->resetSync()V

    .line 222
    :cond_a
    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p2, v6}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 223
    iget-object v6, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-virtual {p2, v9}, Lcom/android/internal/telephony/ApnContext;->setDataConnection(Lcom/android/internal/telephony/DataConnection;)V

    .line 225
    invoke-virtual {p2, v9}, Lcom/android/internal/telephony/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/DataConnectionAc;)V

    goto/16 :goto_2
.end method

.method protected getUiccCardApplication()Lcom/android/internal/telephony/IccRecords;
    .locals 4

    .prologue
    .line 266
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->getSubscriptionInfo()Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v0

    .line 267
    .local v0, subscriptionData:Lcom/android/internal/telephony/msim/Subscription;
    if-eqz v0, :cond_0

    .line 268
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v2, v0, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/IccRecords;

    move-result-object v1

    .line 270
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    .line 119
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->isActiveDataSubscription()Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    const-string v1, "Ignore GSM msgs since GSM phone is not the current DDS"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->loge(Ljava/lang/String;)V

    .line 132
    :goto_0
    return-void

    .line 123
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 130
    invoke-super {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 125
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v0, :cond_1

    .line 126
    .local v0, enabled:Z
    :goto_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->onSetInternalDataEnabled(ZLandroid/os/Message;)V

    goto :goto_0

    .line 125
    .end local v0           #enabled:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 123
    :pswitch_data_0
    .packed-switch 0x4201b
        :pswitch_0
    .end packed-switch
.end method

.method protected isActiveDataSubscription()Z
    .locals 2

    .prologue
    .line 354
    iget v0, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mSubscription:I

    invoke-static {}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->getDataSubscription()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 402
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MSimGsmDCT:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 407
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MSimGsmDCT:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    return-void
.end method

.method protected notifyAllDataDisconnected()V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 385
    return-void
.end method

.method protected notifyDataDisconnectComplete()V
    .locals 3

    .prologue
    .line 376
    const-string v2, "notifyDataDisconnectComplete"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 377
    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mDisconnectAllCompleteMsgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 378
    .local v1, m:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 380
    .end local v1           #m:Landroid/os/Message;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mDisconnectAllCompleteMsgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 381
    return-void
.end method

.method protected onDisconnectDone(ILandroid/os/AsyncResult;)V
    .locals 1
    .parameter "connId"
    .parameter "ar"

    .prologue
    .line 244
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->onDisconnectDone(ILandroid/os/AsyncResult;)V

    .line 245
    iget v0, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mDisconnectPendingCount:I

    if-lez v0, :cond_0

    .line 246
    iget v0, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mDisconnectPendingCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mDisconnectPendingCount:I

    .line 248
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mDisconnectPendingCount:I

    if-nez v0, :cond_1

    .line 249
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->notifyDataDisconnectComplete()V

    .line 250
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->notifyAllDataDisconnected()V

    .line 252
    :cond_1
    return-void
.end method

.method protected onSetInternalDataEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 290
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->onSetInternalDataEnabled(ZLandroid/os/Message;)V

    .line 291
    return-void
.end method

.method protected onSetInternalDataEnabled(ZLandroid/os/Message;)V
    .locals 4
    .parameter "enable"
    .parameter "onCompleteMsg"

    .prologue
    const/4 v3, 0x0

    .line 294
    const-string v2, "onSetInternalDataEnabled"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->getAnyDataEnabled()Z

    move-result v0

    .line 296
    .local v0, prevEnabled:Z
    const/4 v1, 0x1

    .line 297
    .local v1, sendOnComplete:Z
    iget-boolean v2, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mInternalDataEnabled:Z

    if-eq v2, p1, :cond_0

    .line 298
    monitor-enter p0

    .line 299
    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mInternalDataEnabled:Z

    .line 300
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->getAnyDataEnabled()Z

    move-result v2

    if-eq v0, v2, :cond_3

    .line 302
    const/4 v1, 0x0

    .line 303
    if-nez v0, :cond_2

    .line 304
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->resetAllRetryCounts()V

    .line 305
    const-string v2, "dataEnabled"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->onTrySetupData(Ljava/lang/String;)Z

    .line 323
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 324
    if-eqz p2, :cond_1

    .line 325
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 328
    :cond_1
    return-void

    .line 300
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 307
    :cond_2
    invoke-virtual {p0, v3, p2}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->cleanUpAllConnections(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 310
    :cond_3
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->isDisconnected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 316
    const-string v2, "onSetInternalDataEnabled: force deactivate"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 317
    const/4 v1, 0x0

    .line 318
    invoke-virtual {p0, v3, p2}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->cleanUpAllConnections(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 390
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->isDisconnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    const-string v0, "notify All Data Disconnected"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 394
    :cond_0
    return-void
.end method

.method protected registerForAllEvents()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 76
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimGSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x42001

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimGSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x42006

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimGSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x42004

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForDataCallListChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    const v1, 0x42008

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    const v1, 0x42007

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const v1, 0x42010

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const v1, 0x42009

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionDetached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const v1, 0x4200b

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const v1, 0x4200c

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const v1, 0x42016

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForPsRestrictedEnabled(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const v1, 0x42017

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForPsRestrictedDisabled(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 91
    return-void
.end method

.method public setInternalDataEnabled(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 275
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->setInternalDataEnabled(ZLandroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public setInternalDataEnabled(ZLandroid/os/Message;)Z
    .locals 4
    .parameter "enable"
    .parameter "onCompleteMsg"

    .prologue
    const/4 v2, 0x1

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setInternalDataEnabled("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 282
    const v1, 0x4201b

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 283
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 284
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 285
    return v2

    .line 283
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unregisterForAllDataDisconnected(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 398
    return-void
.end method

.method protected unregisterForAllEvents()V
    .locals 3

    .prologue
    .line 95
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimGSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 96
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimGSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 97
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimGSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/msim/MSimGSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDataCallListChanged(Landroid/os/Handler;)V

    .line 100
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IccRecords;

    .line 101
    .local v0, r:Lcom/android/internal/telephony/IccRecords;
    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 103
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 108
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    .line 109
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataConnectionAttached(Landroid/os/Handler;)V

    .line 110
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataConnectionDetached(Landroid/os/Handler;)V

    .line 111
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForRoamingOn(Landroid/os/Handler;)V

    .line 112
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForRoamingOff(Landroid/os/Handler;)V

    .line 113
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForPsRestrictedEnabled(Landroid/os/Handler;)V

    .line 114
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForPsRestrictedDisabled(Landroid/os/Handler;)V

    .line 115
    return-void
.end method

.method protected update()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 359
    const-string v1, "update"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->isActiveDataSubscription()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 361
    const-string v1, "update(): Active DDS, register for all events now!"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->registerForAllEvents()V

    .line 363
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->updateIccAvailability()V

    .line 365
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mUserDataEnabled:Z

    .line 367
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimGSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/MSimGSMPhone;->updateCurrentCarrierInProvider()Z

    .line 368
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->broadcastMessenger()V

    .line 373
    :goto_1
    return-void

    .line 365
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 370
    :cond_1
    const-string v0, "update(): NOT the active DDS, unregister for all events!"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->unregisterForAllEvents()V

    goto :goto_1
.end method

.method public updateRecords()V
    .locals 1

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->isActiveDataSubscription()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimGsmDataConnectionTracker;->updateIccAvailability()V

    .line 339
    :cond_0
    return-void
.end method
