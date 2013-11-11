.class Lcom/huawei/android/FMRadio/FMRadioService$8;
.super Landroid/os/Handler;
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
    .line 766
    iput-object p1, p0, Lcom/huawei/android/FMRadio/FMRadioService$8;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 772
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioService$8;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioService;->mServiceInUse:Z
    invoke-static {v0}, Lcom/huawei/android/FMRadio/FMRadioService;->access$1700(Lcom/huawei/android/FMRadio/FMRadioService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 777
    :cond_0
    :goto_0
    return-void

    .line 776
    :cond_1
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioService$8;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioService$8;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioService;->mServiceStartId:I
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioService;->access$1800(Lcom/huawei/android/FMRadio/FMRadioService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/FMRadio/FMRadioService;->stopSelf(I)V

    goto :goto_0
.end method
