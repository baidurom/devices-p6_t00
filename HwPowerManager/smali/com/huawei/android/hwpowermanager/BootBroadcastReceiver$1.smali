.class Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver$1;
.super Landroid/os/Handler;
.source "BootBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver$1;->this$0:Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 51
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 67
    :goto_0
    return-void

    .line 53
    :pswitch_0
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver$1;->this$0:Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;

    #getter for: Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->access$000(Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "xxxx MSG_POWER_STATISTIC Power-hungry apps found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver$1;->this$0:Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;

    #calls: Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->notificationShowJudger()Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->access$100(Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;)Ljava/util/ArrayList;

    move-result-object v0

    .line 55
    .local v0, maxUids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver$1;->this$0:Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;

    #calls: Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->handlePowerConsumeAPPs(Ljava/util/ArrayList;)V
    invoke-static {v1, v0}, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->access$200(Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;Ljava/util/ArrayList;)V

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver$1;->this$0:Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;

    #getter for: Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->access$000(Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MSG_POWER_STATISTIC deal finished"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 61
    .end local v0           #maxUids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_1
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver$1;->this$0:Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;

    #getter for: Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->access$000(Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "xxxx MSG_TAKING_WAKELOCK_APP Power-hungry apps found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver$1;->this$0:Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    #calls: Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->handleTakingWakeLockAPPs(Landroid/os/Bundle;)V
    invoke-static {v1, v2}, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->access$300(Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;Landroid/os/Bundle;)V

    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
