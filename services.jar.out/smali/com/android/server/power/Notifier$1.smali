.class Lcom/android/server/power/Notifier$1;
.super Ljava/lang/Object;
.source "Notifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/Notifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/Notifier;


# direct methods
.method constructor <init>(Lcom/android/server/power/Notifier;)V
    .locals 0
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/server/power/Notifier$1;->this$0:Lcom/android/server/power/Notifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 273
    :goto_0
    iget-object v2, p0, Lcom/android/server/power/Notifier$1;->this$0:Lcom/android/server/power/Notifier;

    #getter for: Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/power/Notifier;->access$000(Lcom/android/server/power/Notifier;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 274
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/Notifier$1;->this$0:Lcom/android/server/power/Notifier;

    #getter for: Lcom/android/server/power/Notifier;->mBroadcastQueue:[I
    invoke-static {v2}, Lcom/android/server/power/Notifier;->access$100(Lcom/android/server/power/Notifier;)[I

    move-result-object v2

    const/4 v4, 0x0

    aget v1, v2, v4

    .line 275
    .local v1, value:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 276
    iget-object v2, p0, Lcom/android/server/power/Notifier$1;->this$0:Lcom/android/server/power/Notifier;

    #getter for: Lcom/android/server/power/Notifier;->mBroadcastQueue:[I
    invoke-static {v2}, Lcom/android/server/power/Notifier;->access$100(Lcom/android/server/power/Notifier;)[I

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/power/Notifier$1;->this$0:Lcom/android/server/power/Notifier;

    #getter for: Lcom/android/server/power/Notifier;->mBroadcastQueue:[I
    invoke-static {v4}, Lcom/android/server/power/Notifier;->access$100(Lcom/android/server/power/Notifier;)[I

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    aget v4, v4, v5

    aput v4, v2, v0

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 278
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 280
    iget-object v2, p0, Lcom/android/server/power/Notifier$1;->this$0:Lcom/android/server/power/Notifier;

    #calls: Lcom/android/server/power/Notifier;->onWakeUpStartedInternal()V
    invoke-static {v2}, Lcom/android/server/power/Notifier;->access$200(Lcom/android/server/power/Notifier;)V

    goto :goto_0

    .line 278
    .end local v0           #i:I
    .end local v1           #value:I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 282
    .restart local v0       #i:I
    .restart local v1       #value:I
    :cond_1
    if-nez v1, :cond_2

    .line 283
    iget-object v2, p0, Lcom/android/server/power/Notifier$1;->this$0:Lcom/android/server/power/Notifier;

    #calls: Lcom/android/server/power/Notifier;->onGoToSleepFinishedInternal()V
    invoke-static {v2}, Lcom/android/server/power/Notifier;->access$300(Lcom/android/server/power/Notifier;)V

    goto :goto_0

    .line 291
    :cond_2
    return-void
.end method
