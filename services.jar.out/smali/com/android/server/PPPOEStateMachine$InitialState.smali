.class Lcom/android/server/PPPOEStateMachine$InitialState;
.super Lcom/android/internal/util/State;
.source "PPPOEStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PPPOEStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitialState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PPPOEStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/server/PPPOEStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/server/PPPOEStateMachine$InitialState;->this$0:Lcom/android/server/PPPOEStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PPPOEStateMachine;Lcom/android/server/PPPOEStateMachine$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 233
    invoke-direct {p0, p1}, Lcom/android/server/PPPOEStateMachine$InitialState;-><init>(Lcom/android/server/PPPOEStateMachine;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    .line 237
    const/4 v1, 0x1

    .line 238
    .local v1, result:Z
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 251
    const/4 v1, 0x0

    .line 253
    :goto_0
    return v1

    .line 240
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/PPPOEStateMachine$InitialState;->this$0:Lcom/android/server/PPPOEStateMachine;

    #getter for: Lcom/android/server/PPPOEStateMachine;->mPPPOEState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v2}, Lcom/android/server/PPPOEStateMachine;->access$900(Lcom/android/server/PPPOEStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    sget-object v3, Landroid/net/wifi/PPPOEInfo$Status;->OFFLINE:Landroid/net/wifi/PPPOEInfo$Status;

    invoke-virtual {v3}, Landroid/net/wifi/PPPOEInfo$Status;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 241
    iget-object v2, p0, Lcom/android/server/PPPOEStateMachine$InitialState;->this$0:Lcom/android/server/PPPOEStateMachine;

    iget-object v3, p0, Lcom/android/server/PPPOEStateMachine$InitialState;->this$0:Lcom/android/server/PPPOEStateMachine;

    #getter for: Lcom/android/server/PPPOEStateMachine;->mConnectingState:Lcom/android/server/PPPOEStateMachine$ConnectingState;
    invoke-static {v3}, Lcom/android/server/PPPOEStateMachine;->access$1000(Lcom/android/server/PPPOEStateMachine;)Lcom/android/server/PPPOEStateMachine$ConnectingState;

    move-result-object v3

    #calls: Lcom/android/server/PPPOEStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/PPPOEStateMachine;->access$1500(Lcom/android/server/PPPOEStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 243
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.net.wifi.PPPOE_COMPLETED_ACTION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 244
    .local v0, completeIntent:Landroid/content/Intent;
    const/high16 v2, 0x800

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 245
    const-string v2, "pppoe_result_status"

    const-string v3, "ALREADY_ONLINE"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    iget-object v2, p0, Lcom/android/server/PPPOEStateMachine$InitialState;->this$0:Lcom/android/server/PPPOEStateMachine;

    #getter for: Lcom/android/server/PPPOEStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/PPPOEStateMachine;->access$1200(Lcom/android/server/PPPOEStateMachine;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 238
    nop

    :pswitch_data_0
    .packed-switch 0x70001
        :pswitch_0
    .end packed-switch
.end method
