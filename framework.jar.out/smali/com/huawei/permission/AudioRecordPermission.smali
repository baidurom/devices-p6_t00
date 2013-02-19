.class public Lcom/huawei/permission/AudioRecordPermission;
.super Ljava/lang/Object;
.source "AudioRecordPermission.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioRecordPermission"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mUid:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/permission/AudioRecordPermission;->mContext:Landroid/content/Context;

    .line 21
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/huawei/permission/AudioRecordPermission;->mUid:I

    .line 22
    const-string v0, "AudioRecordPermission"

    const-string v1, "AudioRecordPermission"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    return-void
.end method

.method private getCallState(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 54
    const-string/jumbo v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 55
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    return v1
.end method


# virtual methods
.method public remind()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x80

    .line 26
    iget-object v2, p0, Lcom/huawei/permission/AudioRecordPermission;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/huawei/permission/AudioRecordPermission;->mUid:I

    invoke-static {v2, v3}, Lcom/huawei/permission/StubController;->checkPrecondition(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    iget-object v2, p0, Lcom/huawei/permission/AudioRecordPermission;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/huawei/permission/AudioRecordPermission;->getCallState(Landroid/content/Context;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 34
    iget-object v2, p0, Lcom/huawei/permission/AudioRecordPermission;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/huawei/permission/StubController;->isGlobalSwitchOn(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    iget-object v2, p0, Lcom/huawei/permission/AudioRecordPermission;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/huawei/permission/AudioRecordPermission;->mUid:I

    invoke-static {v2, v4, v3, v5}, Lcom/huawei/permission/StubController;->remind(Landroid/content/Context;IILjava/lang/String;)I

    move-result v1

    .line 41
    .local v1, remindResult:I
    const/4 v2, -0x1

    if-ne v2, v1, :cond_2

    .line 42
    const-string v2, "AudioRecordPermission"

    const-string/jumbo v3, "remind error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 46
    :cond_2
    iget-object v2, p0, Lcom/huawei/permission/AudioRecordPermission;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/huawei/permission/AudioRecordPermission;->mUid:I

    invoke-static {v2, v4, v3}, Lcom/huawei/permission/StubController;->getPermission(Landroid/content/Context;II)I

    move-result v0

    .line 47
    .local v0, permissionOp:I
    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    .line 49
    iget-object v2, p0, Lcom/huawei/permission/AudioRecordPermission;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/huawei/permission/AudioRecordPermission;->mUid:I

    invoke-static {v2, v3, v4, v0, v5}, Lcom/huawei/permission/StubController;->notifyAlert(Landroid/content/Context;IIILjava/lang/String;)V

    goto :goto_0
.end method
