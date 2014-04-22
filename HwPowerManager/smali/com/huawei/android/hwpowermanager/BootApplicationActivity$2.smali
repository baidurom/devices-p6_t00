.class Lcom/huawei/android/hwpowermanager/BootApplicationActivity$2;
.super Ljava/lang/Object;
.source "BootApplicationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->contentResolverOnDestory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/hwpowermanager/BootApplicationActivity;


# direct methods
.method constructor <init>(Lcom/huawei/android/hwpowermanager/BootApplicationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 515
    iput-object p1, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$2;->this$0:Lcom/huawei/android/hwpowermanager/BootApplicationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 519
    invoke-static {}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    .line 520
    :try_start_0
    invoke-static {}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 521
    .local v1, size:I
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 522
    .local v2, values:Landroid/content/ContentValues;
    const/4 v0, 0x0

    .local v0, ifor:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 523
    invoke-static {}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;

    iget-boolean v3, v3, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mNewEnable:Z

    if-eqz v3, :cond_0

    .line 524
    iget-object v5, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$2;->this$0:Lcom/huawei/android/hwpowermanager/BootApplicationActivity;

    sget-object v6, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mForbiddenAppsUri:Landroid/net/Uri;

    invoke-static {}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;

    iget-object v7, v3, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mPkgName:Ljava/lang/String;

    invoke-static {}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;

    iget v3, v3, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mType:I

    invoke-virtual {v5, v6, v7, v3}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->insertToDB(Landroid/net/Uri;Ljava/lang/String;I)V

    .line 525
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 522
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 527
    :cond_0
    iget-object v5, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$2;->this$0:Lcom/huawei/android/hwpowermanager/BootApplicationActivity;

    sget-object v6, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mForbiddenAppsUri:Landroid/net/Uri;

    invoke-static {}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;

    iget-object v3, v3, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mPkgName:Ljava/lang/String;

    invoke-virtual {v5, v6, v3}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->deleteFromDB(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_1

    .line 530
    .end local v0           #ifor:I
    .end local v1           #size:I
    .end local v2           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #ifor:I
    .restart local v1       #size:I
    .restart local v2       #values:Landroid/content/ContentValues;
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 532
    return-void
.end method
