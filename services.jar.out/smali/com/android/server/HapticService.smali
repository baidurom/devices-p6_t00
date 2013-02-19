.class public Lcom/android/server/HapticService;
.super Landroid/os/IVibratorService$Stub;
.source "HapticService.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/HapticService$VibrateThread;,
        Lcom/android/server/HapticService$Vibration;
    }
.end annotation


# static fields
.field public static final HAPTIC_EFFECT_INDEX_MAX:I = 0x7b

.field public static final HAPTIC_INTER_EFFECT_DELAY_10MS_MAX:I = 0x7f

.field public static final HAPTIC_PLAY_EFFECT_SEQUENCE_BUFFER_SIZE_MAX:I = 0x8

.field public static final HAPTIC_TIMED_EFFECT_DURATION_MS_MAX:I = 0x2710

.field public static final HAPTIC_TIMED_EFFECT_STRENGTH_MAX:I = 0x7f

.field private static final TAG:Ljava/lang/String; = "HapticService"

.field public static final VIBRATOR_COMING_CALL:I = 0x1

.field public static final VIBRATOR_COMING_CALL_1:I = 0xb

.field public static final VIBRATOR_COMING_CALL_2:I = 0xc

.field public static final VIBRATOR_COMING_CALL_3:I = 0xd

.field public static final VIBRATOR_COMING_CALL_4:I = 0xe

.field public static final VIBRATOR_COMING_CALL_Default:I = 0xa

.field public static final VIBRATOR_HAPTIC:I = 0x4

.field public static final VIBRATOR_HAPTIC_LONG:I = 0x5

.field public static final VIBRATOR_NOTIFICATION:I = 0x2

.field public static final VIBRATOR_NOTIFICATION_LONG:I = 0x3

.field private static mHaptic:Lcom/immersion/Haptic;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentVibration:Lcom/android/server/HapticService$Vibration;

.field private mH:Landroid/os/Handler;

.field private mIm:Landroid/hardware/input/InputManager;

.field private mInputDeviceListenerRegistered:Z

.field private final mInputDeviceVibrators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Vibrator;",
            ">;"
        }
    .end annotation
.end field

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field volatile mThread:Lcom/android/server/HapticService$VibrateThread;

.field private final mTmpWorkSource:Landroid/os/WorkSource;

.field private mVibrateInputDevicesSetting:Z

.field private final mVibrationRunnable:Ljava/lang/Runnable;

.field private final mVibrations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/HapticService$Vibration;",
            ">;"
        }
    .end annotation
