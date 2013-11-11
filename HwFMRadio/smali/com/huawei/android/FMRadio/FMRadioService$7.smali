.class Lcom/huawei/android/FMRadio/FMRadioService$7;
.super Ljava/lang/Object;
.source "FMRadioService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/android/FMRadio/FMRadioService;->doStartOrStopFM()V
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
    .line 672
    iput-object p1, p0, Lcom/huawei/android/FMRadio/FMRadioService$7;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 675
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 676
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioService$7;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    invoke-virtual {v1}, Lcom/huawei/android/FMRadio/FMRadioService;->fmStop()V

    .line 677
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioService$7;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    #calls: Lcom/huawei/android/FMRadio/FMRadioService;->destoryServiceNow()V
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioService;->access$400(Lcom/huawei/android/FMRadio/FMRadioService;)V

    .line 678
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioService$7;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    #setter for: Lcom/huawei/android/FMRadio/FMRadioService;->isTogglePause:Z
    invoke-static {v1, v3}, Lcom/huawei/android/FMRadio/FMRadioService;->access$1502(Lcom/huawei/android/FMRadio/FMRadioService;Z)Z

    .line 701
    :goto_0
    return-void

    .line 680
    :cond_0
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioService$7;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 681
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioService$7;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    iget-object v1, v1, Lcom/huawei/android/FMRadio/FMRadioService;->mWidgetToastHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 682
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioService$7;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    #setter for: Lcom/huawei/android/FMRadio/FMRadioService;->isTogglePause:Z
    invoke-static {v1, v3}, Lcom/huawei/android/FMRadio/FMRadioService;->access$1502(Lcom/huawei/android/FMRadio/FMRadioService;Z)Z

    goto :goto_0

    .line 685
    :cond_1
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioService$7;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioUtils;->isWiredHeadsetAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 686
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioService$7;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    iget-object v1, v1, Lcom/huawei/android/FMRadio/FMRadioService;->mWidgetToastHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 687
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioService$7;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    #setter for: Lcom/huawei/android/FMRadio/FMRadioService;->isTogglePause:Z
    invoke-static {v1, v3}, Lcom/huawei/android/FMRadio/FMRadioService;->access$1502(Lcom/huawei/android/FMRadio/FMRadioService;Z)Z

    goto :goto_0

    .line 691
    :cond_2
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioService$7;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioService;->access$900(Lcom/huawei/android/FMRadio/FMRadioService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioUtils;->initStationRecord(Landroid/content/Context;)V

    .line 693
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioService$7;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioService;->access$900(Lcom/huawei/android/FMRadio/FMRadioService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioUtils;->getLastPlayValidFrequency(Landroid/content/Context;)I

    move-result v0

    .line 694
    .local v0, tmpFreq:I
    invoke-static {v0}, Lcom/huawei/android/FMRadio/FMRadioUtils;->isFreqValid(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 695
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioService$7;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    invoke-virtual {v1, v0}, Lcom/huawei/android/FMRadio/FMRadioService;->fmPlay(I)Z

    .line 699
    :goto_1
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioService$7;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    #setter for: Lcom/huawei/android/FMRadio/FMRadioService;->isTogglePause:Z
    invoke-static {v1, v3}, Lcom/huawei/android/FMRadio/FMRadioService;->access$1502(Lcom/huawei/android/FMRadio/FMRadioService;Z)Z

    goto :goto_0

    .line 697
    :cond_3
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioService$7;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    #calls: Lcom/huawei/android/FMRadio/FMRadioService;->intoApplication()V
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioService;->access$1600(Lcom/huawei/android/FMRadio/FMRadioService;)V

    goto :goto_1
.end method
