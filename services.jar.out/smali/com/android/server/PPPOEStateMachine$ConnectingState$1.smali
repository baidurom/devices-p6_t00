.class Lcom/android/server/PPPOEStateMachine$ConnectingState$1;
.super Ljava/lang/Object;
.source "PPPOEStateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/PPPOEStateMachine$ConnectingState;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/PPPOEStateMachine$ConnectingState;

.field final synthetic val$message:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/android/server/PPPOEStateMachine$ConnectingState;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/server/PPPOEStateMachine$ConnectingState$1;->this$1:Lcom/android/server/PPPOEStateMachine$ConnectingState;

    iput-object p2, p0, Lcom/android/server/PPPOEStateMachine$ConnectingState$1;->val$message:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 267
    iget-object v2, p0, Lcom/android/server/PPPOEStateMachine$ConnectingState$1;->this$1:Lcom/android/server/PPPOEStateMachine$ConnectingState;

    iget-object v2, v2, Lcom/android/server/PPPOEStateMachine$ConnectingState;->this$0:Lcom/android/server/PPPOEStateMachine;

    #getter for: Lcom/android/server/PPPOEStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/android/server/PPPOEStateMachine;->access$1700(Lcom/android/server/PPPOEStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 268
    iget-object v2, p0, Lcom/android/server/PPPOEStateMachine$ConnectingState$1;->this$1:Lcom/android/server/PPPOEStateMachine$ConnectingState;

    iget-object v2, v2, Lcom/android/server/PPPOEStateMachine$ConnectingState;->this$0:Lcom/android/server/PPPOEStateMachine;

    #getter for: Lcom/android/server/PPPOEStateMachine;->mPPPOEState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v2}, Lcom/android/server/PPPOEStateMachine;->access$900(Lcom/android/server/PPPOEStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    sget-object v3, Landroid/net/wifi/PPPOEInfo$Status;->CONNECTING:Landroid/net/wifi/PPPOEInfo$Status;

    invoke-virtual {v3}, Landroid/net/wifi/PPPOEInfo$Status;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 269
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.net.wifi.PPPOE_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 270
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x800

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 271
    const-string v2, "pppoe_state"

    const-string v3, "PPPOE_STATE_CONNECTING"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    iget-object v2, p0, Lcom/android/server/PPPOEStateMachine$ConnectingState$1;->this$1:Lcom/android/server/PPPOEStateMachine$ConnectingState;

    iget-object v2, v2, Lcom/android/server/PPPOEStateMachine$ConnectingState;->this$0:Lcom/android/server/PPPOEStateMachine;

    #getter for: Lcom/android/server/PPPOEStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/PPPOEStateMachine;->access$1200(Lcom/android/server/PPPOEStateMachine;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 274
    iget-object v2, p0, Lcom/android/server/PPPOEStateMachine$ConnectingState$1;->val$message:Landroid/os/Message;

    iget-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/PPPOEConfig;

    .line 276
    .local v1, serverInfoConfig:Landroid/net/wifi/PPPOEConfig;
    const-string v2, "PPPOEStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start PPPOE with userName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/net/wifi/PPPOEConfig;->username:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v2, p0, Lcom/android/server/PPPOEStateMachine$ConnectingState$1;->this$1:Lcom/android/server/PPPOEStateMachine$ConnectingState;

    iget-object v2, v2, Lcom/android/server/PPPOEStateMachine$ConnectingState;->this$0:Lcom/android/server/PPPOEStateMachine;

    #calls: Lcom/android/server/PPPOEStateMachine;->startPPPOE(Landroid/net/wifi/PPPOEConfig;)Z
    invoke-static {v2, v1}, Lcom/android/server/PPPOEStateMachine;->access$1800(Lcom/android/server/PPPOEStateMachine;Landroid/net/wifi/PPPOEConfig;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 280
    iget-object v2, p0, Lcom/android/server/PPPOEStateMachine$ConnectingState$1;->this$1:Lcom/android/server/PPPOEStateMachine$ConnectingState;

    iget-object v2, v2, Lcom/android/server/PPPOEStateMachine$ConnectingState;->this$0:Lcom/android/server/PPPOEStateMachine;

    #getter for: Lcom/android/server/PPPOEStateMachine;->mStartFailedState:Lcom/android/server/PPPOEStateMachine$StartFailedState;
    invoke-static {v2}, Lcom/android/server/PPPOEStateMachine;->access$1900(Lcom/android/server/PPPOEStateMachine;)Lcom/android/server/PPPOEStateMachine$StartFailedState;

    move-result-object v2

    const-string v3, "FAILURE_INTERNAL_ERROR"

    invoke-virtual {v2, v3}, Lcom/android/server/PPPOEStateMachine$StartFailedState;->setErrorCode(Ljava/lang/String;)V

    .line 281
    iget-object v2, p0, Lcom/android/server/PPPOEStateMachine$ConnectingState$1;->this$1:Lcom/android/server/PPPOEStateMachine$ConnectingState;

    iget-object v2, v2, Lcom/android/server/PPPOEStateMachine$ConnectingState;->this$0:Lcom/android/server/PPPOEStateMachine;

    iget-object v3, p0, Lcom/android/server/PPPOEStateMachine$ConnectingState$1;->this$1:Lcom/android/server/PPPOEStateMachine$ConnectingState;

    iget-object v3, v3, Lcom/android/server/PPPOEStateMachine$ConnectingState;->this$0:Lcom/android/server/PPPOEStateMachine;

    #getter for: Lcom/android/server/PPPOEStateMachine;->mStartFailedState:Lcom/android/server/PPPOEStateMachine$StartFailedState;
    invoke-static {v3}, Lcom/android/server/PPPOEStateMachine;->access$1900(Lcom/android/server/PPPOEStateMachine;)Lcom/android/server/PPPOEStateMachine$StartFailedState;

    move-result-object v3

    #calls: Lcom/android/server/PPPOEStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/PPPOEStateMachine;->access$2000(Lcom/android/server/PPPOEStateMachine;Lcom/android/internal/util/IState;)V

    .line 283
    :cond_0
    iget-object v2, p0, Lcom/android/server/PPPOEStateMachine$ConnectingState$1;->this$1:Lcom/android/server/PPPOEStateMachine$ConnectingState;

    iget-object v2, v2, Lcom/android/server/PPPOEStateMachine$ConnectingState;->this$0:Lcom/android/server/PPPOEStateMachine;

    #getter for: Lcom/android/server/PPPOEStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/android/server/PPPOEStateMachine;->access$1700(Lcom/android/server/PPPOEStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 284
    return-void
.end method
