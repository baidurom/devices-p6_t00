.class final Lcom/huawei/android/FMRadio/FMRadioUtils$3;
.super Ljava/lang/Object;
.source "FMRadioUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/android/FMRadio/FMRadioUtils;->doAutoTuning(Landroid/content/Context;Landroid/os/Handler;Landroid/app/ProgressDialog;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$keepCollected:Z


# direct methods
.method constructor <init>(Landroid/content/Context;ZLandroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1045
    iput-object p1, p0, Lcom/huawei/android/FMRadio/FMRadioUtils$3;->val$context:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/huawei/android/FMRadio/FMRadioUtils$3;->val$keepCollected:Z

    iput-object p3, p0, Lcom/huawei/android/FMRadio/FMRadioUtils$3;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1048
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->access$000()Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1049
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->access$000()Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;->fmStop()V

    .line 1051
    :cond_0
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioUtils$3;->val$context:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/huawei/android/FMRadio/FMRadioUtils$3;->val$keepCollected:Z

    invoke-static {v0, v1}, Lcom/huawei/android/FMRadio/FMRadioUtils;->doClearStations(Landroid/content/Context;Z)Z

    .line 1052
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioUtils$3;->val$handler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1053
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->access$000()Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;->fmAutoTune()V

    .line 1054
    return-void
.end method
