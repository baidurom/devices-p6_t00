.class Lcom/huawei/motiondetection/motionrelay/RelayBroadcast$RelayHandler;
.super Landroid/os/Handler;
.source "RelayBroadcast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/motiondetection/motionrelay/RelayBroadcast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RelayHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/motiondetection/motionrelay/RelayBroadcast;


# direct methods
.method constructor <init>(Lcom/huawei/motiondetection/motionrelay/RelayBroadcast;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/huawei/motiondetection/motionrelay/RelayBroadcast$RelayHandler;->this$0:Lcom/huawei/motiondetection/motionrelay/RelayBroadcast;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 219
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 226
    :goto_0
    return-void

    .line 221
    :pswitch_0
    iget-object v1, p0, Lcom/huawei/motiondetection/motionrelay/RelayBroadcast$RelayHandler;->this$0:Lcom/huawei/motiondetection/motionrelay/RelayBroadcast;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    #calls: Lcom/huawei/motiondetection/motionrelay/RelayBroadcast;->processMotionRecoResult(Landroid/content/Intent;)V
    invoke-static {v1, v0}, Lcom/huawei/motiondetection/motionrelay/RelayBroadcast;->access$000(Lcom/huawei/motiondetection/motionrelay/RelayBroadcast;Landroid/content/Intent;)V

    goto :goto_0

    .line 219
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
