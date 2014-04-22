.class final Lcom/huawei/android/hwpowermanager/util/DbmsHelper$1;
.super Ljava/lang/Thread;
.source "DbmsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/android/hwpowermanager/util/DbmsHelper;->addLogToDropBox(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

.field final synthetic val$dbox:Landroid/os/DropBoxManager;

.field final synthetic val$dropboxTag:Ljava/lang/String;

.field final synthetic val$logFile:Ljava/io/File;

.field final synthetic val$sb:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/StringBuilder;Landroid/app/ApplicationErrorReport$CrashInfo;Landroid/os/DropBoxManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    iput-object p2, p0, Lcom/huawei/android/hwpowermanager/util/DbmsHelper$1;->val$logFile:Ljava/io/File;

    iput-object p3, p0, Lcom/huawei/android/hwpowermanager/util/DbmsHelper$1;->val$sb:Ljava/lang/StringBuilder;

    iput-object p4, p0, Lcom/huawei/android/hwpowermanager/util/DbmsHelper$1;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iput-object p5, p0, Lcom/huawei/android/hwpowermanager/util/DbmsHelper$1;->val$dbox:Landroid/os/DropBoxManager;

    iput-object p6, p0, Lcom/huawei/android/hwpowermanager/util/DbmsHelper$1;->val$dropboxTag:Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 112
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/util/DbmsHelper$1;->val$logFile:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/util/DbmsHelper$1;->val$sb:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/util/DbmsHelper$1;->val$logFile:Ljava/io/File;

    const/high16 v3, 0x10

    const-string v4, "\n\n[[TRUNCATED]]"

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/util/DbmsHelper$1;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/util/DbmsHelper$1;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v1, v1, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 121
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/util/DbmsHelper$1;->val$sb:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/util/DbmsHelper$1;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v2, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :cond_1
    invoke-static {}, Lcom/huawei/android/hwpowermanager/util/DbmsHelper;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addText : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/util/DbmsHelper$1;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/util/DbmsHelper$1;->val$dbox:Landroid/os/DropBoxManager;

    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/util/DbmsHelper$1;->val$dropboxTag:Ljava/lang/String;

    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/util/DbmsHelper$1;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, e:Ljava/io/IOException;
    invoke-static {}, Lcom/huawei/android/hwpowermanager/util/DbmsHelper;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/util/DbmsHelper$1;->val$logFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
