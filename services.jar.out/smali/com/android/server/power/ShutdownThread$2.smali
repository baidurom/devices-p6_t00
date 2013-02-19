.class final Lcom/android/server/power/ShutdownThread$2;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 240
    const-string v8, "ShutdownThread"

    const-string v9, "begin shutdownThread"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$200()Lcom/android/server/power/ShutdownThread;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/power/ShutdownThread$2;->val$context:Landroid/content/Context;

    #setter for: Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;
    invoke-static {v8, v9}, Lcom/android/server/power/ShutdownThread;->access$302(Lcom/android/server/power/ShutdownThread;Landroid/content/Context;)Landroid/content/Context;

    .line 243
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$200()Lcom/android/server/power/ShutdownThread;

    move-result-object v9

    iget-object v8, p0, Lcom/android/server/power/ShutdownThread$2;->val$context:Landroid/content/Context;

    const-string v10, "power"

    invoke-virtual {v8, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    #setter for: Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v9, v8}, Lcom/android/server/power/ShutdownThread;->access$402(Lcom/android/server/power/ShutdownThread;Landroid/os/PowerManager;)Landroid/os/PowerManager;

    .line 245
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$200()Lcom/android/server/power/ShutdownThread;

    move-result-object v8

    #setter for: Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v8, v13}, Lcom/android/server/power/ShutdownThread;->access$502(Lcom/android/server/power/ShutdownThread;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    .line 247
    :try_start_0
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$200()Lcom/android/server/power/ShutdownThread;

    move-result-object v8

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$200()Lcom/android/server/power/ShutdownThread;

    move-result-object v9

    #getter for: Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v9}, Lcom/android/server/power/ShutdownThread;->access$400(Lcom/android/server/power/ShutdownThread;)Landroid/os/PowerManager;

    move-result-object v9

    const/4 v10, 0x1

    const-string v11, "ShutdownThread-cpu"

    invoke-virtual {v9, v10, v11}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v9

    #setter for: Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v8, v9}, Lcom/android/server/power/ShutdownThread;->access$502(Lcom/android/server/power/ShutdownThread;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    .line 249
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$200()Lcom/android/server/power/ShutdownThread;

    move-result-object v8

    #getter for: Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v8}, Lcom/android/server/power/ShutdownThread;->access$500(Lcom/android/server/power/ShutdownThread;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 250
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$200()Lcom/android/server/power/ShutdownThread;

    move-result-object v8

    #getter for: Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v8}, Lcom/android/server/power/ShutdownThread;->access$500(Lcom/android/server/power/ShutdownThread;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_0
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$200()Lcom/android/server/power/ShutdownThread;

    move-result-object v8

    #setter for: Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v8, v13}, Lcom/android/server/power/ShutdownThread;->access$602(Lcom/android/server/power/ShutdownThread;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    .line 257
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$200()Lcom/android/server/power/ShutdownThread;

    move-result-object v8

    #getter for: Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v8}, Lcom/android/server/power/ShutdownThread;->access$400(Lcom/android/server/power/ShutdownThread;)Landroid/os/PowerManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 259
    :try_start_1
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$200()Lcom/android/server/power/ShutdownThread;

    move-result-object v8

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$200()Lcom/android/server/power/ShutdownThread;

    move-result-object v9

    #getter for: Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v9}, Lcom/android/server/power/ShutdownThread;->access$400(Lcom/android/server/power/ShutdownThread;)Landroid/os/PowerManager;

    move-result-object v9

    const/16 v10, 0x1a

    const-string v11, "ShutdownThread-screen"

    invoke-virtual {v9, v10, v11}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v9

    #setter for: Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v8, v9}, Lcom/android/server/power/ShutdownThread;->access$602(Lcom/android/server/power/ShutdownThread;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    .line 261
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$200()Lcom/android/server/power/ShutdownThread;

    move-result-object v8

    #getter for: Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v8}, Lcom/android/server/power/ShutdownThread;->access$600(Lcom/android/server/power/ShutdownThread;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 262
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$200()Lcom/android/server/power/ShutdownThread;

    move-result-object v8

    #getter for: Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v8}, Lcom/android/server/power/ShutdownThread;->access$600(Lcom/android/server/power/ShutdownThread;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 268
    :cond_0
    :goto_1
    iget-object v8, p0, Lcom/android/server/power/ShutdownThread$2;->val$context:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/internal/policy/Powerstate;->savePhoneState(Landroid/content/Context;)V

    .line 269
    const-string v8, "persist.sys.quickpoweron"

    const-string v9, "startshutdown"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-static {}, Lcom/android/internal/policy/Powerstate;->getInstance()Lcom/android/internal/policy/Powerstate;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/power/ShutdownThread$2;->val$context:Landroid/content/Context;

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/Powerstate;->sendStopBC(Landroid/content/Context;)V

    .line 272
    iget-object v8, p0, Lcom/android/server/power/ShutdownThread$2;->val$context:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/internal/policy/Powerstate;->setPoweroffState(Landroid/content/Context;)V

    .line 273
    iget-object v8, p0, Lcom/android/server/power/ShutdownThread$2;->val$context:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/internal/policy/Powerstate;->killRunningProcess(Landroid/content/Context;)V

    .line 274
    new-array v1, v14, [Z

    .line 275
    .local v1, done:[Z
    const/16 v6, 0x7530

    .line 276
    .local v6, timeout:I
    new-instance v5, Lcom/android/server/power/ShutdownThread$2$1;

    invoke-direct {v5, p0, v1}, Lcom/android/server/power/ShutdownThread$2$1;-><init>(Lcom/android/server/power/ShutdownThread$2;[Z)V

    .line 290
    .local v5, setModemPowerThread:Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 292
    int-to-long v8, v6

    :try_start_2
    invoke-virtual {v5, v8, v9}, Ljava/lang/Thread;->join(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5

    .line 295
    :goto_2
    aget-boolean v8, v1, v12

    if-nez v8, :cond_1

    .line 296
    const-string v8, "ShutdownThread"

    const-string v9, "returned because setModemPower timeout"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$200()Lcom/android/server/power/ShutdownThread;

    move-result-object v8

    #getter for: Lcom/android/server/power/ShutdownThread;->mShutdownHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/server/power/ShutdownThread;->access$700(Lcom/android/server/power/ShutdownThread;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 370
    :goto_3
    return-void

    .line 251
    .end local v1           #done:[Z
    .end local v5           #setModemPowerThread:Ljava/lang/Thread;
    .end local v6           #timeout:I
    :catch_0
    move-exception v2

    .line 252
    .local v2, e:Ljava/lang/SecurityException;
    const-string v8, "ShutdownThread"

    const-string v9, "No permission to acquire wake lock"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 253
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$200()Lcom/android/server/power/ShutdownThread;

    move-result-object v8

    #setter for: Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v8, v13}, Lcom/android/server/power/ShutdownThread;->access$502(Lcom/android/server/power/ShutdownThread;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_0

    .line 263
    .end local v2           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    .line 264
    .restart local v2       #e:Ljava/lang/SecurityException;
    const-string v8, "ShutdownThread"

    const-string v9, "No permission to acquire wake lock"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 265
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$200()Lcom/android/server/power/ShutdownThread;

    move-result-object v8

    #setter for: Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v8, v13}, Lcom/android/server/power/ShutdownThread;->access$602(Lcom/android/server/power/ShutdownThread;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    goto :goto_1

    .line 301
    .end local v2           #e:Ljava/lang/SecurityException;
    .restart local v1       #done:[Z
    .restart local v5       #setModemPowerThread:Ljava/lang/Thread;
    .restart local v6       #timeout:I
    :cond_1
    #calls: Lcom/android/server/power/ShutdownThread;->waitShutdownAnimation()V
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$800()V

    .line 303
    iget-object v8, p0, Lcom/android/server/power/ShutdownThread$2;->val$context:Landroid/content/Context;

    const-string v9, "vibrator"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Vibrator;

    .line 305
    .local v7, vibrator:Landroid/os/Vibrator;
    const-wide/16 v8, 0x1f4

    :try_start_3
    invoke-virtual {v7, v8, v9}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 312
    :goto_4
    const-wide/16 v8, 0x1f4

    :try_start_4
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_6

    .line 319
    :goto_5
    :try_start_5
    const-string v8, "power"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v4

    .line 320
    .local v4, mPowerManagerService:Landroid/os/IPowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v10, 0x1

    invoke-interface {v4, v8, v9, v10}, Landroid/os/IPowerManager;->goToSleep(JI)V

    .line 321
    const-string v8, "persist.sys.quickpoweron"

    const-string v9, "shutdown"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    .line 323
    const-wide/16 v8, 0x1f4

    :try_start_6
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4

    .line 327
    :goto_6
    const/4 v0, 0x0

    .line 329
    .local v0, bBattery:Z
    :try_start_7
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$900()Lcom/android/internal/app/IBatteryStats;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/app/IBatteryStats;->isOnBattery()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3

    move-result v0

    .line 335
    :goto_7
    if-nez v0, :cond_2

    .line 337
    :try_start_8
    const-string v8, "ShutdownThread"

    const-string v9, "going to showPoweroffCharge"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-static {}, Lcom/android/internal/policy/Powerstate;->getInstance()Lcom/android/internal/policy/Powerstate;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/policy/Powerstate;->showPowerOffCharge()V

    .line 341
    :cond_2
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1000()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 342
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1100()Ljava/lang/Process;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 343
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1100()Ljava/lang/Process;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Process;->destroy()V

    .line 344
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/android/server/power/ShutdownThread;->access$1102(Ljava/lang/Process;)Ljava/lang/Process;

    .line 346
    :cond_3
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/android/server/power/ShutdownThread;->access$1002(Z)Z

    .line 356
    :cond_4
    :goto_8
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$200()Lcom/android/server/power/ShutdownThread;

    move-result-object v8

    #getter for: Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v8}, Lcom/android/server/power/ShutdownThread;->access$600(Lcom/android/server/power/ShutdownThread;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 357
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$200()Lcom/android/server/power/ShutdownThread;

    move-result-object v8

    #getter for: Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v8}, Lcom/android/server/power/ShutdownThread;->access$600(Lcom/android/server/power/ShutdownThread;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 359
    :cond_5
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$200()Lcom/android/server/power/ShutdownThread;

    move-result-object v8

    #getter for: Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v8}, Lcom/android/server/power/ShutdownThread;->access$500(Lcom/android/server/power/ShutdownThread;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 360
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$200()Lcom/android/server/power/ShutdownThread;

    move-result-object v8

    #getter for: Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v8}, Lcom/android/server/power/ShutdownThread;->access$500(Lcom/android/server/power/ShutdownThread;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 362
    :cond_6
    invoke-interface {v4}, Landroid/os/IPowerManager;->releaseWakelockForFastboot()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_4

    .line 367
    .end local v0           #bBattery:Z
    .end local v4           #mPowerManagerService:Landroid/os/IPowerManager;
    :goto_9
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1300()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 368
    const/4 v8, 0x0

    :try_start_9
    invoke-static {v8}, Lcom/android/server/power/ShutdownThread;->access$002(Z)Z

    .line 369
    monitor-exit v9

    goto/16 :goto_3

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v8

    .line 306
    :catch_2
    move-exception v2

    .line 308
    .local v2, e:Ljava/lang/Exception;
    const-string v8, "ShutdownThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to vibrate during shutdown."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 330
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #bBattery:Z
    .restart local v4       #mPowerManagerService:Landroid/os/IPowerManager;
    :catch_3
    move-exception v2

    .line 331
    .local v2, e:Landroid/os/RemoteException;
    :try_start_a
    const-string v8, "ShutdownThread"

    const-string v9, "RemoteException:"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 332
    const/4 v0, 0x0

    goto/16 :goto_7

    .line 348
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_7
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1200()Landroid/app/ProgressDialog;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 349
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1200()Landroid/app/ProgressDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_8

    .line 364
    .end local v0           #bBattery:Z
    .end local v4           #mPowerManagerService:Landroid/os/IPowerManager;
    :catch_4
    move-exception v3

    .line 365
    .local v3, ex:Landroid/os/RemoteException;
    const-string v8, "ShutdownThread"

    const-string v9, "go to sleep error "

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 293
    .end local v3           #ex:Landroid/os/RemoteException;
    .end local v7           #vibrator:Landroid/os/Vibrator;
    :catch_5
    move-exception v8

    goto/16 :goto_2

    .line 313
    .restart local v7       #vibrator:Landroid/os/Vibrator;
    :catch_6
    move-exception v8

    goto/16 :goto_5

    .line 324
    .restart local v4       #mPowerManagerService:Landroid/os/IPowerManager;
    :catch_7
    move-exception v8

    goto/16 :goto_6
.end method
