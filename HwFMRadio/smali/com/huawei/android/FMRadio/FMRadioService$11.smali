.class Lcom/huawei/android/FMRadio/FMRadioService$11;
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
    .line 830
    iput-object p1, p0, Lcom/huawei/android/FMRadio/FMRadioService$11;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 835
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioUtils;->setmScreenOn(Z)V

    .line 837
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismAutoTuning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioService$11;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/huawei/android/FMRadio/FMRadioService;->access$900(Lcom/huawei/android/FMRadio/FMRadioService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/huawei/android/FMRadio/FMRadioUtils;->doWithNotify(Landroid/content/Context;I)V

    .line 844
    :cond_0
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioService$11;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    const/4 v1, 0x1

    #calls: Lcom/huawei/android/FMRadio/FMRadioService;->setLowPowerMode(Z)Z
    invoke-static {v0, v1}, Lcom/huawei/android/FMRadio/FMRadioService;->access$1900(Lcom/huawei/android/FMRadio/FMRadioService;Z)Z

    .line 845
    return-void
.end method
