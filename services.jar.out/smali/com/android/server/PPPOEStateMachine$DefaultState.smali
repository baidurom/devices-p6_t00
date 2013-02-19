.class Lcom/android/server/PPPOEStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "PPPOEStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PPPOEStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PPPOEStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/server/PPPOEStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/server/PPPOEStateMachine$DefaultState;->this$0:Lcom/android/server/PPPOEStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PPPOEStateMachine;Lcom/android/server/PPPOEStateMachine$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/android/server/PPPOEStateMachine$DefaultState;-><init>(Lcom/android/server/PPPOEStateMachine;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter "msg"

    .prologue
    .line 176
    const/4 v1, 0x1

    .line 177
    .local v1, result:Z
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 225
    const/4 v1, 0x0

    .line 229
    :cond_0
    :goto_0
    :sswitch_0
    return v1

    .line 179
    :sswitch_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_1

    .line 181
    const-string v2, "PPPOEStateMachine"

    const-string v3, "New client listening to asynchronous messages"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 184
    :cond_1
    const-string v2, "PPPOEStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Client connection failure, error="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 188
    :sswitch_2
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 189
    const-string v2, "PPPOEStateMachine"

    const-string v3, "Send failed, client connection lost"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 192
    :cond_2
    const-string v2, "PPPOEStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Client connection lost with reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 201
    :sswitch_3
    const-string v2, "PPPOEStateMachine"

    const-string v3, "start PPPOE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v2, p0, Lcom/android/server/PPPOEStateMachine$DefaultState;->this$0:Lcom/android/server/PPPOEStateMachine;

    #getter for: Lcom/android/server/PPPOEStateMachine;->mPPPOEState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v2}, Lcom/android/server/PPPOEStateMachine;->access$900(Lcom/android/server/PPPOEStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    sget-object v3, Landroid/net/wifi/PPPOEInfo$Status;->OFFLINE:Landroid/net/wifi/PPPOEInfo$Status;

    invoke-virtual {v3}, Landroid/net/wifi/PPPOEInfo$Status;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 204
    iget-object v2, p0, Lcom/android/server/PPPOEStateMachine$DefaultState;->this$0:Lcom/android/server/PPPOEStateMachine;

    iget-object v3, p0, Lcom/android/server/PPPOEStateMachine$DefaultState;->this$0:Lcom/android/server/PPPOEStateMachine;

    #getter for: Lcom/android/server/PPPOEStateMachine;->mConnectingState:Lcom/android/server/PPPOEStateMachine$ConnectingState;
    invoke-static {v3}, Lcom/android/server/PPPOEStateMachine;->access$1000(Lcom/android/server/PPPOEStateMachine;)Lcom/android/server/PPPOEStateMachine$ConnectingState;

    move-result-object v3

    #calls: Lcom/android/server/PPPOEStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/PPPOEStateMachine;->access$1100(Lcom/android/server/PPPOEStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 206
    :cond_3
    const-string v2, "PPPOEStateMachine"

    const-string v3, "the pppoe is already online."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.net.wifi.PPPOE_COMPLETED_ACTION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    .local v0, completeIntent:Landroid/content/Intent;
    const/high16 v2, 0x800

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 209
    const-string v2, "pppoe_result_status"

    const-string v3, "ALREADY_ONLINE"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    iget-object v2, p0, Lcom/android/server/PPPOEStateMachine$DefaultState;->this$0:Lcom/android/server/PPPOEStateMachine;

    #getter for: Lcom/android/server/PPPOEStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/PPPOEStateMachine;->access$1200(Lcom/android/server/PPPOEStateMachine;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 216
    .end local v0           #completeIntent:Landroid/content/Intent;
    :sswitch_4
    const-string v2, "PPPOEStateMachine"

    const-string v3, "stop PPPOE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v2, p0, Lcom/android/server/PPPOEStateMachine$DefaultState;->this$0:Lcom/android/server/PPPOEStateMachine;

    #getter for: Lcom/android/server/PPPOEStateMachine;->mPPPOEState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v2}, Lcom/android/server/PPPOEStateMachine;->access$900(Lcom/android/server/PPPOEStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    sget-object v3, Landroid/net/wifi/PPPOEInfo$Status;->ONLINE:Landroid/net/wifi/PPPOEInfo$Status;

    invoke-virtual {v3}, Landroid/net/wifi/PPPOEInfo$Status;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 219
    iget-object v2, p0, Lcom/android/server/PPPOEStateMachine$DefaultState;->this$0:Lcom/android/server/PPPOEStateMachine;

    iget-object v3, p0, Lcom/android/server/PPPOEStateMachine$DefaultState;->this$0:Lcom/android/server/PPPOEStateMachine;

    #getter for: Lcom/android/server/PPPOEStateMachine;->mDisconnectingState:Lcom/android/server/PPPOEStateMachine$DisconnectingState;
    invoke-static {v3}, Lcom/android/server/PPPOEStateMachine;->access$1300(Lcom/android/server/PPPOEStateMachine;)Lcom/android/server/PPPOEStateMachine$DisconnectingState;

    move-result-object v3

    #calls: Lcom/android/server/PPPOEStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/PPPOEStateMachine;->access$1400(Lcom/android/server/PPPOEStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 177
    nop

    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_1
        0x11001 -> :sswitch_0
        0x11004 -> :sswitch_2
        0x25003 -> :sswitch_0
        0x70001 -> :sswitch_3
        0x70002 -> :sswitch_4
    .end sparse-switch
.end method
