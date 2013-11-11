.class final Lcom/huawei/android/FMRadio/FMRadioUtils$1;
.super Ljava/lang/Object;
.source "FMRadioUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/android/FMRadio/FMRadioUtils;->play(Landroid/content/Context;ILandroid/app/ProgressDialog;Landroid/os/Handler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$frequency:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 672
    iput p1, p0, Lcom/huawei/android/FMRadio/FMRadioUtils$1;->val$frequency:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 675
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->access$000()Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;

    move-result-object v0

    iget v1, p0, Lcom/huawei/android/FMRadio/FMRadioUtils$1;->val$frequency:I

    invoke-virtual {v0, v1}, Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;->fmPlay(I)V

    .line 676
    return-void
.end method
