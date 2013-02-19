.class Lcom/android/server/HapticService$Vibration;
.super Ljava/lang/Object;
.source "HapticService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HapticService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Vibration"
.end annotation


# instance fields
.field private final mEffectIndex:I

.field private final mEffectbuffer:[B

.field private final mPattern:[J

.field private final mRepeat:I

.field private final mStartTime:J

.field private final mStrength:I

.field private final mTimeout:J

.field private final mToken:Landroid/os/IBinder;

.field private final mUid:I

.field final synthetic this$0:Lcom/android/server/HapticService;


# direct methods
.method constructor <init>(Lcom/android/server/HapticService;Landroid/os/IBinder;IJII)V
    .locals 11
    .parameter
    .parameter "token"
    .parameter "effectIndex"
    .parameter "millis"
    .parameter "repeat"
    .parameter "uid"

    .prologue
    .line 128
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p4

    move/from16 v7, p6

    move v8, p3

    move/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/android/server/HapticService$Vibration;-><init>(Lcom/android/server/HapticService;Landroid/os/IBinder;J[J[BIIII)V

    .line 129
    return-void
.end method

.method constructor <init>(Lcom/android/server/HapticService;Landroid/os/IBinder;JII)V
    .locals 11
    .parameter
    .parameter "token"
    .parameter "millis"
    .parameter "strength"
    .parameter "uid"

    .prologue
    .line 120
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/android/server/HapticService$Vibration;-><init>(Lcom/android/server/HapticService;Landroid/os/IBinder;J[J[BIIII)V

    .line 121
    return-void
.end method

.method private constructor <init>(Lcom/android/server/HapticService;Landroid/os/IBinder;J[J[BIIII)V
    .locals 2
    .parameter
    .parameter "token"
    .parameter "millis"
    .parameter "pattern"
    .parameter "effectbuffer"
    .parameter "repeat"
    .parameter "effectIndex"
    .parameter "strength"
    .parameter "uid"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/server/HapticService$Vibration;->this$0:Lcom/android/server/HapticService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p2, p0, Lcom/android/server/HapticService$Vibration;->mToken:Landroid/os/IBinder;

    .line 138
    iput-wide p3, p0, Lcom/android/server/HapticService$Vibration;->mTimeout:J

    .line 139
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/HapticService$Vibration;->mStartTime:J

    .line 140
    iput-object p5, p0, Lcom/android/server/HapticService$Vibration;->mPattern:[J

    .line 141
    iput-object p6, p0, Lcom/android/server/HapticService$Vibration;->mEffectbuffer:[B

    .line 142
    iput p7, p0, Lcom/android/server/HapticService$Vibration;->mRepeat:I

    .line 143
    iput p8, p0, Lcom/android/server/HapticService$Vibration;->mEffectIndex:I

    .line 144
    iput p9, p0, Lcom/android/server/HapticService$Vibration;->mStrength:I

    .line 145
    iput p10, p0, Lcom/android/server/HapticService$Vibration;->mUid:I

    .line 146
    return-void
.end method

.method constructor <init>(Lcom/android/server/HapticService;Landroid/os/IBinder;[BIJII)V
    .locals 11
    .parameter
    .parameter "token"
    .parameter "effectbuffer"
    .parameter "bufferSize"
    .parameter "millis"
    .parameter "repeat"
    .parameter "uid"

    .prologue
    .line 132
    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide/from16 v3, p5

    move-object v6, p3

    move/from16 v7, p7

    move v8, p4

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/android/server/HapticService$Vibration;-><init>(Lcom/android/server/HapticService;Landroid/os/IBinder;J[J[BIIII)V

    .line 133
    return-void
.end method

.method constructor <init>(Lcom/android/server/HapticService;Landroid/os/IBinder;[JIII)V
    .locals 11
    .parameter
    .parameter "token"
    .parameter "pattern"
    .parameter "repeat"
    .parameter "strength"
    .parameter "uid"

    .prologue
    .line 124
    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move v7, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/android/server/HapticService$Vibration;-><init>(Lcom/android/server/HapticService;Landroid/os/IBinder;J[J[BIIII)V

    .line 125
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/HapticService$Vibration;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/server/HapticService$Vibration;->mPattern:[J

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/HapticService$Vibration;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget v0, p0, Lcom/android/server/HapticService$Vibration;->mUid:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/HapticService$Vibration;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/server/HapticService$Vibration;->mEffectbuffer:[B

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/HapticService$Vibration;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget v0, p0, Lcom/android/server/HapticService$Vibration;->mRepeat:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/HapticService$Vibration;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/android/server/HapticService$Vibration;->mTimeout:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/android/server/HapticService$Vibration;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget v0, p0, Lcom/android/server/HapticService$Vibration;->mEffectIndex:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/HapticService$Vibration;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget v0, p0, Lcom/android/server/HapticService$Vibration;->mStrength:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/HapticService$Vibration;)Landroid/os/IBinder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/server/HapticService$Vibration;->mToken:Landroid/os/IBinder;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/server/HapticService$Vibration;->this$0:Lcom/android/server/HapticService;

    #getter for: Lcom/android/server/HapticService;->mVibrations:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/android/server/HapticService;->access$000(Lcom/android/server/HapticService;)Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/android/server/HapticService$Vibration;->this$0:Lcom/android/server/HapticService;

    #getter for: Lcom/android/server/HapticService;->mVibrations:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/android/server/HapticService;->access$000(Lcom/android/server/HapticService;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 151
    iget-object v0, p0, Lcom/android/server/HapticService$Vibration;->this$0:Lcom/android/server/HapticService;

    #getter for: Lcom/android/server/HapticService;->mCurrentVibration:Lcom/android/server/HapticService$Vibration;
    invoke-static {v0}, Lcom/android/server/HapticService;->access$100(Lcom/android/server/HapticService;)Lcom/android/server/HapticService$Vibration;

    move-result-object v0

    if-ne p0, v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/server/HapticService$Vibration;->this$0:Lcom/android/server/HapticService;

    #calls: Lcom/android/server/HapticService;->doCancelVibrateWithNextLocked()V
    invoke-static {v0}, Lcom/android/server/HapticService;->access$200(Lcom/android/server/HapticService;)V

    .line 153
    iget-object v0, p0, Lcom/android/server/HapticService$Vibration;->this$0:Lcom/android/server/HapticService;

    #calls: Lcom/android/server/HapticService;->startNextVibrationLocked()V
    invoke-static {v0}, Lcom/android/server/HapticService;->access$300(Lcom/android/server/HapticService;)V

    .line 155
    :cond_0
    monitor-exit v1

    .line 156
    return-void

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasLongerTimeout(J)Z
    .locals 5
    .parameter "millis"

    .prologue
    const/4 v0, 0x0

    .line 159
    iget-wide v1, p0, Lcom/android/server/HapticService$Vibration;->mTimeout:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 170
    :cond_0
    :goto_0
    return v0

    .line 164
    :cond_1
    iget-wide v1, p0, Lcom/android/server/HapticService$Vibration;->mStartTime:J

    iget-wide v3, p0, Lcom/android/server/HapticService$Vibration;->mTimeout:J

    add-long/2addr v1, v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    add-long/2addr v3, p1

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 170
    const/4 v0, 0x1

    goto :goto_0
.end method
