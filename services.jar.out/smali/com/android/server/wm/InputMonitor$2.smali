.class Lcom/android/server/wm/InputMonitor$2;
.super Ljava/lang/Object;
.source "InputMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/InputMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/InputMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/wm/InputMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 432
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor$2;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 434
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$2;->this$0:Lcom/android/server/wm/InputMonitor;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/wm/InputMonitor;->isFastPowerisRun:Z

    .line 435
    invoke-static {}, Lcom/android/internal/policy/Powerstate;->getInstance()Lcom/android/internal/policy/Powerstate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/Powerstate;->quityScreenOffNatually()V

    .line 436
    new-instance v14, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$2;->this$0:Lcom/android/server/wm/InputMonitor;

    iget-object v1, v1, Lcom/android/server/wm/InputMonitor;->mSetModemPowerOn:Ljava/lang/Runnable;

    invoke-direct {v14, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 437
    .local v14, setModemOnThread:Ljava/lang/Thread;
    invoke-virtual {v14}, Ljava/lang/Thread;->start()V

    .line 438
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$2;->this$0:Lcom/android/server/wm/InputMonitor;

    #getter for: Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v1}, Lcom/android/server/wm/InputMonitor;->access$000(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getContext()Landroid/content/Context;

    move-result-object v12

    .line 439
    .local v12, mContext:Landroid/content/Context;
    const-string v1, "persist.sys.quickpoweron"

    const-string v3, "startpoweron"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const-string v1, "true"

    const-string v3, "ro.poweroff_alarm"

    const-string v4, "true"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 445
    const-string v1, "persist.sys.powerup_reason"

    const-string v3, "NORMAL"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    :cond_0
    invoke-static {v12}, Lcom/android/internal/policy/Powerstate;->restorePhoneState(Landroid/content/Context;)V

    .line 450
    const-string v1, "input monitor OoO"

    const-string v3, "I am going to Powerstate.showAnimationAgain"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    new-instance v13, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v13, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 453
    .local v13, mHomeIntent:Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v13, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 454
    const/high16 v1, 0x1020

    invoke-virtual {v13, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 456
    invoke-virtual {v12, v13}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 457
    invoke-static {v12}, Lcom/android/internal/policy/Powerstate;->showAnimationAgain(Landroid/content/Context;)V

    .line 460
    const-string v1, "persist.sys.actualpoweron"

    const-string v3, "false"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    new-instance v2, Landroid/content/Intent;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 465
    .local v2, bootComIntent:Landroid/content/Intent;
    const-string v1, "hwbootcompleted"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 468
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 469
    .local v0, mActivityManager:Landroid/app/IActivityManager;
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "android.permission.RECEIVE_BOOT_COMPLETED"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v0 .. v11}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    .end local v0           #mActivityManager:Landroid/app/IActivityManager;
    :goto_0
    invoke-static {v12}, Lcom/android/internal/policy/Powerstate;->restoreSensorState(Landroid/content/Context;)V

    .line 475
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$2;->this$0:Lcom/android/server/wm/InputMonitor;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/wm/InputMonitor;->isFastPowerisRun:Z

    .line 477
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$2;->this$0:Lcom/android/server/wm/InputMonitor;

    iget-object v1, v1, Lcom/android/server/wm/InputMonitor;->mFastPoweronlock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 480
    sget-object v1, Lcom/android/internal/policy/Powerstate;->sHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/wm/InputMonitor$2$1;

    invoke-direct {v3, p0}, Lcom/android/server/wm/InputMonitor$2$1;-><init>(Lcom/android/server/wm/InputMonitor$2;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 492
    :cond_1
    return-void

    .line 472
    :catch_0
    move-exception v1

    goto :goto_0
.end method
