.class public Lcom/android/server/PPPOEStateMachine$NativeDaemonConnectorCallbacks;
.super Ljava/lang/Object;
.source "PPPOEStateMachine.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PPPOEStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NativeDaemonConnectorCallbacks"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PPPOEStateMachine;


# direct methods
.method public constructor <init>(Lcom/android/server/PPPOEStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/server/PPPOEStateMachine$NativeDaemonConnectorCallbacks;->this$0:Lcom/android/server/PPPOEStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDaemonConnected()V
    .locals 2

    .prologue
    .line 119
    const-string v0, "PPPOEStateMachine"

    const-string v1, "Start native daemon connector success."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/android/server/PPPOEStateMachine$NativeDaemonConnectorCallbacks;->this$0:Lcom/android/server/PPPOEStateMachine;

    #getter for: Lcom/android/server/PPPOEStateMachine;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/android/server/PPPOEStateMachine;->access$800(Lcom/android/server/PPPOEStateMachine;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 122
    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 3
    .parameter "code"
    .parameter "raw"
    .parameter "cooked"

    .prologue
    .line 128
    const/16 v0, 0x28c

    if-ne p1, v0, :cond_0

    .line 130
    const-string v0, "PPPOEStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEvent receive native daemon connector event, code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",raw="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/android/server/PPPOEStateMachine$NativeDaemonConnectorCallbacks;->this$0:Lcom/android/server/PPPOEStateMachine;

    const v1, 0x25003

    invoke-virtual {v0, v1, p2}, Lcom/android/server/PPPOEStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 134
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
