.class Lcom/huawei/android/FMRadio/FMRadioService$4$1;
.super Ljava/lang/Object;
.source "FMRadioService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/android/FMRadio/FMRadioService$4;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huawei/android/FMRadio/FMRadioService$4;


# direct methods
.method constructor <init>(Lcom/huawei/android/FMRadio/FMRadioService$4;)V
    .locals 0
    .parameter

    .prologue
    .line 356
    iput-object p1, p0, Lcom/huawei/android/FMRadio/FMRadioService$4$1;->this$1:Lcom/huawei/android/FMRadio/FMRadioService$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioService$4$1;->this$1:Lcom/huawei/android/FMRadio/FMRadioService$4;

    iget-object v0, v0, Lcom/huawei/android/FMRadio/FMRadioService$4;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    invoke-virtual {v0}, Lcom/huawei/android/FMRadio/FMRadioService;->fmStop()V

    .line 359
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioService$4$1;->this$1:Lcom/huawei/android/FMRadio/FMRadioService$4;

    iget-object v0, v0, Lcom/huawei/android/FMRadio/FMRadioService$4;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    #calls: Lcom/huawei/android/FMRadio/FMRadioService;->destoryServiceNow()V
    invoke-static {v0}, Lcom/huawei/android/FMRadio/FMRadioService;->access$400(Lcom/huawei/android/FMRadio/FMRadioService;)V

    .line 360
    return-void
.end method
