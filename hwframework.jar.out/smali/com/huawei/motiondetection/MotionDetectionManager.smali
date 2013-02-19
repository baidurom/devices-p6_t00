.class public Lcom/huawei/motiondetection/MotionDetectionManager;
.super Ljava/lang/Object;
.source "MotionDetectionManager.java"


# static fields
.field private static final SERVICE_JUDGE_DELAY:I = 0x64

.field private static final TAG:Ljava/lang/String; = "MotionDetectionManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMDListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/motiondetection/MotionDetectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMotionAppsRegList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRelayListener:Lcom/huawei/motiondetection/motionrelay/RelayListener;

.field private mRelayManager:Lcom/huawei/motiondetection/motionrelay/RelayManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mContext:Landroid/content/Context;

    .line 54
    iput-object v0, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mRelayManager:Lcom/huawei/motiondetection/motionrelay/RelayManager;

    .line 56
    iput-object v0, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMDListenerList:Ljava/util/ArrayList;

    .line 62
    iput-object v0, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMotionAppsRegList:Ljava/util/ArrayList;

    .line 386
    new-instance v0, Lcom/huawei/motiondetection/MotionDetectionManager$1;

    invoke-direct {v0, p0}, Lcom/huawei/motiondetection/MotionDetectionManager$1;-><init>(Lcom/huawei/motiondetection/MotionDetectionManager;)V

    iput-object v0, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mRelayListener:Lcom/huawei/motiondetection/motionrelay/RelayListener;

    .line 73
    iput-object p1, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mContext:Landroid/content/Context;

    .line 75
    new-instance v0, Lcom/huawei/motiondetection/motionrelay/RelayManager;

    iget-object v1, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/huawei/motiondetection/motionrelay/RelayManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mRelayManager:Lcom/huawei/motiondetection/motionrelay/RelayManager;

    .line 76
    iget-object v0, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mRelayManager:Lcom/huawei/motiondetection/motionrelay/RelayManager;

    iget-object v1, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mRelayListener:Lcom/huawei/motiondetection/motionrelay/RelayListener;

    invoke-virtual {v0, v1}, Lcom/huawei/motiondetection/motionrelay/RelayManager;->setRelayListener(Lcom/huawei/motiondetection/motionrelay/RelayListener;)V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMDListenerList:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMotionAppsRegList:Ljava/util/ArrayList;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/motiondetection/MotionDetectionManager;ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/huawei/motiondetection/MotionDetectionManager;->processMotionRecoResult(ILjava/lang/Object;)V

    return-void
.end method

