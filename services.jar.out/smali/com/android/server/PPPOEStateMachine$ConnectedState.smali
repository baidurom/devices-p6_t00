.class Lcom/android/server/PPPOEStateMachine$ConnectedState;
.super Lcom/android/internal/util/State;
.source "PPPOEStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PPPOEStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PPPOEStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/server/PPPOEStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 389
    iput-object p1, p0, Lcom/android/server/PPPOEStateMachine$ConnectedState;->this$0:Lcom/android/server/PPPOEStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PPPOEStateMachine;Lcom/android/server/PPPOEStateMachine$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 389
    invoke-direct {p0, p1}, Lcom/android/server/PPPOEStateMachine$ConnectedState;-><init>(Lcom/android/server/PPPOEStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 6

    .prologue
    const/high16 v5, 0x800

    .line 393
    const-string v2, "PPPOEStateMachine"

    const-string v3, "success to connect pppoe."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v2, p0, Lcom/android/server/PPPOEStateMachine$ConnectedState;->this$0:Lcom/android/server/PPPOEStateMachine;

    #getter for: Lcom/android/server/PPPOEStateMachine;->mPPPOEState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v2}, Lcom/android/server/PPPOEStateMachine;->access$900(Lcom/android/server/PPPOEStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    sget-object v3, Landroid/net/wifi/PPPOEInfo$Status;->ONLINE:Landroid/net/wifi/PPPOEInfo$Status;

    invoke-virtual {v3}, Landroid/net/wifi/PPPOEInfo$Status;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 396
    iget-object v2, p0, Lcom/android/server/PPPOEStateMachine$ConnectedState;->this$0:Lcom/android/server/PPPOEStateMachine;

    #getter for: Lcom/android/server/PPPOEStateMachine;->mConnectedTimeAtomicLong:Ljava/util/concurrent/atomic/AtomicLong;
    invoke-static {v2}, Lcom/android/server/PPPOEStateMachine;->access$2700(Lcom/android/server/PPPOEStateMachine;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 398
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.net.wifi.PPPOE_COMPLETED_ACTION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 399
    .local v0, completeIntent:Landroid/content/Intent;
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 400
    const-string v2, "pppoe_result_status"

    const-string v3, "SUCCESS"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    iget-object v2, p0, Lcom/android/server/PPPOEStateMachine$ConnectedState;->this$0:Lcom/android/server/PPPOEStateMachine;

    #getter for: Lcom/android/server/PPPOEStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/PPPOEStateMachine;->access$1200(Lcom/android/server/PPPOEStateMachine;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 403
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.net.wifi.PPPOE_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 404
    .local v1, connectIntent:Landroid/content/Intent;
    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 405
    const-string v2, "pppoe_state"

    const-string v3, "PPPOE_STATE_CONNECTED"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    iget-object v2, p0, Lcom/android/server/PPPOEStateMachine$ConnectedState;->this$0:Lcom/android/server/PPPOEStateMachine;

    #getter for: Lcom/android/server/PPPOEStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/PPPOEStateMachine;->access$1200(Lcom/android/server/PPPOEStateMachine;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 407
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 411
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 426
    const/4 v2, 0x0

    .line 429
    :cond_0
    :goto_0
    return v2

    .line 413
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 414
    .local v1, raw:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/NativeDaemonEvent;->unescapeArgs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 415
    .local v0, cooked:[Ljava/lang/String;
    const-string v3, "10"

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 416
    const-string v3, "PPPOEStateMachine"

    const-string v4, "lost pppoe service."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v3, p0, Lcom/android/server/PPPOEStateMachine$ConnectedState;->this$0:Lcom/android/server/PPPOEStateMachine;

    iget-object v4, p0, Lcom/android/server/PPPOEStateMachine$ConnectedState;->this$0:Lcom/android/server/PPPOEStateMachine;

    #getter for: Lcom/android/server/PPPOEStateMachine;->mDisconnectingState:Lcom/android/server/PPPOEStateMachine$DisconnectingState;
    invoke-static {v4}, Lcom/android/server/PPPOEStateMachine;->access$1300(Lcom/android/server/PPPOEStateMachine;)Lcom/android/server/PPPOEStateMachine$DisconnectingState;

    move-result-object v4

    #calls: Lcom/android/server/PPPOEStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/android/server/PPPOEStateMachine;->access$2800(Lcom/android/server/PPPOEStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 422
    .end local v0           #cooked:[Ljava/lang/String;
    .end local v1           #raw:Ljava/lang/String;
    :sswitch_1
    iget-object v3, p0, Lcom/android/server/PPPOEStateMachine$ConnectedState;->this$0:Lcom/android/server/PPPOEStateMachine;

    iget-object v4, p0, Lcom/android/server/PPPOEStateMachine$ConnectedState;->this$0:Lcom/android/server/PPPOEStateMachine;

    #getter for: Lcom/android/server/PPPOEStateMachine;->mDisconnectingState:Lcom/android/server/PPPOEStateMachine$DisconnectingState;
    invoke-static {v4}, Lcom/android/server/PPPOEStateMachine;->access$1300(Lcom/android/server/PPPOEStateMachine;)Lcom/android/server/PPPOEStateMachine$DisconnectingState;

    move-result-object v4

    #calls: Lcom/android/server/PPPOEStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/android/server/PPPOEStateMachine;->access$2900(Lcom/android/server/PPPOEStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 411
    nop

    :sswitch_data_0
    .sparse-switch
        0x25003 -> :sswitch_0
        0x70002 -> :sswitch_1
    .end sparse-switch
.end method
