.class public Lcom/huawei/android/hwpowermanager/ServiceReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ServiceReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/hwpowermanager/ServiceReceiver$MyHandler;
    }
.end annotation


# static fields
.field private static handlerthread:Landroid/os/HandlerThread;


# instance fields
.field private handler:Lcom/huawei/android/hwpowermanager/ServiceReceiver$MyHandler;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PackageAction"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/huawei/android/hwpowermanager/ServiceReceiver;->handlerthread:Landroid/os/HandlerThread;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/android/hwpowermanager/ServiceReceiver;->handler:Lcom/huawei/android/hwpowermanager/ServiceReceiver$MyHandler;

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/android/hwpowermanager/ServiceReceiver;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/ServiceReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/huawei/android/hwpowermanager/ServiceReceiver;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/huawei/android/hwpowermanager/ServiceReceiver;->updateRogueAppDB(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private updateRogueAppDB(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 2
    .parameter "pkgName"
    .parameter "field"
    .parameter "value"

    .prologue
    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/ServiceReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getRogue(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/ServiceReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->setRogue(Landroid/content/ContentResolver;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/huawei/android/hwpowermanager/ServiceReceiver;->mContext:Landroid/content/Context;

    .line 37
    const-string v4, "ServiceReceiver"

    const-string v5, "ServiceReceiver Start !!!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 40
    .local v0, extras:Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 41
    .local v3, replacing:Z
    if-eqz v0, :cond_0

    .line 43
    const-string v4, "android.intent.extra.REPLACING"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 44
    const-string v4, "ServiceReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "replacing = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_0
    sget-object v4, Lcom/huawei/android/hwpowermanager/ServiceReceiver;->handlerthread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v4

    if-nez v4, :cond_1

    .line 48
    sget-object v4, Lcom/huawei/android/hwpowermanager/ServiceReceiver;->handlerthread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 50
    :cond_1
    new-instance v4, Lcom/huawei/android/hwpowermanager/ServiceReceiver$MyHandler;

    sget-object v5, Lcom/huawei/android/hwpowermanager/ServiceReceiver;->handlerthread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/huawei/android/hwpowermanager/ServiceReceiver$MyHandler;-><init>(Lcom/huawei/android/hwpowermanager/ServiceReceiver;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/huawei/android/hwpowermanager/ServiceReceiver;->handler:Lcom/huawei/android/hwpowermanager/ServiceReceiver$MyHandler;

    .line 52
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v3, :cond_3

    .line 54
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, packageName:Ljava/lang/String;
    const-string v4, "ServiceReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received ACTION_PACKAGE_ADDED. PackageName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 68
    iget-object v4, p0, Lcom/huawei/android/hwpowermanager/ServiceReceiver;->handler:Lcom/huawei/android/hwpowermanager/ServiceReceiver$MyHandler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v1}, Lcom/huawei/android/hwpowermanager/ServiceReceiver$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 69
    .local v2, postMsg:Landroid/os/Message;
    iget-object v4, p0, Lcom/huawei/android/hwpowermanager/ServiceReceiver;->handler:Lcom/huawei/android/hwpowermanager/ServiceReceiver$MyHandler;

    invoke-virtual {v4, v2}, Lcom/huawei/android/hwpowermanager/ServiceReceiver$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 93
    .end local v1           #packageName:Ljava/lang/String;
    .end local v2           #postMsg:Landroid/os/Message;
    :cond_2
    :goto_0
    return-void

    .line 72
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v3, :cond_2

    .line 74
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 75
    .restart local v1       #packageName:Ljava/lang/String;
    const-string v4, "ServiceReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received ACTION_PACKAGE_REMOVED. PackageName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 79
    iget-object v4, p0, Lcom/huawei/android/hwpowermanager/ServiceReceiver;->handler:Lcom/huawei/android/hwpowermanager/ServiceReceiver$MyHandler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v1}, Lcom/huawei/android/hwpowermanager/ServiceReceiver$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 80
    .restart local v2       #postMsg:Landroid/os/Message;
    iget-object v4, p0, Lcom/huawei/android/hwpowermanager/ServiceReceiver;->handler:Lcom/huawei/android/hwpowermanager/ServiceReceiver$MyHandler;

    invoke-virtual {v4, v2}, Lcom/huawei/android/hwpowermanager/ServiceReceiver$MyHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
