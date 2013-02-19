.class Lcom/android/server/PPPOEStateMachine$DisconnectingState$1;
.super Ljava/lang/Object;
.source "PPPOEStateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/PPPOEStateMachine$DisconnectingState;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/PPPOEStateMachine$DisconnectingState;


# direct methods
.method constructor <init>(Lcom/android/server/PPPOEStateMachine$DisconnectingState;)V
    .locals 0
    .parameter

    .prologue
    .line 469
    iput-object p1, p0, Lcom/android/server/PPPOEStateMachine$DisconnectingState$1;->this$1:Lcom/android/server/PPPOEStateMachine$DisconnectingState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 473
    iget-object v1, p0, Lcom/android/server/PPPOEStateMachine$DisconnectingState$1;->this$1:Lcom/android/server/PPPOEStateMachine$DisconnectingState;

    iget-object v1, v1, Lcom/android/server/PPPOEStateMachine$DisconnectingState;->this$0:Lcom/android/server/PPPOEStateMachine;

    #getter for: Lcom/android/server/PPPOEStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/PPPOEStateMachine;->access$1700(Lcom/android/server/PPPOEStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 476
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.PPPOE_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 477
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 478
    const-string v1, "pppoe_state"

    const-string v2, "PPPOE_STATE_DISCONNECTING"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    iget-object v1, p0, Lcom/android/server/PPPOEStateMachine$DisconnectingState$1;->this$1:Lcom/android/server/PPPOEStateMachine$DisconnectingState;

    iget-object v1, v1, Lcom/android/server/PPPOEStateMachine$DisconnectingState;->this$0:Lcom/android/server/PPPOEStateMachine;

    #getter for: Lcom/android/server/PPPOEStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/PPPOEStateMachine;->access$1200(Lcom/android/server/PPPOEStateMachine;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 482
    const-string v1, "PPPOEStateMachine"

    const-string v2, "stop PPPOE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v1, p0, Lcom/android/server/PPPOEStateMachine$DisconnectingState$1;->this$1:Lcom/android/server/PPPOEStateMachine$DisconnectingState;

    iget-object v1, v1, Lcom/android/server/PPPOEStateMachine$DisconnectingState;->this$0:Lcom/android/server/PPPOEStateMachine;

    #calls: Lcom/android/server/PPPOEStateMachine;->stopPPPOE()Z
    invoke-static {v1}, Lcom/android/server/PPPOEStateMachine;->access$3000(Lcom/android/server/PPPOEStateMachine;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 486
    iget-object v1, p0, Lcom/android/server/PPPOEStateMachine$DisconnectingState$1;->this$1:Lcom/android/server/PPPOEStateMachine$DisconnectingState;

    iget-object v1, v1, Lcom/android/server/PPPOEStateMachine$DisconnectingState;->this$0:Lcom/android/server/PPPOEStateMachine;

    #getter for: Lcom/android/server/PPPOEStateMachine;->mStopFailedState:Lcom/android/server/PPPOEStateMachine$StopFailedState;
    invoke-static {v1}, Lcom/android/server/PPPOEStateMachine;->access$3400(Lcom/android/server/PPPOEStateMachine;)Lcom/android/server/PPPOEStateMachine$StopFailedState;

    move-result-object v1

    const-string v2, "FAILURE_INTERNAL_ERROR"

    invoke-virtual {v1, v2}, Lcom/android/server/PPPOEStateMachine$StopFailedState;->setErrorCode(Ljava/lang/String;)V

    .line 487
    iget-object v1, p0, Lcom/android/server/PPPOEStateMachine$DisconnectingState$1;->this$1:Lcom/android/server/PPPOEStateMachine$DisconnectingState;

    iget-object v1, v1, Lcom/android/server/PPPOEStateMachine$DisconnectingState;->this$0:Lcom/android/server/PPPOEStateMachine;

    iget-object v2, p0, Lcom/android/server/PPPOEStateMachine$DisconnectingState$1;->this$1:Lcom/android/server/PPPOEStateMachine$DisconnectingState;

    iget-object v2, v2, Lcom/android/server/PPPOEStateMachine$DisconnectingState;->this$0:Lcom/android/server/PPPOEStateMachine;

    #getter for: Lcom/android/server/PPPOEStateMachine;->mStopFailedState:Lcom/android/server/PPPOEStateMachine$StopFailedState;
    invoke-static {v2}, Lcom/android/server/PPPOEStateMachine;->access$3400(Lcom/android/server/PPPOEStateMachine;)Lcom/android/server/PPPOEStateMachine$StopFailedState;

    move-result-object v2

    #calls: Lcom/android/server/PPPOEStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/PPPOEStateMachine;->access$3500(Lcom/android/server/PPPOEStateMachine;Lcom/android/internal/util/IState;)V

    .line 489
    :cond_0
    iget-object v1, p0, Lcom/android/server/PPPOEStateMachine$DisconnectingState$1;->this$1:Lcom/android/server/PPPOEStateMachine$DisconnectingState;

    iget-object v1, v1, Lcom/android/server/PPPOEStateMachine$DisconnectingState;->this$0:Lcom/android/server/PPPOEStateMachine;

    #getter for: Lcom/android/server/PPPOEStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/PPPOEStateMachine;->access$1700(Lcom/android/server/PPPOEStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 490
    return-void
.end method
