.class Lcom/huawei/android/FMRadio/FMRadioService$4$2;
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
    .line 372
    iput-object p1, p0, Lcom/huawei/android/FMRadio/FMRadioService$4$2;->this$1:Lcom/huawei/android/FMRadio/FMRadioService$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 374
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismAutoTuning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 375
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioService$4$2;->this$1:Lcom/huawei/android/FMRadio/FMRadioService$4;

    iget-object v0, v0, Lcom/huawei/android/FMRadio/FMRadioService$4;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    invoke-virtual {v0}, Lcom/huawei/android/FMRadio/FMRadioService;->fmCancelAutoTune()V

    .line 376
    invoke-static {v2}, Lcom/huawei/android/FMRadio/FMRadioService;->access$702(Z)Z

    .line 377
    invoke-static {v2}, Lcom/huawei/android/FMRadio/FMRadioUtils;->setmAutoTuning(Z)V

    .line 378
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioService;->access$800()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioService$4$2;->this$1:Lcom/huawei/android/FMRadio/FMRadioService$4;

    iget-object v0, v0, Lcom/huawei/android/FMRadio/FMRadioService$4;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/huawei/android/FMRadio/FMRadioService;->access$900(Lcom/huawei/android/FMRadio/FMRadioService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioService;->access$800()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/android/FMRadio/FMRadioUtils;->doSaveSearchStations(Landroid/content/Context;Ljava/util/List;)Z

    .line 385
    :cond_0
    :goto_0
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 386
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioService$4$2;->this$1:Lcom/huawei/android/FMRadio/FMRadioService$4;

    iget-object v0, v0, Lcom/huawei/android/FMRadio/FMRadioService$4;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    invoke-virtual {v0}, Lcom/huawei/android/FMRadio/FMRadioService;->fmStop()V

    .line 388
    :cond_1
    invoke-static {v2}, Lcom/huawei/android/FMRadio/FMRadioUtils;->setmBroadcastOn(Z)V

    .line 389
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioService$4$2;->this$1:Lcom/huawei/android/FMRadio/FMRadioService$4;

    iget-object v0, v0, Lcom/huawei/android/FMRadio/FMRadioService$4;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    #calls: Lcom/huawei/android/FMRadio/FMRadioService;->destoryServiceNow()V
    invoke-static {v0}, Lcom/huawei/android/FMRadio/FMRadioService;->access$400(Lcom/huawei/android/FMRadio/FMRadioService;)V

    .line 390
    return-void

    .line 381
    :cond_2
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismManualTuning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioService$4$2;->this$1:Lcom/huawei/android/FMRadio/FMRadioService$4;

    iget-object v0, v0, Lcom/huawei/android/FMRadio/FMRadioService$4;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    invoke-virtual {v0}, Lcom/huawei/android/FMRadio/FMRadioService;->fmCancelManualTune()Z

    goto :goto_0
.end method
