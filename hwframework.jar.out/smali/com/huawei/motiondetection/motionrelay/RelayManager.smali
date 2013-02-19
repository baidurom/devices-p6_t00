.class public Lcom/huawei/motiondetection/motionrelay/RelayManager;
.super Ljava/lang/Object;
.source "RelayManager.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRListener:Lcom/huawei/motiondetection/motionrelay/RelayListener;

.field private mRelay:Lcom/huawei/motiondetection/motionrelay/IRelay;

.field private mRelayListener:Lcom/huawei/motiondetection/motionrelay/RelayListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/huawei/motiondetection/motionrelay/RelayManager;->mContext:Landroid/content/Context;

    .line 40
    iput-object v0, p0, Lcom/huawei/motiondetection/motionrelay/RelayManager;->mRelay:Lcom/huawei/motiondetection/motionrelay/IRelay;

    .line 44
    iput-object v0, p0, Lcom/huawei/motiondetection/motionrelay/RelayManager;->mRListener:Lcom/huawei/motiondetection/motionrelay/RelayListener;

    .line 138
    new-instance v0, Lcom/huawei/motiondetection/motionrelay/RelayManager$1;

    invoke-direct {v0, p0}, Lcom/huawei/motiondetection/motionrelay/RelayManager$1;-><init>(Lcom/huawei/motiondetection/motionrelay/RelayManager;)V

    iput-object v0, p0, Lcom/huawei/motiondetection/motionrelay/RelayManager;->mRelayListener:Lcom/huawei/motiondetection/motionrelay/RelayListener;

    .line 53
    iput-object p1, p0, Lcom/huawei/motiondetection/motionrelay/RelayManager;->mContext:Landroid/content/Context;

    .line 54
    new-instance v0, Lcom/huawei/motiondetection/motionrelay/RelayBroadcast;

    iget-object v1, p0, Lcom/huawei/motiondetection/motionrelay/RelayManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/huawei/motiondetection/motionrelay/RelayBroadcast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huawei/motiondetection/motionrelay/RelayManager;->mRelay:Lcom/huawei/motiondetection/motionrelay/IRelay;

    .line 55
    iget-object v0, p0, Lcom/huawei/motiondetection/motionrelay/RelayManager;->mRelay:Lcom/huawei/motiondetection/motionrelay/IRelay;

    iget-object v1, p0, Lcom/huawei/motiondetection/motionrelay/RelayManager;->mRelayListener:Lcom/huawei/motiondetection/motionrelay/RelayListener;

    invoke-interface {v0, v1}, Lcom/huawei/motiondetection/motionrelay/IRelay;->setRelayListener(Lcom/huawei/motiondetection/motionrelay/RelayListener;)V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/motiondetection/motionrelay/RelayManager;ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/huawei/motiondetection/motionrelay/RelayManager;->processRecoResult(ILjava/lang/Object;)V

    return-void
.end method

.method private processRecoResult(ILjava/lang/Object;)V
    .locals 3
    .parameter "relayType"
    .parameter "mrecoRes"

    .prologue
    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/huawei/motiondetection/motionrelay/RelayManager;->mRListener:Lcom/huawei/motiondetection/motionrelay/RelayListener;

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/huawei/motiondetection/motionrelay/RelayManager;->mRListener:Lcom/huawei/motiondetection/motionrelay/RelayListener;

    invoke-interface {v1, p1, p2}, Lcom/huawei/motiondetection/motionrelay/RelayListener;->notifyResult(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "RelayManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/motiondetection/MRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 94
    iget-object v0, p0, Lcom/huawei/motiondetection/motionrelay/RelayManager;->mRelay:Lcom/huawei/motiondetection/motionrelay/IRelay;

    invoke-interface {v0}, Lcom/huawei/motiondetection/motionrelay/IRelay;->destroy()V

    .line 95
    iput-object v1, p0, Lcom/huawei/motiondetection/motionrelay/RelayManager;->mRelay:Lcom/huawei/motiondetection/motionrelay/IRelay;

    .line 97
    iput-object v1, p0, Lcom/huawei/motiondetection/motionrelay/RelayManager;->mRelayListener:Lcom/huawei/motiondetection/motionrelay/RelayListener;

    .line 98
    iput-object v1, p0, Lcom/huawei/motiondetection/motionrelay/RelayManager;->mRListener:Lcom/huawei/motiondetection/motionrelay/RelayListener;

    .line 100
    iput-object v1, p0, Lcom/huawei/motiondetection/motionrelay/RelayManager;->mContext:Landroid/content/Context;

    .line 101
    return-void
.end method

.method public setRelayListener(Lcom/huawei/motiondetection/motionrelay/RelayListener;)V
    .locals 0
    .parameter "prListener"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/huawei/motiondetection/motionrelay/RelayManager;->mRListener:Lcom/huawei/motiondetection/motionrelay/RelayListener;

    .line 113
    return-void
.end method

.method public startMotionRecognition(I)V
    .locals 1
    .parameter "motionType"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/huawei/motiondetection/motionrelay/RelayManager;->mRelay:Lcom/huawei/motiondetection/motionrelay/IRelay;

    invoke-interface {v0, p1}, Lcom/huawei/motiondetection/motionrelay/IRelay;->startMotionReco(I)V

    .line 79
    return-void
.end method

.method public startMotionService()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/huawei/motiondetection/motionrelay/RelayManager;->mRelay:Lcom/huawei/motiondetection/motionrelay/IRelay;

    invoke-interface {v0}, Lcom/huawei/motiondetection/motionrelay/IRelay;->startMotionService()V

    .line 63
    return-void
.end method

.method public stopMotionRecognition(I)V
    .locals 1
    .parameter "motionType"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/huawei/motiondetection/motionrelay/RelayManager;->mRelay:Lcom/huawei/motiondetection/motionrelay/IRelay;

    invoke-interface {v0, p1}, Lcom/huawei/motiondetection/motionrelay/IRelay;->stopMotionReco(I)V

    .line 88
    return-void
.end method

.method public stopMotionService()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/huawei/motiondetection/motionrelay/RelayManager;->mRelay:Lcom/huawei/motiondetection/motionrelay/IRelay;

    invoke-interface {v0}, Lcom/huawei/motiondetection/motionrelay/IRelay;->stopMotionService()V

    .line 70
    return-void
.end method
