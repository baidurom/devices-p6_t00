.class Lcom/huawei/motiondetection/motionrelay/RelayReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RelayReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RelayReceiver"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mMsg:Landroid/os/Message;


# direct methods
.method protected constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .parameter "handler"

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/huawei/motiondetection/motionrelay/RelayReceiver;->mHandler:Landroid/os/Handler;

    .line 47
    iput-object v0, p0, Lcom/huawei/motiondetection/motionrelay/RelayReceiver;->mMsg:Landroid/os/Message;

    .line 55
    iput-object p1, p0, Lcom/huawei/motiondetection/motionrelay/RelayReceiver;->mHandler:Landroid/os/Handler;

    .line 56
    return-void
.end method


# virtual methods
.method protected destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/huawei/motiondetection/motionrelay/RelayReceiver;->mHandler:Landroid/os/Handler;

    .line 63
    iput-object v0, p0, Lcom/huawei/motiondetection/motionrelay/RelayReceiver;->mMsg:Landroid/os/Message;

    .line 64
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 76
    const-string v1, "RelayReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive intent.getAction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/motiondetection/MRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/motiondetection/motionrelay/RelayReceiver;->mMsg:Landroid/os/Message;

    .line 80
    iget-object v1, p0, Lcom/huawei/motiondetection/motionrelay/RelayReceiver;->mMsg:Landroid/os/Message;

    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 81
    iget-object v1, p0, Lcom/huawei/motiondetection/motionrelay/RelayReceiver;->mMsg:Landroid/os/Message;

    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 83
    iget-object v1, p0, Lcom/huawei/motiondetection/motionrelay/RelayReceiver;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/huawei/motiondetection/motionrelay/RelayReceiver;->mMsg:Landroid/os/Message;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "RelayReceiver"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/motiondetection/MRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
