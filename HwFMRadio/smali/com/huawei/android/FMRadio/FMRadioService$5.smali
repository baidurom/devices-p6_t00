.class Lcom/huawei/android/FMRadio/FMRadioService$5;
.super Ljava/lang/Object;
.source "FMRadioService.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 429
    iput-object p1, p0, Lcom/huawei/android/FMRadio/FMRadioService$5;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 432
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioService;->access$1000()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 434
    iget-object v4, p0, Lcom/huawei/android/FMRadio/FMRadioService$5;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    const-string v5, "keyguard"

    invoke-virtual {v4, v5}, Lcom/huawei/android/FMRadio/FMRadioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 435
    .local v2, mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    .line 436
    .local v1, mKeyguardEnabled:Z
    iget-object v4, p0, Lcom/huawei/android/FMRadio/FMRadioService$5;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/huawei/android/FMRadio/FMRadioService;->access$900(Lcom/huawei/android/FMRadio/FMRadioService;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/android/FMRadio/FMRadioUtils;->isApplicationTop(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioService;->access$1200()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismScreenOn()Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v1, :cond_0

    .line 438
    iget-object v4, p0, Lcom/huawei/android/FMRadio/FMRadioService$5;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/huawei/android/FMRadio/FMRadioService;->access$900(Lcom/huawei/android/FMRadio/FMRadioService;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/android/FMRadio/FMRadioUtils;->getLastPlayValidFrequency(Landroid/content/Context;)I

    move-result v0

    .line 439
    .local v0, frequency:I
    invoke-static {v0}, Lcom/huawei/android/FMRadio/FMRadioUtils;->isFreqValid(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 440
    iget-object v4, p0, Lcom/huawei/android/FMRadio/FMRadioService$5;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    const-string v5, "com.huawei.android.FMRadio.headsetplug.play"

    #calls: Lcom/huawei/android/FMRadio/FMRadioService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/huawei/android/FMRadio/FMRadioService;->access$1300(Lcom/huawei/android/FMRadio/FMRadioService;Ljava/lang/String;)V

    .line 441
    iget-object v4, p0, Lcom/huawei/android/FMRadio/FMRadioService$5;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    invoke-virtual {v4, v0}, Lcom/huawei/android/FMRadio/FMRadioService;->fmPlay(I)Z

    .line 464
    .end local v0           #frequency:I
    .end local v1           #mKeyguardEnabled:Z
    .end local v2           #mKeyguardManager:Landroid/app/KeyguardManager;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/huawei/android/FMRadio/FMRadioService$5;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioService;->headsetThreadQueue:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/huawei/android/FMRadio/FMRadioService;->access$1100(Lcom/huawei/android/FMRadio/FMRadioService;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 466
    iget-object v4, p0, Lcom/huawei/android/FMRadio/FMRadioService$5;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioService;->headsetThreadQueue:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/huawei/android/FMRadio/FMRadioService;->access$1100(Lcom/huawei/android/FMRadio/FMRadioService;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 467
    iget-object v4, p0, Lcom/huawei/android/FMRadio/FMRadioService$5;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioService;->headsetThreadQueue:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/huawei/android/FMRadio/FMRadioService;->access$1100(Lcom/huawei/android/FMRadio/FMRadioService;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Thread;

    .line 468
    .local v3, thread:Ljava/lang/Thread;
    if-eqz v3, :cond_1

    .line 469
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 472
    .end local v3           #thread:Ljava/lang/Thread;
    :cond_1
    return-void

    .line 443
    .restart local v0       #frequency:I
    .restart local v1       #mKeyguardEnabled:Z
    .restart local v2       #mKeyguardManager:Landroid/app/KeyguardManager;
    :cond_2
    iget-object v4, p0, Lcom/huawei/android/FMRadio/FMRadioService$5;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    const-string v5, "com.huawei.android.FMRadio.headsetplug.search"

    #calls: Lcom/huawei/android/FMRadio/FMRadioService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/huawei/android/FMRadio/FMRadioService;->access$1300(Lcom/huawei/android/FMRadio/FMRadioService;Ljava/lang/String;)V

    goto :goto_0

    .line 448
    .end local v0           #frequency:I
    .end local v1           #mKeyguardEnabled:Z
    .end local v2           #mKeyguardManager:Landroid/app/KeyguardManager;
    :cond_3
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/huawei/android/FMRadio/FMRadioService;->access$1202(Z)Z

    .line 449
    iget-object v4, p0, Lcom/huawei/android/FMRadio/FMRadioService$5;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    const-string v5, "com.huawei.android.FMRadio.headsetunplug"

    #calls: Lcom/huawei/android/FMRadio/FMRadioService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/huawei/android/FMRadio/FMRadioService;->access$1300(Lcom/huawei/android/FMRadio/FMRadioService;Ljava/lang/String;)V

    .line 450
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismAutoTuning()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 451
    iget-object v4, p0, Lcom/huawei/android/FMRadio/FMRadioService$5;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    invoke-virtual {v4}, Lcom/huawei/android/FMRadio/FMRadioService;->fmCancelAutoTune()V

    .line 452
    iget-object v4, p0, Lcom/huawei/android/FMRadio/FMRadioService$5;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    #calls: Lcom/huawei/android/FMRadio/FMRadioService;->waitCancelAutotune()V
    invoke-static {v4}, Lcom/huawei/android/FMRadio/FMRadioService;->access$1400(Lcom/huawei/android/FMRadio/FMRadioService;)V

    .line 453
    iget-object v4, p0, Lcom/huawei/android/FMRadio/FMRadioService$5;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    invoke-virtual {v4}, Lcom/huawei/android/FMRadio/FMRadioService;->fmStop()V

    .line 458
    :cond_4
    :goto_1
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 459
    iget-object v4, p0, Lcom/huawei/android/FMRadio/FMRadioService$5;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    invoke-virtual {v4}, Lcom/huawei/android/FMRadio/FMRadioService;->fmStop()V

    .line 460
    iget-object v4, p0, Lcom/huawei/android/FMRadio/FMRadioService$5;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    #calls: Lcom/huawei/android/FMRadio/FMRadioService;->destoryServiceNow()V
    invoke-static {v4}, Lcom/huawei/android/FMRadio/FMRadioService;->access$400(Lcom/huawei/android/FMRadio/FMRadioService;)V

    goto :goto_0

    .line 454
    :cond_5
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismManualTuning()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 455
    iget-object v4, p0, Lcom/huawei/android/FMRadio/FMRadioService$5;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    invoke-virtual {v4}, Lcom/huawei/android/FMRadio/FMRadioService;->fmCancelManualTune()Z

    goto :goto_1
.end method
