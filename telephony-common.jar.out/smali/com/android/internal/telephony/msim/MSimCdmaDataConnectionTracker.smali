.class public final Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;
.super Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;
.source "MSimCdmaDataConnectionTracker.java"


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

.field protected mPhone:Lcom/android/internal/telephony/msim/MSimCDMAPhone;

.field protected mSubscription:I

.field mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/msim/MSimCDMAPhone;)V
    .locals 3
    .parameter "p"

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mDisconnectAllCompleteMsgList:Ljava/util/ArrayList;

    .line 56
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    .line 58
    iput v0, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mDisconnectPendingCount:I

    .line 65
    iput-object p1, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimCDMAPhone;

    .line 66
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimCDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/MSimCDMAPhone;->getSubscription()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mSubscription:I

    .line 67
    iget v1, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mSubscription:I

    invoke-static {}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->getDataSubscription()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mInternalDataEnabled:Z

    .line 68
    return-void
.end method


# virtual methods
.method protected broadcastMessenger()V
    .locals 1

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->isActiveDataSubscription()Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    :goto_0
    return-void

    .line 213
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->broadcastMessenger()V

    goto :goto_0
.end method

.method public cleanUpAllConnections(Ljava/lang/String;)V
    .locals 1
    .parameter "cause"

    .prologue
    .line 283
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->cleanUpAllConnections(Ljava/lang/String;Landroid/os/Message;)V

    .line 284
    return-void
.end method