.end field

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/immersion/Haptic;

    invoke-direct {v0}, Lcom/immersion/Haptic;-><init>()V

    sput-object v0, Lcom/android/server/HapticService;->mHaptic:Lcom/immersion/Haptic;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 174
    invoke-direct {p0}, Landroid/os/IVibratorService$Stub;-><init>()V

    .line 55
    new-instance v2, Landroid/os/WorkSource;

    invoke-direct {v2}, Landroid/os/WorkSource;-><init>()V

    iput-object v2, p0, Lcom/android/server/HapticService;->mTmpWorkSource:Landroid/os/WorkSource;

    .line 56
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/server/HapticService;->mH:Landroid/os/Handler;

    .line 63
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/HapticService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    .line 433
    new-instance v2, Lcom/android/server/HapticService$2;

    invoke-direct {v2, p0}, Lcom/android/server/HapticService$2;-><init>(Lcom/android/server/HapticService;)V

    iput-object v2, p0, Lcom/android/server/HapticService;->mVibrationRunnable:Ljava/lang/Runnable;

    .line 720
    new-instance v2, Lcom/android/server/HapticService$3;

    invoke-direct {v2, p0}, Lcom/android/server/HapticService$3;-><init>(Lcom/android/server/HapticService;)V

    iput-object v2, p0, Lcom/android/server/HapticService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 177
    sget-object v2, Lcom/android/server/HapticService;->mHaptic:Lcom/immersion/Haptic;

    invoke-static {}, Lcom/immersion/Haptic;->initialize()V

    .line 178
    sget-object v2, Lcom/android/server/HapticService;->mHaptic:Lcom/immersion/Haptic;

    invoke-static {}, Lcom/immersion/Haptic;->stopPlayingEffect()V

    .line 180
    iput-object p1, p0, Lcom/android/server/HapticService;->mContext:Landroid/content/Context;

    .line 181
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 183
    .local v1, pm:Landroid/os/PowerManager;
    const-string v2, "*vibrator*"

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/HapticService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 184
    iget-object v2, p0, Lcom/android/server/HapticService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 186
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/android/server/HapticService;->mVibrations:Ljava/util/LinkedList;

    .line 188
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 189
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    iget-object v2, p0, Lcom/android/server/HapticService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 191
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/HapticService;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/HapticService;->mVibrations:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/HapticService;)Lcom/android/server/HapticService$Vibration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/HapticService;->mCurrentVibration:Lcom/android/server/HapticService$Vibration;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/HapticService;)Landroid/os/WorkSource;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/HapticService;->mTmpWorkSource:Landroid/os/WorkSource;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/HapticService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/HapticService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1600()Lcom/immersion/Haptic;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/server/HapticService;->mHaptic:Lcom/immersion/Haptic;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/HapticService;JI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/HapticService;->doVibratorOn(JI)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/HapticService;Lcom/android/server/HapticService$Vibration;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/server/HapticService;->unlinkVibration(Lcom/android/server/HapticService$Vibration;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/HapticService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/server/HapticService;->doCancelVibrateWithNextLocked()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/HapticService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/server/HapticService;->startNextVibrationLocked()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/HapticService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/server/HapticService;->updateInputDeviceVibrators()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/HapticService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/server/HapticService;->doCancelVibrateLocked()V

    return-void
.end method

.method private doCancelVibrateLocked()V
    .locals 3

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/server/HapticService;->mThread:Lcom/android/server/HapticService$VibrateThread;

    if-eqz v0, :cond_0

    .line 445
    iget-object v1, p0, Lcom/android/server/HapticService;->mThread:Lcom/android/server/HapticService$VibrateThread;

    monitor-enter v1

    .line 446
    :try_start_0
    iget-object v0, p0, Lcom/android/server/HapticService;->mThread:Lcom/android/server/HapticService$VibrateThread;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/HapticService$VibrateThread;->mDone:Z

    .line 447
    iget-object v0, p0, Lcom/android/server/HapticService;->mThread:Lcom/android/server/HapticService$VibrateThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 448
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/HapticService;->mThread:Lcom/android/server/HapticService$VibrateThread;

    .line 451
    :cond_0
    invoke-direct {p0}, Lcom/android/server/HapticService;->doVibratorOff()V

    .line 452
    iget-object v0, p0, Lcom/android/server/HapticService;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/HapticService;->mVibrationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 453
    return-void

    .line 448
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private doCancelVibrateWithNextLocked()V
    .locals 3

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/server/HapticService;->mThread:Lcom/android/server/HapticService$VibrateThread;

    if-eqz v0, :cond_0

    .line 456
    iget-object v1, p0, Lcom/android/server/HapticService;->mThread:Lcom/android/server/HapticService$VibrateThread;

    monitor-enter v1

    .line 457
    :try_start_0
    iget-object v0, p0, Lcom/android/server/HapticService;->mThread:Lcom/android/server/HapticService$VibrateThread;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/HapticService$VibrateThread;->mDone:Z

    .line 458
    iget-object v0, p0, Lcom/android/server/HapticService;->mThread:Lcom/android/server/HapticService$VibrateThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 459
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/HapticService;->mThread:Lcom/android/server/HapticService$VibrateThread;

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/android/server/HapticService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 463
    sget-object v0, Lcom/android/server/HapticService;->mHaptic:Lcom/immersion/Haptic;

    invoke-static {}, Lcom/immersion/Haptic;->stopPlayingEffect()V

    .line 465
    :cond_1
    iget-object v0, p0, Lcom/android/server/HapticService;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/HapticService;->mVibrationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 466
    return-void

    .line 459
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private doVibratorExists()Z
    .locals 1

    .prologue
    .line 583
    sget-object v0, Lcom/android/server/HapticService;->mHaptic:Lcom/immersion/Haptic;

    invoke-static {}, Lcom/immersion/Haptic;->getDeviceID()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doVibratorOff()V
    .locals 4

    .prologue
    .line 600
    iget-object v3, p0, Lcom/android/server/HapticService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v3

    .line 601
    :try_start_0
    iget-object v2, p0, Lcom/android/server/HapticService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 602
    .local v1, vibratorCount:I
    if-eqz v1, :cond_0

    .line 603
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 604
    iget-object v2, p0, Lcom/android/server/HapticService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->cancel()V

    .line 603
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 607
    .end local v0           #i:I
    :cond_0
    monitor-exit v3

    .line 608
    return-void

    .line 607
    .end local v1           #vibratorCount:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private doVibratorOn(JI)V
    .locals 4
    .parameter "millis"
    .parameter "strength"

    .prologue
    .line 587
    iget-object v3, p0, Lcom/android/server/HapticService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v3

    .line 588
    :try_start_0
    iget-object v2, p0, Lcom/android/server/HapticService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 589
    .local v1, vibratorCount:I
    if-eqz v1, :cond_0

    .line 590
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 591
    iget-object v2, p0, Lcom/android/server/HapticService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    invoke-virtual {v2, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 590
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 594
    .end local v0           #i:I
    :cond_0
    sget-object v2, Lcom/android/server/HapticService;->mHaptic:Lcom/immersion/Haptic;

    long-to-int v2, p1

    invoke-static {v2, p3}, Lcom/immersion/Haptic;->playTimedEffect(II)V

    .line 596
    :cond_1
    monitor-exit v3

    .line 597
    return-void

    .line 596
    .end local v1           #vibratorCount:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private isAll0([B)Z
    .locals 3
    .parameter "pattern"

    .prologue
    .line 253
    array-length v0, p1

    .line 254
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 255
    aget-byte v2, p1, v1

    if-eqz v2, :cond_0

    .line 256
    const/4 v2, 0x0

    .line 259
    :goto_1
    return v2

    .line 254
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 259
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private isAll0([J)Z
    .locals 6
    .parameter "pattern"

    .prologue
    .line 244
    array-length v0, p1

    .line 245
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 246
    aget-wide v2, p1, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 247
    const/4 v2, 0x0

    .line 250
    :goto_1
    return v2

    .line 245
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 250
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/HapticService$Vibration;
    .locals 4
    .parameter "token"

    .prologue
    .line 493
    iget-object v2, p0, Lcom/android/server/HapticService;->mVibrations:Ljava/util/LinkedList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 494
    .local v0, iter:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/android/server/HapticService$Vibration;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 495
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/HapticService$Vibration;

    .line 496
    .local v1, vib:Lcom/android/server/HapticService$Vibration;
    #getter for: Lcom/android/server/HapticService$Vibration;->mToken:Landroid/os/IBinder;
    invoke-static {v1}, Lcom/android/server/HapticService$Vibration;->access$900(Lcom/android/server/HapticService$Vibration;)Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 497
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 498
    invoke-direct {p0, v1}, Lcom/android/server/HapticService;->unlinkVibration(Lcom/android/server/HapticService$Vibration;)V

    .line 508
    .end local v1           #vib:Lcom/android/server/HapticService$Vibration;
    :goto_0
    return-object v1

    .line 504
    :cond_1
    iget-object v2, p0, Lcom/android/server/HapticService;->mCurrentVibration:Lcom/android/server/HapticService$Vibration;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/HapticService;->mCurrentVibration:Lcom/android/server/HapticService$Vibration;

    #getter for: Lcom/android/server/HapticService$Vibration;->mToken:Landroid/os/IBinder;
    invoke-static {v2}, Lcom/android/server/HapticService$Vibration;->access$900(Lcom/android/server/HapticService$Vibration;)Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 505
    iget-object v2, p0, Lcom/android/server/HapticService;->mCurrentVibration:Lcom/android/server/HapticService$Vibration;

    invoke-direct {p0, v2}, Lcom/android/server/HapticService;->unlinkVibration(Lcom/android/server/HapticService$Vibration;)V

    .line 506
    iget-object v1, p0, Lcom/android/server/HapticService;->mCurrentVibration:Lcom/android/server/HapticService$Vibration;

    goto :goto_0

    .line 508
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private startNextVibrationLocked()V
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/server/HapticService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 471
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/HapticService;->mCurrentVibration:Lcom/android/server/HapticService$Vibration;

    .line 476
    :goto_0
    return-void

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/android/server/HapticService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/HapticService$Vibration;

    iput-object v0, p0, Lcom/android/server/HapticService;->mCurrentVibration:Lcom/android/server/HapticService$Vibration;

    .line 475
    iget-object v0, p0, Lcom/android/server/HapticService;->mCurrentVibration:Lcom/android/server/HapticService$Vibration;

    invoke-direct {p0, v0}, Lcom/android/server/HapticService;->startVibrationLocked(Lcom/android/server/HapticService$Vibration;)V

    goto :goto_0
.end method

.method private startVibrationLocked(Lcom/android/server/HapticService$Vibration;)V
    .locals 4
    .parameter "vib"

    .prologue
    .line 480
    #getter for: Lcom/android/server/HapticService$Vibration;->mTimeout:J
    invoke-static {p1}, Lcom/android/server/HapticService$Vibration;->access$600(Lcom/android/server/HapticService$Vibration;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    #getter for: Lcom/android/server/HapticService$Vibration;->mEffectIndex:I
    invoke-static {p1}, Lcom/android/server/HapticService$Vibration;->access$700(Lcom/android/server/HapticService$Vibration;)I

    move-result v0

    if-nez v0, :cond_0

    .line 481
    #getter for: Lcom/android/server/HapticService$Vibration;->mTimeout:J
    invoke-static {p1}, Lcom/android/server/HapticService$Vibration;->access$600(Lcom/android/server/HapticService$Vibration;)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    #getter for: Lcom/android/server/HapticService$Vibration;->mStrength:I
    invoke-static {p1}, Lcom/android/server/HapticService$Vibration;->access$800(Lcom/android/server/HapticService$Vibration;)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/HapticService;->doVibratorOn(JI)V

    .line 482
    iget-object v0, p0, Lcom/android/server/HapticService;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/HapticService;->mVibrationRunnable:Ljava/lang/Runnable;

    #getter for: Lcom/android/server/HapticService$Vibration;->mTimeout:J
    invoke-static {p1}, Lcom/android/server/HapticService$Vibration;->access$600(Lcom/android/server/HapticService$Vibration;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 489
    :goto_0
    return-void

    .line 486
    :cond_0
    new-instance v0, Lcom/android/server/HapticService$VibrateThread;

    invoke-direct {v0, p0, p1}, Lcom/android/server/HapticService$VibrateThread;-><init>(Lcom/android/server/HapticService;Lcom/android/server/HapticService$Vibration;)V

    iput-object v0, p0, Lcom/android/server/HapticService;->mThread:Lcom/android/server/HapticService$VibrateThread;

    .line 487
    iget-object v0, p0, Lcom/android/server/HapticService;->mThread:Lcom/android/server/HapticService$VibrateThread;

    invoke-virtual {v0}, Lcom/android/server/HapticService$VibrateThread;->start()V

    goto :goto_0
.end method

.method private unlinkVibration(Lcom/android/server/HapticService$Vibration;)V
    .locals 2
    .parameter "vib"

    .prologue
    .line 512
    #getter for: Lcom/android/server/HapticService$Vibration;->mPattern:[J
    invoke-static {p1}, Lcom/android/server/HapticService$Vibration;->access$1000(Lcom/android/server/HapticService$Vibration;)[J

    move-result-object v0

    if-eqz v0, :cond_0

    .line 515
    #getter for: Lcom/android/server/HapticService$Vibration;->mToken:Landroid/os/IBinder;
    invoke-static {p1}, Lcom/android/server/HapticService$Vibration;->access$900(Lcom/android/server/HapticService$Vibration;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 517
    :cond_0
    return-void
.end method

.method private updateInputDeviceVibrators()V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 519
    iget-object v6, p0, Lcom/android/server/HapticService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v6

    .line 520
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/HapticService;->doCancelVibrateLocked()V

    .line 522
    iget-object v7, p0, Lcom/android/server/HapticService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 523
    const/4 v8, 0x0

    :try_start_1
    iput-boolean v8, p0, Lcom/android/server/HapticService;->mVibrateInputDevicesSetting:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 525
    :try_start_2
    iget-object v8, p0, Lcom/android/server/HapticService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "vibrate_input_devices"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_2

    :goto_0
    iput-boolean v4, p0, Lcom/android/server/HapticService;->mVibrateInputDevicesSetting:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 530
    :goto_1
    :try_start_3
    iget-boolean v4, p0, Lcom/android/server/HapticService;->mVibrateInputDevicesSetting:Z

    if-eqz v4, :cond_3

    .line 531
    iget-boolean v4, p0, Lcom/android/server/HapticService;->mInputDeviceListenerRegistered:Z

    if-nez v4, :cond_0

    .line 532
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/HapticService;->mInputDeviceListenerRegistered:Z

    .line 533
    iget-object v4, p0, Lcom/android/server/HapticService;->mIm:Landroid/hardware/input/InputManager;

    iget-object v5, p0, Lcom/android/server/HapticService;->mH:Landroid/os/Handler;

    invoke-virtual {v4, p0, v5}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 542
    :cond_0
    :goto_2
    iget-object v4, p0, Lcom/android/server/HapticService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 543
    iget-boolean v4, p0, Lcom/android/server/HapticService;->mVibrateInputDevicesSetting:Z

    if-eqz v4, :cond_4

    .line 544
    iget-object v4, p0, Lcom/android/server/HapticService;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v4}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v2

    .line 545
    .local v2, ids:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    array-length v4, v2

    if-ge v1, v4, :cond_4

    .line 546
    iget-object v4, p0, Lcom/android/server/HapticService;->mIm:Landroid/hardware/input/InputManager;

    aget v5, v2, v1

    invoke-virtual {v4, v5}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 547
    .local v0, device:Landroid/view/InputDevice;
    invoke-virtual {v0}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v3

    .line 548
    .local v3, vibrator:Landroid/os/Vibrator;
    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 549
    iget-object v4, p0, Lcom/android/server/HapticService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v0           #device:Landroid/view/InputDevice;
    .end local v1           #i:I
    .end local v2           #ids:[I
    .end local v3           #vibrator:Landroid/os/Vibrator;
    :cond_2
    move v4, v5

    .line 525
    goto :goto_0

    .line 536
    :cond_3
    iget-boolean v4, p0, Lcom/android/server/HapticService;->mInputDeviceListenerRegistered:Z

    if-eqz v4, :cond_0

    .line 537
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/HapticService;->mInputDeviceListenerRegistered:Z

    .line 538
    iget-object v4, p0, Lcom/android/server/HapticService;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v4, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    goto :goto_2

    .line 553
    :catchall_0
    move-exception v4

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4

    .line 556
    :catchall_1
    move-exception v4

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    .line 553
    :cond_4
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 555
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/HapticService;->startNextVibrationLocked()V

    .line 556
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 557
    return-void

    .line 527
    :catch_0
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method public cancelVibrate(Landroid/os/IBinder;)V
    .locals 6
    .parameter "token"

    .prologue
    .line 413
    iget-object v3, p0, Lcom/android/server/HapticService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.VIBRATE"

    const-string v5, "cancelVibrate"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 420
    .local v0, identity:J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/HapticService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 421
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/HapticService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/HapticService$Vibration;

    move-result-object v2

    .line 422
    .local v2, vib:Lcom/android/server/HapticService$Vibration;
    iget-object v3, p0, Lcom/android/server/HapticService;->mCurrentVibration:Lcom/android/server/HapticService$Vibration;

    if-ne v2, v3, :cond_0

    .line 423
    invoke-direct {p0}, Lcom/android/server/HapticService;->doCancelVibrateWithNextLocked()V

    .line 424
    invoke-direct {p0}, Lcom/android/server/HapticService;->startNextVibrationLocked()V

    .line 426
    :cond_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 429
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 431
    return-void

    .line 426
    .end local v2           #vib:Lcom/android/server/HapticService$Vibration;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 429
    :catchall_1
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public hasVibrator()Z
    .locals 1

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/android/server/HapticService;->doVibratorExists()Z

    move-result v0

    return v0
.end method

.method public onInputDeviceAdded(I)V
    .locals 0
    .parameter "deviceId"

    .prologue
    .line 561
    invoke-direct {p0}, Lcom/android/server/HapticService;->updateInputDeviceVibrators()V

    .line 562
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0
    .parameter "deviceId"

    .prologue
    .line 566
    invoke-direct {p0}, Lcom/android/server/HapticService;->updateInputDeviceVibrators()V

    .line 567
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 0
    .parameter "deviceId"

    .prologue
    .line 571
    invoke-direct {p0}, Lcom/android/server/HapticService;->updateInputDeviceVibrators()V

    .line 572
    return-void
.end method

.method public systemReady()V
    .locals 5

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/server/HapticService;->mContext:Landroid/content/Context;

    const-string v1, "input"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/android/server/HapticService;->mIm:Landroid/hardware/input/InputManager;

    .line 197
    iget-object v0, p0, Lcom/android/server/HapticService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vibrate_input_devices"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/HapticService$1;

    iget-object v4, p0, Lcom/android/server/HapticService;->mH:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/HapticService$1;-><init>(Lcom/android/server/HapticService;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 205
    invoke-direct {p0}, Lcom/android/server/HapticService;->updateInputDeviceVibrators()V

    .line 206
    return-void
.end method

.method public vibrate(JLandroid/os/IBinder;)V
    .locals 1
    .parameter "milliseconds"
    .parameter "token"

    .prologue
    .line 213
    const/16 v0, 0x7f

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/HapticService;->vibrateStrength(JILandroid/os/IBinder;)V

    .line 214
    return-void
.end method

.method public vibrateEffect(IJILandroid/os/IBinder;)V
    .locals 12
    .parameter "effectIndex"
    .parameter "millis"
    .parameter "repeat"
    .parameter "token"

    .prologue
    .line 316
    iget-object v2, p0, Lcom/android/server/HapticService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.VIBRATE"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 318
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires VIBRATE permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 320
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 322
    .local v8, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 324
    .local v10, identity:J
    :try_start_0
    const-string v2, "HapticService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vibrateEffect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 327
    if-lez p1, :cond_1

    const/16 v2, 0x7b

    if-le p1, v2, :cond_2

    .line 351
    :cond_1
    :goto_0
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 353
    return-void

    .line 331
    :cond_2
    :try_start_1
    new-instance v1, Lcom/android/server/HapticService$Vibration;

    move-object v2, p0

    move-object/from16 v3, p5

    move v4, p1

    move-wide v5, p2

    move/from16 v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/server/HapticService$Vibration;-><init>(Lcom/android/server/HapticService;Landroid/os/IBinder;IJII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 333
    .local v1, vib:Lcom/android/server/HapticService$Vibration;
    const/4 v2, 0x0

    :try_start_2
    move-object/from16 v0, p5

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 338
    :try_start_3
    iget-object v3, p0, Lcom/android/server/HapticService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 339
    :try_start_4
    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/server/HapticService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/HapticService$Vibration;

    .line 340
    invoke-direct {p0}, Lcom/android/server/HapticService;->doCancelVibrateLocked()V

    .line 341
    if-ltz p4, :cond_3

    .line 342
    iget-object v2, p0, Lcom/android/server/HapticService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 343
    invoke-direct {p0}, Lcom/android/server/HapticService;->startNextVibrationLocked()V

    .line 348
    :goto_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 351
    .end local v1           #vib:Lcom/android/server/HapticService$Vibration;
    :catchall_1
    move-exception v2

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 334
    .restart local v1       #vib:Lcom/android/server/HapticService$Vibration;
    :catch_0
    move-exception v9

    .local v9, e:Landroid/os/RemoteException;
    goto :goto_0

    .line 345
    .end local v9           #e:Landroid/os/RemoteException;
    :cond_3
    :try_start_6
    iput-object v1, p0, Lcom/android/server/HapticService;->mCurrentVibration:Lcom/android/server/HapticService$Vibration;

    .line 346
    invoke-direct {p0, v1}, Lcom/android/server/HapticService;->startVibrationLocked(Lcom/android/server/HapticService$Vibration;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method public vibrateEffectSequence([BIJILandroid/os/IBinder;)V
    .locals 14
    .parameter "buffer"
    .parameter "bufferSize"
    .parameter "millis"
    .parameter "repeat"
    .parameter "token"

    .prologue
    .line 356
    iget-object v2, p0, Lcom/android/server/HapticService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.VIBRATE"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 358
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires VIBRATE permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 360
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 362
    .local v9, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 374
    .local v12, identity:J
    if-eqz p1, :cond_1

    :try_start_0
    array-length v2, p1

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/HapticService;->isAll0([B)Z

    move-result v2

    if-nez v2, :cond_1

    array-length v2, p1

    const/16 v3, 0x8

    if-gt v2, v3, :cond_1

    array-length v2, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v0, p2

    if-ne v0, v2, :cond_1

    if-nez p6, :cond_2

    .line 404
    :cond_1
    :goto_0
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 406
    return-void

    .line 380
    :cond_2
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    :try_start_1
    array-length v2, p1

    if-ge v11, v2, :cond_3

    .line 381
    const-string v2, "HapticService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vibrateEffectSequence"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, p1, v11

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 384
    :cond_3
    new-instance v1, Lcom/android/server/HapticService$Vibration;

    move-object v2, p0

    move-object/from16 v3, p6

    move-object v4, p1

    move/from16 v5, p2

    move-wide/from16 v6, p3

    move/from16 v8, p5

    invoke-direct/range {v1 .. v9}, Lcom/android/server/HapticService$Vibration;-><init>(Lcom/android/server/HapticService;Landroid/os/IBinder;[BIJII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 386
    .local v1, vib:Lcom/android/server/HapticService$Vibration;
    const/4 v2, 0x0

    :try_start_2
    move-object/from16 v0, p6

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 391
    :try_start_3
    iget-object v3, p0, Lcom/android/server/HapticService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 392
    :try_start_4
    move-object/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/android/server/HapticService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/HapticService$Vibration;

    .line 393
    invoke-direct {p0}, Lcom/android/server/HapticService;->doCancelVibrateLocked()V

    .line 394
    if-ltz p5, :cond_4

    .line 395
    iget-object v2, p0, Lcom/android/server/HapticService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 396
    invoke-direct {p0}, Lcom/android/server/HapticService;->startNextVibrationLocked()V

    .line 401
    :goto_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 404
    .end local v1           #vib:Lcom/android/server/HapticService$Vibration;
    .end local v11           #i:I
    :catchall_1
    move-exception v2

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 387
    .restart local v1       #vib:Lcom/android/server/HapticService$Vibration;
    .restart local v11       #i:I
    :catch_0
    move-exception v10

    .local v10, e:Landroid/os/RemoteException;
    goto :goto_0

    .line 398
    .end local v10           #e:Landroid/os/RemoteException;
    :cond_4
    :try_start_6
    iput-object v1, p0, Lcom/android/server/HapticService;->mCurrentVibration:Lcom/android/server/HapticService$Vibration;

    .line 399
    invoke-direct {p0, v1}, Lcom/android/server/HapticService;->startVibrationLocked(Lcom/android/server/HapticService$Vibration;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2
.end method

.method public vibrateHWEffect(ILandroid/os/IBinder;)V
    .locals 0
    .parameter "effectIndex"
    .parameter "token"

    .prologue
    .line 408
    return-void
.end method

.method public vibratePattern([JILandroid/os/IBinder;)V
    .locals 1
    .parameter "pattern"
    .parameter "repeat"
    .parameter "token"

    .prologue
    .line 263
    const/16 v0, 0x7f

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/HapticService;->vibratePatternStrength([JIILandroid/os/IBinder;)V

    .line 264
    return-void
.end method

.method public vibratePatternStrength([JIILandroid/os/IBinder;)V
    .locals 10
    .parameter "pattern"
    .parameter "repeat"
    .parameter "strength"
    .parameter "token"

    .prologue
    .line 266
    iget-object v1, p0, Lcom/android/server/HapticService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.VIBRATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires VIBRATE permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 270
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 272
    .local v6, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 284
    .local v8, identity:J
    if-eqz p1, :cond_1

    :try_start_0
    array-length v1, p1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/HapticService;->isAll0([J)Z

    move-result v1

    if-nez v1, :cond_1

    array-length v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ge p2, v1, :cond_1

    if-nez p4, :cond_2

    .line 312
    :cond_1
    :goto_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 314
    return-void

    .line 289
    :cond_2
    :try_start_1
    const-string v1, "HapticService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "strength"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    new-instance v0, Lcom/android/server/HapticService$Vibration;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/HapticService$Vibration;-><init>(Lcom/android/server/HapticService;Landroid/os/IBinder;[JIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 292
    .local v0, vib:Lcom/android/server/HapticService$Vibration;
    const/4 v1, 0x0

    :try_start_2
    invoke-interface {p4, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 297
    :try_start_3
    iget-object v2, p0, Lcom/android/server/HapticService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 298
    :try_start_4
    invoke-direct {p0, p4}, Lcom/android/server/HapticService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/HapticService$Vibration;

    .line 299
    invoke-direct {p0}, Lcom/android/server/HapticService;->doCancelVibrateLocked()V

    .line 300
    if-ltz p2, :cond_3

    .line 301
    iget-object v1, p0, Lcom/android/server/HapticService;->mVibrations:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 302
    invoke-direct {p0}, Lcom/android/server/HapticService;->startNextVibrationLocked()V

    .line 309
    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 312
    .end local v0           #vib:Lcom/android/server/HapticService$Vibration;
    :catchall_1
    move-exception v1

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 293
    .restart local v0       #vib:Lcom/android/server/HapticService$Vibration;
    :catch_0
    move-exception v7

    .local v7, e:Landroid/os/RemoteException;
    goto :goto_0

    .line 306
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_3
    :try_start_6
    iput-object v0, p0, Lcom/android/server/HapticService;->mCurrentVibration:Lcom/android/server/HapticService$Vibration;

    .line 307
    invoke-direct {p0, v0}, Lcom/android/server/HapticService;->startVibrationLocked(Lcom/android/server/HapticService$Vibration;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method public vibrateStrength(JILandroid/os/IBinder;)V
    .locals 7
    .parameter "milliseconds"
    .parameter "strength"
    .parameter "token"

    .prologue
    .line 216
    iget-object v1, p0, Lcom/android/server/HapticService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.VIBRATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires VIBRATE permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 220
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 224
    .local v6, uid:I
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/HapticService;->mCurrentVibration:Lcom/android/server/HapticService$Vibration;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/HapticService;->mCurrentVibration:Lcom/android/server/HapticService$Vibration;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/HapticService$Vibration;->hasLongerTimeout(J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 241
    :cond_1
    :goto_0
    return-void

    .line 230
    :cond_2
    const-wide/16 v1, 0x2710

    cmp-long v1, p1, v1

    if-lez v1, :cond_3

    .line 231
    const-wide/16 p1, 0x2710

    .line 233
    :cond_3
    const-string v1, "HapticService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "strength"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    new-instance v0, Lcom/android/server/HapticService$Vibration;

    move-object v1, p0

    move-object v2, p4

    move-wide v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/HapticService$Vibration;-><init>(Lcom/android/server/HapticService;Landroid/os/IBinder;JII)V

    .line 235
    .local v0, vib:Lcom/android/server/HapticService$Vibration;
    iget-object v2, p0, Lcom/android/server/HapticService;->mVibrations:Ljava/util/LinkedList;

    monitor-enter v2

    .line 236
    :try_start_0
    invoke-direct {p0, p4}, Lcom/android/server/HapticService;->removeVibrationLocked(Landroid/os/IBinder;)Lcom/android/server/HapticService$Vibration;

    .line 237
    invoke-direct {p0}, Lcom/android/server/HapticService;->doCancelVibrateLocked()V

    .line 238
    iput-object v0, p0, Lcom/android/server/HapticService;->mCurrentVibration:Lcom/android/server/HapticService$Vibration;

    .line 239
    invoke-direct {p0, v0}, Lcom/android/server/HapticService;->startVibrationLocked(Lcom/android/server/HapticService$Vibration;)V

    .line 240
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
