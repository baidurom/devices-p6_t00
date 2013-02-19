.class Lcom/android/server/PPPOEStateMachine$DisconnectingState;
.super Lcom/android/internal/util/State;
.source "PPPOEStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PPPOEStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisconnectingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PPPOEStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/server/PPPOEStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 463
    iput-object p1, p0, Lcom/android/server/PPPOEStateMachine$DisconnectingState;->this$0:Lcom/android/server/PPPOEStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PPPOEStateMachine;Lcom/android/server/PPPOEStateMachine$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 463
    invoke-direct {p0, p1}, Lcom/android/server/PPPOEStateMachine$DisconnectingState;-><init>(Lcom/android/server/PPPOEStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 466
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 467
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/PPPOEStateMachine$DisconnectingState;->this$0:Lcom/android/server/PPPOEStateMachine;

    #calls: Lcom/android/server/PPPOEStateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v1}, Lcom/android/server/PPPOEStateMachine;->access$3300(Lcom/android/server/PPPOEStateMachine;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 469
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/PPPOEStateMachine$DisconnectingState$1;

    invoke-direct {v2, p0}, Lcom/android/server/PPPOEStateMachine$DisconnectingState$1;-><init>(Lcom/android/server/PPPOEStateMachine$DisconnectingState;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 492
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    .line 496
    const/4 v2, 0x1

    .line 497
    .local v2, result:Z
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 510
    const/4 v2, 0x0

    .line 514
    :cond_0
    :goto_0
    return v2

    .line 499
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 500
    .local v1, raw:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/NativeDaemonEvent;->unescapeArgs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 501
    .local v0, cooked:[Ljava/lang/String;
    const-string v3, "0"

    aget-object v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 502
    iget-object v3, p0, Lcom/android/server/PPPOEStateMachine$DisconnectingState;->this$0:Lcom/android/server/PPPOEStateMachine;

    iget-object v4, p0, Lcom/android/server/PPPOEStateMachine$DisconnectingState;->this$0:Lcom/android/server/PPPOEStateMachine;

    #getter for: Lcom/android/server/PPPOEStateMachine;->mDisconnectedState:Lcom/android/server/PPPOEStateMachine$DisconnectedState;
    invoke-static {v4}, Lcom/android/server/PPPOEStateMachine;->access$3600(Lcom/android/server/PPPOEStateMachine;)Lcom/android/server/PPPOEStateMachine$DisconnectedState;

    move-result-object v4

    #calls: Lcom/android/server/PPPOEStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/android/server/PPPOEStateMachine;->access$3700(Lcom/android/server/PPPOEStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 503
    :cond_1
    sget-object v3, Lcom/android/server/PPPOEStateMachine;->stateCode:Ljava/util/Set;

    aget-object v4, v0, v5

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 504
    iget-object v3, p0, Lcom/android/server/PPPOEStateMachine$DisconnectingState;->this$0:Lcom/android/server/PPPOEStateMachine;

    #getter for: Lcom/android/server/PPPOEStateMachine;->mStopFailedState:Lcom/android/server/PPPOEStateMachine$StopFailedState;
    invoke-static {v3}, Lcom/android/server/PPPOEStateMachine;->access$3400(Lcom/android/server/PPPOEStateMachine;)Lcom/android/server/PPPOEStateMachine$StopFailedState;

    move-result-object v3

    aget-object v4, v0, v5

    invoke-virtual {v3, v4}, Lcom/android/server/PPPOEStateMachine$StopFailedState;->setErrorCode(Ljava/lang/String;)V

    .line 505
    iget-object v3, p0, Lcom/android/server/PPPOEStateMachine$DisconnectingState;->this$0:Lcom/android/server/PPPOEStateMachine;

    iget-object v4, p0, Lcom/android/server/PPPOEStateMachine$DisconnectingState;->this$0:Lcom/android/server/PPPOEStateMachine;

    #getter for: Lcom/android/server/PPPOEStateMachine;->mStopFailedState:Lcom/android/server/PPPOEStateMachine$StopFailedState;
    invoke-static {v4}, Lcom/android/server/PPPOEStateMachine;->access$3400(Lcom/android/server/PPPOEStateMachine;)Lcom/android/server/PPPOEStateMachine$StopFailedState;

    move-result-object v4

    #calls: Lcom/android/server/PPPOEStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/android/server/PPPOEStateMachine;->access$3800(Lcom/android/server/PPPOEStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 497
    :pswitch_data_0
    .packed-switch 0x25003
        :pswitch_0
    .end packed-switch
.end method
