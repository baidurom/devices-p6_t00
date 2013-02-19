.class Lcom/android/server/HapticService$VibrateThread;
.super Ljava/lang/Thread;
.source "HapticService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HapticService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibrateThread"
.end annotation


# instance fields
.field mDone:Z

.field final mVibration:Lcom/android/server/HapticService$Vibration;

.field final synthetic this$0:Lcom/android/server/HapticService;


# direct methods
.method constructor <init>(Lcom/android/server/HapticService;Lcom/android/server/HapticService$Vibration;)V
    .locals 2
    .parameter
    .parameter "vib"

    .prologue
    .line 614
    iput-object p1, p0, Lcom/android/server/HapticService$VibrateThread;->this$0:Lcom/android/server/HapticService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 615
    iput-object p2, p0, Lcom/android/server/HapticService$VibrateThread;->mVibration:Lcom/android/server/HapticService$Vibration;

    .line 616
    #getter for: Lcom/android/server/HapticService;->mTmpWorkSource:Landroid/os/WorkSource;
    invoke-static {p1}, Lcom/android/server/HapticService;->access$1200(Lcom/android/server/HapticService;)Landroid/os/WorkSource;

    move-result-object v0

    #getter for: Lcom/android/server/HapticService$Vibration;->mUid:I
    invoke-static {p2}, Lcom/android/server/HapticService$Vibration;->access$1100(Lcom/android/server/HapticService$Vibration;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/WorkSource;->set(I)V

    .line 617
    #getter for: Lcom/android/server/HapticService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {p1}, Lcom/android/server/HapticService;->access$1300(Lcom/android/server/HapticService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    #getter for: Lcom/android/server/HapticService;->mTmpWorkSource:Landroid/os/WorkSource;
    invoke-static {p1}, Lcom/android/server/HapticService;->access$1200(Lcom/android/server/HapticService;)Landroid/os/WorkSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 618
    #getter for: Lcom/android/server/HapticService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {p1}, Lcom/android/server/HapticService;->access$1300(Lcom/android/server/HapticService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 619
    return-void
.end method

.method private delay(J)V
    .locals 6
    .parameter "duration"

    .prologue
    const-wide/16 v4, 0x0

    .line 622
    cmp-long v2, p1, v4

    if-lez v2, :cond_1

    .line 623
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 626
    .local v0, bedtime:J
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/HapticService$VibrateThread;->mDone:Z

    if-eqz v2, :cond_2

    .line 637
    .end local v0           #bedtime:J
    :cond_1
    :goto_1
    return-void

    .line 633
    .restart local v0       #bedtime:J
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v2, p1, v2

    sub-long p1, v2, v0

    .line 635
    cmp-long v2, p1, v4

    if-gtz v2, :cond_0

    goto :goto_1

    .line 628
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 640
    const/4 v10, -0x8

    invoke-static {v10}, Landroid/os/Process;->setThreadPriority(I)V

    .line 641
    monitor-enter p0

    .line 642
    :try_start_0
    iget-object v10, p0, Lcom/android/server/HapticService$VibrateThread;->mVibration:Lcom/android/server/HapticService$Vibration;

    #getter for: Lcom/android/server/HapticService$Vibration;->mEffectbuffer:[B
    invoke-static {v10}, Lcom/android/server/HapticService$Vibration;->access$1400(Lcom/android/server/HapticService$Vibration;)[B

    move-result-object v3

    .line 643
    .local v3, effectbuffer:[B
    iget-object v10, p0, Lcom/android/server/HapticService$VibrateThread;->mVibration:Lcom/android/server/HapticService$Vibration;

    #getter for: Lcom/android/server/HapticService$Vibration;->mEffectIndex:I
    invoke-static {v10}, Lcom/android/server/HapticService$Vibration;->access$700(Lcom/android/server/HapticService$Vibration;)I

    move-result v2

    .line 645
    .local v2, effectIndex:I
    if-eqz v2, :cond_5

    .line 646
    iget-object v10, p0, Lcom/android/server/HapticService$VibrateThread;->mVibration:Lcom/android/server/HapticService$Vibration;

    #getter for: Lcom/android/server/HapticService$Vibration;->mRepeat:I
    invoke-static {v10}, Lcom/android/server/HapticService$Vibration;->access$1500(Lcom/android/server/HapticService$Vibration;)I

    move-result v8

    .line 647
    .local v8, repeat:I
    iget-object v10, p0, Lcom/android/server/HapticService$VibrateThread;->mVibration:Lcom/android/server/HapticService$Vibration;

    #getter for: Lcom/android/server/HapticService$Vibration;->mTimeout:J
    invoke-static {v10}, Lcom/android/server/HapticService$Vibration;->access$600(Lcom/android/server/HapticService$Vibration;)J

    move-result-wide v0

    .line 648
    .local v0, duration:J
    :cond_0
    iget-boolean v10, p0, Lcom/android/server/HapticService$VibrateThread;->mDone:Z

    if-nez v10, :cond_1

    .line 649
    if-eqz v3, :cond_4

    .line 650
    iget-object v10, p0, Lcom/android/server/HapticService$VibrateThread;->this$0:Lcom/android/server/HapticService;

    invoke-static {}, Lcom/android/server/HapticService;->access$1600()Lcom/immersion/Haptic;

    invoke-static {v3, v2}, Lcom/immersion/Haptic;->playEffectSequence([BI)V

    .line 655
    :goto_0
    if-lez v8, :cond_1

    .line 656
    invoke-direct {p0, v0, v1}, Lcom/android/server/HapticService$VibrateThread;->delay(J)V

    .line 660
    iget-boolean v10, p0, Lcom/android/server/HapticService$VibrateThread;->mDone:Z

    if-eqz v10, :cond_0

    .line 703
    :cond_1
    iget-object v10, p0, Lcom/android/server/HapticService$VibrateThread;->this$0:Lcom/android/server/HapticService;

    #getter for: Lcom/android/server/HapticService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v10}, Lcom/android/server/HapticService;->access$1300(Lcom/android/server/HapticService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 704
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 705
    iget-object v10, p0, Lcom/android/server/HapticService$VibrateThread;->this$0:Lcom/android/server/HapticService;

    #getter for: Lcom/android/server/HapticService;->mVibrations:Ljava/util/LinkedList;
    invoke-static {v10}, Lcom/android/server/HapticService;->access$000(Lcom/android/server/HapticService;)Ljava/util/LinkedList;

    move-result-object v11

    monitor-enter v11

    .line 706
    :try_start_1
    iget-object v10, p0, Lcom/android/server/HapticService$VibrateThread;->this$0:Lcom/android/server/HapticService;

    iget-object v10, v10, Lcom/android/server/HapticService;->mThread:Lcom/android/server/HapticService$VibrateThread;

    if-ne v10, p0, :cond_2

    .line 707
    iget-object v10, p0, Lcom/android/server/HapticService$VibrateThread;->this$0:Lcom/android/server/HapticService;

    const/4 v12, 0x0

    iput-object v12, v10, Lcom/android/server/HapticService;->mThread:Lcom/android/server/HapticService$VibrateThread;

    .line 709
    :cond_2
    iget-boolean v10, p0, Lcom/android/server/HapticService$VibrateThread;->mDone:Z

    if-nez v10, :cond_3

    .line 712
    iget-object v10, p0, Lcom/android/server/HapticService$VibrateThread;->this$0:Lcom/android/server/HapticService;

    #getter for: Lcom/android/server/HapticService;->mVibrations:Ljava/util/LinkedList;
    invoke-static {v10}, Lcom/android/server/HapticService;->access$000(Lcom/android/server/HapticService;)Ljava/util/LinkedList;

    move-result-object v10

    iget-object v12, p0, Lcom/android/server/HapticService$VibrateThread;->mVibration:Lcom/android/server/HapticService$Vibration;

    invoke-virtual {v10, v12}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 713
    iget-object v10, p0, Lcom/android/server/HapticService$VibrateThread;->this$0:Lcom/android/server/HapticService;

    iget-object v12, p0, Lcom/android/server/HapticService$VibrateThread;->mVibration:Lcom/android/server/HapticService$Vibration;

    #calls: Lcom/android/server/HapticService;->unlinkVibration(Lcom/android/server/HapticService$Vibration;)V
    invoke-static {v10, v12}, Lcom/android/server/HapticService;->access$1800(Lcom/android/server/HapticService;Lcom/android/server/HapticService$Vibration;)V

    .line 714
    iget-object v10, p0, Lcom/android/server/HapticService$VibrateThread;->this$0:Lcom/android/server/HapticService;

    #calls: Lcom/android/server/HapticService;->startNextVibrationLocked()V
    invoke-static {v10}, Lcom/android/server/HapticService;->access$300(Lcom/android/server/HapticService;)V

    .line 716
    :cond_3
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 717
    return-void

    .line 652
    :cond_4
    :try_start_2
    const-string v10, "HapticService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "HapticService.this.playEffect: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    iget-object v10, p0, Lcom/android/server/HapticService$VibrateThread;->this$0:Lcom/android/server/HapticService;

    invoke-static {}, Lcom/android/server/HapticService;->access$1600()Lcom/immersion/Haptic;

    invoke-static {v2}, Lcom/immersion/Haptic;->playEffect(I)V

    goto :goto_0

    .line 704
    .end local v0           #duration:J
    .end local v2           #effectIndex:I
    .end local v3           #effectbuffer:[B
    .end local v8           #repeat:I
    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10

    .line 666
    .restart local v2       #effectIndex:I
    .restart local v3       #effectbuffer:[B
    :cond_5
    const/4 v4, 0x0

    .line 667
    .local v4, index:I
    :try_start_3
    iget-object v10, p0, Lcom/android/server/HapticService$VibrateThread;->mVibration:Lcom/android/server/HapticService$Vibration;

    #getter for: Lcom/android/server/HapticService$Vibration;->mPattern:[J
    invoke-static {v10}, Lcom/android/server/HapticService$Vibration;->access$1000(Lcom/android/server/HapticService$Vibration;)[J

    move-result-object v7

    .line 668
    .local v7, pattern:[J
    array-length v6, v7

    .line 669
    .local v6, len:I
    iget-object v10, p0, Lcom/android/server/HapticService$VibrateThread;->mVibration:Lcom/android/server/HapticService$Vibration;

    #getter for: Lcom/android/server/HapticService$Vibration;->mRepeat:I
    invoke-static {v10}, Lcom/android/server/HapticService$Vibration;->access$1500(Lcom/android/server/HapticService$Vibration;)I

    move-result v8

    .line 670
    .restart local v8       #repeat:I
    const-wide/16 v0, 0x0

    .line 671
    .restart local v0       #duration:J
    iget-object v10, p0, Lcom/android/server/HapticService$VibrateThread;->mVibration:Lcom/android/server/HapticService$Vibration;

    #getter for: Lcom/android/server/HapticService$Vibration;->mStrength:I
    invoke-static {v10}, Lcom/android/server/HapticService$Vibration;->access$800(Lcom/android/server/HapticService$Vibration;)I

    move-result v9

    .local v9, strength:I
    move v5, v4

    .line 673
    .end local v4           #index:I
    .local v5, index:I
    :goto_1
    iget-boolean v10, p0, Lcom/android/server/HapticService$VibrateThread;->mDone:Z

    if-nez v10, :cond_1

    .line 675
    if-ge v5, v6, :cond_6

    .line 676
    add-int/lit8 v4, v5, 0x1

    .end local v5           #index:I
    .restart local v4       #index:I
    aget-wide v10, v7, v5

    add-long/2addr v0, v10

    move v5, v4

    .line 680
    .end local v4           #index:I
    .restart local v5       #index:I
    :cond_6
    invoke-direct {p0, v0, v1}, Lcom/android/server/HapticService$VibrateThread;->delay(J)V

    .line 681
    iget-boolean v10, p0, Lcom/android/server/HapticService$VibrateThread;->mDone:Z

    if-nez v10, :cond_1

    .line 685
    if-ge v5, v6, :cond_7

    .line 688
    add-int/lit8 v4, v5, 0x1

    .end local v5           #index:I
    .restart local v4       #index:I
    aget-wide v0, v7, v5

    .line 689
    const-wide/16 v10, 0x0

    cmp-long v10, v0, v10

    if-lez v10, :cond_8

    .line 690
    iget-object v10, p0, Lcom/android/server/HapticService$VibrateThread;->this$0:Lcom/android/server/HapticService;

    #calls: Lcom/android/server/HapticService;->doVibratorOn(JI)V
    invoke-static {v10, v0, v1, v9}, Lcom/android/server/HapticService;->access$1700(Lcom/android/server/HapticService;JI)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v5, v4

    .end local v4           #index:I
    .restart local v5       #index:I
    goto :goto_1

    .line 693
    :cond_7
    if-ltz v8, :cond_1

    .line 696
    move v4, v8

    .line 697
    .end local v5           #index:I
    .restart local v4       #index:I
    const-wide/16 v0, 0x0

    move v5, v4

    .end local v4           #index:I
    .restart local v5       #index:I
    goto :goto_1

    .line 716
    .end local v5           #index:I
    .end local v6           #len:I
    .end local v7           #pattern:[J
    .end local v9           #strength:I
    :catchall_1
    move-exception v10

    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v10

    .restart local v4       #index:I
    .restart local v6       #len:I
    .restart local v7       #pattern:[J
    .restart local v9       #strength:I
    :cond_8
    move v5, v4

    .end local v4           #index:I
    .restart local v5       #index:I
    goto :goto_1
.end method
