.class Lcom/android/server/am/BroadcastQueue$2;
.super Ljava/lang/Object;
.source "BroadcastQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/BroadcastQueue;->processCurBroadcastLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/ProcessRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BroadcastQueue;

.field final synthetic val$app:Lcom/android/server/am/ProcessRecord;

.field final synthetic val$r:Lcom/android/server/am/BroadcastRecord;


# direct methods
.method constructor <init>(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/ProcessRecord;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueue$2;->this$0:Lcom/android/server/am/BroadcastQueue;

    iput-object p2, p0, Lcom/android/server/am/BroadcastQueue$2;->val$r:Lcom/android/server/am/BroadcastRecord;

    iput-object p3, p0, Lcom/android/server/am/BroadcastQueue$2;->val$app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 243
    :try_start_0
    const-string v0, "BroadcastQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "===== Delivering to component in time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue$2;->val$r:Lcom/android/server/am/BroadcastRecord;

    iget-object v2, v2, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue$2;->val$r:Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue$2;->val$app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue$2;->val$r:Lcom/android/server/am/BroadcastRecord;

    iget-object v2, v2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue$2;->val$r:Lcom/android/server/am/BroadcastRecord;

    iget-object v2, v2, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    iget-object v3, p0, Lcom/android/server/am/BroadcastQueue$2;->this$0:Lcom/android/server/am/BroadcastQueue;

    iget-object v3, v3, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, p0, Lcom/android/server/am/BroadcastQueue$2;->val$r:Lcom/android/server/am/BroadcastRecord;

    iget-object v4, v4, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/BroadcastQueue$2;->val$r:Lcom/android/server/am/BroadcastRecord;

    iget v4, v4, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v5, p0, Lcom/android/server/am/BroadcastQueue$2;->val$r:Lcom/android/server/am/BroadcastRecord;

    iget-object v5, v5, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/am/BroadcastQueue$2;->val$r:Lcom/android/server/am/BroadcastRecord;

    iget-object v6, v6, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-object v7, p0, Lcom/android/server/am/BroadcastQueue$2;->val$r:Lcom/android/server/am/BroadcastRecord;

    iget-boolean v7, v7, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    iget-object v8, p0, Lcom/android/server/am/BroadcastQueue$2;->val$r:Lcom/android/server/am/BroadcastRecord;

    iget v8, v8, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-interface/range {v0 .. v8}, Landroid/app/IApplicationThread;->scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :goto_0
    return-void

    .line 249
    :catch_0
    move-exception v9

    .line 250
    .local v9, e:Ljava/lang/Exception;
    const-string v0, "BroadcastQueue"

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
