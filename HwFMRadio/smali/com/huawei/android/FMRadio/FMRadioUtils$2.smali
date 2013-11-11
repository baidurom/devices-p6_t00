.class final Lcom/huawei/android/FMRadio/FMRadioUtils$2;
.super Ljava/lang/Object;
.source "FMRadioUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/android/FMRadio/FMRadioUtils;->stop(Landroid/content/Context;Landroid/app/ProgressDialog;Landroid/os/Handler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 705
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->access$000()Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;->fmStop()V

    .line 706
    return-void
.end method
