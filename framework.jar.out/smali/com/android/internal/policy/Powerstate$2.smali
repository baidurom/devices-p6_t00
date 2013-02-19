.class Lcom/android/internal/policy/Powerstate$2;
.super Landroid/content/BroadcastReceiver;
.source "Powerstate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/Powerstate;->sendStopBC(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/Powerstate;

.field final synthetic val$broadcastDoneSync:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/Powerstate;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 753
    iput-object p1, p0, Lcom/android/internal/policy/Powerstate$2;->this$0:Lcom/android/internal/policy/Powerstate;

    iput-object p2, p0, Lcom/android/internal/policy/Powerstate$2;->val$broadcastDoneSync:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 756
    iget-object v1, p0, Lcom/android/internal/policy/Powerstate$2;->val$broadcastDoneSync:Ljava/lang/Object;

    monitor-enter v1

    .line 757
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/android/internal/policy/Powerstate;->access$102(Z)Z

    .line 758
    iget-object v0, p0, Lcom/android/internal/policy/Powerstate$2;->val$broadcastDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 759
    monitor-exit v1

    .line 760
    return-void

    .line 759
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
