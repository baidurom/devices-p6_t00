.class public Lcom/huawei/permission/CallPermission;
.super Ljava/lang/Object;
.source "CallPermission.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CallPermission"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/huawei/permission/CallPermission;->mContext:Landroid/content/Context;

    .line 14
    const-string v0, "CallPermission"

    const-string v1, "CallPermission"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    return-void
.end method


# virtual methods
.method public isCallBlocked(Landroid/content/Intent;I)Z
    .locals 10
    .parameter "intent"
    .parameter "uid"

    .prologue
    const/4 v6, 0x1

    const/16 v9, 0x40

    const/4 v7, 0x0

    .line 18
    iget-object v8, p0, Lcom/huawei/permission/CallPermission;->mContext:Landroid/content/Context;

    invoke-static {v8, p2}, Lcom/huawei/permission/StubController;->checkPrecondition(Landroid/content/Context;I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 53
    :cond_0
    :goto_0
    return v7

    .line 22
    :cond_1
    iget-object v8, p0, Lcom/huawei/permission/CallPermission;->mContext:Landroid/content/Context;

    invoke-static {v8, v9}, Lcom/huawei/permission/StubController;->isGlobalSwitchOn(Landroid/content/Context;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 26
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 31
    const-string v8, "android.intent.action.CALL"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 36
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v5

    .line 37
    .local v5, uriStr:Ljava/lang/String;
    const/16 v8, 0x3a

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    add-int/lit8 v3, v8, 0x1

    .line 38
    .local v3, start:I
    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 40
    .local v4, tel:Ljava/lang/String;
    iget-object v8, p0, Lcom/huawei/permission/CallPermission;->mContext:Landroid/content/Context;

    invoke-static {v8, v9, p2, v4}, Lcom/huawei/permission/StubController;->remind(Landroid/content/Context;IILjava/lang/String;)I

    move-result v2

    .line 41
    .local v2, remindResult:I
    const/4 v8, -0x1

    if-ne v8, v2, :cond_2

    .line 42
    const-string v6, "CallPermission"

    const-string/jumbo v8, "remind error"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 46
    :cond_2
    iget-object v8, p0, Lcom/huawei/permission/CallPermission;->mContext:Landroid/content/Context;

    invoke-static {v8, v9, p2}, Lcom/huawei/permission/StubController;->getPermission(Landroid/content/Context;II)I

    move-result v1

    .line 48
    .local v1, permissionOp:I
    if-ne v6, v2, :cond_3

    .line 50
    iget-object v8, p0, Lcom/huawei/permission/CallPermission;->mContext:Landroid/content/Context;

    invoke-static {v8, p2, v9, v1, v4}, Lcom/huawei/permission/StubController;->notifyAlert(Landroid/content/Context;IIILjava/lang/String;)V

    .line 53
    :cond_3
    const/4 v8, 0x2

    if-ne v8, v1, :cond_4

    :goto_1
    move v7, v6

    goto :goto_0

    :cond_4
    move v6, v7

    goto :goto_1
.end method
