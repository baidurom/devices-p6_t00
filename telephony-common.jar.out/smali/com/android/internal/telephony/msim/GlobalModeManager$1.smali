.class Lcom/android/internal/telephony/msim/GlobalModeManager$1;
.super Landroid/os/Handler;
.source "GlobalModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/msim/GlobalModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/msim/GlobalModeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/16 v10, 0x14

    const/16 v9, 0xb

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 224
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 612
    :goto_0
    :pswitch_0
    return-void

    .line 226
    :pswitch_1
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_SWITCH_MTK_SIM_DONE: begin"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 228
    sget-object v3, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_CDMA:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    iget-object v4, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #getter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->mCurModemMode:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;
    invoke-static {v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$100(Lcom/android/internal/telephony/msim/GlobalModeManager;)Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    move-result-object v4

    if-ne v3, v4, :cond_1

    .line 230
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_SWITCH_MTK_SIM_DONE: Card1 mode is CDMA"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 237
    :goto_1
    sget-object v3, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_CDMA:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    iget-object v4, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #getter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->mCurModemMode:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;
    invoke-static {v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$100(Lcom/android/internal/telephony/msim/GlobalModeManager;)Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    move-result-object v4

    if-ne v3, v4, :cond_2

    .line 238
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_SWITCH_MTK_SIM_DONE: Set property PROPERTY_SWITCH_TO_MODEM to CDMA"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 239
    const-string v3, "persist.radio.switchto.modem"

    const-string v4, "MODEM_CDMA"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->clearCGIccid()V

    .line 246
    :cond_0
    :goto_2
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->resetCardsSubsInfo()V

    .line 247
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/internal/telephony/msim/SubscriptionManager;->restartRild(I)V

    .line 248
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_SWITCH_MTK_SIM_DONE: end"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_SWITCH_MTK_SIM_DONE: Card1 mode is GSM"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    goto :goto_1

    .line 241
    :cond_2
    sget-object v3, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_GSM:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    iget-object v4, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #getter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->mCurModemMode:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;
    invoke-static {v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$100(Lcom/android/internal/telephony/msim/GlobalModeManager;)Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 242
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_SWITCH_MTK_SIM_DONE: Set property PROPERTY_SWITCH_TO_MODEM to GSM"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 243
    const-string v3, "persist.radio.switchto.modem"

    const-string v4, "MODEM_GSM"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->copyCIccidToGIccid()V

    goto :goto_2

    .line 252
    :pswitch_2
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_CDMA_MCC_CHANGED"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    goto :goto_0

    .line 256
    :pswitch_3
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_GSM_STATE_CHANGED: begin"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 257
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_GSM_STATE_CHANGED: prev mRacStatus="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #getter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->mRacStatus:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;
    invoke-static {v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$200(Lcom/android/internal/telephony/msim/GlobalModeManager;)Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 258
    const-string v3, "ril.currGsmStatus"

    const/4 v4, 0x7

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 259
    .local v1, iStatus:I
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    iget-object v4, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->ConvertGsmStatus(I)Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;
    invoke-static {v4, v1}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$300(Lcom/android/internal/telephony/msim/GlobalModeManager;I)Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    move-result-object v4

    #setter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->mRacStatus:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$202(Lcom/android/internal/telephony/msim/GlobalModeManager;Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;)Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    .line 260
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_GSM_STATE_CHANGED: new mRacStatus="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #getter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->mRacStatus:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;
    invoke-static {v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$200(Lcom/android/internal/telephony/msim/GlobalModeManager;)Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 262
    sget-object v3, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_CDMA:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    iget-object v4, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->GetCurModemMode()Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;
    invoke-static {v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$400(Lcom/android/internal/telephony/msim/GlobalModeManager;)Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    move-result-object v4

    if-ne v3, v4, :cond_4

    .line 264
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_GSM_STATE_CHANGED: Card1 mode is CDMA"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 271
    :goto_3
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_GSM_STATE_CHANGED: IsGsmNetworkAvailable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->IsGsmNetworkAvailable()Z
    invoke-static {v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$500(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 272
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_GSM_STATE_CHANGED: mHwTelMgr.isCardPresent(SUB2)="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #getter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->mHwTelMgr:Lcom/huawei/telephony/HuaweiTelephonyManager;
    invoke-static {v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$600(Lcom/android/internal/telephony/msim/GlobalModeManager;)Lcom/huawei/telephony/HuaweiTelephonyManager;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/huawei/telephony/HuaweiTelephonyManager;->isCardPresent(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 273
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_GSM_STATE_CHANGED: IsGsmCardReady="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->IsGsmCardReady()Z
    invoke-static {v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$700(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 275
    sget-object v3, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;->RAC_OK:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    iget-object v4, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #getter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->mRacStatus:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;
    invoke-static {v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$200(Lcom/android/internal/telephony/msim/GlobalModeManager;)Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    move-result-object v4

    if-ne v3, v4, :cond_5

    .line 296
    :cond_3
    :goto_4
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_GSM_STATE_CHANGED: end"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 268
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_GSM_STATE_CHANGED: Card1 mode is GSM"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    goto :goto_3

    .line 277
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #getter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->mHwTelMgr:Lcom/huawei/telephony/HuaweiTelephonyManager;
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$600(Lcom/android/internal/telephony/msim/GlobalModeManager;)Lcom/huawei/telephony/HuaweiTelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/huawei/telephony/HuaweiTelephonyManager;->isCardPresent(I)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->IsGsmCardReady()Z
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$700(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 278
    :cond_6
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->IsGsmNetworkAvailable()Z
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$500(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 279
    sget-object v3, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_CDMA:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    iget-object v4, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->GetCurModemMode()Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;
    invoke-static {v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$400(Lcom/android/internal/telephony/msim/GlobalModeManager;)Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    move-result-object v4

    if-ne v3, v4, :cond_7

    .line 280
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_GSM_STATE_CHANGED: call PreCheckGsm2LimitService()"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 281
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->PreCheckGsm2LimitService()Z
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$800(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z

    goto :goto_4

    .line 285
    :cond_7
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_GSM_STATE_CHANGED: call PreCheckGsm1LimitService()"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 286
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->PreCheckGsm1LimitService()Z
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$900(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z

    .line 287
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_GSM_STATE_CHANGED: set bGsmInitSearchDone to true"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 288
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #setter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->bGsmInitSearchDone:Z
    invoke-static {v3, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$1002(Lcom/android/internal/telephony/msim/GlobalModeManager;Z)Z

    goto :goto_4

    .line 290
    :cond_8
    sget-object v3, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;->RAC_SEARCHING:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    iget-object v4, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #getter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->mRacStatus:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;
    invoke-static {v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$200(Lcom/android/internal/telephony/msim/GlobalModeManager;)Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    move-result-object v4

    if-eq v3, v4, :cond_3

    .line 291
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_GSM_STATE_CHANGED: set bGsmInitSearchDone to true"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 292
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #setter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->bGsmInitSearchDone:Z
    invoke-static {v3, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$1002(Lcom/android/internal/telephony/msim/GlobalModeManager;Z)Z

    goto :goto_4

    .line 301
    .end local v1           #iStatus:I
    :pswitch_4
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_GSM_COPS_COMPLETED: begin"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 302
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 303
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_9

    .line 304
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "error while querying available networks"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 307
    :cond_9
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    .line 308
    .local v2, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 309
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_GSM_COPS_COMPLETED: call PostCheckGsm2LimitService()"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 310
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->PostCheckGsm2LimitService(Ljava/util/ArrayList;)Z
    invoke-static {v3, v2}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$1100(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/util/ArrayList;)Z

    .line 311
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_GSM_COPS_COMPLETED: set bGsmInitSearchDone to true"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 312
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #setter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->bGsmInitSearchDone:Z
    invoke-static {v3, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$1002(Lcom/android/internal/telephony/msim/GlobalModeManager;Z)Z

    .line 313
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_GSM_COPS_COMPLETED: end"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 317
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v2           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    :pswitch_5
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_SERVICE_CDMA_STATE_CHANGED: begin"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 319
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #getter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->bDualModeCard:Z
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$1200(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 321
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_SERVICE_CDMA_STATE_CHANGED: Card1 is dual mode card"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 328
    :goto_5
    sget-object v3, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_CDMA:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    iget-object v4, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->GetCurModemMode()Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;
    invoke-static {v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$400(Lcom/android/internal/telephony/msim/GlobalModeManager;)Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    move-result-object v4

    if-ne v3, v4, :cond_c

    .line 330
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_SERVICE_CDMA_STATE_CHANGED: Card1 mode is CDMA"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 337
    :goto_6
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->IsCdmaCardReady()Z
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$1300(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 339
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_SERVICE_CDMA_STATE_CHANGED: CDMA card is ready"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 346
    :goto_7
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->IsGsmCardReady()Z
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$700(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 348
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_SERVICE_CDMA_STATE_CHANGED: GSM card is ready"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 355
    :goto_8
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_SERVICE_CDMA_STATE_CHANGED: mCRegStatus="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #getter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->mCRegStatus:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;
    invoke-static {v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$1400(Lcom/android/internal/telephony/msim/GlobalModeManager;)Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 357
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #getter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->mCdmaPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$1500(Lcom/android/internal/telephony/msim/GlobalModeManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #getter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->mCdmaPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$1500(Lcom/android/internal/telephony/msim/GlobalModeManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-nez v3, :cond_10

    .line 358
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "CDMA network is in service"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 359
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->ClearTimer(II)V
    invoke-static {v3, v8, v10}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$1600(Lcom/android/internal/telephony/msim/GlobalModeManager;II)V

    .line 360
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->releaseWakeLock()V
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$1700(Lcom/android/internal/telephony/msim/GlobalModeManager;)V

    .line 361
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->IsCdmaCardReady()Z
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$1300(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #getter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->bDualModeCard:Z
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$1200(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 362
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "CDMA network found and CDMA card is ready, call PreCheckCdmaGot()"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 363
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->PreCheckCdmaGot()Z
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$1800(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z

    .line 364
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_SERVICE_CDMA_STATE_CHANGED: set bCdmaInitSearchDone to true"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 365
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #setter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->bCdmaInitSearchDone:Z
    invoke-static {v3, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$1902(Lcom/android/internal/telephony/msim/GlobalModeManager;Z)Z

    .line 384
    :cond_a
    :goto_9
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_SERVICE_CDMA_STATE_CHANGED: end"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 325
    :cond_b
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_SERVICE_CDMA_STATE_CHANGED: Card1 is not dual mode card"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 334
    :cond_c
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_SERVICE_CDMA_STATE_CHANGED: Card1 mode is GSM"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 343
    :cond_d
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_SERVICE_CDMA_STATE_CHANGED: CDMA card is not ready"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 352
    :cond_e
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_SERVICE_CDMA_STATE_CHANGED: GSM card is not ready"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 369
    :cond_f
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "CDMA network found, but CDMA card is not ready or not dual mode card"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    goto :goto_9

    .line 372
    :cond_10
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "CDMA network is not in service, is denied or no service"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 373
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_SERVICE_CDMA_STATE_CHANGED: bCdmaModemOn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #getter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->bCdmaModemOn:Z
    invoke-static {v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$2000(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 374
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #getter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->bCdmaModemOn:Z
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$2000(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 375
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "CDMA modem is closed,user close it or closed by me for power saving, do nothing"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 378
    :cond_11
    sget-object v3, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_CDMA:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    iget-object v4, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->GetCurModemMode()Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;
    invoke-static {v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$400(Lcom/android/internal/telephony/msim/GlobalModeManager;)Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    move-result-object v4

    if-ne v3, v4, :cond_a

    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->IsCdmaCardReady()Z
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$1300(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #getter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->bDualModeCard:Z
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$1200(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 379
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "CDMA network is not in service, do PreCheckCdmaLost"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 380
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->PreCheckCdmaLost()Z
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$2100(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z

    goto/16 :goto_9

    .line 389
    :pswitch_6
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_CDMA_LOST_TIMEOUT: begin"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 391
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #getter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->mCdmaPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$1500(Lcom/android/internal/telephony/msim/GlobalModeManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #getter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->mCdmaPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$1500(Lcom/android/internal/telephony/msim/GlobalModeManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-nez v3, :cond_12

    .line 392
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_CDMA_LOST_TIMEOUT: got CDMA network again"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 393
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->ClearTimer(II)V
    invoke-static {v3, v8, v10}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$1600(Lcom/android/internal/telephony/msim/GlobalModeManager;II)V

    .line 394
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_CDMA_LOST_TIMEOUT: call PreCheckCdmaGot()"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 395
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->PreCheckCdmaGot()Z
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$1800(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z

    .line 408
    :goto_a
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->releaseWakeLock()V
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$1700(Lcom/android/internal/telephony/msim/GlobalModeManager;)V

    .line 409
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_CDMA_LOST_TIMEOUT: end"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 397
    :cond_12
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "CDMA network is not in service, is denied or no service"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 398
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_CDMA_LOST_TIMEOUT: bCdmaModemOn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #getter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->bCdmaModemOn:Z
    invoke-static {v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$2000(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 399
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #getter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->bCdmaModemOn:Z
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$2000(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 400
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "user close CDMA modem after CDMA network lost, do nothing"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 401
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->releaseWakeLock()V
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$1700(Lcom/android/internal/telephony/msim/GlobalModeManager;)V

    goto/16 :goto_0

    .line 405
    :cond_13
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_CDMA_LOST_TIMEOUT: call PostCheckCdmaLost()"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 406
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->PostCheckCdmaLost()Z
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$2200(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z

    goto :goto_a

    .line 413
    :pswitch_7
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_SERVICE_GSM_STATE_CHANGED: begin"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 415
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #getter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->bDualModeCard:Z
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$1200(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 417
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_SERVICE_GSM_STATE_CHANGED: Card1 is dual mode card"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 424
    :goto_b
    sget-object v3, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_CDMA:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    iget-object v4, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->GetCurModemMode()Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;
    invoke-static {v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$400(Lcom/android/internal/telephony/msim/GlobalModeManager;)Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    move-result-object v4

    if-ne v3, v4, :cond_17

    .line 426
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_SERVICE_GSM_STATE_CHANGED: Card1 mode is CDMA"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 433
    :goto_c
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->IsCdmaCardReady()Z
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$1300(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 435
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_SERVICE_GSM_STATE_CHANGED: CDMA card is ready"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 442
    :goto_d
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->IsGsmCardReady()Z
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$700(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 444
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_SERVICE_GSM_STATE_CHANGED: GSM card is ready"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 451
    :goto_e
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #getter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->mGsmPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$2300(Lcom/android/internal/telephony/msim/GlobalModeManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 453
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_SERVICE_GSM_STATE_CHANGED: is GSM manual mode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #getter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->mGsmPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$2300(Lcom/android/internal/telephony/msim/GlobalModeManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 457
    :cond_14
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #getter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->mGsmPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$2300(Lcom/android/internal/telephony/msim/GlobalModeManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-eqz v3, :cond_1b

    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #getter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->mGsmPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$2300(Lcom/android/internal/telephony/msim/GlobalModeManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-nez v3, :cond_1b

    .line 459
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_SERVICE_GSM_STATE_CHANGED: GSM is in service"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 461
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->ClearTimer(II)V
    invoke-static {v3, v7, v9}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$1600(Lcom/android/internal/telephony/msim/GlobalModeManager;II)V

    .line 463
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->IsGsmCardReady()Z
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$700(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 464
    sget-object v3, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_CDMA:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    iget-object v4, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->GetCurModemMode()Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;
    invoke-static {v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$400(Lcom/android/internal/telephony/msim/GlobalModeManager;)Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    move-result-object v4

    if-ne v3, v4, :cond_1a

    .line 465
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "GSM Modem is using card2, call PreCheckGsm2Got()"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 466
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->PreCheckGsm2Got()Z
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$2400(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z

    .line 474
    :goto_f
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_SERVICE_GSM_STATE_CHANGED: set bGsmInitSearchDone to true"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 475
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #setter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->bGsmInitSearchDone:Z
    invoke-static {v3, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$1002(Lcom/android/internal/telephony/msim/GlobalModeManager;Z)Z

    .line 501
    :cond_15
    :goto_10
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_SERVICE_GSM_STATE_CHANGED: end"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 421
    :cond_16
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_SERVICE_GSM_STATE_CHANGED: Card1 is not dual mode card"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 430
    :cond_17
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_SERVICE_GSM_STATE_CHANGED: Card1 mode is GSM"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 439
    :cond_18
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_SERVICE_GSM_STATE_CHANGED: CDMA card is not ready"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 448
    :cond_19
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_SERVICE_GSM_STATE_CHANGED: GSM card is not ready"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 468
    :cond_1a
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "GSM Modem is using card1, clear timer FLAG_GSM1, call PreCheckGsm1Got()"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 469
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->ClearTimer(II)V
    invoke-static {v3, v6, v10}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$1600(Lcom/android/internal/telephony/msim/GlobalModeManager;II)V

    .line 470
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->releaseWakeLock()V
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$1700(Lcom/android/internal/telephony/msim/GlobalModeManager;)V

    .line 471
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->PreCheckGsm1Got()Z
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$2500(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z

    goto :goto_f

    .line 478
    :cond_1b
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_SERVICE_GSM_STATE_CHANGED: GSM is not in service, is limited service or no service"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 479
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_SERVICE_GSM_STATE_CHANGED: bGsmModemOn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #getter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->bGsmModemOn:Z
    invoke-static {v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$2600(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 481
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #getter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->bGsmModemOn:Z
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$2600(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 482
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "GSM modem is closed,user close it or closed by me for power saving, do nothing"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 483
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_SERVICE_GSM_STATE_CHANGED: end1"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 487
    :cond_1c
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #getter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->mGsmPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$2300(Lcom/android/internal/telephony/msim/GlobalModeManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #getter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->mGsmPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$2300(Lcom/android/internal/telephony/msim/GlobalModeManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 488
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "it is Manual select mode, lost GSM network, so start timer"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 489
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->ClearTimer(II)V
    invoke-static {v3, v7, v9}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$1600(Lcom/android/internal/telephony/msim/GlobalModeManager;II)V

    .line 490
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    iget-object v4, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #getter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->TIMER_GSM_MANUAL_SEARCH_DURATION:I
    invoke-static {v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$2700(Lcom/android/internal/telephony/msim/GlobalModeManager;)I

    move-result v4

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->ScheduleRun(III)V
    invoke-static {v3, v7, v4, v9}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$2800(Lcom/android/internal/telephony/msim/GlobalModeManager;III)V

    .line 493
    :cond_1d
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->IsGsmCardReady()Z
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$700(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 494
    sget-object v3, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_GSM:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    iget-object v4, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->GetCurModemMode()Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;
    invoke-static {v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$400(Lcom/android/internal/telephony/msim/GlobalModeManager;)Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    move-result-object v4

    if-ne v3, v4, :cond_15

    .line 495
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "GSM Modem is using card1, GSM card1 is ready, call PreCheckGsm1Lost()"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 496
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->PreCheckGsm1Lost()Z
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$2900(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z

    goto/16 :goto_10

    .line 505
    :pswitch_8
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_GSM1_LOST_TIMEOUT: begin"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 506
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #getter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->mGsmPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$2300(Lcom/android/internal/telephony/msim/GlobalModeManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-eqz v3, :cond_1e

    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #getter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->mGsmPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$2300(Lcom/android/internal/telephony/msim/GlobalModeManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-nez v3, :cond_1e

    .line 507
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_GSM1_LOST_TIMEOUT: got GSM1 network again"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 508
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->ClearTimer(II)V
    invoke-static {v3, v6, v10}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$1600(Lcom/android/internal/telephony/msim/GlobalModeManager;II)V

    .line 510
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_GSM1_LOST_TIMEOUT: call PreCheckGsm1Got()"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 511
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->PreCheckGsm1Got()Z
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$2500(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z

    .line 528
    :goto_11
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->releaseWakeLock()V
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$1700(Lcom/android/internal/telephony/msim/GlobalModeManager;)V

    .line 529
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_GSM1_LOST_TIMEOUT: end"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 513
    :cond_1e
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_GSM1_LOST_TIMEOUT: GSM is not in service, is limited service or no service"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 514
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_GSM1_LOST_TIMEOUT: bGsmModemOn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #getter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->bGsmModemOn:Z
    invoke-static {v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$2600(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 516
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #getter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->bGsmModemOn:Z
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$2600(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 517
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_GSM1_LOST_TIMEOUT: user close GSM modem after GSM network lost, do nothing"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 518
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->releaseWakeLock()V
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$1700(Lcom/android/internal/telephony/msim/GlobalModeManager;)V

    .line 519
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_GSM1_LOST_TIMEOUT: end"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 523
    :cond_1f
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const/16 v4, 0x9

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->ClearTimer(II)V
    invoke-static {v3, v6, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$1600(Lcom/android/internal/telephony/msim/GlobalModeManager;II)V

    .line 525
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_GSM1_LOST_TIMEOUT: call PostCheckGsm1Lost()"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 526
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->PostCheckGsm1Lost()Z
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$3000(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z

    goto :goto_11

    .line 533
    :pswitch_9
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_GSM_MANUAL_SEARCH_TIMEOUT"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 534
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->ClearTimer(II)V
    invoke-static {v3, v7, v9}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$1600(Lcom/android/internal/telephony/msim/GlobalModeManager;II)V

    .line 536
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->ShowChooseSearchModeDialog()V
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$3100(Lcom/android/internal/telephony/msim/GlobalModeManager;)V

    goto/16 :goto_0

    .line 540
    :pswitch_a
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_SUBSCRIPTION_CDMA_ACTIVATED"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 544
    :pswitch_b
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_SUBSCRIPTION_CDMA_DEACTIVATED"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 548
    :pswitch_c
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_SUBSCRIPTION_GSM_ACTIVATED"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 552
    :pswitch_d
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_SUBSCRIPTION_GSM_DEACTIVATED"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 556
    :pswitch_e
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_GSM_CALL_DISCONNECT: begin"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 557
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_GSM_CALL_DISCONNECT: bSwitchToGsmAfterCallFinished="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #getter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->bSwitchToGsmAfterCallFinished:Z
    invoke-static {v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$3200(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 558
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_GSM_CALL_DISCONNECT: bSwitchToCdmaAfterCallFinished="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #getter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->bSwitchToCdmaAfterCallFinished:Z
    invoke-static {v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$3300(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 560
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #getter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->bSwitchToGsmAfterCallFinished:Z
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$3200(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 561
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #setter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->bSwitchToGsmAfterCallFinished:Z
    invoke-static {v3, v8}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$3202(Lcom/android/internal/telephony/msim/GlobalModeManager;Z)Z

    .line 563
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_GSM_CALL_DISCONNECT: Set card1 mode to GSM, switch to GSM"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 565
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #getter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->mHwTelMgr:Lcom/huawei/telephony/HuaweiTelephonyManager;
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$600(Lcom/android/internal/telephony/msim/GlobalModeManager;)Lcom/huawei/telephony/HuaweiTelephonyManager;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/huawei/telephony/HuaweiTelephonyManager;->setDualCardMode(I)Z

    .line 566
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    sget-object v4, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_GSM:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->SwitchModem(Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$3400(Lcom/android/internal/telephony/msim/GlobalModeManager;Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;)V

    .line 575
    :cond_20
    :goto_12
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_GSM_CALL_DISCONNECT: end"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 567
    :cond_21
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #getter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->bSwitchToCdmaAfterCallFinished:Z
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$3300(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 568
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #setter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->bSwitchToCdmaAfterCallFinished:Z
    invoke-static {v3, v8}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$3302(Lcom/android/internal/telephony/msim/GlobalModeManager;Z)Z

    .line 570
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_GSM_CALL_DISCONNECT: Set card1 mode to CDMA, switch to CDMA"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 572
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #getter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->mHwTelMgr:Lcom/huawei/telephony/HuaweiTelephonyManager;
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$600(Lcom/android/internal/telephony/msim/GlobalModeManager;)Lcom/huawei/telephony/HuaweiTelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/huawei/telephony/HuaweiTelephonyManager;->setDualCardMode(I)Z

    .line 573
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    sget-object v4, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_CDMA:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->SwitchModem(Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$3400(Lcom/android/internal/telephony/msim/GlobalModeManager;Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;)V

    goto :goto_12

    .line 579
    :pswitch_f
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_SEARCH_T1_TIMEOUT timeout: begin"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 580
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_SEARCH_T1_TIMEOUT timeout: bDualModeCard="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #getter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->bDualModeCard:Z
    invoke-static {v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$1200(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 581
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_SEARCH_T1_TIMEOUT timeout: mCurDualCardMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #getter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->mCurDualCardMode:I
    invoke-static {v5}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$3500(Lcom/android/internal/telephony/msim/GlobalModeManager;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 582
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #getter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->bDualModeCard:Z
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$1200(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #getter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->mCurDualCardMode:I
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$3500(Lcom/android/internal/telephony/msim/GlobalModeManager;)I

    move-result v3

    if-nez v3, :cond_22

    .line 583
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_SEARCH_T1_TIMEOUT timeout: Clear timer FLAG_CDMA, EVENT_SEARCH_T1_TIMEOUT"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 584
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const/16 v4, 0xa

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->ClearTimer(II)V
    invoke-static {v3, v8, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$1600(Lcom/android/internal/telephony/msim/GlobalModeManager;II)V

    .line 585
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #getter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->mCdmaPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$1500(Lcom/android/internal/telephony/msim/GlobalModeManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-eqz v3, :cond_23

    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #getter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->mCdmaPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$1500(Lcom/android/internal/telephony/msim/GlobalModeManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-nez v3, :cond_23

    .line 586
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "got CDMA network again, do not show the dialog"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 589
    :cond_22
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #getter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->bDualModeCard:Z
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$1200(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z

    move-result v3

    if-eqz v3, :cond_23

    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #getter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->mCurDualCardMode:I
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$3500(Lcom/android/internal/telephony/msim/GlobalModeManager;)I

    move-result v3

    if-ne v6, v3, :cond_23

    .line 590
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_SEARCH_T1_TIMEOUT timeout: Clear timer FLAG_GSM1, EVENT_SEARCH_T1_TIMEOUT"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 591
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const/16 v4, 0xa

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->ClearTimer(II)V
    invoke-static {v3, v6, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$1600(Lcom/android/internal/telephony/msim/GlobalModeManager;II)V

    .line 592
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #getter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->mGsmPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$2300(Lcom/android/internal/telephony/msim/GlobalModeManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-eqz v3, :cond_23

    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #getter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->mGsmPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$2300(Lcom/android/internal/telephony/msim/GlobalModeManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-nez v3, :cond_23

    .line 593
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "got GSM network again,  do not show the dialog"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 599
    :cond_23
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #getter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->bDualModeCard:Z
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$1200(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z

    move-result v3

    if-eqz v3, :cond_25

    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #getter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->mCurDualCardMode:I
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$3500(Lcom/android/internal/telephony/msim/GlobalModeManager;)I

    move-result v3

    if-nez v3, :cond_25

    .line 600
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_SEARCH_T1_TIMEOUT timeout: CDMA mode, Show dual mode choose dialog"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 601
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->ShowChooseDualModeDialog()V
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$3600(Lcom/android/internal/telephony/msim/GlobalModeManager;)V

    .line 606
    :cond_24
    :goto_13
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_SEARCH_T1_TIMEOUT timeout: end"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 602
    :cond_25
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #getter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->bDualModeCard:Z
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$1200(Lcom/android/internal/telephony/msim/GlobalModeManager;)Z

    move-result v3

    if-eqz v3, :cond_24

    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #getter for: Lcom/android/internal/telephony/msim/GlobalModeManager;->mCurDualCardMode:I
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$3500(Lcom/android/internal/telephony/msim/GlobalModeManager;)I

    move-result v3

    if-ne v6, v3, :cond_24

    .line 603
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    const-string v4, "EVENT_SEARCH_T1_TIMEOUT timeout: GSM mode, Show dual mode choose dialog"

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$000(Lcom/android/internal/telephony/msim/GlobalModeManager;Ljava/lang/String;)V

    .line 604
    iget-object v3, p0, Lcom/android/internal/telephony/msim/GlobalModeManager$1;->this$0:Lcom/android/internal/telephony/msim/GlobalModeManager;

    #calls: Lcom/android/internal/telephony/msim/GlobalModeManager;->ShowChooseDualModeDialog()V
    invoke-static {v3}, Lcom/android/internal/telephony/msim/GlobalModeManager;->access$3600(Lcom/android/internal/telephony/msim/GlobalModeManager;)V

    goto :goto_13

    .line 224
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_7
        :pswitch_2
        :pswitch_3
        :pswitch_e
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_8
        :pswitch_f
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