.method private getMotionsAppsByMotionReco(I)Ljava/util/ArrayList;
    .locals 3
    .parameter "mType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 348
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 350
    .local v1, maList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMotionAppsRegList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 351
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMotionAppsRegList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 352
    iget-object v2, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMotionAppsRegList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/huawei/motiondetection/MotionTypeApps;->getMotionTypeByMotionApps(I)I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 353
    iget-object v2, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMotionAppsRegList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    .end local v0           #i:I
    :cond_0
    :goto_1
    return-object v1

    .line 351
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 358
    .end local v0           #i:I
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private getRecoMotionResult(Landroid/content/Intent;)I
    .locals 2
    .parameter "intent"

    .prologue
    .line 380
    const-string v0, "motion_recognition_result"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getRecoMotionType(Landroid/content/Intent;)I
    .locals 2
    .parameter "intent"

    .prologue
    .line 370
    const-string v0, "motion_type_recognition"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getRecoResult(III)Lcom/huawei/motiondetection/MotionRecoResult;
    .locals 5
    .parameter "recoMotion"
    .parameter "motionApps"
    .parameter "pRes"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 304
    move v1, p2

    .line 305
    .local v1, motion:I
    const/4 v2, 0x0

    .line 306
    .local v2, result:I
    const/4 v0, 0x0

    .line 308
    .local v0, direction:I
    if-nez p3, :cond_1

    .line 309
    const/4 v2, 0x0

    .line 332
    :cond_0
    :goto_0
    new-instance v3, Lcom/huawei/motiondetection/MotionRecoResult;

    invoke-direct {v3, v1, v2, v0}, Lcom/huawei/motiondetection/MotionRecoResult;-><init>(III)V

    return-object v3

    .line 311
    :cond_1
    const/4 v2, 0x1

    .line 312
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 314
    :sswitch_0
    if-ne p3, v3, :cond_2

    .line 315
    const/4 v0, 0x4

    goto :goto_0

    .line 316
    :cond_2
    if-ne p3, v4, :cond_0

    .line 317
    const/4 v0, 0x3

    goto :goto_0

    .line 321
    :sswitch_1
    if-ne p3, v3, :cond_3

    .line 322
    const/4 v0, 0x1

    goto :goto_0

    .line 323
    :cond_3
    if-ne p3, v4, :cond_0

    .line 324
    const/4 v0, 0x2

    goto :goto_0

    .line 312
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method private notifyMotionRecoResult(Landroid/content/Intent;)V
    .locals 10
    .parameter "recoIntent"

    .prologue
    .line 272
    invoke-direct {p0, p1}, Lcom/huawei/motiondetection/MotionDetectionManager;->getRecoMotionType(Landroid/content/Intent;)I

    move-result v5

    .line 274
    .local v5, recoMotion:I
    invoke-direct {p0, p1}, Lcom/huawei/motiondetection/MotionDetectionManager;->getRecoMotionResult(Landroid/content/Intent;)I

    move-result v4

    .line 276
    .local v4, rRes:I
    :try_start_0
    invoke-direct {p0, v5}, Lcom/huawei/motiondetection/MotionDetectionManager;->getMotionsAppsByMotionReco(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 278
    .local v3, maTypeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v7, "MotionDetectionManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "notifyMotionRecoResult recoMotion: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  recoRes: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/motiondetection/MRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v7, "MotionDetectionManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "notifyMotionRecoResult mMPListenerList size: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMDListenerList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/motiondetection/MRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const/4 v6, 0x0

    .line 282
    .local v6, tmpMRes:Lcom/huawei/motiondetection/MotionRecoResult;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 283
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v7, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMDListenerList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_0

    .line 284
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v5, v7, v4}, Lcom/huawei/motiondetection/MotionDetectionManager;->getRecoResult(III)Lcom/huawei/motiondetection/MotionRecoResult;

    move-result-object v6

    .line 285
    iget-object v7, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMDListenerList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/huawei/motiondetection/MotionDetectionListener;

    invoke-interface {v7, v6}, Lcom/huawei/motiondetection/MotionDetectionListener;->notifyMotionRecoResult(Lcom/huawei/motiondetection/MotionRecoResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 282
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 288
    .end local v1           #i:I
    .end local v2           #j:I
    .end local v3           #maTypeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v6           #tmpMRes:Lcom/huawei/motiondetection/MotionRecoResult;
    :catch_0
    move-exception v0

    .line 289
    .local v0, ex:Ljava/lang/Exception;
    const-string v7, "MotionDetectionManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/motiondetection/MRLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method private processMotionRecoResult(ILjava/lang/Object;)V
    .locals 2
    .parameter "relayType"
    .parameter "mrecoRes"

    .prologue
    .line 248
    const-string v0, "MotionDetectionManager"

    const-string v1, "processReceiverMsg ... "

    invoke-static {v0, v1}, Lcom/huawei/motiondetection/MRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 250
    check-cast p2, Landroid/content/Intent;

    .end local p2
    invoke-direct {p0, p2}, Lcom/huawei/motiondetection/MotionDetectionManager;->notifyMotionRecoResult(Landroid/content/Intent;)V

    .line 252
    :cond_0
    return-void
.end method

.method private stopAllMotionReco()V
    .locals 2

    .prologue
    .line 258
    iget-object v1, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMotionAppsRegList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMotionAppsRegList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 259
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMotionAppsRegList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 260
    iget-object v1, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMotionAppsRegList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/huawei/motiondetection/MotionDetectionManager;->stopMotionAppsReco(I)Z

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    .end local v0           #i:I
    :cond_0
    return-void
.end method


# virtual methods
.method public addMotionListener(Lcom/huawei/motiondetection/MotionDetectionListener;)V
    .locals 1
    .parameter "mdListener"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMDListenerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMDListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMDListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 203
    invoke-direct {p0}, Lcom/huawei/motiondetection/MotionDetectionManager;->stopAllMotionReco()V

    .line 204
    iget-object v0, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMotionAppsRegList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 205
    iput-object v1, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMotionAppsRegList:Ljava/util/ArrayList;

    .line 207
    iget-object v0, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMDListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 208
    iput-object v1, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMDListenerList:Ljava/util/ArrayList;

    .line 210
    iget-object v0, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mRelayManager:Lcom/huawei/motiondetection/motionrelay/RelayManager;

    invoke-virtual {v0}, Lcom/huawei/motiondetection/motionrelay/RelayManager;->destroy()V

    .line 211
    iput-object v1, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mRelayManager:Lcom/huawei/motiondetection/motionrelay/RelayManager;

    .line 213
    iput-object v1, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mContext:Landroid/content/Context;

    .line 214
    return-void
.end method

.method public removeMotionListener(Lcom/huawei/motiondetection/MotionDetectionListener;)V
    .locals 1
    .parameter "mdListener"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMDListenerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMDListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMDListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 236
    :cond_0
    return-void
.end method

.method public startMotionAppsReco(I)Z
    .locals 7
    .parameter "motionApps"

    .prologue
    const/4 v4, 0x1

    .line 135
    const/4 v0, 0x0

    .line 137
    .local v0, motionEnabled:Z
    iget-object v5, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMotionAppsRegList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 138
    const-string v4, "MotionDetectionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startMotionAppsReco repeat motionApps "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/motiondetection/MRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 162
    .end local v0           #motionEnabled:Z
    .local v1, motionEnabled:I
    :goto_0
    return v1

    .line 142
    .end local v1           #motionEnabled:I
    .restart local v0       #motionEnabled:Z
    :cond_0
    iget-object v5, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/huawei/motiondetection/MRUtils;->getMotionEnableState(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v4, :cond_2

    .line 144
    iget-object v5, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mContext:Landroid/content/Context;

    const-string v6, "com.huawei.motionservice"

    invoke-static {v5, v6}, Lcom/huawei/motiondetection/MRUtils;->isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 146
    invoke-virtual {p0}, Lcom/huawei/motiondetection/MotionDetectionManager;->startMotionService()V

    .line 148
    const-wide/16 v5, 0x64

    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    .line 151
    :cond_1
    invoke-static {p1}, Lcom/huawei/motiondetection/MotionTypeApps;->getMotionKeyByMotionApps(I)Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, motiontemkey:Ljava/lang/String;
    iget-object v5, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mContext:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/huawei/motiondetection/MRUtils;->getMotionEnableState(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-ne v5, v4, :cond_3

    move v0, v4

    .line 153
    :goto_1
    const-string v4, "MotionDetectionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startMotionAppsReco motionApps: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/motiondetection/MRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    if-eqz v0, :cond_2

    .line 155
    invoke-static {p1}, Lcom/huawei/motiondetection/MotionTypeApps;->getMotionTypeByMotionApps(I)I

    move-result v2

    .line 156
    .local v2, motionReg:I
    const-string v4, "MotionDetectionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startMotionAppsReco motionReg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/motiondetection/MRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v4, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mRelayManager:Lcom/huawei/motiondetection/motionrelay/RelayManager;

    invoke-virtual {v4, v2}, Lcom/huawei/motiondetection/motionrelay/RelayManager;->startMotionRecognition(I)V

    .line 158
    iget-object v4, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMotionAppsRegList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v2           #motionReg:I
    .end local v3           #motiontemkey:Ljava/lang/String;
    :cond_2
    move v1, v0

    .line 162
    .restart local v1       #motionEnabled:I
    goto :goto_0

    .line 152
    .end local v1           #motionEnabled:I
    .restart local v3       #motiontemkey:Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public startMotionRecoTutorial(I)V
    .locals 3
    .parameter "motionApps"

    .prologue
    .line 106
    const-string v0, "MotionDetectionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMotionRecoTutorial motionApps: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/motiondetection/MRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mRelayManager:Lcom/huawei/motiondetection/motionrelay/RelayManager;

    invoke-virtual {v0, p1}, Lcom/huawei/motiondetection/motionrelay/RelayManager;->startMotionRecognition(I)V

    .line 108
    return-void
.end method

.method public startMotionService()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mRelayManager:Lcom/huawei/motiondetection/motionrelay/RelayManager;

    invoke-virtual {v0}, Lcom/huawei/motiondetection/motionrelay/RelayManager;->startMotionService()V

    .line 87
    return-void
.end method

.method public stopMotionAppsReco(I)Z
    .locals 6
    .parameter "motionApps"

    .prologue
    .line 177
    const/4 v0, 0x0

    .line 179
    .local v0, motionEnabled:Z
    iget-object v3, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMotionAppsRegList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 180
    const-string v3, "MotionDetectionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopMotionAppsReco not recognition motionApps "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/motiondetection/MRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 195
    .end local v0           #motionEnabled:Z
    .local v1, motionEnabled:I
    :goto_0
    return v1

    .line 184
    .end local v1           #motionEnabled:I
    .restart local v0       #motionEnabled:Z
    :cond_0
    const-string v3, "MotionDetectionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopMotionAppsReco motionApps: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/motiondetection/MRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-static {p1}, Lcom/huawei/motiondetection/MotionTypeApps;->getMotionTypeByMotionApps(I)I

    move-result v2

    .line 187
    .local v2, motionReg:I
    const-string v3, "MotionDetectionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopMotionAppsReco motionReg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/huawei/motiondetection/MRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v3, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mRelayManager:Lcom/huawei/motiondetection/motionrelay/RelayManager;

    invoke-virtual {v3, v2}, Lcom/huawei/motiondetection/motionrelay/RelayManager;->stopMotionRecognition(I)V

    .line 191
    iget-object v3, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mMotionAppsRegList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 193
    const/4 v0, 0x1

    move v1, v0

    .line 195
    .restart local v1       #motionEnabled:I
    goto :goto_0
.end method

.method public stopMotionRecoTutorial(I)V
    .locals 3
    .parameter "motionApps"

    .prologue
    .line 120
    const-string v0, "MotionDetectionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopMotionRecoTutorial motionApps: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/motiondetection/MRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mRelayManager:Lcom/huawei/motiondetection/motionrelay/RelayManager;

    invoke-virtual {v0, p1}, Lcom/huawei/motiondetection/motionrelay/RelayManager;->stopMotionRecognition(I)V

    .line 122
    return-void
.end method

.method public stopMotionService()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/huawei/motiondetection/MotionDetectionManager;->mRelayManager:Lcom/huawei/motiondetection/motionrelay/RelayManager;

    invoke-virtual {v0}, Lcom/huawei/motiondetection/motionrelay/RelayManager;->stopMotionService()V

    .line 94
    return-void
.end method
