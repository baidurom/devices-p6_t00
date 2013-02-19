.class public Lcom/huawei/permission/ContentPermission;
.super Ljava/lang/Object;
.source "ContentPermission.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StubController"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPermissionType:I

.field private mUid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/huawei/permission/ContentPermission;->mContext:Landroid/content/Context;

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/permission/ContentPermission;->mPermissionType:I

    .line 21
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/huawei/permission/ContentPermission;->mUid:I

    .line 23
    return-void
.end method


# virtual methods
.method public getContentType(Landroid/net/Uri;)I
    .locals 2
    .parameter "uri"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/huawei/permission/ContentPermission;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/huawei/permission/ContentPermission;->mUid:I

    invoke-static {v0, v1}, Lcom/huawei/permission/StubController;->checkPrecondition(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 46
    :goto_0
    return v0

    .line 30
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contacts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 32
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/huawei/permission/ContentPermission;->mPermissionType:I

    .line 46
    :cond_2
    :goto_1
    iget v0, p0, Lcom/huawei/permission/ContentPermission;->mPermissionType:I

    goto :goto_0

    .line 33
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "call_log"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 34
    const/4 v0, 0x2

    iput v0, p0, Lcom/huawei/permission/ContentPermission;->mPermissionType:I

    goto :goto_1

    .line 35
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mms-sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 38
    :cond_5
    const/4 v0, 0x4

    iput v0, p0, Lcom/huawei/permission/ContentPermission;->mPermissionType:I

    goto :goto_1

    .line 39
    :cond_6
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.calendar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40
    const-string v0, "StubController"

    const-string v1, "calendar access!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const/16 v0, 0x800

    iput v0, p0, Lcom/huawei/permission/ContentPermission;->mPermissionType:I

    goto :goto_1
.end method

.method public getPermission(Landroid/database/Cursor;)I
    .locals 1
    .parameter "cursor"

    .prologue
    .line 59
    iget v0, p0, Lcom/huawei/permission/ContentPermission;->mPermissionType:I

    invoke-static {p1, v0}, Lcom/huawei/permission/StubController;->getPermission(Landroid/database/Cursor;I)I

    move-result v0

    return v0
.end method

.method public isGlobalSwitchOn(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public remind(Landroid/database/Cursor;)Z
    .locals 4
    .parameter "c"

    .prologue
    .line 55
    const/4 v0, -0x1

    iget v1, p0, Lcom/huawei/permission/ContentPermission;->mPermissionType:I

    iget v2, p0, Lcom/huawei/permission/ContentPermission;->mUid:I

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/huawei/permission/StubController;->remind(Landroid/database/Cursor;IILjava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendIntentForNotify(II)V
    .locals 2
    .parameter "uid"
    .parameter "permissionOp"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/huawei/permission/ContentPermission;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/huawei/permission/ContentPermission;->mPermissionType:I

    invoke-static {v0, v1, p1, p2}, Lcom/huawei/permission/StubController;->sendIntentForNotify(Landroid/content/Context;III)V

    .line 64
    return-void
.end method
