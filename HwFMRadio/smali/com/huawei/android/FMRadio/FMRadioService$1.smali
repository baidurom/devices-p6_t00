.class Lcom/huawei/android/FMRadio/FMRadioService$1;
.super Landroid/telephony/PhoneStateListener;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/FMRadio/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/FMRadio/FMRadioService;


# direct methods
.method constructor <init>(Lcom/huawei/android/FMRadio/FMRadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/huawei/android/FMRadio/FMRadioService$1;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 6
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const/4 v5, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 231
    const-string v2, "FMRadioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPhoneStateListener.onCallStateChanged: State = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v2

    if-nez v2, :cond_3

    .line 235
    if-eq p1, v1, :cond_0

    if-ne p1, v5, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    invoke-static {v0}, Lcom/huawei/android/FMRadio/FMRadioService;->access$002(Z)Z

    .line 260
    :cond_2
    :goto_0
    return-void

    .line 240
    :cond_3
    if-eq p1, v1, :cond_4

    if-ne p1, v5, :cond_6

    .line 242
    :cond_4
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioService;->access$002(Z)Z

    .line 243
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismAutoTuning()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 244
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioService$1;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    invoke-virtual {v0}, Lcom/huawei/android/FMRadio/FMRadioService;->fmCancelAutoTune()V

    .line 246
    :cond_5
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioService$1;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    #calls: Lcom/huawei/android/FMRadio/FMRadioService;->stopFM()V
    invoke-static {v0}, Lcom/huawei/android/FMRadio/FMRadioService;->access$100(Lcom/huawei/android/FMRadio/FMRadioService;)V

    goto :goto_0

    .line 247
    :cond_6
    if-nez p1, :cond_2

    .line 248
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioService;->access$000()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 249
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 251
    invoke-static {v0}, Lcom/huawei/android/FMRadio/FMRadioService;->access$002(Z)Z

    .line 252
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioService$1;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    #calls: Lcom/huawei/android/FMRadio/FMRadioService;->startFM()V
    invoke-static {v0}, Lcom/huawei/android/FMRadio/FMRadioService;->access$200(Lcom/huawei/android/FMRadio/FMRadioService;)V

    .line 253
    const-wide/16 v2, 0xc8

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 254
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->getmFMSoundMode()B

    move-result v0

    if-nez v0, :cond_2

    .line 255
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioService$1;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    #calls: Lcom/huawei/android/FMRadio/FMRadioService;->enableSpeaker(Z)V
    invoke-static {v0, v1}, Lcom/huawei/android/FMRadio/FMRadioService;->access$300(Lcom/huawei/android/FMRadio/FMRadioService;Z)V

    goto :goto_0
.end method
