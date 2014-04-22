.class public Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader;
.super Ljava/lang/Object;
.source "ApplicationInfoLoader.java"


# instance fields
.field private isLoaded:Z

.field private mContext:Landroid/content/Context;

.field private mListActivity:Landroid/app/ListActivity;

.field private mLoader:Landroid/os/AsyncTask;
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
.end field

.field private viewWaitingForNumber:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/ListActivity;)V
    .locals 1
    .parameter "context"
    .parameter "lc"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader;->mContext:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader;->mListActivity:Landroid/app/ListActivity;

    .line 30
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader;->viewWaitingForNumber:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader;->isLoaded:Z

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader;Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader;->refreshListView(Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;)V

    return-void
.end method

.method static synthetic access$100(Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader;->viewWaitingForNumber:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method static synthetic access$202(Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader;->isLoaded:Z

    return p1
.end method

.method private refreshListView(Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;)V
    .locals 6
    .parameter "details"

    .prologue
    .line 106
    monitor-enter p1

    .line 107
    :try_start_0
    iget-object v4, p0, Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader;->mListActivity:Landroid/app/ListActivity;

    if-eqz v4, :cond_1

    .line 108
    iget-object v4, p0, Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader;->mListActivity:Landroid/app/ListActivity;

    invoke-virtual {v4}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 109
    .local v0, container:Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 110
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 111
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ViewHolder;

    .line 112
    .local v3, vh:Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ViewHolder;
    iget-object v4, p1, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;->packageName:Ljava/lang/String;

    iget-object v5, v3, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ViewHolder;->packgeName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 113
    iget-object v4, v3, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v5, p1, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;->label:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v4, v3, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v5, p1, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 109
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    .end local v0           #container:Landroid/view/ViewGroup;
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    .end local v3           #vh:Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ViewHolder;
    :cond_1
    monitor-exit p1

    .line 120
    return-void

    .line 119
    :catchall_0
    move-exception v4

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method


# virtual methods
.method public cancelLoading()V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader;->mLoader:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader;->mLoader:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader;->mLoader:Landroid/os/AsyncTask;

    .line 39
    :cond_0
    return-void
.end method

.method public insertWaitingObject(Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;)V
    .locals 1
    .parameter "details"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader;->isLoaded:Z

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader;->viewWaitingForNumber:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_0
    return-void
.end method

.method public loadInBackground()V
    .locals 4

    .prologue
    .line 56
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader;->mListActivity:Landroid/app/ListActivity;

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "please set list activity!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader;->cancelLoading()V

    .line 60
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 61
    .local v0, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader$1;

    invoke-direct {v1, p0, v0}, Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader$1;-><init>(Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader;Landroid/content/pm/PackageManager;)V

    iput-object v1, p0, Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader;->mLoader:Landroid/os/AsyncTask;

    .line 102
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader;->mLoader:Landroid/os/AsyncTask;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 103
    return-void
.end method

.method public putWaitingObject(Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;)V
    .locals 2
    .parameter "details"

    .prologue
    .line 43
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader;->viewWaitingForNumber:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
