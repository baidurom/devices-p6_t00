.class Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader$1;
.super Landroid/os/AsyncTask;
.source "ApplicationInfoLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader;->loadInBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader;

.field final synthetic val$pm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader;Landroid/content/pm/PackageManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader$1;->this$0:Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader;

    iput-object p2, p0, Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader$1;->val$pm:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .parameter "params"

    .prologue
    const/4 v5, 0x1

    .line 71
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v2

    .line 72
    .local v2, origPri:I
    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 75
    :goto_0
    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader$1;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 98
    :goto_1
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 99
    const/4 v3, 0x0

    return-object v3

    .line 78
    :cond_0
    const/4 v1, 0x0

    .line 79
    .local v1, details:Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;
    :goto_2
    if-nez v1, :cond_1

    .line 81
    :try_start_0
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader$1;->this$0:Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader;

    #getter for: Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader;->viewWaitingForNumber:Ljava/util/concurrent/LinkedBlockingQueue;
    invoke-static {v3}, Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader;->access$100(Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 85
    :cond_1
    invoke-virtual {v1}, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 87
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader$1;->this$0:Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader;

    #setter for: Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader;->isLoaded:Z
    invoke-static {v3, v5}, Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader;->access$202(Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader;Z)Z

    goto :goto_1

    .line 90
    :cond_2
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader$1;->val$pm:Landroid/content/pm/PackageManager;

    iget-object v4, v1, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;->label:Ljava/lang/String;

    .line 91
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader$1;->val$pm:Landroid/content/pm/PackageManager;

    iget-object v4, v1, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v1, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 92
    iput-boolean v5, v1, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;->visible:Z

    .line 93
    monitor-enter v1

    .line 94
    const/4 v3, 0x1

    :try_start_1
    new-array v3, v3, [Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {p0, v3}, Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader$1;->publishProgress([Ljava/lang/Object;)V

    .line 95
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 82
    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method protected varargs onProgressUpdate([Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader$1;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader$1;->this$0:Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    #calls: Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader;->refreshListView(Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;)V
    invoke-static {v0, v1}, Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader;->access$000(Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader;Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;)V

    .line 68
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    check-cast p1, [Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader$1;->onProgressUpdate([Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;)V

    return-void
.end method
