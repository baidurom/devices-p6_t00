.class Lcom/huawei/android/FMRadio/FMRadioService$4;
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
    .line 335
    iput-object p1, p0, Lcom/huawei/android/FMRadio/FMRadioService$4;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 339
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, action:Ljava/lang/String;
    const-string v7, "command"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 342
    .local v2, cmd:Ljava/lang/String;
    const-string v7, "FMRadioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mIntentReceiver action = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const-string v7, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 346
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 347
    const-string v7, "FMRadioService"

    const-string v8, "system off ,FM off."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v7, p0, Lcom/huawei/android/FMRadio/FMRadioService$4;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    invoke-virtual {v7}, Lcom/huawei/android/FMRadio/FMRadioService;->fmStop()V

    .line 349
    iget-object v7, p0, Lcom/huawei/android/FMRadio/FMRadioService$4;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    #calls: Lcom/huawei/android/FMRadio/FMRadioService;->destoryServiceNow()V
    invoke-static {v7}, Lcom/huawei/android/FMRadio/FMRadioService;->access$400(Lcom/huawei/android/FMRadio/FMRadioService;)V

    .line 353
    :cond_0
    const-string v7, "stop"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "com.huawei.android.FMRadio.fmradioservicecommand.stop"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 354
    :cond_1
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 356
    iget-object v5, p0, Lcom/huawei/android/FMRadio/FMRadioService$4;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/huawei/android/FMRadio/FMRadioService;->access$500(Lcom/huawei/android/FMRadio/FMRadioService;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/huawei/android/FMRadio/FMRadioService$4$1;

    invoke-direct {v6, p0}, Lcom/huawei/android/FMRadio/FMRadioService$4$1;-><init>(Lcom/huawei/android/FMRadio/FMRadioService$4;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 364
    :cond_2
    iget-object v5, p0, Lcom/huawei/android/FMRadio/FMRadioService$4;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    #calls: Lcom/huawei/android/FMRadio/FMRadioService;->unRegisterMediaButton()V
    invoke-static {v5}, Lcom/huawei/android/FMRadio/FMRadioService;->access$600(Lcom/huawei/android/FMRadio/FMRadioService;)V

    .line 424
    :cond_3
    :goto_0
    return-void

    .line 368
    :cond_4
    const-string v7, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 370
    const-string v7, "state"

    invoke-virtual {p2, v7, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 371
    .local v1, airPlaneEnabe:Z
    if-eqz v1, :cond_3

    .line 372
    new-instance v5, Ljava/lang/Thread;

    new-instance v7, Lcom/huawei/android/FMRadio/FMRadioService$4$2;

    invoke-direct {v7, p0}, Lcom/huawei/android/FMRadio/FMRadioService$4$2;-><init>(Lcom/huawei/android/FMRadio/FMRadioService$4;)V

    invoke-direct {v5, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 394
    const v5, 0x7f080047

    invoke-static {p1, v5, v6}, Lcom/huawei/android/FMRadio/CommonUI;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 400
    .end local v1           #airPlaneEnabe:Z
    :cond_5
    const-string v7, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 402
    const-string v7, "state"

    invoke-virtual {p2, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v6, :cond_6

    move v5, v6

    :cond_6
    invoke-static {v5}, Lcom/huawei/android/FMRadio/FMRadioService;->access$1002(Z)Z

    .line 403
    iget-object v5, p0, Lcom/huawei/android/FMRadio/FMRadioService$4;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioService;->headsetThreadQueue:Ljava/util/LinkedList;
    invoke-static {v5}, Lcom/huawei/android/FMRadio/FMRadioService;->access$1100(Lcom/huawei/android/FMRadio/FMRadioService;)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-gt v5, v10, :cond_7

    .line 404
    iget-object v5, p0, Lcom/huawei/android/FMRadio/FMRadioService$4;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioService;->headsetThreadQueue:Ljava/util/LinkedList;
    invoke-static {v5}, Lcom/huawei/android/FMRadio/FMRadioService;->access$1100(Lcom/huawei/android/FMRadio/FMRadioService;)Ljava/util/LinkedList;

    move-result-object v5

    new-instance v7, Ljava/lang/Thread;

    iget-object v8, p0, Lcom/huawei/android/FMRadio/FMRadioService$4;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    iget-object v8, v8, Lcom/huawei/android/FMRadio/FMRadioService;->mHeadsetPluginHandler:Ljava/lang/Runnable;

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5, v7}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 405
    iget-object v5, p0, Lcom/huawei/android/FMRadio/FMRadioService$4;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioService;->headsetThreadQueue:Ljava/util/LinkedList;
    invoke-static {v5}, Lcom/huawei/android/FMRadio/FMRadioService;->access$1100(Lcom/huawei/android/FMRadio/FMRadioService;)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-ne v5, v6, :cond_3

    .line 406
    iget-object v5, p0, Lcom/huawei/android/FMRadio/FMRadioService$4;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioService;->headsetThreadQueue:Ljava/util/LinkedList;
    invoke-static {v5}, Lcom/huawei/android/FMRadio/FMRadioService;->access$1100(Lcom/huawei/android/FMRadio/FMRadioService;)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Thread;

    .line 407
    .local v4, thread:Ljava/lang/Thread;
    if-eqz v4, :cond_3

    .line 408
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 412
    .end local v4           #thread:Ljava/lang/Thread;
    :cond_7
    iget-object v5, p0, Lcom/huawei/android/FMRadio/FMRadioService$4;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioService;->headsetThreadQueue:Ljava/util/LinkedList;
    invoke-static {v5}, Lcom/huawei/android/FMRadio/FMRadioService;->access$1100(Lcom/huawei/android/FMRadio/FMRadioService;)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_0

    .line 416
    :cond_8
    const-string v5, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 417
    const-string v5, "android.bluetooth.profile.extra.STATE"

    const/4 v7, -0x1

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 418
    .local v3, state:I
    if-ne v3, v10, :cond_3

    .line 419
    iget-object v5, p0, Lcom/huawei/android/FMRadio/FMRadioService$4;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    invoke-virtual {v5, v6}, Lcom/huawei/android/FMRadio/FMRadioService;->fmOpenFMSound(B)V

    .line 420
    const-string v5, "FMRadioService"

    const-string v6, "BluetoothHeadset:STATE_CONNECTED"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
