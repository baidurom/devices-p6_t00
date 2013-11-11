.class public Lcom/huawei/android/FMRadio/FMRadioUtils;
.super Ljava/lang/Object;
.source "FMRadioUtils.java"


# static fields
.field private static final PROJECTION:[Ljava/lang/String;

.field private static mAutoTuning:Z

.field private static mBroadcastOn:Z

.field static mCollectStation:[Lcom/huawei/android/FMRadio/ItemHolder;

.field private static mConnectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/content/ServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private static mCurFrequency:I

.field private static mCurSleepModeId:I

.field private static mFMSoundMode:B

.field private static mItemComparator:Lcom/huawei/android/FMRadio/ItemHolder$ItemComparator;

.field private static mManualTuning:Z

.field private static mNotification:Landroid/app/Notification;

.field private static mScreenOn:Z

.field private static mService:Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;

.field private static mSleepTime:J

.field private static mStationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/FMRadio/ItemHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/android/FMRadio/FMRadioUtils;->mService:Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;

    .line 67
    sput-boolean v2, Lcom/huawei/android/FMRadio/FMRadioUtils;->mAutoTuning:Z

    .line 72
    sput-boolean v2, Lcom/huawei/android/FMRadio/FMRadioUtils;->mManualTuning:Z

    .line 77
    sput-boolean v2, Lcom/huawei/android/FMRadio/FMRadioUtils;->mBroadcastOn:Z

    .line 82
    sput v2, Lcom/huawei/android/FMRadio/FMRadioUtils;->mCurFrequency:I

    .line 87
    sput-byte v3, Lcom/huawei/android/FMRadio/FMRadioUtils;->mFMSoundMode:B

    .line 94
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/huawei/android/FMRadio/FMRadioUtils;->mSleepTime:J

    .line 100
    sput v2, Lcom/huawei/android/FMRadio/FMRadioUtils;->mCurSleepModeId:I

    .line 105
    sput-boolean v3, Lcom/huawei/android/FMRadio/FMRadioUtils;->mScreenOn:Z

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/huawei/android/FMRadio/FMRadioUtils;->mStationList:Ljava/util/List;

    .line 115
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/huawei/android/FMRadio/ItemHolder;

    sput-object v0, Lcom/huawei/android/FMRadio/FMRadioUtils;->mCollectStation:[Lcom/huawei/android/FMRadio/ItemHolder;

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huawei/android/FMRadio/FMRadioUtils;->mConnectionMap:Ljava/util/HashMap;

    .line 125
    new-instance v0, Lcom/huawei/android/FMRadio/ItemHolder$ItemComparator;

    invoke-direct {v0}, Lcom/huawei/android/FMRadio/ItemHolder$ItemComparator;-><init>()V

    sput-object v0, Lcom/huawei/android/FMRadio/FMRadioUtils;->mItemComparator:Lcom/huawei/android/FMRadio/ItemHolder$ItemComparator;

    .line 130
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_frequency"

    aput-object v1, v0, v2

    const-string v1, "_name"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "_favorite"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_favoriteid"

    aput-object v2, v0, v1

    sput-object v0, Lcom/huawei/android/FMRadio/FMRadioUtils;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/huawei/android/FMRadio/FMRadioUtils;->mService:Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 51
    sget-boolean v0, Lcom/huawei/android/FMRadio/FMRadioUtils;->mBroadcastOn:Z

    return v0
.end method

.method public static bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z
    .locals 4
    .parameter "context"
    .parameter "callback"

    .prologue
    const/4 v1, 0x0

    .line 136
    const-string v2, "FMRadioUtils"

    const-string v3, "bindToService"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    if-nez p0, :cond_0

    .line 139
    const-string v2, "FMRadioUtils"

    const-string v3, "null == context"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :goto_0
    return v1

    .line 143
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 144
    .local v0, serviceIntent:Landroid/content/Intent;
    const-string v2, "com.huawei.android.FMRadio.SERVICE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 147
    sget-object v2, Lcom/huawei/android/FMRadio/FMRadioUtils;->mConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    goto :goto_0
.end method

.method public static changeSleepMode(Landroid/content/Context;ZI)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 963
    const-string v0, "FMRadioUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeSleepMode---isSleep = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sleepMinutes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 966
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.huawei.android.FMRadio.servicecommand.togglepause"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 967
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.huawei.android.FMRadio.FMRadioService"

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 968
    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 971
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 972
    if-eqz p1, :cond_0

    .line 973
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    mul-int/lit8 v4, p2, 0x3c

    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    sput-wide v2, Lcom/huawei/android/FMRadio/FMRadioUtils;->mSleepTime:J

    .line 974
    const/4 v2, 0x2

    sget-wide v3, Lcom/huawei/android/FMRadio/FMRadioUtils;->mSleepTime:J

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 978
    :goto_0
    return-void

    .line 976
    :cond_0
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/huawei/android/FMRadio/FMRadioUtils;->mSleepTime:J

    goto :goto_0
.end method

.method public static checkCurStatus(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 747
    if-nez p0, :cond_0

    .line 748
    const-string v1, "FMRadioUtils"

    const-string v2, "checkCurStatus null == context"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    :goto_0
    return v0

    .line 749
    :cond_0
    invoke-static {p0}, Lcom/huawei/android/FMRadio/FMRadioUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 751
    const v1, 0x7f080047

    invoke-static {p0, v1, v0}, Lcom/huawei/android/FMRadio/CommonUI;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 753
    :cond_1
    invoke-static {p0}, Lcom/huawei/android/FMRadio/FMRadioUtils;->isWiredHeadsetAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 754
    const-string v1, "FMRadioUtils"

    const-string v2, "headset is unplug"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    const v1, 0x7f080039

    invoke-static {p0, v1, v0}, Lcom/huawei/android/FMRadio/CommonUI;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 757
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static clear()V
    .locals 1

    .prologue
    .line 927
    sget-object v0, Lcom/huawei/android/FMRadio/FMRadioUtils;->mConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 928
    sget-object v0, Lcom/huawei/android/FMRadio/FMRadioUtils;->mConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 934
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/android/FMRadio/FMRadioUtils;->mService:Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;

    .line 935
    return-void
.end method

.method public static doAutoTuning(Landroid/content/Context;Landroid/os/Handler;Landroid/app/ProgressDialog;Z)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1014
    const-string v2, "FMRadioUtils"

    const-string v3, "doAutoTuning"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    sget-boolean v2, Lcom/huawei/android/FMRadio/FMRadioUtils;->mAutoTuning:Z

    if-eqz v2, :cond_0

    .line 1019
    const-string v1, "FMRadioUtils"

    const-string v2, "mAutoTuning==true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    :goto_0
    return v0

    .line 1020
    :cond_0
    if-nez p0, :cond_1

    .line 1021
    const-string v1, "FMRadioUtils"

    const-string v2, "play null == context"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1022
    :cond_1
    sget-object v2, Lcom/huawei/android/FMRadio/FMRadioUtils;->mService:Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;

    if-nez v2, :cond_2

    .line 1023
    const-string v1, "FMRadioUtils"

    const-string v2, "null == sService"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    const v1, 0x7f08001f

    invoke-static {p0, v1, v0}, Lcom/huawei/android/FMRadio/CommonUI;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 1027
    :cond_2
    invoke-static {p0}, Lcom/huawei/android/FMRadio/FMRadioUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1030
    const v1, 0x7f080047

    invoke-static {p0, v1, v0}, Lcom/huawei/android/FMRadio/CommonUI;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 1033
    :cond_3
    invoke-static {p0}, Lcom/huawei/android/FMRadio/FMRadioUtils;->isWiredHeadsetAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1034
    const-string v1, "FMRadioUtils"

    const-string v2, "headset is unplug"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    const v1, 0x7f080039

    invoke-static {p0, v1, v0}, Lcom/huawei/android/FMRadio/CommonUI;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 1040
    :cond_4
    invoke-virtual {p2, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1041
    invoke-virtual {p2}, Landroid/app/ProgressDialog;->show()V

    .line 1043
    sput-boolean v1, Lcom/huawei/android/FMRadio/FMRadioUtils;->mAutoTuning:Z

    .line 1045
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/huawei/android/FMRadio/FMRadioUtils$3;

    invoke-direct {v2, p0, p3, p1}, Lcom/huawei/android/FMRadio/FMRadioUtils$3;-><init>(Landroid/content/Context;ZLandroid/os/Handler;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1057
    invoke-static {p0, p1, p2}, Lcom/huawei/android/FMRadio/FMRadioUtils;->enableCancelAutotune(Landroid/content/Context;Landroid/os/Handler;Landroid/app/ProgressDialog;)V

    move v0, v1

    .line 1058
    goto :goto_0
.end method

.method public static doClearStations(Landroid/content/Context;Z)Z
    .locals 10
    .parameter "context"
    .parameter "keepCollected"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 376
    const-string v6, "FMRadioUtils"

    const-string v7, "doClearStation"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    if-nez p0, :cond_0

    .line 379
    const-string v5, "FMRadioUtils"

    const-string v6, "doClearStation null == context"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :goto_0
    return v4

    .line 383
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 385
    .local v2, resolver:Landroid/content/ContentResolver;
    if-nez v2, :cond_1

    .line 386
    const-string v5, "FMRadioUtils"

    const-string v6, "doClearStation null == resolvert"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 394
    :cond_1
    if-eqz p1, :cond_2

    .line 395
    :try_start_0
    const-string v3, "_favorite=?"

    .line 400
    .local v3, where:Ljava/lang/String;
    :goto_1
    sget-object v6, Lcom/huawei/android/FMRadio/Config;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "0"

    aput-object v9, v7, v8

    invoke-virtual {v2, v6, v3, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 404
    .local v1, nRet:I
    if-gtz v1, :cond_3

    .line 405
    const-string v5, "FMRadioUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete fail, return value is:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 408
    .end local v1           #nRet:I
    .end local v3           #where:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 409
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 397
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v3, "_frequency>?"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v3       #where:Ljava/lang/String;
    goto :goto_1

    .line 413
    .restart local v1       #nRet:I
    :cond_3
    invoke-static {p0}, Lcom/huawei/android/FMRadio/FMRadioUtils;->initStationRecord(Landroid/content/Context;)V

    .line 415
    const-string v4, "FMRadioUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doClearStation--the size of mStationList:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/huawei/android/FMRadio/FMRadioUtils;->mStationList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 417
    goto :goto_0
.end method

.method public static doManualSearch(Landroid/content/Context;Landroid/app/ProgressDialog;Z)V
    .locals 2
    .parameter "context"
    .parameter "manualTuneDialog"
    .parameter "direction"

    .prologue
    .line 716
    const-string v0, "FMRadioUtils"

    const-string v1, "doManualSearch"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    sget-object v0, Lcom/huawei/android/FMRadio/FMRadioUtils;->mService:Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;

    if-nez v0, :cond_0

    .line 719
    const-string v0, "FMRadioUtils"

    const-string v1, "doManualSearch mService == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const v0, 0x7f08001f

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/huawei/android/FMRadio/CommonUI;->showToast(Landroid/content/Context;II)V

    .line 731
    :goto_0
    return-void

    .line 726
    :cond_0
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 728
    sget-object v0, Lcom/huawei/android/FMRadio/FMRadioUtils;->mService:Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;

    invoke-virtual {v0, p2}, Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;->fmManualTune(Z)V

    .line 730
    const-string v0, "FMRadioUtils"

    const-string v1, "doManualSearch"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static doRenameStation(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 13
    .parameter "context"
    .parameter "frequency"
    .parameter "strName"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 326
    const-string v7, "FMRadioUtils"

    const-string v8, "doRenameStation"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    if-nez p0, :cond_1

    .line 329
    const-string v6, "FMRadioUtils"

    const-string v7, "doRenameStation null == context"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_0
    :goto_0
    return v5

    .line 333
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 335
    .local v2, resolver:Landroid/content/ContentResolver;
    if-nez v2, :cond_2

    .line 336
    const-string v6, "FMRadioUtils"

    const-string v7, "doRenameStation null == resolvert"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 341
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_4

    .line 342
    :cond_3
    const-string v6, "FMRadioUtils"

    const-string v7, "input parameter invalid"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 346
    :cond_4
    invoke-static {p1}, Lcom/huawei/android/FMRadio/FMRadioUtils;->getItemByFrequency(I)Lcom/huawei/android/FMRadio/ItemHolder;

    move-result-object v3

    .line 348
    .local v3, tmpHolder:Lcom/huawei/android/FMRadio/ItemHolder;
    if-eqz v3, :cond_0

    .line 352
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 354
    .local v4, values:Landroid/content/ContentValues;
    const-string v7, "_name"

    invoke-virtual {v4, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :try_start_0
    sget-object v7, Lcom/huawei/android/FMRadio/Config;->CONTENT_URI:Landroid/net/Uri;

    const-string v8, "_frequency=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v2, v7, v4, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 361
    .local v1, nRet:I
    if-gtz v1, :cond_5

    .line 362
    const-string v6, "FMRadioUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "update fail, return value is:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 365
    .end local v1           #nRet:I
    :catch_0
    move-exception v0

    .line 366
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 370
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #nRet:I
    :cond_5
    invoke-virtual {v3, p2}, Lcom/huawei/android/FMRadio/ItemHolder;->setmStationName(Ljava/lang/String;)V

    move v5, v6

    .line 372
    goto :goto_0
.end method

.method public static doSaveCollectStation(Landroid/content/Context;ILjava/lang/String;I)Z
    .locals 9
    .parameter "context"
    .parameter "frequency"
    .parameter "name"
    .parameter "collectId"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 272
    const-string v7, "FMRadioUtils"

    const-string v8, "doSaveCollectStation"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    if-nez p0, :cond_1

    .line 275
    const-string v6, "FMRadioUtils"

    const-string v7, "doSaveCollectStation null == context"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_0
    :goto_0
    return v5

    .line 279
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 281
    .local v2, resolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/huawei/android/FMRadio/FMRadioUtils;->isFreqValid(I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 282
    const-string v6, "FMRadioUtils"

    const-string v7, "input frequency invalid"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 286
    :cond_2
    if-eqz p0, :cond_3

    if-nez v2, :cond_4

    .line 287
    :cond_3
    const-string v6, "FMRadioUtils"

    const-string v7, "input parameter invalid"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 291
    :cond_4
    new-instance v3, Lcom/huawei/android/FMRadio/ItemHolder;

    invoke-direct {v3}, Lcom/huawei/android/FMRadio/ItemHolder;-><init>()V

    .line 292
    .local v3, tmpHolder:Lcom/huawei/android/FMRadio/ItemHolder;
    invoke-virtual {v3, p1}, Lcom/huawei/android/FMRadio/ItemHolder;->setmFrequency(I)V

    .line 293
    invoke-virtual {v3, p2}, Lcom/huawei/android/FMRadio/ItemHolder;->setmStationName(Ljava/lang/String;)V

    .line 294
    invoke-virtual {v3, v6, p3}, Lcom/huawei/android/FMRadio/ItemHolder;->setmCollected(ZI)V

    .line 296
    sget-object v7, Lcom/huawei/android/FMRadio/FMRadioUtils;->mStationList:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 300
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 301
    .local v4, value:Landroid/content/ContentValues;
    const-string v7, "_frequency"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 302
    const-string v7, "_name"

    invoke-virtual {v4, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v7, "_favorite"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 304
    const-string v7, "_favoriteid"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 307
    :try_start_0
    sget-object v7, Lcom/huawei/android/FMRadio/Config;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v7, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    sget-object v5, Lcom/huawei/android/FMRadio/FMRadioUtils;->mStationList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    sget-object v5, Lcom/huawei/android/FMRadio/FMRadioUtils;->mCollectStation:[Lcom/huawei/android/FMRadio/ItemHolder;

    aput-object v3, v5, p3

    .line 315
    sget-object v5, Lcom/huawei/android/FMRadio/FMRadioUtils;->mStationList:Ljava/util/List;

    sget-object v7, Lcom/huawei/android/FMRadio/FMRadioUtils;->mItemComparator:Lcom/huawei/android/FMRadio/ItemHolder$ItemComparator;

    invoke-static {v5, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 318
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.huawei.android.FMRadio.savecollect"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 319
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v5, v6

    .line 322
    goto :goto_0

    .line 308
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 309
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static doSaveSearchStations(Landroid/content/Context;Ljava/util/List;)Z
    .locals 14
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 185
    .local p1, frequencyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v11, "FMRadioUtils"

    const-string v12, "doSaveSearchStations"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    if-nez p0, :cond_0

    .line 188
    const-string v11, "FMRadioUtils"

    const-string v12, "doSaveSearchStations null == context"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/4 v11, 0x0

    .line 259
    :goto_0
    return v11

    .line 192
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 194
    .local v5, resolver:Landroid/content/ContentResolver;
    if-nez v5, :cond_1

    .line 195
    const-string v11, "FMRadioUtils"

    const-string v12, "doSaveSearchStations null == resolvert"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v11, 0x0

    goto :goto_0

    .line 199
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 201
    .local v3, nCount:I
    if-gtz v3, :cond_2

    .line 202
    const-string v11, "FMRadioUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "doSaveSearchStations search station number is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v11, 0x0

    goto :goto_0

    .line 206
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v2, insertList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/android/FMRadio/ItemHolder;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_5

    .line 210
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 211
    .local v7, tmpFreq:I
    const-string v11, "FMRadioUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "frequencyList["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-static {v7}, Lcom/huawei/android/FMRadio/FMRadioUtils;->isFreqValid(I)Z

    move-result v11

    if-nez v11, :cond_3

    .line 214
    const-string v11, "FMRadioUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "is not valid"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 218
    :cond_3
    new-instance v8, Lcom/huawei/android/FMRadio/ItemHolder;

    invoke-direct {v8}, Lcom/huawei/android/FMRadio/ItemHolder;-><init>()V

    .line 219
    .local v8, tmpHolder:Lcom/huawei/android/FMRadio/ItemHolder;
    invoke-virtual {v8, v7}, Lcom/huawei/android/FMRadio/ItemHolder;->setmFrequency(I)V

    .line 221
    sget-object v11, Lcom/huawei/android/FMRadio/FMRadioUtils;->mStationList:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 222
    const-string v11, "FMRadioUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mStationList contains"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 226
    :cond_4
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 229
    .end local v7           #tmpFreq:I
    .end local v8           #tmpHolder:Lcom/huawei/android/FMRadio/ItemHolder;
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 231
    .local v6, size:I
    if-lez v6, :cond_7

    .line 233
    new-array v10, v6, [Landroid/content/ContentValues;

    .line 235
    .local v10, values:[Landroid/content/ContentValues;
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v6, :cond_6

    .line 236
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 237
    .local v9, value:Landroid/content/ContentValues;
    const-string v12, "_frequency"

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/huawei/android/FMRadio/ItemHolder;

    invoke-virtual {v11}, Lcom/huawei/android/FMRadio/ItemHolder;->getmFrequency()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 238
    const-string v12, "_favorite"

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/huawei/android/FMRadio/ItemHolder;

    invoke-virtual {v11}, Lcom/huawei/android/FMRadio/ItemHolder;->ismCollected()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v9, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 239
    const-string v12, "_favoriteid"

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/huawei/android/FMRadio/ItemHolder;

    invoke-virtual {v11}, Lcom/huawei/android/FMRadio/ItemHolder;->getmCollectId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 240
    const-string v12, "FMRadioUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "put station "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/huawei/android/FMRadio/ItemHolder;

    invoke-virtual {v11}, Lcom/huawei/android/FMRadio/ItemHolder;->getmFrequency()I

    move-result v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " to ContentValues"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    aput-object v9, v10, v1

    .line 235
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 245
    .end local v9           #value:Landroid/content/ContentValues;
    :cond_6
    :try_start_0
    sget-object v11, Lcom/huawei/android/FMRadio/Config;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v11, v10}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v4

    .line 246
    .local v4, nRet:I
    if-gtz v4, :cond_7

    .line 247
    const-string v11, "FMRadioUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "insert fail, return value is:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 250
    .end local v4           #nRet:I
    :catch_0
    move-exception v0

    .line 251
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 252
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 256
    .end local v0           #e:Ljava/lang/Exception;
    .end local v10           #values:[Landroid/content/ContentValues;
    :cond_7
    sget-object v11, Lcom/huawei/android/FMRadio/FMRadioUtils;->mStationList:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 257
    sget-object v11, Lcom/huawei/android/FMRadio/FMRadioUtils;->mStationList:Ljava/util/List;

    sget-object v12, Lcom/huawei/android/FMRadio/FMRadioUtils;->mItemComparator:Lcom/huawei/android/FMRadio/ItemHolder$ItemComparator;

    invoke-static {v11, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 258
    const-string v11, "FMRadioUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "doSaveSearchStations--the size of mStationList:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/huawei/android/FMRadio/FMRadioUtils;->mStationList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const/4 v11, 0x1

    goto/16 :goto_0
.end method

.method public static doStopAutoTuning(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1065
    const-string v0, "FMRadioUtils"

    const-string v1, "doStopAutoTuning"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    sget-object v0, Lcom/huawei/android/FMRadio/FMRadioUtils;->mService:Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;

    if-nez v0, :cond_0

    .line 1067
    const-string v0, "FMRadioUtils"

    const-string v1, "doStopAutoTuning null == mService"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    const v0, 0x7f08001f

    invoke-static {p0, v0, v2}, Lcom/huawei/android/FMRadio/CommonUI;->showToast(Landroid/content/Context;II)V

    .line 1084
    :goto_0
    return-void

    .line 1074
    :cond_0
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismAutoTuning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1075
    sget-object v0, Lcom/huawei/android/FMRadio/FMRadioUtils;->mService:Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;

    invoke-virtual {v0}, Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;->fmCancelAutoTune()V

    .line 1076
    invoke-static {v2}, Lcom/huawei/android/FMRadio/FMRadioUtils;->setmAutoTuning(Z)V

    .line 1079
    :cond_1
    const-string v0, "FMRadioUtils"

    const-string v1, "cancelAutoTune"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    invoke-static {v2}, Lcom/huawei/android/FMRadio/FMRadioUtils;->setmAutoTuning(Z)V

    .line 1083
    const/16 v0, 0x67

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public static doUpdateCollectStatus(Landroid/content/Context;IZI)Z
    .locals 11
    .parameter "context"
    .parameter "frequency"
    .parameter "isCollected"
    .parameter "collectId"

    .prologue
    .line 422
    const-string v5, "FMRadioUtils"

    const-string v6, "doUpdateCollectStatus"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    if-nez p0, :cond_0

    .line 425
    const-string v5, "FMRadioUtils"

    const-string v6, "doUpdateCollectStatus null == context"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const/4 v5, 0x0

    .line 468
    :goto_0
    return v5

    .line 429
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 431
    .local v2, resolver:Landroid/content/ContentResolver;
    if-nez v2, :cond_1

    .line 432
    const-string v5, "FMRadioUtils"

    const-string v6, "doUpdateCollectStatus null == resolvert"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const/4 v5, 0x0

    goto :goto_0

    .line 436
    :cond_1
    invoke-static {p1}, Lcom/huawei/android/FMRadio/FMRadioUtils;->getItemByFrequency(I)Lcom/huawei/android/FMRadio/ItemHolder;

    move-result-object v3

    .line 438
    .local v3, tmpHolder:Lcom/huawei/android/FMRadio/ItemHolder;
    if-nez v3, :cond_2

    .line 439
    const/4 v5, 0x0

    goto :goto_0

    .line 442
    :cond_2
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 444
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "_favorite"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 445
    const-string v6, "_favoriteid"

    if-eqz p2, :cond_3

    move v5, p3

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 449
    :try_start_0
    sget-object v5, Lcom/huawei/android/FMRadio/Config;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "_frequency=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v2, v5, v4, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 453
    .local v1, nRet:I
    if-gtz v1, :cond_4

    .line 454
    const-string v5, "FMRadioUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update fail, return value is:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    const/4 v5, 0x0

    goto :goto_0

    .line 445
    .end local v1           #nRet:I
    :cond_3
    const/4 v5, -0x1

    goto :goto_1

    .line 457
    :catch_0
    move-exception v0

    .line 458
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 459
    const/4 v5, 0x0

    goto :goto_0

    .line 462
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #nRet:I
    :cond_4
    invoke-virtual {v3, p2, p3}, Lcom/huawei/android/FMRadio/ItemHolder;->setmCollected(ZI)V

    .line 464
    sget-object v5, Lcom/huawei/android/FMRadio/FMRadioUtils;->mCollectStation:[Lcom/huawei/android/FMRadio/ItemHolder;

    if-eqz p2, :cond_5

    .end local v3           #tmpHolder:Lcom/huawei/android/FMRadio/ItemHolder;
    :goto_2
    aput-object v3, v5, p3

    .line 466
    const-string v5, "FMRadioUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateCollectStatus()--frequency:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   isCollected:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   collectId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 464
    .restart local v3       #tmpHolder:Lcom/huawei/android/FMRadio/ItemHolder;
    :cond_5
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public static doWithNotify(Landroid/content/Context;I)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const v9, 0x7f0b000a

    const v8, 0x7f0b0009

    const/4 v3, 0x1

    const v7, 0x7f0b0035

    const/4 v4, 0x0

    .line 769
    const-string v0, "FMRadioUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doWithNotify---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    if-nez p0, :cond_1

    .line 772
    const-string v0, "FMRadioUtils"

    const-string v1, "stateNotify null == context"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    :cond_0
    :goto_0
    return-void

    .line 777
    :cond_1
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 781
    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    invoke-static {p0}, Lcom/huawei/android/FMRadio/FMRadioUtils;->isWiredHeadsetAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/huawei/android/FMRadio/FMRadioUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 783
    :cond_2
    const v1, 0x10001

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 784
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/android/FMRadio/FMRadioUtils;->mNotification:Landroid/app/Notification;

    goto :goto_0

    .line 785
    :cond_3
    if-eq p1, v3, :cond_4

    if-nez p1, :cond_0

    .line 789
    :cond_4
    sget-object v1, Lcom/huawei/android/FMRadio/FMRadioUtils;->mNotification:Landroid/app/Notification;

    if-nez v1, :cond_6

    .line 790
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    sput-object v1, Lcom/huawei/android/FMRadio/FMRadioUtils;->mNotification:Landroid/app/Notification;

    .line 791
    new-instance v1, Landroid/widget/RemoteViews;

    const-string v2, "com.huawei.android.FMRadio"

    const v5, 0x7f03000b

    invoke-direct {v1, v2, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 798
    :goto_1
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v2

    if-eqz v2, :cond_b

    sget v2, Lcom/huawei/android/FMRadio/FMRadioUtils;->mCurFrequency:I

    invoke-static {v2}, Lcom/huawei/android/FMRadio/FMRadioUtils;->isFreqValid(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 799
    sget v2, Lcom/huawei/android/FMRadio/FMRadioUtils;->mCurFrequency:I

    invoke-static {v2}, Lcom/huawei/android/FMRadio/FMRadioUtils;->getStationName(I)Ljava/lang/String;

    move-result-object v2

    .line 800
    sget v5, Lcom/huawei/android/FMRadio/FMRadioUtils;->mCurFrequency:I

    invoke-static {p0, v5}, Lcom/huawei/android/FMRadio/FMRadioUtils;->getDefaultStationName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 801
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_7

    .line 802
    :cond_5
    invoke-virtual {v1, v7, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 806
    :goto_2
    sget-object v2, Lcom/huawei/android/FMRadio/FMRadioUtils;->mStationList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_8

    move v2, v3

    .line 807
    :goto_3
    const v5, 0x7f020064

    invoke-virtual {v1, v9, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 808
    const-string v6, "setEnabled"

    if-nez v2, :cond_9

    move v5, v3

    :goto_4
    invoke-virtual {v1, v8, v6, v5}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 809
    const v5, 0x7f0b000b

    const-string v6, "setEnabled"

    if-nez v2, :cond_a

    :goto_5
    invoke-virtual {v1, v5, v6, v3}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 810
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v7, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 831
    :goto_6
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 832
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 833
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 834
    const/high16 v3, 0x1020

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 837
    sget-object v3, Lcom/huawei/android/FMRadio/FMRadioUtils;->mNotification:Landroid/app/Notification;

    iput-object v1, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 839
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 840
    sget-object v3, Lcom/huawei/android/FMRadio/FMRadioUtils;->mNotification:Landroid/app/Notification;

    const/4 v5, 0x2

    iput v5, v3, Landroid/app/Notification;->flags:I

    .line 845
    :goto_7
    sget-object v3, Lcom/huawei/android/FMRadio/FMRadioUtils;->mNotification:Landroid/app/Notification;

    const v5, 0x7f02006d

    iput v5, v3, Landroid/app/Notification;->icon:I

    .line 846
    sget-object v3, Lcom/huawei/android/FMRadio/FMRadioUtils;->mNotification:Landroid/app/Notification;

    invoke-static {p0, v4, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 851
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.huawei.android.FMRadio.FMRadioService"

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 853
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.huawei.android.FMRadio.servicecommand.togglepause"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 854
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 855
    invoke-static {p0, v4, v3, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 856
    invoke-virtual {v1, v9, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 858
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.huawei.android.FMRadio.servicecommand.previous"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 859
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 860
    invoke-static {p0, v4, v3, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 861
    invoke-virtual {v1, v8, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 863
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.huawei.android.FMRadio.servicecommand.next"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 864
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 865
    invoke-static {p0, v4, v3, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 866
    const v3, 0x7f0b000b

    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 868
    const v1, 0x10001

    sget-object v2, Lcom/huawei/android/FMRadio/FMRadioUtils;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 793
    :cond_6
    sget-object v1, Lcom/huawei/android/FMRadio/FMRadioUtils;->mNotification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto/16 :goto_1

    .line 804
    :cond_7
    invoke-virtual {v1, v7, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_8
    move v2, v4

    .line 806
    goto/16 :goto_3

    :cond_9
    move v5, v4

    .line 808
    goto/16 :goto_4

    :cond_a
    move v3, v4

    .line 809
    goto/16 :goto_5

    .line 813
    :cond_b
    const-string v2, "com.huawei.android.FMRadio"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 815
    const-string v3, "last_freq"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 816
    invoke-static {v2}, Lcom/huawei/android/FMRadio/FMRadioUtils;->getStationName(I)Ljava/lang/String;

    move-result-object v3

    .line 817
    invoke-static {p0, v2}, Lcom/huawei/android/FMRadio/FMRadioUtils;->getDefaultStationName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 818
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_d

    .line 819
    :cond_c
    invoke-virtual {v1, v7, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 823
    :goto_8
    const v2, 0x7f020061

    invoke-virtual {v1, v9, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 824
    const-string v2, "setEnabled"

    invoke-virtual {v1, v8, v2, v4}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 825
    const v2, 0x7f0b000b

    const-string v3, "setEnabled"

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 826
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v7, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto/16 :goto_6

    .line 821
    :cond_d
    invoke-virtual {v1, v7, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_8

    .line 842
    :cond_e
    sget-object v3, Lcom/huawei/android/FMRadio/FMRadioUtils;->mNotification:Landroid/app/Notification;

    const/16 v5, 0x10

    iput v5, v3, Landroid/app/Notification;->flags:I

    goto/16 :goto_7
.end method

.method public static enableCancelAutotune(Landroid/content/Context;Landroid/os/Handler;Landroid/app/ProgressDialog;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1088
    const-string v0, "FMRadioUtils"

    const-string v1, "enableCancelAutotune"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    sget-boolean v0, Lcom/huawei/android/FMRadio/FMRadioUtils;->mAutoTuning:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1092
    new-instance v0, Lcom/huawei/android/FMRadio/FMRadioUtils$4;

    invoke-direct {v0, p2}, Lcom/huawei/android/FMRadio/FMRadioUtils$4;-><init>(Landroid/app/ProgressDialog;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1098
    :cond_0
    return-void
.end method

.method public static findPreviousOrNextStation(IZ)I
    .locals 7
    .parameter "curFrequency"
    .parameter "direction"

    .prologue
    .line 473
    const-string v5, "FMRadioUtils"

    const-string v6, "findPreviousOrNextStation"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    move v3, p0

    .line 476
    .local v3, tmpFreq:I
    sget-object v5, Lcom/huawei/android/FMRadio/FMRadioUtils;->mStationList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    .line 478
    .local v1, nCount:I
    const/4 v5, 0x1

    if-ge v1, v5, :cond_0

    .line 479
    const-string v5, "FMRadioUtils"

    const-string v6, "stationlist is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 501
    .end local v3           #tmpFreq:I
    .local v4, tmpFreq:I
    :goto_0
    return v4

    .line 483
    .end local v4           #tmpFreq:I
    .restart local v3       #tmpFreq:I
    :cond_0
    const/4 v2, 0x0

    .line 485
    .local v2, position:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 486
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->getmStationList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/android/FMRadio/ItemHolder;

    invoke-virtual {v5}, Lcom/huawei/android/FMRadio/ItemHolder;->getmFrequency()I

    move-result v5

    if-ne p0, v5, :cond_3

    .line 487
    if-eqz p1, :cond_2

    add-int/lit8 v5, v0, 0x1

    rem-int v2, v5, v1

    .line 499
    :cond_1
    :goto_2
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->getmStationList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/android/FMRadio/ItemHolder;

    invoke-virtual {v5}, Lcom/huawei/android/FMRadio/ItemHolder;->getmFrequency()I

    move-result v3

    move v4, v3

    .line 501
    .end local v3           #tmpFreq:I
    .restart local v4       #tmpFreq:I
    goto :goto_0

    .line 487
    .end local v4           #tmpFreq:I
    .restart local v3       #tmpFreq:I
    :cond_2
    add-int v5, v0, v1

    add-int/lit8 v5, v5, -0x1

    rem-int v2, v5, v1

    goto :goto_2

    .line 489
    :cond_3
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->getmStationList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/android/FMRadio/ItemHolder;

    invoke-virtual {v5}, Lcom/huawei/android/FMRadio/ItemHolder;->getmFrequency()I

    move-result v5

    if-ge p0, v5, :cond_5

    .line 490
    if-eqz p1, :cond_4

    move v2, v0

    .line 491
    :goto_3
    goto :goto_2

    .line 490
    :cond_4
    add-int v5, v0, v1

    add-int/lit8 v5, v5, -0x1

    rem-int v2, v5, v1

    goto :goto_3

    .line 492
    :cond_5
    add-int/lit8 v5, v1, -0x1

    if-ne v0, v5, :cond_7

    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->getmStationList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/android/FMRadio/ItemHolder;

    invoke-virtual {v5}, Lcom/huawei/android/FMRadio/ItemHolder;->getmFrequency()I

    move-result v5

    if-le p0, v5, :cond_7

    .line 494
    if-eqz p1, :cond_6

    const/4 v2, 0x0

    .line 495
    :goto_4
    goto :goto_2

    .line 494
    :cond_6
    add-int/lit8 v2, v1, -0x1

    goto :goto_4

    .line 485
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getDefaultStationName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "frequency"

    .prologue
    const-wide/high16 v4, 0x4059

    .line 628
    const/4 v0, 0x0

    .line 630
    .local v0, stationName:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fa"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 632
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/huawei/android/FMRadio/FMRadioUtils;->getmFreqUnit(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-double v2, p1

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 637
    :goto_0
    return-object v0

    .line 634
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    int-to-double v2, p1

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/huawei/android/FMRadio/FMRadioUtils;->getmFreqUnit(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDisplayFrequency(I)Ljava/lang/String;
    .locals 5
    .parameter "frequency"

    .prologue
    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    int-to-double v1, p0

    const-wide/high16 v3, 0x4059

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getItemByFrequency(I)Lcom/huawei/android/FMRadio/ItemHolder;
    .locals 2
    .parameter "frequency"

    .prologue
    .line 597
    invoke-static {p0}, Lcom/huawei/android/FMRadio/FMRadioUtils;->getPositionByFrequency(I)I

    move-result v0

    .line 599
    .local v0, index:I
    if-ltz v0, :cond_0

    sget-object v1, Lcom/huawei/android/FMRadio/FMRadioUtils;->mStationList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/FMRadio/ItemHolder;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getLastPlayValidFrequency(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 514
    const-string v2, "com.huawei.android.FMRadio"

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 517
    .local v1, sharePerferences:Landroid/content/SharedPreferences;
    const-string v2, "last_freq"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 519
    .local v0, frequency:I
    invoke-static {v0}, Lcom/huawei/android/FMRadio/FMRadioUtils;->isFreqValid(I)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/huawei/android/FMRadio/FMRadioUtils;->mStationList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 521
    sget-object v2, Lcom/huawei/android/FMRadio/FMRadioUtils;->mStationList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/android/FMRadio/ItemHolder;

    invoke-virtual {v2}, Lcom/huawei/android/FMRadio/ItemHolder;->getmFrequency()I

    move-result v0

    .line 523
    invoke-static {v0}, Lcom/huawei/android/FMRadio/FMRadioUtils;->isFreqValid(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 524
    invoke-static {v3, v4}, Lcom/huawei/android/FMRadio/FMRadioUtils;->findPreviousOrNextStation(IZ)I

    move-result v0

    .line 528
    :cond_0
    return v0
.end method

.method public static getPositionByFrequency(I)I
    .locals 3
    .parameter "frequency"

    .prologue
    .line 589
    new-instance v1, Lcom/huawei/android/FMRadio/ItemHolder;

    invoke-direct {v1, p0}, Lcom/huawei/android/FMRadio/ItemHolder;-><init>(I)V

    .line 590
    .local v1, result:Lcom/huawei/android/FMRadio/ItemHolder;
    sget-object v2, Lcom/huawei/android/FMRadio/FMRadioUtils;->mStationList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 592
    .local v0, index:I
    return v0
.end method

.method public static getStationName(I)Ljava/lang/String;
    .locals 2
    .parameter "frequency"

    .prologue
    .line 611
    const/4 v1, 0x0

    .line 613
    .local v1, tmpName:Ljava/lang/String;
    invoke-static {p0}, Lcom/huawei/android/FMRadio/FMRadioUtils;->getItemByFrequency(I)Lcom/huawei/android/FMRadio/ItemHolder;

    move-result-object v0

    .line 614
    .local v0, tmpHolder:Lcom/huawei/android/FMRadio/ItemHolder;
    if-eqz v0, :cond_0

    .line 615
    invoke-virtual {v0}, Lcom/huawei/android/FMRadio/ItemHolder;->getmStationName()Ljava/lang/String;

    move-result-object v1

    .line 618
    :cond_0
    return-object v1
.end method

.method public static getmCurFrequency()I
    .locals 1

    .prologue
    .line 1104
    sget v0, Lcom/huawei/android/FMRadio/FMRadioUtils;->mCurFrequency:I

    return v0
.end method

.method public static getmFMSoundMode()B
    .locals 1

    .prologue
    .line 1112
    sget-byte v0, Lcom/huawei/android/FMRadio/FMRadioUtils;->mFMSoundMode:B

    return v0
.end method

.method public static getmFreqUnit(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1165
    const v0, 0x7f080031

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getmService()Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;
    .locals 1

    .prologue
    .line 1156
    sget-object v0, Lcom/huawei/android/FMRadio/FMRadioUtils;->mService:Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;

    return-object v0
.end method

.method public static getmSleepMinutes()I
    .locals 5

    .prologue
    .line 1171
    sget-wide v1, Lcom/huawei/android/FMRadio/FMRadioUtils;->mSleepTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-double v1, v1

    const-wide/high16 v3, 0x404e

    div-double/2addr v1, v3

    const-wide v3, 0x408f400000000000L

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v0, v1

    .line 1173
    .local v0, sleepMintues:I
    if-gez v0, :cond_0

    const/4 v0, 0x0

    .end local v0           #sleepMintues:I
    :cond_0
    return v0
.end method

.method public static getmStationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/FMRadio/ItemHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1120
    sget-object v0, Lcom/huawei/android/FMRadio/FMRadioUtils;->mStationList:Ljava/util/List;

    return-object v0
.end method

.method public static initStationRecord(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x1

    .line 532
    const-string v1, "FMRadioUtils"

    const-string v2, "initStationRecord"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    if-nez p0, :cond_1

    .line 535
    const-string v1, "FMRadioUtils"

    const-string v2, "getRecord input parameter invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :cond_0
    :goto_0
    return-void

    .line 539
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 542
    .local v0, resolver:Landroid/content/ContentResolver;
    :try_start_0
    sget-object v1, Lcom/huawei/android/FMRadio/Config;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/huawei/android/FMRadio/FMRadioUtils;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 544
    .local v8, tmpCursor:Landroid/database/Cursor;
    if-eqz v8, :cond_5

    .line 546
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 547
    .local v7, itemHolderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/android/FMRadio/ItemHolder;>;"
    const/16 v1, 0x8

    new-array v1, v1, [Lcom/huawei/android/FMRadio/ItemHolder;

    sput-object v1, Lcom/huawei/android/FMRadio/FMRadioUtils;->mCollectStation:[Lcom/huawei/android/FMRadio/ItemHolder;

    .line 548
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 550
    :cond_2
    new-instance v9, Lcom/huawei/android/FMRadio/ItemHolder;

    invoke-direct {v9}, Lcom/huawei/android/FMRadio/ItemHolder;-><init>()V

    .line 551
    .local v9, tmpHolder:Lcom/huawei/android/FMRadio/ItemHolder;
    const-string v1, "_name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/huawei/android/FMRadio/ItemHolder;->setmStationName(Ljava/lang/String;)V

    .line 553
    const-string v1, "_frequency"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v1

    invoke-virtual {v9, v1}, Lcom/huawei/android/FMRadio/ItemHolder;->setmFrequency(I)V

    .line 555
    const-string v1, "_favorite"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v10, :cond_6

    move v1, v10

    :goto_1
    const-string v2, "_favoriteid"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v9, v1, v2}, Lcom/huawei/android/FMRadio/ItemHolder;->setmCollected(ZI)V

    .line 558
    const-string v1, "FMRadioUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ItemHolder:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Lcom/huawei/android/FMRadio/ItemHolder;->getmFrequency()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Lcom/huawei/android/FMRadio/ItemHolder;->ismCollected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    invoke-virtual {v9}, Lcom/huawei/android/FMRadio/ItemHolder;->ismCollected()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v9}, Lcom/huawei/android/FMRadio/ItemHolder;->getmCollectId()I

    move-result v1

    if-ltz v1, :cond_3

    .line 564
    sget-object v1, Lcom/huawei/android/FMRadio/FMRadioUtils;->mCollectStation:[Lcom/huawei/android/FMRadio/ItemHolder;

    invoke-virtual {v9}, Lcom/huawei/android/FMRadio/ItemHolder;->getmCollectId()I

    move-result v2

    aput-object v9, v1, v2

    .line 566
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 569
    .end local v9           #tmpHolder:Lcom/huawei/android/FMRadio/ItemHolder;
    :cond_4
    sget-object v1, Lcom/huawei/android/FMRadio/FMRadioUtils;->mStationList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 570
    sget-object v1, Lcom/huawei/android/FMRadio/FMRadioUtils;->mStationList:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 571
    sget-object v1, Lcom/huawei/android/FMRadio/FMRadioUtils;->mStationList:Ljava/util/List;

    sget-object v2, Lcom/huawei/android/FMRadio/FMRadioUtils;->mItemComparator:Lcom/huawei/android/FMRadio/ItemHolder$ItemComparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 574
    .end local v7           #itemHolderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/android/FMRadio/ItemHolder;>;"
    :cond_5
    if-eqz v8, :cond_0

    .line 575
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 577
    .end local v8           #tmpCursor:Landroid/database/Cursor;
    :catch_0
    move-exception v6

    .line 578
    .local v6, e:Landroid/database/SQLException;
    const-string v1, "FMRadioUtils"

    invoke-virtual {v6}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 555
    .end local v6           #e:Landroid/database/SQLException;
    .restart local v7       #itemHolderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/android/FMRadio/ItemHolder;>;"
    .restart local v8       #tmpCursor:Landroid/database/Cursor;
    .restart local v9       #tmpHolder:Lcom/huawei/android/FMRadio/ItemHolder;
    :cond_6
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 878
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isApplicationTop(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 734
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 735
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 736
    .local v1, tasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 737
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 738
    .local v2, topActivity:Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 742
    .end local v2           #topActivity:Landroid/content/ComponentName;
    :goto_0
    return v3

    :cond_0
    move v3, v5

    goto :goto_0
.end method

.method public static isFreqValid(I)Z
    .locals 1
    .parameter "frequency"

    .prologue
    .line 584
    const/16 v0, 0x2a30

    if-gt p0, v0, :cond_0

    const/16 v0, 0x222e

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNameExist(Ljava/lang/String;)Z
    .locals 5
    .parameter "strName"

    .prologue
    .line 884
    const/4 v0, 0x0

    .line 886
    .local v0, exist:Z
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_1

    .line 887
    :cond_0
    const/4 v4, 0x1

    .line 905
    :goto_0
    return v4

    .line 890
    :cond_1
    sget-object v4, Lcom/huawei/android/FMRadio/FMRadioUtils;->mStationList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 891
    .local v2, nCnt:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 892
    sget-object v4, Lcom/huawei/android/FMRadio/FMRadioUtils;->mStationList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/android/FMRadio/ItemHolder;

    .line 894
    .local v3, tmpHolder:Lcom/huawei/android/FMRadio/ItemHolder;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/huawei/android/FMRadio/ItemHolder;->getmStationName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/huawei/android/FMRadio/ItemHolder;->getmStationName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_3

    .line 891
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 899
    :cond_3
    invoke-virtual {v3}, Lcom/huawei/android/FMRadio/ItemHolder;->getmStationName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 900
    const/4 v0, 0x1

    .end local v3           #tmpHolder:Lcom/huawei/android/FMRadio/ItemHolder;
    :cond_4
    move v4, v0

    .line 905
    goto :goto_0
.end method

.method public static isStationSaved(I)Z
    .locals 2
    .parameter "frequency"

    .prologue
    .line 604
    invoke-static {p0}, Lcom/huawei/android/FMRadio/FMRadioUtils;->getPositionByFrequency(I)I

    move-result v0

    .line 606
    .local v0, index:I
    if-ltz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isWiredHeadsetAvailable(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 940
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 942
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static ismAutoTuning()Z
    .locals 1

    .prologue
    .line 1132
    sget-boolean v0, Lcom/huawei/android/FMRadio/FMRadioUtils;->mAutoTuning:Z

    return v0
.end method

.method public static ismBroadcastOn()Z
    .locals 1

    .prologue
    .line 1148
    sget-boolean v0, Lcom/huawei/android/FMRadio/FMRadioUtils;->mBroadcastOn:Z

    return v0
.end method

.method public static ismManualTuning()Z
    .locals 1

    .prologue
    .line 1140
    sget-boolean v0, Lcom/huawei/android/FMRadio/FMRadioUtils;->mManualTuning:Z

    return v0
.end method

.method public static ismScreenOn()Z
    .locals 1

    .prologue
    .line 1124
    sget-boolean v0, Lcom/huawei/android/FMRadio/FMRadioUtils;->mScreenOn:Z

    return v0
.end method

.method public static onFinishAutoTuning(Landroid/content/Context;Landroid/os/Handler;Landroid/app/ProgressDialog;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x67

    .line 983
    const-string v0, "FMRadioUtils"

    const-string v1, "onFinishAutoTuning"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/huawei/android/FMRadio/FMRadioUtils;->setmAutoTuning(Z)V

    .line 986
    if-eqz p2, :cond_0

    .line 987
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 988
    invoke-virtual {p2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 992
    :cond_0
    sget-object v0, Lcom/huawei/android/FMRadio/FMRadioUtils;->mService:Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;

    invoke-virtual {v0}, Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;->getSearchStationList()Ljava/util/List;

    move-result-object v0

    .line 994
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 995
    invoke-static {p0, v0}, Lcom/huawei/android/FMRadio/FMRadioUtils;->doSaveSearchStations(Landroid/content/Context;Ljava/util/List;)Z

    move-result v0

    .line 996
    if-nez v0, :cond_1

    .line 997
    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1001
    :cond_1
    invoke-static {p0}, Lcom/huawei/android/FMRadio/FMRadioUtils;->getLastPlayValidFrequency(Landroid/content/Context;)I

    move-result v0

    .line 1003
    invoke-static {v0}, Lcom/huawei/android/FMRadio/FMRadioUtils;->isFreqValid(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1004
    const/16 v0, 0x222e

    .line 1007
    :cond_2
    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/huawei/android/FMRadio/FMRadioUtils;->play(Landroid/content/Context;ILandroid/app/ProgressDialog;Landroid/os/Handler;)Z

    .line 1008
    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1010
    return-void
.end method

.method public static play(Landroid/content/Context;ILandroid/app/ProgressDialog;Landroid/os/Handler;)Z
    .locals 4
    .parameter "context"
    .parameter "frequency"
    .parameter "waitingDialog"
    .parameter "handler"

    .prologue
    const/4 v3, 0x0

    .line 642
    const-string v0, "FMRadioUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    if-nez p0, :cond_0

    .line 645
    const-string v0, "FMRadioUtils"

    const-string v1, "play null == context"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 646
    :cond_0
    sget-object v0, Lcom/huawei/android/FMRadio/FMRadioUtils;->mService:Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;

    if-nez v0, :cond_1

    .line 647
    const-string v0, "FMRadioUtils"

    const-string v1, "null == sService"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const v0, 0x7f08001f

    invoke-static {p0, v0, v3}, Lcom/huawei/android/FMRadio/CommonUI;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 651
    :cond_1
    invoke-static {p0}, Lcom/huawei/android/FMRadio/FMRadioUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 654
    const v0, 0x7f080047

    invoke-static {p0, v0, v3}, Lcom/huawei/android/FMRadio/CommonUI;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 657
    :cond_2
    invoke-static {p0}, Lcom/huawei/android/FMRadio/FMRadioUtils;->isWiredHeadsetAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 658
    const-string v0, "FMRadioUtils"

    const-string v1, "headset is unplug"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    const v0, 0x7f080039

    invoke-static {p0, v0, v3}, Lcom/huawei/android/FMRadio/CommonUI;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 662
    :cond_3
    invoke-static {p1}, Lcom/huawei/android/FMRadio/FMRadioUtils;->isFreqValid(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 663
    const-string v0, "FMRadioUtils"

    const-string v1, "frequency is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 666
    :cond_4
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p2, :cond_5

    .line 667
    const v0, 0x7f08002f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 668
    invoke-virtual {p2}, Landroid/app/ProgressDialog;->show()V

    .line 672
    :cond_5
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/huawei/android/FMRadio/FMRadioUtils$1;

    invoke-direct {v1, p1}, Lcom/huawei/android/FMRadio/FMRadioUtils$1;-><init>(I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static registerMediaButtonEventReceiver(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 947
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 949
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.huawei.android.FMRadio"

    const-class v3, Lcom/huawei/android/FMRadio/FMMediaButtonIntentReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 951
    return-void
.end method

.method public static saveLastFrequency(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "frequency"

    .prologue
    .line 915
    const-string v2, "com.huawei.android.FMRadio"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 917
    .local v1, sharePerferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 918
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "last_freq"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 919
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 920
    return-void
.end method

.method public static setmAutoTuning(Z)V
    .locals 0
    .parameter "mAutoTuning"

    .prologue
    .line 1136
    sput-boolean p0, Lcom/huawei/android/FMRadio/FMRadioUtils;->mAutoTuning:Z

    .line 1137
    return-void
.end method

.method public static setmBroadcastOn(Z)V
    .locals 0
    .parameter "mBroadcastOn"

    .prologue
    .line 1152
    sput-boolean p0, Lcom/huawei/android/FMRadio/FMRadioUtils;->mBroadcastOn:Z

    .line 1153
    return-void
.end method

.method public static setmCurFrequency(I)V
    .locals 0
    .parameter "mCurFrequency"

    .prologue
    .line 1108
    sput p0, Lcom/huawei/android/FMRadio/FMRadioUtils;->mCurFrequency:I

    .line 1109
    return-void
.end method

.method public static setmFMSoundMode(B)V
    .locals 0
    .parameter "mFMSoundMode"

    .prologue
    .line 1116
    sput-byte p0, Lcom/huawei/android/FMRadio/FMRadioUtils;->mFMSoundMode:B

    .line 1117
    return-void
.end method

.method public static setmManualTuning(Z)V
    .locals 0
    .parameter "mManualTuning"

    .prologue
    .line 1144
    sput-boolean p0, Lcom/huawei/android/FMRadio/FMRadioUtils;->mManualTuning:Z

    .line 1145
    return-void
.end method

.method public static setmScreenOn(Z)V
    .locals 0
    .parameter "mScreenOn"

    .prologue
    .line 1128
    sput-boolean p0, Lcom/huawei/android/FMRadio/FMRadioUtils;->mScreenOn:Z

    .line 1129
    return-void
.end method

.method public static setmService(Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;)V
    .locals 0
    .parameter "mService"

    .prologue
    .line 1160
    sput-object p0, Lcom/huawei/android/FMRadio/FMRadioUtils;->mService:Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;

    .line 1161
    return-void
.end method

.method public static stop(Landroid/content/Context;Landroid/app/ProgressDialog;Landroid/os/Handler;)Z
    .locals 2
    .parameter "context"
    .parameter "waitingDialog"
    .parameter "handler"

    .prologue
    .line 685
    const-string v0, "FMRadioUtils"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    if-nez p0, :cond_0

    .line 688
    const-string v0, "FMRadioUtils"

    const-string v1, "play null == context"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 689
    :cond_0
    sget-object v0, Lcom/huawei/android/FMRadio/FMRadioUtils;->mService:Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;

    if-nez v0, :cond_1

    .line 690
    const-string v0, "FMRadioUtils"

    const-string v1, "null == sService"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    const v0, 0x7f08001f

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/huawei/android/FMRadio/CommonUI;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 696
    :cond_1
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 697
    const v0, 0x7f080030

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 698
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 702
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/huawei/android/FMRadio/FMRadioUtils$2;

    invoke-direct {v1}, Lcom/huawei/android/FMRadio/FMRadioUtils$2;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static unRegisterMediaButtonEventReceiver(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 955
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 957
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.huawei.android.FMRadio"

    const-class v3, Lcom/huawei/android/FMRadio/FMMediaButtonIntentReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 959
    return-void
.end method

.method public static unbindFromService(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 153
    const-string v2, "FMRadioUtils"

    const-string v3, "unbindFromService"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    if-nez p0, :cond_1

    .line 156
    const-string v2, "FMRadioUtils"

    const-string v3, "unbindFromService null == context"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    sget-object v2, Lcom/huawei/android/FMRadio/FMRadioUtils;->mConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ServiceConnection;

    .line 162
    .local v0, conn:Landroid/content/ServiceConnection;
    if-nez v0, :cond_2

    .line 163
    const-string v2, "FMRadioUtils"

    const-string v3, "Trying to unbind for unknown Context"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 167
    :cond_2
    const-string v2, "FMRadioUtils"

    const-string v3, "Trying to unbind server"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 172
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v2

    if-nez v2, :cond_3

    .line 173
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 174
    .local v1, serviceIntent:Landroid/content/Intent;
    const-string v2, "com.huawei.android.FMRadio.SERVICE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    invoke-virtual {p0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 179
    .end local v1           #serviceIntent:Landroid/content/Intent;
    :cond_3
    sget-object v2, Lcom/huawei/android/FMRadio/FMRadioUtils;->mConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    const/4 v2, 0x0

    sput-object v2, Lcom/huawei/android/FMRadio/FMRadioUtils;->mService:Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;

    goto :goto_0
.end method
