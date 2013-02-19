.class public Lcom/huawei/motiondetection/motionrelay/RelayBroadcast;
.super Ljava/lang/Object;
.source "RelayBroadcast.java"

# interfaces
.implements Lcom/huawei/motiondetection/motionrelay/IRelay;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/motiondetection/motionrelay/RelayBroadcast$RelayHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RelayBroadcast"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRHandler:Lcom/huawei/motiondetection/motionrelay/RelayBroadcast$RelayHandler;

.field private mRelayListener:Lcom/huawei/motiondetection/motionrelay/RelayListener;

.field private mRelayReceiver:Lcom/huawei/motiondetection/motionrelay/RelayReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v0, p0, Lcom/huawei/motiondetection/motionrelay/RelayBroadcast;->mContext:Landroid/content/Context;

    .line 50
    iput-object v0, p0, Lcom/huawei/motiondetection/motionrelay/RelayBroadcast;->mRelayListener:Lcom/huawei/motiondetection/motionrelay/RelayListener;

    .line 53
    iput-object v0, p0, Lcom/huawei/motiondetection/motionrelay/RelayBroadcast;->mRHandler:Lcom/huawei/motiondetection/motionrelay/RelayBroadcast$RelayHandler;

    .line 59
    iput-object v0, p0, Lcom/huawei/motiondetection/motionrelay/RelayBroadcast;->mRelayReceiver:Lcom/huawei/motiondetection/motionrelay/RelayReceiver;

    .line 67
    iput-object p1, p0, Lcom/huawei/motiondetection/motionrelay/RelayBroadcast;->mContext:Landroid/content/Context;

    .line 68
    new-instance v0, Lcom/huawei/motiondetection/motionrelay/RelayBroadcast$RelayHandler;

    invoke-direct {v0, p0}, Lcom/huawei/motiondetection/motionrelay/RelayBroadcast$RelayHandler;-><init>(Lcom/huawei/motiondetection/motionrelay/RelayBroadcast;)V

    iput-object v0, p0, Lcom/huawei/motiondetection/motionrelay/RelayBroadcast;->mRHandler:Lcom/huawei/motiondetection/motionrelay/RelayBroadcast$RelayHandler;

    .line 69
    new-instance v0, Lcom/huawei/motiondetection/motionrelay/RelayReceiver;

    iget-object v1, p0, Lcom/huawei/motiondetection/motionrelay/RelayBroadcast;->mRHandler:Lcom/huawei/motiondetection/motionrelay/RelayBroadcast$RelayHandler;

    invoke-direct {v0, v1}, Lcom/huawei/motiondetection/motionrelay/RelayReceiver;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/huawei/motiondetection/motionrelay/RelayBroadcast;->mRelayReceiver:Lcom/huawei/motiondetection/motionrelay/RelayReceiver;

    .line 71
    invoke-direct {p0}, Lcom/huawei/motiondetection/motionrelay/RelayBroadcast;->initReceiver()V

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/motiondetection/motionrelay/RelayBroadcast;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/huawei/motiondetection/motionrelay/RelayBroadcast;->processMotionRecoResult(Landroid/content/Intent;)V

    return-void
.end method

.method private doModtionReco(II)V
    .locals 4
    .parameter "motionType"
    .parameter "operateType"

    .prologue
    .line 165
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.huawei.action_MOTIONOPERATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "app_motion_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 167
    const-string v1, "app_operation_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 168
    const-string v1, "app_process_name"

    iget-object v2, p0, Lcom/huawei/motiondetection/motionrelay/RelayBroadcast;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const-string v1, "app_pkg_name"

    iget-object v2, p0, Lcom/huawei/motiondetection/motionrelay/RelayBroadcast;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string v1, "app_class_name"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    const-string v1, "RelayBroadcast"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doModtionReco sendBroadcast motionType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  operateType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/motiondetection/MRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v1, p0, Lcom/huawei/motiondetection/motionrelay/RelayBroadcast;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 183
    return-void
.end method

