.class public Lcom/huawei/permission/LocationPermission;
.super Ljava/lang/Object;
.source "LocationPermission.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LocationPermission"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/huawei/permission/LocationPermission;->mContext:Landroid/content/Context;

    .line 15
    return-void
.end method


# virtual methods
.method public isLocationBlocked()Z
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v1, 0x0

    .line 18
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 19
    .local v0, uid:I
    iget-object v2, p0, Lcom/huawei/permission/LocationPermission;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/huawei/permission/StubController;->checkPrecondition(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 27
    :cond_0
    :goto_0
    return v1

    .line 23
    :cond_1
    const/4 v2, -0x1

    iget-object v3, p0, Lcom/huawei/permission/LocationPermission;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v5, v0, v4}, Lcom/huawei/permission/StubController;->remind(Landroid/content/Context;IILjava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 27
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/huawei/permission/LocationPermission;->mContext:Landroid/content/Context;

    invoke-static {v3, v5, v0}, Lcom/huawei/permission/StubController;->getPermission(Landroid/content/Context;II)I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method
