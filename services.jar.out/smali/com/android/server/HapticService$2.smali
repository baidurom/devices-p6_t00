.class Lcom/android/server/HapticService$2;
.super Ljava/lang/Object;
.source "HapticService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HapticService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/HapticService;


# direct methods
.method constructor <init>(Lcom/android/server/HapticService;)V
    .locals 0
    .parameter

    .prologue
    .line 433
    iput-object p1, p0, Lcom/android/server/HapticService$2;->this$0:Lcom/android/server/HapticService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/server/HapticService$2;->this$0:Lcom/android/server/HapticService;

    #getter for: Lcom/android/server/HapticService;->mVibrations:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/android/server/HapticService;->access$000(Lcom/android/server/HapticService;)Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1

    .line 436
    :try_start_0
    iget-object v0, p0, Lcom/android/server/HapticService$2;->this$0:Lcom/android/server/HapticService;

    #calls: Lcom/android/server/HapticService;->doCancelVibrateLocked()V
    invoke-static {v0}, Lcom/android/server/HapticService;->access$500(Lcom/android/server/HapticService;)V

    .line 437
    iget-object v0, p0, Lcom/android/server/HapticService$2;->this$0:Lcom/android/server/HapticService;

    #calls: Lcom/android/server/HapticService;->startNextVibrationLocked()V
    invoke-static {v0}, Lcom/android/server/HapticService;->access$300(Lcom/android/server/HapticService;)V

    .line 438
    monitor-exit v1

    .line 439
    return-void

    .line 438
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