.method private initReceiver()V
    .locals 4

    .prologue
    .line 150
    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.huawei.action_MOTIONRECOGNITION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 151
    .local v1, filter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/huawei/motiondetection/motionrelay/RelayBroadcast;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/huawei/motiondetection/motionrelay/RelayBroadcast;->mRelayReceiver:Lcom/huawei/motiondetection/motionrelay/RelayReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .end local v1           #filter:Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "RelayBroadcast"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/motiondetection/MRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processMotionRecoResult(Landroid/content/Intent;)V
    .locals 3
    .parameter "mReco"

    .prologue
    .line 193
    :try_start_0
    iget-object v1, p0, Lcom/huawei/motiondetection/motionrelay/RelayBroadcast;->mRelayListener:Lcom/huawei/motiondetection/motionrelay/RelayListener;

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/huawei/motiondetection/motionrelay/RelayBroadcast;->mRelayListener:Lcom/huawei/motiondetection/motionrelay/RelayListener;

    const/4 v2, 0x1

    invoke-interface {v1, v2, p1}, Lcom/huawei/motiondetection/motionrelay/RelayListener;->notifyResult(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "RelayBroadcast"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/motiondetection/MRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 79
    iget-object v0, p0, Lcom/huawei/motiondetection/motionrelay/RelayBroadcast;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/huawei/motiondetection/motionrelay/RelayBroadcast;->mRelayReceiver:Lcom/huawei/motiondetection/motionrelay/RelayReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 81
    iget-object v0, p0, Lcom/huawei/motiondetection/motionrelay/RelayBroadcast;->mRelayReceiver:Lcom/huawei/motiondetection/motionrelay/RelayReceiver;

    invoke-virtual {v0}, Lcom/huawei/motiondetection/motionrelay/RelayReceiver;->destroy()V

    .line 83
    iput-object v2, p0, Lcom/huawei/motiondetection/motionrelay/RelayBroadcast;->mRelayReceiver:Lcom/huawei/motiondetection/motionrelay/RelayReceiver;

    .line 86
    iput-object v2, p0, Lcom/huawei/motiondetection/motionrelay/RelayBroadcast;->mRelayListener:Lcom/huawei/motiondetection/motionrelay/RelayListener;

    .line 88
    iput-object v2, p0, Lcom/huawei/motiondetection/motionrelay/RelayBroadcast;->mRHandler:Lcom/huawei/motiondetection/motionrelay/RelayBroadcast$RelayHandler;

    .line 89
    iput-object v2, p0, Lcom/huawei/motiondetection/motionrelay/RelayBroadcast;->mContext:Landroid/content/Context;

    .line 91
    return-void
.end method

.method public setRelayListener(Lcom/huawei/motiondetection/motionrelay/RelayListener;)V
    .locals 0
    .parameter "prListener"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/huawei/motiondetection/motionrelay/RelayBroadcast;->mRelayListener:Lcom/huawei/motiondetection/motionrelay/RelayListener;

    .line 142
    return-void
.end method

.method public startMotionReco(I)V
    .locals 1
    .parameter "motionType"

    .prologue
    .line 121
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/huawei/motiondetection/motionrelay/RelayBroadcast;->doModtionReco(II)V

    .line 122
    return-void
.end method

.method public startMotionService()V
    .locals 3

    .prologue
    .line 98
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.huawei.action_MOTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, intent:Landroid/content/Intent;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 100
    const-string v1, "motion_service_start_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 102
    iget-object v1, p0, Lcom/huawei/motiondetection/motionrelay/RelayBroadcast;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 103
    return-void
.end method

.method public stopMotionReco(I)V
    .locals 1
    .parameter "motionType"

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/huawei/motiondetection/motionrelay/RelayBroadcast;->doModtionReco(II)V

    .line 132
    return-void
.end method

.method public stopMotionService()V
    .locals 2

    .prologue
    .line 110
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.huawei.action_MOTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/huawei/motiondetection/motionrelay/RelayBroadcast;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 112
    return-void
.end method
