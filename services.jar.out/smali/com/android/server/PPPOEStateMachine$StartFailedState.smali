.class Lcom/android/server/PPPOEStateMachine$StartFailedState;
.super Lcom/android/internal/util/State;
.source "PPPOEStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PPPOEStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartFailedState"
.end annotation


# instance fields
.field private errorCode:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/PPPOEStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/server/PPPOEStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 433
    iput-object p1, p0, Lcom/android/server/PPPOEStateMachine$StartFailedState;->this$0:Lcom/android/server/PPPOEStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PPPOEStateMachine;Lcom/android/server/PPPOEStateMachine$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 433
    invoke-direct {p0, p1}, Lcom/android/server/PPPOEStateMachine$StartFailedState;-><init>(Lcom/android/server/PPPOEStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    .line 438
    const-string v1, "PPPOEStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to start PPPOE, error code is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/PPPOEStateMachine$StartFailedState;->errorCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v1, p0, Lcom/android/server/PPPOEStateMachine$StartFailedState;->this$0:Lcom/android/server/PPPOEStateMachine;

    #calls: Lcom/android/server/PPPOEStateMachine;->stopPPPOE()Z
    invoke-static {v1}, Lcom/android/server/PPPOEStateMachine;->access$3000(Lcom/android/server/PPPOEStateMachine;)Z

    .line 441
    iget-object v1, p0, Lcom/android/server/PPPOEStateMachine$StartFailedState;->this$0:Lcom/android/server/PPPOEStateMachine;

    #getter for: Lcom/android/server/PPPOEStateMachine;->mPPPOEState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v1}, Lcom/android/server/PPPOEStateMachine;->access$900(Lcom/android/server/PPPOEStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/PPPOEInfo$Status;->OFFLINE:Landroid/net/wifi/PPPOEInfo$Status;

    invoke-virtual {v2}, Landroid/net/wifi/PPPOEInfo$Status;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 444
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.PPPOE_COMPLETED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 445
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 446
    const-string v1, "pppoe_result_status"

    const-string v2, "FAILURE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    const-string v1, "pppoe_result_error_code"

    iget-object v2, p0, Lcom/android/server/PPPOEStateMachine$StartFailedState;->errorCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    iget-object v1, p0, Lcom/android/server/PPPOEStateMachine$StartFailedState;->this$0:Lcom/android/server/PPPOEStateMachine;

    #getter for: Lcom/android/server/PPPOEStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/PPPOEStateMachine;->access$1200(Lcom/android/server/PPPOEStateMachine;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 451
    iget-object v1, p0, Lcom/android/server/PPPOEStateMachine$StartFailedState;->this$0:Lcom/android/server/PPPOEStateMachine;

    iget-object v2, p0, Lcom/android/server/PPPOEStateMachine$StartFailedState;->this$0:Lcom/android/server/PPPOEStateMachine;

    #getter for: Lcom/android/server/PPPOEStateMachine;->mInitialState:Lcom/android/server/PPPOEStateMachine$InitialState;
    invoke-static {v2}, Lcom/android/server/PPPOEStateMachine;->access$3100(Lcom/android/server/PPPOEStateMachine;)Lcom/android/server/PPPOEStateMachine$InitialState;

    move-result-object v2

    #calls: Lcom/android/server/PPPOEStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/PPPOEStateMachine;->access$3200(Lcom/android/server/PPPOEStateMachine;Lcom/android/internal/util/IState;)V

    .line 452
    return-void
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .locals 0
    .parameter "errorCode"

    .prologue
    .line 459
    iput-object p1, p0, Lcom/android/server/PPPOEStateMachine$StartFailedState;->errorCode:Ljava/lang/String;

    .line 460
    return-void
.end method
