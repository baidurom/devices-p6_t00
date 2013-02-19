.class public Lcom/huawei/permission/ANRFilter;
.super Ljava/lang/Object;
.source "ANRFilter.java"


# static fields
.field public static final CMD_ADD:I = 0x0

.field public static final CMD_CHECK:I = 0x2

.field public static final CMD_REMOVE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ANRFilter"

.field private static sANRFilterInstance:Lcom/huawei/permission/ANRFilter;


# instance fields
.field private mSkipedUidFIFO:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/permission/ANRFilter;->sANRFilterInstance:Lcom/huawei/permission/ANRFilter;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/permission/ANRFilter;->mSkipedUidFIFO:Ljava/util/ArrayList;

    .line 20
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/huawei/permission/ANRFilter;
    .locals 2

    .prologue
    .line 23
    const-class v1, Lcom/huawei/permission/ANRFilter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/huawei/permission/ANRFilter;->sANRFilterInstance:Lcom/huawei/permission/ANRFilter;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/huawei/permission/ANRFilter;

    invoke-direct {v0}, Lcom/huawei/permission/ANRFilter;-><init>()V

    sput-object v0, Lcom/huawei/permission/ANRFilter;->sANRFilterInstance:Lcom/huawei/permission/ANRFilter;

    .line 26
    :cond_0
    sget-object v0, Lcom/huawei/permission/ANRFilter;->sANRFilterInstance:Lcom/huawei/permission/ANRFilter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized addUid(I)Z
    .locals 2
    .parameter "uid"

    .prologue
    .line 30
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/huawei/permission/ANRFilter;->mSkipedUidFIFO:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized checkUid(I)Z
    .locals 4
    .parameter "uid"

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/huawei/permission/ANRFilter;->mSkipedUidFIFO:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 43
    .local v0, exist:Z
    if-eqz v0, :cond_0

    .line 44
    const-string v1, "ANRFilter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exist uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_0
    monitor-exit p0

    return v0

    .line 42
    .end local v0           #exist:Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeUid(I)Z
    .locals 2
    .parameter "uid"

    .prologue
    .line 36
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/huawei/permission/ANRFilter;->mSkipedUidFIFO:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
