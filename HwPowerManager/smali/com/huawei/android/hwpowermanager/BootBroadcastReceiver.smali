.class public Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootBroadcastReceiver.java"


# static fields
.field private static mNowTime:Ljava/lang/Long;

.field private static mUserNotifier:Lcom/huawei/android/hwpowermanager/UserNotifier;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPowerWarningParameterInited:Z

.field private power_notification:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mNowTime:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 29
    const-string v0, "BootBroadcastReceiver"

    iput-object v0, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->TAG:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mPowerWarningParameterInited:Z

    .line 46
    new-instance v0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver$1;

    invoke-direct {v0, p0}, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver$1;-><init>(Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;)V

    iput-object v0, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->notificationShowJudger()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->handlePowerConsumeAPPs(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$300(Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->handleTakingWakeLockAPPs(Landroid/os/Bundle;)V

    return-void
.end method

.method private checkIfNeedKiller(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 383
    const/4 v0, 0x0

    return v0
.end method

.method private checkIfNeedNotifier(Ljava/lang/String;)Z
    .locals 7
    .parameter "pkgName"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 388
    :try_start_0
    iget-object v4, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, p1, v5}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getRogue(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 390
    .local v1, ignore:Ljava/lang/Integer;
    if-nez v1, :cond_1

    .line 404
    .end local v1           #ignore:Ljava/lang/Integer;
    :cond_0
    :goto_0
    return v2

    .line 393
    .restart local v1       #ignore:Ljava/lang/Integer;
    :cond_1
    iget-object v4, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " PACKAGE_FIELD_IGNORE="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v4, v2, :cond_2

    move v2, v3

    .line 395
    goto :goto_0

    .line 397
    .end local v1           #ignore:Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 398
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 401
    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    :cond_2
    invoke-direct {p0, p1}, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->checkIfNeedKiller(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 402
    goto :goto_0
.end method

.method private handlePowerConsumeAPPs(Ljava/util/ArrayList;)V
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 258
    .local p1, mMaxConsumptionAppUids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v11, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->power_notification:Landroid/content/SharedPreferences;

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 259
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v11, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 261
    .local v8, pm:Landroid/content/pm/PackageManager;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .local v5, notifyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 264
    .local v10, values:Landroid/content/ContentValues;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 265
    .local v0, appUid:I
    invoke-virtual {v8, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .line 266
    .local v6, pkaName:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, idx:I
    :goto_0
    array-length v11, v6

    if-ge v4, v11, :cond_0

    .line 267
    iget-object v11, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "xxxx Max Consumption App ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v6, v4

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    aget-object v11, v6, v4

    invoke-direct {p0, v11}, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->checkIfNeedNotifier(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 270
    iget-object v11, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "notifyList add ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v6, v4

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    aget-object v11, v6, v4

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    :try_start_0
    const-string v11, "pkgname"

    aget-object v12, v6, v4

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v11, "isrogue"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 275
    const-string v11, "ignore"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 276
    const-string v11, "clear"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 277
    const-string v11, "presetblackapp"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 278
    iget-object v11, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    aget-object v12, v6, v4

    invoke-static {v11, v12, v10}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->insertRogue(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 280
    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 281
    :catch_0
    move-exception v1

    .line 282
    .local v1, e:Landroid/database/SQLException;
    invoke-virtual {v1}, Landroid/database/SQLException;->printStackTrace()V

    goto :goto_1

    .line 288
    .end local v0           #appUid:I
    .end local v1           #e:Landroid/database/SQLException;
    .end local v4           #idx:I
    .end local v6           #pkaName:[Ljava/lang/String;
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_4

    .line 314
    :cond_3
    :goto_2
    return-void

    .line 292
    :cond_4
    new-instance v11, Lcom/huawei/android/hwpowermanager/UserNotifier;

    iget-object v12, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12}, Lcom/huawei/android/hwpowermanager/UserNotifier;-><init>(Landroid/content/Context;)V

    sput-object v11, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mUserNotifier:Lcom/huawei/android/hwpowermanager/UserNotifier;

    .line 294
    new-instance v11, Landroid/content/ComponentName;

    iget-object v12, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "com.huawei.android.hwpowermanager.PowerConsumeBackgroundActivity"

    invoke-direct {v11, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v11}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v9

    .line 297
    .local v9, saIntent:Landroid/content/Intent;
    sget-object v11, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mUserNotifier:Lcom/huawei/android/hwpowermanager/UserNotifier;

    invoke-virtual {v11, v5}, Lcom/huawei/android/hwpowermanager/UserNotifier;->setNotificaitonData(Ljava/util/ArrayList;)Lcom/huawei/android/hwpowermanager/UserNotifier;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/huawei/android/hwpowermanager/UserNotifier;->setContentIntent(Landroid/content/Intent;)Lcom/huawei/android/hwpowermanager/UserNotifier;

    move-result-object v11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/huawei/android/hwpowermanager/UserNotifier;->setBroadcastReceiver(Ljava/lang/Class;)Lcom/huawei/android/hwpowermanager/UserNotifier;

    move-result-object v11

    invoke-virtual {v11}, Lcom/huawei/android/hwpowermanager/UserNotifier;->createNotification()Lcom/huawei/android/hwpowermanager/UserNotifier;

    move-result-object v11

    invoke-virtual {v11}, Lcom/huawei/android/hwpowermanager/UserNotifier;->doNotification()Lcom/huawei/android/hwpowermanager/UserNotifier;

    .line 303
    const-string v11, "lastNotifyTime"

    sget-object v12, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mNowTime:Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-interface {v2, v11, v12, v13}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 304
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 305
    iget-object v11, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Power consume notification lastNotifyTime is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mNowTime:Ljava/lang/Long;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :try_start_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 309
    .local v7, pkg:Ljava/lang/String;
    iget-object v11, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mContext:Landroid/content/Context;

    const-string v12, "BgPower"

    invoke-static {v11, v7, v12}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->logHighPowerApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 311
    .end local v7           #pkg:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 312
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private handleTakingWakeLockAPPs(Landroid/os/Bundle;)V
    .locals 8
    .parameter "bundle"

    .prologue
    .line 317
    const-string v5, "pkgName"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 318
    .local v2, pkgName:Ljava/lang/String;
    iget-object v5, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PG_FOUND_WASTE_POWER_APP received who is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-direct {p0, v2}, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->checkIfNeedNotifier(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 321
    new-instance v5, Lcom/huawei/android/hwpowermanager/UserNotifier;

    iget-object v6, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/huawei/android/hwpowermanager/UserNotifier;-><init>(Landroid/content/Context;)V

    sput-object v5, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mUserNotifier:Lcom/huawei/android/hwpowermanager/UserNotifier;

    .line 322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .local v0, al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.huawei.android.hwpowermanager.PowerConsumeBackgroundActivity"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    .line 325
    .local v3, saIntent:Landroid/content/Intent;
    const-string v5, "pkgName"

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    sget-object v5, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mUserNotifier:Lcom/huawei/android/hwpowermanager/UserNotifier;

    invoke-virtual {v5, v0}, Lcom/huawei/android/hwpowermanager/UserNotifier;->setNotificaitonData(Ljava/util/ArrayList;)Lcom/huawei/android/hwpowermanager/UserNotifier;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/huawei/android/hwpowermanager/UserNotifier;->setContentIntent(Landroid/content/Intent;)Lcom/huawei/android/hwpowermanager/UserNotifier;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/huawei/android/hwpowermanager/UserNotifier;->setBroadcastReceiver(Ljava/lang/Class;)Lcom/huawei/android/hwpowermanager/UserNotifier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/huawei/android/hwpowermanager/UserNotifier;->createNotification()Lcom/huawei/android/hwpowermanager/UserNotifier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/huawei/android/hwpowermanager/UserNotifier;->doNotification()Lcom/huawei/android/hwpowermanager/UserNotifier;

    .line 334
    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 335
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "pkgname"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string v5, "isrogue"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 337
    const-string v5, "ignore"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 338
    const-string v5, "clear"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 339
    const-string v5, "presetblackapp"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 340
    iget-object v5, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v2, v4}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->insertRogue(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 342
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 344
    iget-object v5, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mContext:Landroid/content/Context;

    const-string v6, "Wakelock"

    invoke-static {v5, v2, v6}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->logHighPowerApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 356
    .end local v0           #al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #saIntent:Landroid/content/Intent;
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return-void

    .line 345
    .restart local v0       #al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #saIntent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 346
    .local v1, e:Landroid/database/SQLException;
    invoke-virtual {v1}, Landroid/database/SQLException;->printStackTrace()V

    goto :goto_0

    .line 347
    .end local v1           #e:Landroid/database/SQLException;
    :catch_1
    move-exception v1

    .line 348
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 351
    .end local v0           #al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #saIntent:Landroid/content/Intent;
    :cond_1
    invoke-direct {p0, v2}, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->checkIfNeedKiller(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 353
    .restart local v0       #al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    iget-object v5, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->forceStopPackageAndSyncSaving(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private makeSureDBReady(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 148
    new-instance v0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver$2;

    invoke-direct {v0, p0, p1}, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver$2;-><init>(Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver$2;->start()V

    .line 165
    return-void
.end method

.method private notificationShowJudger()Ljava/util/ArrayList;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    const/4 v9, 0x0

    .line 170
    .local v9, mMaxConsumptionAppUid:I
    const-wide/16 v7, 0x0

    .line 173
    .local v7, mMaxConsumptionAppPower:D
    new-instance v14, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v14, v15}, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;-><init>(Landroid/content/Context;)V

    invoke-virtual {v14}, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->computerPowerBgConsumption()Ljava/util/ArrayList;

    move-result-object v2

    .line 174
    .local v2, appConsumption:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v10, needNotifyUids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->power_notification:Landroid/content/SharedPreferences;

    invoke-interface {v14}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v12

    .line 176
    .local v12, tempMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->power_notification:Landroid/content/SharedPreferences;

    const-string v15, "lastNotifyTime"

    const-wide/16 v16, 0x0

    invoke-interface/range {v14 .. v17}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 177
    .local v6, mLastNotifyTime:Ljava/lang/Long;
    const-wide/32 v14, 0xea60

    invoke-static {}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getMsgSendInterval()I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    mul-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 178
    .local v5, mIntervalTime:Ljava/lang/Long;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    sput-object v14, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mNowTime:Ljava/lang/Long;

    .line 180
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->power_notification:Landroid/content/SharedPreferences;

    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 181
    .local v11, newNotifyAppsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 182
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 184
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v15, "======  notificationShowJudger begin ======="

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "new appConsumption size is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "old appConsumption is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v15, "interval_time_unit is 60000"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "intervalHour is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getMsgSendInterval()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mAhValue is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getHigh_level_standard()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mNowTime is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mNowTime:Ljava/lang/Long;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mLastNotifyTime is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;

    .line 195
    .local v13, uap:Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;
    const/4 v4, 0x0

    .line 197
    .local v4, isOldContain:Z
    if-eqz v12, :cond_1

    iget v14, v13, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;->uid:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 198
    const/4 v4, 0x1

    .line 200
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "tempMap contains "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v13, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;->uid:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "uap.uid is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v13, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;->uid:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "uap.power is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-wide v0, v13, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;->power:D

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "isOldContain is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "is gap time allowed ? "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v14, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mNowTime:Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    sub-long v17, v17, v19

    const-wide/32 v19, 0xea60

    invoke-static {}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getMsgSendInterval()I

    move-result v14

    int-to-long v0, v14

    move-wide/from16 v21, v0

    mul-long v19, v19, v21

    cmp-long v14, v17, v19

    if-lez v14, :cond_3

    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-wide v14, v13, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;->power:D

    invoke-static {}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getHigh_level_standard()I

    move-result v16

    move/from16 v0, v16

    mul-int/lit16 v0, v0, 0xe10

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    cmpl-double v14, v14, v16

    if-ltz v14, :cond_2

    .line 212
    sget-object v14, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mNowTime:Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    sub-long v14, v14, v16

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    cmp-long v14, v14, v16

    if-lez v14, :cond_2

    .line 213
    iget v14, v13, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;->uid:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 214
    iget v14, v13, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;->uid:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    iget v14, v13, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;->uid:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    iget-wide v15, v13, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;->power:D

    double-to-float v15, v15

    invoke-interface {v11, v14, v15}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 232
    :cond_2
    iget-wide v14, v13, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;->power:D

    invoke-static {}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getDangerous_level_standard()I

    move-result v16

    move/from16 v0, v16

    mul-int/lit16 v0, v0, 0xe10

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    cmpl-double v14, v14, v16

    if-ltz v14, :cond_0

    .line 233
    iget v14, v13, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;->uid:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 234
    iget v14, v13, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;->uid:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    iget v14, v13, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;->uid:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    iget-wide v15, v13, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;->power:D

    double-to-float v15, v15

    invoke-interface {v11, v14, v15}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 207
    :cond_3
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 246
    .end local v4           #isOldContain:Z
    .end local v13           #uap:Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;
    :cond_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-nez v14, :cond_5

    .line 247
    const-string v14, "lastNotifyTime"

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    move-wide v0, v15

    invoke-interface {v11, v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 250
    :cond_5
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 253
    return-object v10
.end method

.method private onAction(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 428
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "huawei.intent.action.NOTIFICATION_ACTION_1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 429
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "pkgName"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v4, v3}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->setRogue(Landroid/content/ContentResolver;Ljava/lang/String;ILjava/lang/Object;)V

    .line 436
    :cond_0
    :goto_0
    sget-object v1, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mUserNotifier:Lcom/huawei/android/hwpowermanager/UserNotifier;

    invoke-virtual {v1}, Lcom/huawei/android/hwpowermanager/UserNotifier;->destoryNotification()V

    .line 437
    return-void

    .line 431
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "huawei.intent.action.NOTIFICATION_ACTION_2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 432
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 433
    .local v0, al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "pkgName"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->forceStopPackageAndSyncSaving(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private onNotifierReceiver(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 418
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, action:Ljava/lang/String;
    const-string v1, "huawei.intent.action.NOTIFICATION_DELETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 420
    sget-object v1, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mUserNotifier:Lcom/huawei/android/hwpowermanager/UserNotifier;

    invoke-virtual {v1}, Lcom/huawei/android/hwpowermanager/UserNotifier;->destoryNotification()V

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    const-string v1, "huawei.intent.action.NOTIFICATION_ACTION_1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "huawei.intent.action.NOTIFICATION_ACTION_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 423
    :cond_2
    invoke-direct {p0, p2}, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->onAction(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private updateRogueAppDB(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 2
    .parameter "pkgName"
    .parameter "field"
    .parameter "value"

    .prologue
    .line 409
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getRogue(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 410
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->setRogue(Landroid/content/ContentResolver;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 72
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, action:Ljava/lang/String;
    iput-object p1, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 75
    const-string v5, "power_notification"

    invoke-virtual {p1, v5, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->power_notification:Landroid/content/SharedPreferences;

    .line 77
    iget-boolean v5, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mPowerWarningParameterInited:Z

    if-nez v5, :cond_0

    .line 78
    invoke-static {p1}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->initalPowerWarningParameter(Landroid/content/Context;)V

    .line 79
    iput-boolean v7, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mPowerWarningParameterInited:Z

    .line 82
    :cond_0
    const-string v5, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 83
    iget-object v5, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v6, "ACTION_POWER_CONNECTED Received !"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v5, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 85
    iget-object v5, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 86
    .local v3, msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 89
    .end local v3           #msg:Landroid/os/Message;
    :cond_1
    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 90
    invoke-static {p1}, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->getInstance(Landroid/content/Context;)Lcom/huawei/android/hwpowermanager/model/ChangeMode;

    move-result-object v2

    .line 91
    .local v2, mChangeMode:Lcom/huawei/android/hwpowermanager/model/ChangeMode;
    invoke-static {p1}, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->getInstance(Landroid/content/Context;)Lcom/huawei/android/hwpowermanager/model/ChangeMode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->readSaveMode()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->change(I)V

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {p1, v5, v6}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->setPowerNotificationAlarmTime(Landroid/content/Context;J)V

    .line 94
    invoke-direct {p0, p1}, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->makeSureDBReady(Landroid/content/Context;)V

    .line 97
    .end local v2           #mChangeMode:Lcom/huawei/android/hwpowermanager/model/ChangeMode;
    :cond_2
    const-string v5, "android.intent.action.POWER_STATISTIC"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 98
    iget-object v5, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 99
    iget-object v5, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 100
    .restart local v3       #msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 103
    .end local v3           #msg:Landroid/os/Message;
    :cond_3
    const-string v5, "huawei.intent.action.PG_FOUND_WASTE_POWER_APP"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 104
    iget-object v5, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 105
    iget-object v5, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 106
    .restart local v3       #msg:Landroid/os/Message;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 107
    iget-object v5, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 110
    .end local v3           #msg:Landroid/os/Message;
    :cond_4
    const-string v5, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 111
    iget-object v5, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->cancelNotification(Landroid/content/Context;)V

    .line 113
    :cond_5
    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 115
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 116
    .local v4, pkgName:Ljava/lang/String;
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_7

    .line 117
    iget-object v5, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "xxxx add or remove pkgName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v4, v8, v5}, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->updateRogueAppDB(Ljava/lang/String;ILjava/lang/Object;)V

    .line 123
    .end local v4           #pkgName:Ljava/lang/String;
    :cond_7
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->onNotifierReceiver(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v1

    .line 125
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
