.class Lcom/android/server/power/PowerManagerService$WakeLockDetector;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WakeLockDetector"
.end annotation


# static fields
.field private static final ACQUIRED_TIME_SUM:J = 0xdbba0L

.field private static final DEBUG_WLDTOR:Z = true

.field private static final HISTORY_CAPACITY:I = 0x60

.field private static final RATED_TIME_OUT:J = 0x493e0L


# instance fields
.field private PidFilters:[I

.field private TagFilters:[Ljava/lang/String;

.field private mCurrHistoryIndex:I

.field private mGType:Lcom/android/server/power/PowerManagerService$GenerateType;

.field private mHType:Lcom/android/server/power/PowerManagerService$HandleType;

.field private mHistoryWkLocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/PowerManagerService$WakeLock;",
            ">;"
        }
    .end annotation
.end field

.field private mInSchedule:Z

.field private mTargetWkLocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/PowerManagerService$WakeLock;",
            ">;"
        }
    .end annotation
.end field

.field private mTimer:Ljava/util/Timer;

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3088
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3095
    sget-object v0, Lcom/android/server/power/PowerManagerService$GenerateType;->WLDTOR_GT_HISTORY:Lcom/android/server/power/PowerManagerService$GenerateType;

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->mGType:Lcom/android/server/power/PowerManagerService$GenerateType;

    .line 3096
    sget-object v0, Lcom/android/server/power/PowerManagerService$HandleType;->WLDTOR_HT_TRANSFER:Lcom/android/server/power/PowerManagerService$HandleType;

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->mHType:Lcom/android/server/power/PowerManagerService$HandleType;

    .line 3099
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "AudioOut"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "WifiStateMachine"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "SystemUpdateService"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->TagFilters:[Ljava/lang/String;

    .line 3100
    iput-object v4, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->PidFilters:[I

    .line 3103
    iput-object v4, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->mTimer:Ljava/util/Timer;

    .line 3104
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->mInSchedule:Z

    .line 3105
    iput v3, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->mCurrHistoryIndex:I

    .line 3106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->mTargetWkLocks:Ljava/util/ArrayList;

    .line 3107
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x60

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->mHistoryWkLocks:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3088
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$WakeLockDetector;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/power/PowerManagerService$WakeLockDetector;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 3088
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->generateTarget()I

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/android/server/power/PowerManagerService$WakeLockDetector;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3088
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->handleTarget()V

    return-void
.end method

.method private add(Lcom/android/server/power/PowerManagerService$WakeLock;)I
    .locals 3
    .parameter "wk"

    .prologue
    .line 3289
    iget v1, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->mCurrHistoryIndex:I

    rem-int/lit8 v1, v1, 0x60

    iput v1, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->mCurrHistoryIndex:I

    .line 3290
    iget v1, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->mCurrHistoryIndex:I

    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->validHistoryIndex(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTimeStamp:J

    .line 3292
    const-wide/16 v1, 0x0

    iput-wide v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTimeSum:J

    .line 3293
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->mHistoryWkLocks:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->mCurrHistoryIndex:I

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add history["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->mCurrHistoryIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3295
    .local v0, log:Ljava/lang/String;
    const-string v1, "info"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->dump(Lcom/android/server/power/PowerManagerService$WakeLock;Ljava/lang/String;Ljava/lang/String;)V

    .line 3296
    iget v1, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->mCurrHistoryIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->mCurrHistoryIndex:I

    .line 3298
    .end local v0           #log:Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private dump(Lcom/android/server/power/PowerManagerService$WakeLock;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "wk"
    .parameter "prex"
    .parameter "level"

    .prologue
    .line 3410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " wakeLock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "flags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", tag=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", timeStamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTimeStamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", timeSum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTimeSum:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3418
    .local v0, log:Ljava/lang/String;
    const-string v1, "debug"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3419
    const-string v1, "PowerManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3422
    :cond_0
    const-string v1, "info"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3423
    const-string v1, "PowerManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3426
    :cond_1
    const-string v1, "error"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3427
    const-string v1, "PowerManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3430
    :cond_2
    return-void
.end method

.method private filterOut(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .locals 8
    .parameter "wk"

    .prologue
    const/4 v5, 0x1

    .line 3374
    iget v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    const/16 v7, 0x2710

    if-ge v6, v7, :cond_0

    .line 3375
    const-string v6, "Filtered by Uid"

    const-string v7, "info"

    invoke-direct {p0, p1, v6, v7}, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->dump(Lcom/android/server/power/PowerManagerService$WakeLock;Ljava/lang/String;Ljava/lang/String;)V

    .line 3397
    :goto_0
    return v5

    .line 3379
    :cond_0
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->PidFilters:[I

    if-eqz v6, :cond_2

    .line 3380
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->PidFilters:[I

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_2

    aget v2, v0, v1

    .line 3381
    .local v2, index:I
    iget v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    if-ne v6, v2, :cond_1

    .line 3382
    const-string v6, "Filtered by Pid"

    const-string v7, "info"

    invoke-direct {p0, p1, v6, v7}, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->dump(Lcom/android/server/power/PowerManagerService$WakeLock;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3380
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3388
    .end local v0           #arr$:[I
    .end local v1           #i$:I
    .end local v2           #index:I
    .end local v3           #len$:I
    :cond_2
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->TagFilters:[Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 3389
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->TagFilters:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_2
    if-ge v1, v3, :cond_4

    aget-object v4, v0, v1

    .line 3390
    .local v4, s:Ljava/lang/String;
    iget-object v6, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    .line 3391
    const-string v6, "Filtered by Tag"

    const-string v7, "info"

    invoke-direct {p0, p1, v6, v7}, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->dump(Lcom/android/server/power/PowerManagerService$WakeLock;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3389
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3397
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v4           #s:Ljava/lang/String;
    :cond_4
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private findHistory(Lcom/android/server/power/PowerManagerService$WakeLock;)I
    .locals 8
    .parameter "wk"

    .prologue
    .line 3319
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->mHistoryWkLocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 3320
    .local v6, count:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v6, :cond_2

    .line 3321
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->mHistoryWkLocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 3322
    .local v0, w:Lcom/android/server/power/PowerManagerService$WakeLock;
    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->validHistoryItem(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3320
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 3325
    :cond_1
    iget v1, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    iget v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    iget v5, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/power/PowerManagerService$WakeLock;->hasSameProperties(ILjava/lang/String;Landroid/os/WorkSource;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3329
    .end local v0           #w:Lcom/android/server/power/PowerManagerService$WakeLock;
    .end local v7           #i:I
    :goto_1
    return v7

    .restart local v7       #i:I
    :cond_2
    const/4 v7, -0x1

    goto :goto_1
.end method

.method private generateTarget()I
    .locals 6

    .prologue
    .line 3336
    sget-object v2, Lcom/android/server/power/PowerManagerService$GenerateType;->WLDTOR_GT_HISTORY:Lcom/android/server/power/PowerManagerService$GenerateType;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->mGType:Lcom/android/server/power/PowerManagerService$GenerateType;

    if-ne v2, v3, :cond_2

    .line 3337
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->mHistoryWkLocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 3339
    .local v1, w:Lcom/android/server/power/PowerManagerService$WakeLock;
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->validHistoryItem(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    iget-wide v4, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTimeStamp:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 3343
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->sumTime(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 3344
    iget-wide v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTimeSum:J

    const-wide/32 v4, 0xdbba0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 3345
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->mTargetWkLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3346
    const-string v2, "Add in target"

    const-string v3, "info"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->dump(Lcom/android/server/power/PowerManagerService$WakeLock;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3350
    .end local v1           #w:Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_1
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->mTargetWkLocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3358
    .end local v0           #i$:Ljava/util/Iterator;
    :goto_1
    return v2

    .line 3353
    :cond_2
    sget-object v2, Lcom/android/server/power/PowerManagerService$GenerateType;->WLDTOR_GT_ALL:Lcom/android/server/power/PowerManagerService$GenerateType;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->mGType:Lcom/android/server/power/PowerManagerService$GenerateType;

    if-ne v2, v3, :cond_3

    .line 3354
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->mTargetWkLocks:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$1500(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3355
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->mTargetWkLocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_1

    .line 3358
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private generateTarget(Lcom/android/server/power/PowerManagerService$WakeLock;)I
    .locals 4
    .parameter "wk"

    .prologue
    .line 3362
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->sumTime(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 3363
    iget-wide v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTimeSum:J

    const-wide/32 v2, 0xdbba0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 3364
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->mTargetWkLocks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3365
    const-string v0, "Add in target"

    const-string v1, "info"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->dump(Lcom/android/server/power/PowerManagerService$WakeLock;Ljava/lang/String;Ljava/lang/String;)V

    .line 3366
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->mHistoryWkLocks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3367
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->mTargetWkLocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3370
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleTarget()V
    .locals 2

    .prologue
    .line 3206
    sget-object v0, Lcom/android/server/power/PowerManagerService$6;->$SwitchMap$com$android$server$power$PowerManagerService$HandleType:[I

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->mHType:Lcom/android/server/power/PowerManagerService$HandleType;

    invoke-virtual {v1}, Lcom/android/server/power/PowerManagerService$HandleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 3214
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->transferTo()V

    .line 3217
    :goto_0
    return-void

    .line 3208
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->transferTo()V

    goto :goto_0

    .line 3211
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->releaseAll()V

    goto :goto_0

    .line 3206
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private history(Lcom/android/server/power/PowerManagerService$WakeLock;)I
    .locals 2
    .parameter "wk"

    .prologue
    .line 3269
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->history(Lcom/android/server/power/PowerManagerService$WakeLock;ZZ)I

    move-result v0

    return v0
.end method

.method private history(Lcom/android/server/power/PowerManagerService$WakeLock;ZZ)I
    .locals 2
    .parameter "wk"
    .parameter "bAdd"
    .parameter "bSum"

    .prologue
    .line 3273
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->findHistory(Lcom/android/server/power/PowerManagerService$WakeLock;)I

    move-result v0

    .line 3274
    .local v0, index:I
    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->validHistoryIndex(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3275
    invoke-direct {p0, v0, p3}, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->update(IZ)V

    .line 3281
    :cond_0
    :goto_0
    return v0

    .line 3277
    :cond_1
    if-eqz p2, :cond_0

    .line 3278
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->add(Lcom/android/server/power/PowerManagerService$WakeLock;)I

    move-result v0

    goto :goto_0
.end method

.method private releaseAll()V
    .locals 8

    .prologue
    .line 3221
    const/4 v4, 0x0

    .line 3222
    .local v4, wk:Lcom/android/server/power/PowerManagerService$WakeLock;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->mTargetWkLocks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3223
    .local v1, count:I
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_1

    .line 3224
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->mTargetWkLocks:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/server/power/PowerManagerService$WakeLock;

    move-object v4, v0

    .line 3225
    invoke-direct {p0, v4}, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->filterOut(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3226
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v6, v4, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/server/power/PowerManagerService;->releaseWakeLock(Landroid/os/IBinder;I)V

    .line 3227
    const-string v5, "Released at background"

    const-string v6, "info"

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->dump(Lcom/android/server/power/PowerManagerService$WakeLock;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3223
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 3230
    .end local v1           #count:I
    .end local v3           #i:I
    :catch_0
    move-exception v2

    .line 3231
    .local v2, e:Ljava/util/ConcurrentModificationException;
    const-string v5, "PowerManagerService"

    const-string v6, "WakeLockDetector ConcurrentModificationException"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3235
    .end local v2           #e:Ljava/util/ConcurrentModificationException;
    :cond_1
    :goto_1
    return-void

    .line 3232
    :catch_1
    move-exception v2

    .line 3233
    .local v2, e:Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method private sumTime(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 6
    .parameter "wk"

    .prologue
    .line 3313
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3314
    .local v0, curTime:J
    iget-wide v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTimeSum:J

    iget-wide v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTimeStamp:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTimeSum:J

    .line 3315
    iput-wide v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTimeStamp:J

    .line 3316
    return-void
.end method

.method private transferTo()V
    .locals 7

    .prologue
    .line 3241
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->mTargetWkLocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3266
    :goto_0
    return-void

    .line 3245
    :cond_0
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->mTargetWkLocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 3246
    .local v2, wk:Lcom/android/server/power/PowerManagerService$WakeLock;
    invoke-direct {p0, v2}, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->filterOut(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3249
    const/16 v3, 0x85

    iget v4, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iget v5, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    iget v6, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Landroid/util/LogPower;->spush(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 3250
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transfer to SmartPowerService wakeLock: flags=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", tag=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerPid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", timeStamp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mTimeStamp:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", timeSum="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mTimeSum:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3258
    .local v1, log:Ljava/lang/String;
    const-string v3, "PowerManagerService"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3260
    const/4 v3, 0x0

    iput v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    .line 3261
    const-string v3, ""

    iput-object v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    .line 3262
    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mTimeSum:J

    goto/16 :goto_1

    .line 3265
    .end local v1           #log:Ljava/lang/String;
    .end local v2           #wk:Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_2
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->mTargetWkLocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0
.end method

.method private update(IZ)V
    .locals 4
    .parameter "index"
    .parameter "bSum"

    .prologue
    .line 3302
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->mHistoryWkLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 3303
    .local v1, w:Lcom/android/server/power/PowerManagerService$WakeLock;
    if-eqz p2, :cond_0

    .line 3304
    invoke-direct {p0, v1}, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->sumTime(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 3308
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update history["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3309
    .local v0, log:Ljava/lang/String;
    const-string v2, "debug"

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->dump(Lcom/android/server/power/PowerManagerService$WakeLock;Ljava/lang/String;Ljava/lang/String;)V

    .line 3310
    return-void

    .line 3306
    .end local v0           #log:Ljava/lang/String;
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTimeStamp:J

    goto :goto_0
.end method

.method private validHistoryIndex(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 3401
    if-ltz p1, :cond_0

    const/16 v0, 0x60

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private validHistoryItem(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .locals 1
    .parameter "wk"

    .prologue
    .line 3405
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public notifyAcquire(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 0
    .parameter "wk"

    .prologue
    .line 3194
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->history(Lcom/android/server/power/PowerManagerService$WakeLock;)I

    .line 3195
    return-void
.end method

.method public notifyRelease(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 4
    .parameter "wk"

    .prologue
    .line 3198
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->history(Lcom/android/server/power/PowerManagerService$WakeLock;ZZ)I

    move-result v0

    .line 3199
    .local v0, index:I
    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->validHistoryIndex(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3200
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->mHistoryWkLocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTimeStamp:J

    .line 3202
    :cond_0
    return-void
.end method

.method public reStart()V
    .locals 0

    .prologue
    .line 3183
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->stop()V

    .line 3184
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->start()V

    .line 3185
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3188
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->mInSchedule:Z

    .line 3189
    iput v0, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->mCurrHistoryIndex:I

    .line 3190
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->mHistoryWkLocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3191
    return-void
.end method

.method public setGenerateType(Lcom/android/server/power/PowerManagerService$GenerateType;)V
    .locals 0
    .parameter "gType"

    .prologue
    .line 3116
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->mGType:Lcom/android/server/power/PowerManagerService$GenerateType;

    .line 3117
    return-void
.end method

.method public setHandleType(Lcom/android/server/power/PowerManagerService$HandleType;)V
    .locals 0
    .parameter "hType"

    .prologue
    .line 3125
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->mHType:Lcom/android/server/power/PowerManagerService$HandleType;

    .line 3126
    return-void
.end method

.method public start()V
    .locals 9

    .prologue
    .line 3129
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->mInSchedule:Z

    if-eqz v0, :cond_0

    .line 3168
    :goto_0
    return-void

    .line 3134
    :cond_0
    const-string v0, "PowerManagerService"

    const-string v1, "WakeLockDetector start"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3138
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->mHistoryWkLocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 3139
    .local v8, w:Lcom/android/server/power/PowerManagerService$WakeLock;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v8, Lcom/android/server/power/PowerManagerService$WakeLock;->mTimeStamp:J

    .line 3141
    iget-wide v0, v8, Lcom/android/server/power/PowerManagerService$WakeLock;->mTimeSum:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 3142
    const-wide/16 v0, 0x1

    iput-wide v0, v8, Lcom/android/server/power/PowerManagerService$WakeLock;->mTimeSum:J

    goto :goto_1

    .line 3146
    .end local v8           #w:Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_2
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->mTimer:Ljava/util/Timer;

    .line 3148
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/power/PowerManagerService$WakeLockDetector$1;

    invoke-direct {v1, p0}, Lcom/android/server/power/PowerManagerService$WakeLockDetector$1;-><init>(Lcom/android/server/power/PowerManagerService$WakeLockDetector;)V

    const-wide/32 v2, 0x493e0

    const-wide/32 v4, 0x493e0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 3162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->mInSchedule:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3163
    :catch_0
    move-exception v6

    .line 3164
    .local v6, e:Ljava/lang/IllegalStateException;
    const-string v0, "PowerManagerService"

    const-string v1, "WakeLockDetector IllegalStateException"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3165
    .end local v6           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v6

    .line 3166
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 3172
    const-string v0, "PowerManagerService"

    const-string v1, "WakeLockDetector stop"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3174
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 3175
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 3176
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 3177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->mTimer:Ljava/util/Timer;

    .line 3179
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->reset()V

    .line 3180
    return-void
.end method
