.class Lcom/huawei/android/hwpowermanager/BgPowerManagerService$2;
.super Landroid/os/Handler;
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
    .line 96
    iput-object p1, p0, Lcom/huawei/android/hwpowermanager/BgPowerManagerService$2;->this$0:Lcom/huawei/android/hwpowermanager/BgPowerManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 101
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 118
    :goto_0
    return-void

    .line 103
    :pswitch_0
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/BgPowerManagerService$2;->this$0:Lcom/huawei/android/hwpowermanager/BgPowerManagerService;

    #calls: Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->handleVlaueClear()V
    invoke-static {v0}, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->access$200(Lcom/huawei/android/hwpowermanager/BgPowerManagerService;)V

    .line 104
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/BgPowerManagerService$2;->this$0:Lcom/huawei/android/hwpowermanager/BgPowerManagerService;

    #calls: Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->handleScreenOn()V
    invoke-static {v0}, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->access$300(Lcom/huawei/android/hwpowermanager/BgPowerManagerService;)V

    goto :goto_0

    .line 107
    :pswitch_1
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/BgPowerManagerService$2;->this$0:Lcom/huawei/android/hwpowermanager/BgPowerManagerService;

    #calls: Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->handleScreenOff()V
    invoke-static {v0}, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->access$400(Lcom/huawei/android/hwpowermanager/BgPowerManagerService;)V

    goto :goto_0

    .line 110
    :pswitch_2
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/BgPowerManagerService$2;->this$0:Lcom/huawei/android/hwpowermanager/BgPowerManagerService;

    #calls: Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->handleBatteryChange()V
    invoke-static {v0}, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->access$500(Lcom/huawei/android/hwpowermanager/BgPowerManagerService;)V

    goto :goto_0

    .line 113
    :pswitch_3
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/BgPowerManagerService$2;->this$0:Lcom/huawei/android/hwpowermanager/BgPowerManagerService;

    #calls: Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->handleVlaueClear()V
    invoke-static {v0}, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->access$200(Lcom/huawei/android/hwpowermanager/BgPowerManagerService;)V

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
