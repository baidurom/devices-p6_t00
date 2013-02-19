.class final Lcom/android/server/AlarmManagerService$FilterStats;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FilterStats"
.end annotation


# instance fields
.field aggregateTime:J

.field count:I

.field mAdjust:I

.field mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

.field mIntentTimeOutHistory:Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;

.field mRecordRTCTime:J

.field final mTarget:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field nesting:I

.field numWakeup:I

.field startTime:J


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService$BroadcastStats;Landroid/util/Pair;)V
    .locals 1
    .parameter "broadcastStats"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/AlarmManagerService$BroadcastStats;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 249
    .local p2, target:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Landroid/content/ComponentName;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 251
    iput-object p2, p0, Lcom/android/server/AlarmManagerService$FilterStats;->mTarget:Landroid/util/Pair;

    .line 252
    new-instance v0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;

    invoke-direct {v0}, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$FilterStats;->mIntentTimeOutHistory:Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentTimeOutHistory;

    .line 253
    return-void
.end method