.method public cleanUpAllConnections(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "cause"
    .parameter "disconnectAllCompleteMsg"

    .prologue
    .line 287
    const-string v1, "cleanUpAllConnections"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 288
    if-eqz p2, :cond_0

    .line 289
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mDisconnectAllCompleteMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    :cond_0
    const v1, 0x4201d

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 293
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 294
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 295
    return-void
.end method

.method protected cleanUpConnection(ZLjava/lang/String;Z)V
    .locals 9
    .parameter "tearDown"
    .parameter "reason"
    .parameter "doAll"

    .prologue
    const v8, 0x4200f

    const/4 v7, 0x0

    .line 130
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cleanUpConnection: reason: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 133
    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    if-eqz v5, :cond_0

    .line 134
    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimCDMAPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/msim/MSimCDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 136
    .local v0, am:Landroid/app/AlarmManager;
    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 137
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    .line 140
    .end local v0           #am:Landroid/app/AlarmManager;
    :cond_0
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->DISCONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 141
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 143
    const/4 v4, 0x0

    .line 144
    .local v4, notificationDeferred:Z
    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnection;

    .line 145
    .local v1, conn:Lcom/android/internal/telephony/DataConnection;
    if-eqz v1, :cond_1

    .line 146
    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->getDataConnectionId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataConnectionAc;

    .line 148
    .local v2, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    if-eqz p1, :cond_3

    .line 149
    if-eqz p3, :cond_2

    .line 150
    const-string v5, "cleanUpConnection: teardown, conn.tearDownAll"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->getDataConnectionId()I

    move-result v5

    invoke-virtual {p0, v8, v5, v7, p2}, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, p2, v5}, Lcom/android/internal/telephony/DataConnection;->tearDownAll(Ljava/lang/String;Landroid/os/Message;)V

    .line 158
    :goto_1
    const/4 v4, 0x1

    .line 159
    iget v5, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mDisconnectPendingCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mDisconnectPendingCount:I

    goto :goto_0

    .line 154
    :cond_2
    const-string v5, "cleanUpConnection: teardown, conn.tearDown"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->getDataConnectionId()I

    move-result v5

    invoke-virtual {p0, v8, v5, v7, p2}, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, p2, v5}, Lcom/android/internal/telephony/DataConnection;->tearDown(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 161
    :cond_3
    const-string v5, "cleanUpConnection: !tearDown, call conn.resetSynchronously"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 162
    if-eqz v2, :cond_4

    .line 163
    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionAc;->resetSync()V

    .line 165
    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    .line 170
    .end local v1           #conn:Lcom/android/internal/telephony/DataConnection;
    .end local v2           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->stopNetStatPoll()V

    .line 172
    if-nez v4, :cond_6

    .line 173
    const-string v5, "cleanupConnection: !notificationDeferred"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->gotoIdleAndNotifyDataConnection(Ljava/lang/String;)V

    .line 177
    :cond_6
    if-eqz p1, :cond_7

    iget v5, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mDisconnectPendingCount:I

    if-nez v5, :cond_7

    .line 178
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->notifyDataDisconnectComplete()V

    .line 179
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->notifyAllDataDisconnected()V

    .line 181
    :cond_7
    return-void
.end method

.method protected getUiccCardApplication()Lcom/android/internal/telephony/IccRecords;
    .locals 4

    .prologue
    .line 217
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimCDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/MSimCDMAPhone;->getSubscriptionInfo()Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v0

    .line 218
    .local v0, subscriptionData:Lcom/android/internal/telephony/msim/Subscription;
    if-eqz v0, :cond_0

    .line 219
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v2, v0, Lcom/android/internal/telephony/msim/Subscription;->slotId:I

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/IccRecords;

    move-result-object v1

    .line 221
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

    .line 108
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->isActiveDataSubscription()Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    const-string v1, "Ignore CDMA msgs since CDMA phone is not the current DDS"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->loge(Ljava/lang/String;)V

    .line 121
    :goto_0
    return-void

    .line 112
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 119
    invoke-super {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 114
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v0, :cond_1

    .line 115
    .local v0, enabled:Z
    :goto_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->onSetInternalDataEnabled(ZLandroid/os/Message;)V

    goto :goto_0

    .line 114
    .end local v0           #enabled:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 112
    :pswitch_data_0
    .packed-switch 0x4201b
        :pswitch_0
    .end packed-switch
.end method

.method protected isActiveDataSubscription()Z
    .locals 2

    .prologue
    .line 299
    iget v0, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mSubscription:I

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
    .line 354
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaDCT:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mSubscription:I

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

    .line 355
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 359
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaDCT:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mSubscription:I

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

    .line 360
    return-void
.end method

.method public notifyAllDataDisconnected()V
    .locals 1

    .prologue
    .line 335
    const-string v0, "notifyAllDataDisconnected"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 337
    return-void
.end method

.method protected notifyDataDisconnectComplete()V
    .locals 3

    .prologue
    .line 327
    const-string v2, "notifyDataDisconnectComplete"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 328
    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mDisconnectAllCompleteMsgList:Ljava/util/ArrayList;

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

    .line 329
    .local v1, m:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 331
    .end local v1           #m:Landroid/os/Message;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mDisconnectAllCompleteMsgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 332
    return-void
.end method

.method protected onDataStateChanged(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "ar"

    .prologue
    .line 200
    invoke-super {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onDataStateChanged(Landroid/os/AsyncResult;)V

    .line 201
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v0, v1, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->notifyAllDataDisconnected()V

    .line 204
    :cond_0
    return-void
.end method

.method protected onDisconnectDone(ILandroid/os/AsyncResult;)V
    .locals 1
    .parameter "connId"
    .parameter "ar"

    .prologue
    .line 188
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onDisconnectDone(ILandroid/os/AsyncResult;)V

    .line 189
    iget v0, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mDisconnectPendingCount:I

    if-lez v0, :cond_0

    .line 190
    iget v0, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mDisconnectPendingCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mDisconnectPendingCount:I

    .line 192
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mDisconnectPendingCount:I

    if-nez v0, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->notifyDataDisconnectComplete()V

    .line 194
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->notifyAllDataDisconnected()V

    .line 196
    :cond_1
    return-void
.end method

.method protected onSetInternalDataEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->onSetInternalDataEnabled(ZLandroid/os/Message;)V

    .line 242
    return-void
.end method

.method protected onSetInternalDataEnabled(ZLandroid/os/Message;)V
    .locals 4
    .parameter "enable"
    .parameter "onCompleteMsg"

    .prologue
    const/4 v3, 0x0

    .line 245
    const-string v2, "onSetInternalDataEnabled"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->getAnyDataEnabled()Z

    move-result v0

    .line 247
    .local v0, prevEnabled:Z
    const/4 v1, 0x1

    .line 248
    .local v1, sendOnComplete:Z
    iget-boolean v2, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mInternalDataEnabled:Z

    if-eq v2, p1, :cond_0

    .line 249
    monitor-enter p0

    .line 250
    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mInternalDataEnabled:Z

    .line 251
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->getAnyDataEnabled()Z

    move-result v2

    if-eq v0, v2, :cond_3

    .line 253
    const/4 v1, 0x0

    .line 254
    if-nez v0, :cond_2

    .line 255
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->resetAllRetryCounts()V

    .line 256
    const-string v2, "dataEnabled"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->onTrySetupData(Ljava/lang/String;)Z

    .line 274
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 275
    if-eqz p2, :cond_1

    .line 276
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 279
    :cond_1
    return-void

    .line 251
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 258
    :cond_2
    invoke-virtual {p0, v3, p2}, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->cleanUpAllConnections(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 261
    :cond_3
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->isDisconnected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 267
    const-string v2, "onSetInternalDataEnabled: force deactivate"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 268
    const/4 v1, 0x0

    .line 269
    invoke-virtual {p0, v3, p2}, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->cleanUpAllConnections(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 342
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->isDisconnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    const-string v0, "notify All Data Disconnected"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 346
    :cond_0
    return-void
.end method

.method protected registerForAllEvents()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 71
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimCDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/msim/MSimCDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x42001

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimCDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/msim/MSimCDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x42006

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimCDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/msim/MSimCDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x42004

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForDataCallListChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimCDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/MSimCDMAPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    const v1, 0x42008

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimCDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/MSimCDMAPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    const v1, 0x42007

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimCDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/MSimCDMAPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const v1, 0x42003

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimCDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/MSimCDMAPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const v1, 0x42014

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionDetached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimCDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/MSimCDMAPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const v1, 0x4200b

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimCDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/MSimCDMAPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const v1, 0x4200c

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimCDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/msim/MSimCDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x42019

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 81
    return-void
.end method

.method public setInternalDataEnabled(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 226
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->setInternalDataEnabled(ZLandroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public setInternalDataEnabled(ZLandroid/os/Message;)Z
    .locals 4
    .parameter "enable"
    .parameter "onCompleteMsg"

    .prologue
    const/4 v2, 0x1

    .line 231
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

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 233
    const v1, 0x4201b

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 234
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 235
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 236
    return v2

    .line 234
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unregisterForAllDataDisconnected(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 350
    return-void
.end method

.method protected unregisterForAllEvents()V
    .locals 3

    .prologue
    .line 85
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimCDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/msim/MSimCDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 86
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimCDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/msim/MSimCDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 87
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimCDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/msim/MSimCDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDataCallListChanged(Landroid/os/Handler;)V

    .line 90
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IccRecords;

    .line 91
    .local v0, r:Lcom/android/internal/telephony/IccRecords;
    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 93
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimCDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/MSimCDMAPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 98
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimCDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/MSimCDMAPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    .line 99
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimCDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/MSimCDMAPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataConnectionAttached(Landroid/os/Handler;)V

    .line 100
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimCDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/MSimCDMAPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataConnectionDetached(Landroid/os/Handler;)V

    .line 101
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimCDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/MSimCDMAPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForRoamingOn(Landroid/os/Handler;)V

    .line 102
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimCDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/MSimCDMAPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForRoamingOff(Landroid/os/Handler;)V

    .line 103
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimCDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/msim/MSimCDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaOtaProvision(Landroid/os/Handler;)V

    .line 104
    return-void
.end method

.method protected update()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 308
    const-string v1, "update"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->isActiveDataSubscription()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 310
    const-string v1, "update(): Active DDS, register for all events now!"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->registerForAllEvents()V

    .line 313
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->updateIccAvailability()V

    .line 316
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimCDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/msim/MSimCDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mUserDataEnabled:Z

    .line 318
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/msim/MSimCDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/msim/MSimCDMAPhone;->updateCurrentCarrierInProvider()Z

    .line 319
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->broadcastMessenger()V

    .line 324
    :goto_1
    return-void

    .line 316
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 321
    :cond_1
    const-string v0, "update(): NOT the active DDS, unregister for all events!"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->unregisterForAllEvents()V

    goto :goto_1
.end method

.method public updateRecords()V
    .locals 0

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimCdmaDataConnectionTracker;->updateIccAvailability()V

    .line 304
    return-void
.end method
