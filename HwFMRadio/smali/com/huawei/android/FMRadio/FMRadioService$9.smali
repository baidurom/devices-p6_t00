.class Lcom/huawei/android/FMRadio/FMRadioService$9;
.super Landroid/content/BroadcastReceiver;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/android/FMRadio/FMRadioService;->registerScreenOnOffListener()V
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
    .line 789
    iput-object p1, p0, Lcom/huawei/android/FMRadio/FMRadioService$9;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 792
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 793
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 796
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioService$9;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioService;->access$500(Lcom/huawei/android/FMRadio/FMRadioService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioService$9;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    iget-object v2, v2, Lcom/huawei/android/FMRadio/FMRadioService;->mScreenOnHandler:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 801
    :cond_0
    :goto_0
    return-void

    .line 797
    :cond_1
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 799
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioService$9;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioService;->access$500(Lcom/huawei/android/FMRadio/FMRadioService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioService$9;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    iget-object v2, v2, Lcom/huawei/android/FMRadio/FMRadioService;->mScreenOffHandler:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
