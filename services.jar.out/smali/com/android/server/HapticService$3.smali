.class Lcom/android/server/HapticService$3;
.super Landroid/content/BroadcastReceiver;
.source "HapticService.java"


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
    .line 720
    iput-object p1, p0, Lcom/android/server/HapticService$3;->this$0:Lcom/android/server/HapticService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 722
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 723
    iget-object v2, p0, Lcom/android/server/HapticService$3;->this$0:Lcom/android/server/HapticService;

    #getter for: Lcom/android/server/HapticService;->mVibrations:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/android/server/HapticService;->access$000(Lcom/android/server/HapticService;)Ljava/util/LinkedList;

    move-result-object v3

    monitor-enter v3

    .line 724
    :try_start_0
    iget-object v2, p0, Lcom/android/server/HapticService$3;->this$0:Lcom/android/server/HapticService;

    #calls: Lcom/android/server/HapticService;->doCancelVibrateLocked()V
    invoke-static {v2}, Lcom/android/server/HapticService;->access$500(Lcom/android/server/HapticService;)V

    .line 725
    invoke-static {}, Lcom/android/server/HapticService;->access$1600()Lcom/immersion/Haptic;

    invoke-static {}, Lcom/immersion/Haptic;->stopPlayingEffect()V

    .line 726
    iget-object v2, p0, Lcom/android/server/HapticService$3;->this$0:Lcom/android/server/HapticService;

    #getter for: Lcom/android/server/HapticService;->mVibrations:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/android/server/HapticService;->access$000(Lcom/android/server/HapticService;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 727
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 728
    iget-object v4, p0, Lcom/android/server/HapticService$3;->this$0:Lcom/android/server/HapticService;

    iget-object v2, p0, Lcom/android/server/HapticService$3;->this$0:Lcom/android/server/HapticService;

    #getter for: Lcom/android/server/HapticService;->mVibrations:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/android/server/HapticService;->access$000(Lcom/android/server/HapticService;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/HapticService$Vibration;

    #calls: Lcom/android/server/HapticService;->unlinkVibration(Lcom/android/server/HapticService$Vibration;)V
    invoke-static {v4, v2}, Lcom/android/server/HapticService;->access$1800(Lcom/android/server/HapticService;Lcom/android/server/HapticService$Vibration;)V

    .line 727
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 731
    :cond_0
    iget-object v2, p0, Lcom/android/server/HapticService$3;->this$0:Lcom/android/server/HapticService;

    #getter for: Lcom/android/server/HapticService;->mVibrations:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/android/server/HapticService;->access$000(Lcom/android/server/HapticService;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 732
    monitor-exit v3

    .line 734
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_1
    return-void

    .line 732
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
