.class Lcom/huawei/android/FMRadio/FMRadioService$3;
.super Landroid/content/BroadcastReceiver;
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
    .line 308
    iput-object p1, p0, Lcom/huawei/android/FMRadio/FMRadioService$3;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 310
    const-string v1, "state"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, mPhoneReceiverState:Ljava/lang/String;
    const-string v1, "FMRadioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPhoneReceiverState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const-string v1, "RINGING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "OFFHOOK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 313
    :cond_0
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioService$3;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    invoke-virtual {v1}, Lcom/huawei/android/FMRadio/FMRadioService;->mute()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 314
    const-string v1, "FMRadioService"

    const-string v2, "FMRadio mute success."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioService$3;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    invoke-virtual {v1}, Lcom/huawei/android/FMRadio/FMRadioService;->isMultiCallIDLE()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 322
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioService$3;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    invoke-virtual {v1}, Lcom/huawei/android/FMRadio/FMRadioService;->unMute()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 323
    const-string v1, "FMRadioService"

    const-string v2, "FMRadio unMute success."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_2
    :goto_1
    return-void

    .line 316
    :cond_3
    const-string v1, "FMRadioService"

    const-string v2, "FMRadio mute fail."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 325
    :cond_4
    const-string v1, "FMRadioService"

    const-string v2, "FMRadio unMute fail."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
