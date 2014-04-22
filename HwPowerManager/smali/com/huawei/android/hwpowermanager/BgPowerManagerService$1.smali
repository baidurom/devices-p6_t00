.class Lcom/huawei/android/hwpowermanager/BgPowerManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "BgPowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/hwpowermanager/BgPowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/hwpowermanager/BgPowerManagerService;


# direct methods
.method constructor <init>(Lcom/huawei/android/hwpowermanager/BgPowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/huawei/android/hwpowermanager/BgPowerManagerService$1;->this$0:Lcom/huawei/android/hwpowermanager/BgPowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 74
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    const-string v2, "level"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->access$002(I)I

    .line 77
    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/BgPowerManagerService$1;->this$0:Lcom/huawei/android/hwpowermanager/BgPowerManagerService;

    #getter for: Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->access$100(Lcom/huawei/android/hwpowermanager/BgPowerManagerService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 78
    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/BgPowerManagerService$1;->this$0:Lcom/huawei/android/hwpowermanager/BgPowerManagerService;

    #getter for: Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->access$100(Lcom/huawei/android/hwpowermanager/BgPowerManagerService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 79
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/BgPowerManagerService$1;->this$0:Lcom/huawei/android/hwpowermanager/BgPowerManagerService;

    #getter for: Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->access$100(Lcom/huawei/android/hwpowermanager/BgPowerManagerService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 93
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 81
    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/BgPowerManagerService$1;->this$0:Lcom/huawei/android/hwpowermanager/BgPowerManagerService;

    #getter for: Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->access$100(Lcom/huawei/android/hwpowermanager/BgPowerManagerService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 82
    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/BgPowerManagerService$1;->this$0:Lcom/huawei/android/hwpowermanager/BgPowerManagerService;

    #getter for: Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->access$100(Lcom/huawei/android/hwpowermanager/BgPowerManagerService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 83
    .restart local v1       #msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/BgPowerManagerService$1;->this$0:Lcom/huawei/android/hwpowermanager/BgPowerManagerService;

    #getter for: Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->access$100(Lcom/huawei/android/hwpowermanager/BgPowerManagerService;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 84
    .end local v1           #msg:Landroid/os/Message;
    :cond_2
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 85
    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/BgPowerManagerService$1;->this$0:Lcom/huawei/android/hwpowermanager/BgPowerManagerService;

    #getter for: Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->access$100(Lcom/huawei/android/hwpowermanager/BgPowerManagerService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 86
    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/BgPowerManagerService$1;->this$0:Lcom/huawei/android/hwpowermanager/BgPowerManagerService;

    #getter for: Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->access$100(Lcom/huawei/android/hwpowermanager/BgPowerManagerService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 87
    .restart local v1       #msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/BgPowerManagerService$1;->this$0:Lcom/huawei/android/hwpowermanager/BgPowerManagerService;

    #getter for: Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->access$100(Lcom/huawei/android/hwpowermanager/BgPowerManagerService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 88
    .end local v1           #msg:Landroid/os/Message;
    :cond_3
    const-string v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/BgPowerManagerService$1;->this$0:Lcom/huawei/android/hwpowermanager/BgPowerManagerService;

    #getter for: Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->access$100(Lcom/huawei/android/hwpowermanager/BgPowerManagerService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 90
    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/BgPowerManagerService$1;->this$0:Lcom/huawei/android/hwpowermanager/BgPowerManagerService;

    #getter for: Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->access$100(Lcom/huawei/android/hwpowermanager/BgPowerManagerService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 91
    .restart local v1       #msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/BgPowerManagerService$1;->this$0:Lcom/huawei/android/hwpowermanager/BgPowerManagerService;

    #getter for: Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->access$100(Lcom/huawei/android/hwpowermanager/BgPowerManagerService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
