.class public Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;
.super Ljava/lang/Object;
.source "PowerManagementModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;
    }
.end annotation


# static fields
.field private static MOBILE_FLAG:Ljava/lang/String;

.field private static WIFI_FLAG:Ljava/lang/String;

.field private static sCachedMethod:Ljava/lang/reflect/Method;


# instance fields
.field private DEBUG:Z

.field private mAppConsume:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;",
            ">;"
        }
    .end annotation
.end field

.field private mAppWifiRunning:J

.field private mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field private mBluetoothPower:D

.field private mContext:Landroid/content/Context;

.field private mMediaUid:I

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field private mStats:Lcom/android/internal/os/BatteryStatsImpl;

.field mStatsService:Landroid/net/INetworkStatsService;

.field private mStatsType:I

.field private mWifiPower:D

.field private uSecTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 108
    const-string v0, "wifi"

    sput-object v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->WIFI_FLAG:Ljava/lang/String;

    .line 109
    const-string v0, "mobile"

    sput-object v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->MOBILE_FLAG:Ljava/lang/String;

    .line 521
    :try_start_0
    const-class v0, Landroid/os/BatteryStats$Uid;

    const-string v1, "getWifiScanTime"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->sCachedMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    :goto_0
    return-void

    .line 522
    :catch_0
    move-exception v0

    .line 523
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const-wide/16 v1, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->DEBUG:Z

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mAppConsume:Ljava/util/ArrayList;

    .line 94
    const/4 v0, 0x3

    iput v0, p0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mStatsType:I

    .line 99
    iput-wide v1, p0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mWifiPower:D

    .line 100
    iput-wide v1, p0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mBluetoothPower:D

    .line 101
    const/16 v0, 0x3f5

    iput v0, p0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mMediaUid:I

    .line 119
    iput-object p1, p0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mContext:Landroid/content/Context;

    .line 120
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    invoke-direct {v0, p1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 121
    const-string v0, "batteryinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    .line 122
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    if-nez v0, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->load()V

    .line 125
    :cond_0
    return-void
.end method

.method private collectHistoryForUid(Landroid/net/NetworkTemplate;IILandroid/net/NetworkStatsHistory;)Landroid/net/NetworkStatsHistory;
    .locals 8
    .parameter "template"
    .parameter "uid"
    .parameter "set"
    .parameter "existing"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 659
    const/4 v0, 0x0

    .line 662
    .local v0, statsSession:Landroid/net/INetworkStatsSession;
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v1}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 667
    :goto_0
    if-nez v0, :cond_0

    .line 668
    const/4 v7, 0x0

    .line 675
    :goto_1
    return-object v7

    .line 663
    :catch_0
    move-exception v6

    .line 664
    .local v6, e:Landroid/os/RemoteException;
    const-string v1, ""

    const-string v2, "RemoteException:"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 671
    .end local v6           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v4, 0x0

    const/16 v5, 0xa

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v7

    .line 674
    .local v7, history:Landroid/net/NetworkStatsHistory;
    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    goto :goto_1
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 680
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 681
    .local v1, tele:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 682
    .local v0, actualSubscriberId:Ljava/lang/String;
    const-string v2, "test.subscriberid"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getAverageDataCost()D
    .locals 26

    .prologue
    .line 571
    const-wide/32 v6, 0xf4240

    .line 574
    .local v6, WIFI_BPS:J
    const-wide/32 v2, 0x30d40

    .line 578
    .local v2, MOBILE_BPS:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v22, v0

    const-string v23, "wifi.active"

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v22

    const-wide v24, 0x40ac200000000000L

    div-double v8, v22, v24

    .line 581
    .local v8, WIFI_POWER:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v22, v0

    const-string v23, "radio.active"

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v22

    const-wide v24, 0x40ac200000000000L

    div-double v4, v22, v24

    .line 584
    .local v4, MOBILE_POWER:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mStatsType:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/os/BatteryStatsImpl;->getMobileTcpBytesReceived(I)J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mStatsType:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/os/BatteryStatsImpl;->getMobileTcpBytesSent(I)J

    move-result-wide v24

    add-long v14, v22, v24

    .line 587
    .local v14, mobileData:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mStatsType:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/os/BatteryStatsImpl;->getTotalTcpBytesReceived(I)J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mStatsType:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/os/BatteryStatsImpl;->getTotalTcpBytesSent(I)J

    move-result-wide v24

    add-long v22, v22, v24

    sub-long v20, v22, v14

    .line 591
    .local v20, wifiData:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/os/BatteryStatsImpl;->getRadioDataUptime()J

    move-result-wide v22

    const-wide/16 v24, 0x3e8

    div-long v16, v22, v24

    .line 593
    .local v16, radioDataUptimeMs:J
    const-wide/16 v22, 0x0

    cmp-long v22, v16, v22

    if-eqz v22, :cond_0

    const-wide/16 v22, 0x8

    mul-long v22, v22, v14

    const-wide/16 v24, 0x3e8

    mul-long v22, v22, v24

    div-long v10, v22, v16

    .line 595
    .local v10, mobileBps:J
    :goto_0
    long-to-double v0, v10

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4020

    div-double v22, v22, v24

    div-double v12, v4, v22

    .line 596
    .local v12, mobileCostPerByte:D
    const-wide v22, 0x40fe848000000000L

    div-double v18, v8, v22

    .line 597
    .local v18, wifiCostPerByte:D
    add-long v22, v20, v14

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-eqz v22, :cond_1

    .line 598
    long-to-double v0, v14

    move-wide/from16 v22, v0

    mul-double v22, v22, v12

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v24, v24, v18

    add-double v22, v22, v24

    add-long v24, v14, v20

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    .line 600
    :goto_1
    return-wide v22

    .line 593
    .end local v10           #mobileBps:J
    .end local v12           #mobileCostPerByte:D
    .end local v18           #wifiCostPerByte:D
    :cond_0
    const-wide/32 v10, 0x30d40

    goto :goto_0

    .line 600
    .restart local v10       #mobileBps:J
    .restart local v12       #mobileCostPerByte:D
    .restart local v18       #wifiCostPerByte:D
    :cond_1
    const-wide/16 v22, 0x0

    goto :goto_1
.end method

.method private load()V
    .locals 9

    .prologue
    .line 128
    const/4 v3, 0x0

    .line 131
    .local v3, parcel:Landroid/os/Parcel;
    :try_start_0
    iget-object v4, p0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4}, Lcom/android/internal/app/IBatteryStats;->getStatistics()[B

    move-result-object v0

    .line 132
    .local v0, data:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v4, 0x5

    if-ge v2, v4, :cond_0

    .line 133
    iget-object v4, p0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4}, Lcom/android/internal/app/IBatteryStats;->getStatistics()[B

    move-result-object v0

    .line 134
    if-eqz v0, :cond_2

    array-length v4, v0

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    aget-byte v4, v0, v4

    if-eqz v4, :cond_2

    .line 138
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 139
    const/4 v4, 0x0

    array-length v5, v0

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 140
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 141
    sget-object v4, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatteryStatsImpl;

    iput-object v4, p0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 143
    iget-object v4, p0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v5, p0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mStatsType:I

    invoke-virtual {v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->distributeWorkLocked(I)V

    .line 144
    iget-object v4, p0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    iget v7, p0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mStatsType:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryRealtime(JI)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->uSecTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 151
    if-eqz v3, :cond_1

    .line 152
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 158
    .end local v0           #data:[B
    .end local v2           #i:I
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 160
    const-string v4, "netstats"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v4

    iput-object v4, p0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mStatsService:Landroid/net/INetworkStatsService;

    .line 166
    return-void

    .line 132
    .restart local v0       #data:[B
    .restart local v2       #i:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 146
    .end local v0           #data:[B
    .end local v2           #i:I
    :catch_0
    move-exception v1

    .line 147
    .local v1, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v4, "PowerManagementModel"

    const-string v5, "RemoteException:"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    if-eqz v3, :cond_1

    .line 152
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    .line 148
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 149
    .local v1, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    const-string v4, "PowerManagementModel"

    const-string v5, "IllegalArgumentException when BatteryInfo.getStatistics"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 151
    if-eqz v3, :cond_1

    .line 152
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    .line 151
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_3

    .line 152
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    :cond_3
    throw v4
.end method

.method private queryThirdUids()Ljava/util/Set;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 686
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 687
    .local v10, thirdUids:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v11, p0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mContext:Landroid/content/Context;

    const-string v12, "activity"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 688
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 689
    .local v5, listAppcations:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    iget-object v11, p0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->findProtectedApps(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 692
    .local v8, protectedAppList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Set;->clear()V

    .line 693
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 695
    .local v9, rapp:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v7, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 696
    .local v7, pkgList:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v11, v7

    if-ge v3, v11, :cond_0

    .line 697
    aget-object v6, v7, v3

    .line 698
    .local v6, pkg:Ljava/lang/String;
    const/4 v1, 0x0

    .line 700
    .local v1, app:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v11, p0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v12, 0x0

    invoke-virtual {v11, v6, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 701
    if-nez v1, :cond_2

    .line 696
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 702
    :cond_2
    iget v11, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 704
    invoke-interface {v8, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 705
    iget v11, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v12, 0x2710

    if-lt v11, v12, :cond_3

    .line 706
    iget v11, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 716
    :catch_0
    move-exception v2

    .line 717
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 712
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    :try_start_1
    iget v11, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v11, v11, 0x1

    if-gtz v11, :cond_1

    .line 713
    iget v11, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 718
    :catch_1
    move-exception v2

    .line 719
    .local v2, e:Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 728
    .end local v1           #app:Landroid/content/pm/ApplicationInfo;
    .end local v2           #e:Ljava/lang/NullPointerException;
    .end local v3           #i:I
    .end local v6           #pkg:Ljava/lang/String;
    .end local v7           #pkgList:[Ljava/lang/String;
    .end local v9           #rapp:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_4
    return-object v10
.end method


# virtual methods
.method public computerPowerBgConsumption()Ljava/util/ArrayList;
    .locals 78
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;",
            ">;"
        }
    .end annotation

    .prologue
    .line 356
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 357
    .local v19, bgAppConsume:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 358
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mContext:Landroid/content/Context;

    const-string v4, "sensor"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/hardware/SensorManager;

    .line 360
    .local v49, sensorManager:Landroid/hardware/SensorManager;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mStatsType:I

    move/from16 v71, v0

    .line 362
    .local v71, which:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v3}, Lcom/android/internal/os/PowerProfile;->getNumSpeedSteps()I

    move-result v54

    .line 363
    .local v54, speedSteps:I
    move/from16 v0, v54

    new-array v0, v0, [D

    move-object/from16 v41, v0

    .line 365
    .local v41, powerCpuNormal:[D
    const/16 v37, 0x0

    .local v37, p:I
    :goto_0
    move/from16 v0, v37

    move/from16 v1, v54

    if-ge v0, v1, :cond_0

    .line 366
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v4, "cpu.active"

    move/from16 v0, v37

    invoke-virtual {v3, v4, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v3

    aput-wide v3, v41, v37

    .line 365
    add-int/lit8 v37, v37, 0x1

    goto :goto_0

    .line 368
    :cond_0
    const/4 v3, 0x0

    aget-wide v31, v41, v3

    .line 370
    .local v31, minPowerCpuStep:D
    invoke-direct/range {p0 .. p0}, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->getAverageDataCost()D

    move-result-wide v15

    .line 377
    .local v15, averageCostPerByte:D
    invoke-direct/range {p0 .. p0}, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->queryThirdUids()Ljava/util/Set;

    move-result-object v57

    .line 381
    .local v57, thirdUids:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v63

    .line 382
    .local v63, uidStats:Landroid/util/SparseArray;,"Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v63 .. v63}, Landroid/util/SparseArray;->size()I

    move-result v13

    .line 383
    .local v13, NU:I
    const/16 v30, 0x0

    .local v30, iu:I
    :goto_1
    move/from16 v0, v30

    if-ge v0, v13, :cond_12

    .line 384
    move-object/from16 v0, v63

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Landroid/os/BatteryStats$Uid;

    .line 386
    .local v61, u:Landroid/os/BatteryStats$Uid;
    invoke-virtual/range {v61 .. v61}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v57

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 383
    :cond_1
    :goto_2
    add-int/lit8 v30, v30, 0x1

    goto :goto_1

    .line 387
    :cond_2
    const-wide/16 v39, 0x0

    .line 388
    .local v39, power:D
    const-wide/16 v27, 0x0

    .line 389
    .local v27, highestDrain:D
    const/16 v38, 0x0

    .line 391
    .local v38, packageWithHighestDrain:Ljava/lang/String;
    invoke-virtual/range {v61 .. v61}, Landroid/os/BatteryStats$Uid;->getProcessStats()Ljava/util/Map;

    move-result-object v44

    .line 392
    .local v44, processStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    const-wide/16 v22, 0x0

    .line 393
    .local v22, cpuTime:J
    const-wide/16 v20, 0x0

    .line 394
    .local v20, cpuFgTime:J
    const-wide/16 v69, 0x0

    .line 395
    .local v69, wakelockTime:J
    invoke-interface/range {v44 .. v44}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_9

    .line 398
    invoke-interface/range {v44 .. v44}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .local v29, i$:Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/Map$Entry;

    .line 399
    .local v24, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string v4, "PowerManagementModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Process name = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v24 .. v24}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_4
    invoke-interface/range {v24 .. v24}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/os/BatteryStats$Uid$Proc;

    .line 401
    .local v45, ps:Landroid/os/BatteryStats$Uid$Proc;
    move-object/from16 v0, v45

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v64

    .line 402
    .local v64, userTime:J
    move-object/from16 v0, v45

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v55

    .line 403
    .local v55, systemTime:J
    move-object/from16 v0, v45

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v25

    .line 404
    .local v25, foregroundTime:J
    const-wide/16 v3, 0xa

    mul-long v3, v3, v25

    add-long v20, v20, v3

    .line 405
    add-long v3, v64, v55

    const-wide/16 v5, 0xa

    mul-long v59, v3, v5

    .line 408
    .local v59, tmpCpuTime:J
    const-wide/16 v42, 0x0

    .line 411
    .local v42, processPower:D
    add-long v3, v64, v55

    sub-long v3, v3, v25

    const-wide/16 v5, 0xa

    mul-long v17, v3, v5

    .line 412
    .local v17, backgroundtime:J
    const-wide/16 v3, 0x0

    cmp-long v3, v17, v3

    if-gtz v3, :cond_5

    const-wide/16 v17, 0x1

    .line 413
    :cond_5
    move-wide/from16 v0, v17

    long-to-double v3, v0

    mul-double v42, v3, v31

    .line 415
    add-long v22, v22, v59

    .line 416
    add-double v39, v39, v42

    .line 417
    if-eqz v38, :cond_6

    const-string v3, "*"

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 419
    :cond_6
    move-wide/from16 v27, v42

    .line 420
    invoke-interface/range {v24 .. v24}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v38

    .end local v38           #packageWithHighestDrain:Ljava/lang/String;
    check-cast v38, Ljava/lang/String;

    .restart local v38       #packageWithHighestDrain:Ljava/lang/String;
    goto/16 :goto_3

    .line 421
    :cond_7
    cmpg-double v3, v27, v42

    if-gez v3, :cond_3

    invoke-interface/range {v24 .. v24}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 423
    move-wide/from16 v27, v42

    .line 424
    invoke-interface/range {v24 .. v24}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v38

    .end local v38           #packageWithHighestDrain:Ljava/lang/String;
    check-cast v38, Ljava/lang/String;

    .restart local v38       #packageWithHighestDrain:Ljava/lang/String;
    goto/16 :goto_3

    .line 427
    .end local v17           #backgroundtime:J
    .end local v24           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v25           #foregroundTime:J
    .end local v42           #processPower:D
    .end local v45           #ps:Landroid/os/BatteryStats$Uid$Proc;
    .end local v55           #systemTime:J
    .end local v59           #tmpCpuTime:J
    .end local v64           #userTime:J
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->DEBUG:Z

    if-eqz v3, :cond_9

    const-string v3, "PowerManagementModel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Max drain of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v27

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    .end local v29           #i$:Ljava/util/Iterator;
    :cond_9
    cmp-long v3, v20, v22

    if-lez v3, :cond_b

    .line 431
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->DEBUG:Z

    if-eqz v3, :cond_a

    const-wide/16 v3, 0x2710

    add-long v3, v3, v22

    cmp-long v3, v20, v3

    if-lez v3, :cond_a

    .line 432
    const-string v3, "PowerManagementModel"

    const-string v4, "WARNING! Cputime is more than 10 seconds behind Foreground time"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_a
    move-wide/from16 v22, v20

    .line 436
    :cond_b
    const-wide v3, 0x408f400000000000L

    div-double v39, v39, v3

    .line 439
    invoke-virtual/range {v61 .. v61}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Ljava/util/Map;

    move-result-object v68

    .line 441
    .local v68, wakelockStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v68 .. v68}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .restart local v29       #i$:Ljava/util/Iterator;
    :cond_c
    :goto_4
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Ljava/util/Map$Entry;

    .line 442
    .local v67, wakelockEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v67 .. v67}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v66

    check-cast v66, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 445
    .local v66, wakelock:Landroid/os/BatteryStats$Uid$Wakelock;
    const/4 v3, 0x0

    move-object/from16 v0, v66

    invoke-virtual {v0, v3}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v58

    .line 446
    .local v58, timer:Landroid/os/BatteryStats$Timer;
    if-eqz v58, :cond_c

    .line 447
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->uSecTime:J

    move-object/from16 v0, v58

    move/from16 v1, v71

    invoke-virtual {v0, v3, v4, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v3

    add-long v69, v69, v3

    goto :goto_4

    .line 450
    .end local v58           #timer:Landroid/os/BatteryStats$Timer;
    .end local v66           #wakelock:Landroid/os/BatteryStats$Uid$Wakelock;
    .end local v67           #wakelockEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :cond_d
    const-wide/16 v3, 0x3e8

    div-long v69, v69, v3

    .line 454
    move-wide/from16 v0, v69

    long-to-double v3, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v6, "cpu.awake"

    invoke-virtual {v5, v6}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    mul-double/2addr v3, v5

    const-wide v5, 0x408f400000000000L

    div-double/2addr v3, v5

    add-double v39, v39, v3

    .line 457
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 458
    .local v9, now:J
    invoke-virtual/range {v61 .. v61}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v4

    sget-object v5, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->MOBILE_FLAG:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->uSecTime:J

    const-wide/16 v11, 0x3e8

    div-long/2addr v7, v11

    sub-long v7, v9, v7

    move-object/from16 v3, p0

    move-wide v11, v9

    invoke-virtual/range {v3 .. v12}, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->getDataConsumByUid(ILjava/lang/String;IJJJ)J

    move-result-wide v33

    .line 459
    .local v33, mobileBytes:J
    invoke-virtual/range {v61 .. v61}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v4

    sget-object v5, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->WIFI_FLAG:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->uSecTime:J

    const-wide/16 v11, 0x3e8

    div-long/2addr v7, v11

    sub-long v7, v9, v7

    move-object/from16 v3, p0

    move-wide v11, v9

    invoke-virtual/range {v3 .. v12}, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->getDataConsumByUid(ILjava/lang/String;IJJJ)J

    move-result-wide v72

    .line 460
    .local v72, wifiBytes:J
    add-long v3, v33, v72

    long-to-double v3, v3

    mul-double/2addr v3, v15

    add-double v39, v39, v3

    .line 461
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->DEBUG:Z

    if-eqz v3, :cond_e

    const-string v3, "PowerManagementModel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v61 .. v61}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": power="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v39

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_e
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->uSecTime:J

    move-object/from16 v0, v61

    move/from16 v1, v71

    invoke-virtual {v0, v3, v4, v1}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long v74, v3, v5

    .line 465
    .local v74, wifiRunningTimeMs:J
    move-wide/from16 v0, v74

    long-to-double v3, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v6, "wifi.on"

    invoke-virtual {v5, v6}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    mul-double/2addr v3, v5

    const-wide v5, 0x408f400000000000L

    div-double/2addr v3, v5

    add-double v39, v39, v3

    .line 468
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->uSecTime:J

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    move/from16 v2, v71

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->getWifiScanTime(Landroid/os/BatteryStats$Uid;JI)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long v76, v3, v5

    .line 469
    .local v76, wifiScanTimeMs:J
    move-wide/from16 v0, v76

    long-to-double v3, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v6, "wifi.scan"

    invoke-virtual {v5, v6}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    mul-double/2addr v3, v5

    const-wide v5, 0x408f400000000000L

    div-double/2addr v3, v5

    add-double v39, v39, v3

    .line 473
    invoke-virtual/range {v61 .. v61}, Landroid/os/BatteryStats$Uid;->getSensorStats()Ljava/util/Map;

    move-result-object v50

    .line 475
    .local v50, sensorStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-interface/range {v50 .. v50}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :goto_5
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/util/Map$Entry;

    .line 476
    .local v48, sensorEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-interface/range {v48 .. v48}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/os/BatteryStats$Uid$Sensor;

    .line 477
    .local v46, sensor:Landroid/os/BatteryStats$Uid$Sensor;
    invoke-virtual/range {v46 .. v46}, Landroid/os/BatteryStats$Uid$Sensor;->getHandle()I

    move-result v53

    .line 478
    .local v53, sensorType:I
    invoke-virtual/range {v46 .. v46}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v58

    .line 479
    .restart local v58       #timer:Landroid/os/BatteryStats$Timer;
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->uSecTime:J

    move-object/from16 v0, v58

    move/from16 v1, v71

    invoke-virtual {v0, v3, v4, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long v51, v3, v5

    .line 480
    .local v51, sensorTime:J
    const-wide/16 v35, 0x0

    .line 481
    .local v35, multiplier:D
    packed-switch v53, :pswitch_data_0

    .line 486
    move-object/from16 v0, v49

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v47

    .line 488
    .local v47, sensorData:Landroid/hardware/Sensor;
    if-eqz v47, :cond_f

    .line 489
    invoke-virtual/range {v47 .. v47}, Landroid/hardware/Sensor;->getPower()F

    move-result v3

    float-to-double v0, v3

    move-wide/from16 v35, v0

    .line 490
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->DEBUG:Z

    if-eqz v3, :cond_f

    .line 491
    const-string v3, "PowerManagementModel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got sensor "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v47 .. v47}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with power = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v35

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    .end local v47           #sensorData:Landroid/hardware/Sensor;
    :cond_f
    :goto_6
    move-wide/from16 v0, v51

    long-to-double v3, v0

    mul-double v3, v3, v35

    const-wide v5, 0x408f400000000000L

    div-double/2addr v3, v5

    add-double v39, v39, v3

    .line 497
    goto :goto_5

    .line 483
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v4, "gps.on"

    invoke-virtual {v3, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v35

    .line 484
    goto :goto_6

    .line 499
    .end local v35           #multiplier:D
    .end local v46           #sensor:Landroid/os/BatteryStats$Uid$Sensor;
    .end local v48           #sensorEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v51           #sensorTime:J
    .end local v53           #sensorType:I
    .end local v58           #timer:Landroid/os/BatteryStats$Timer;
    :cond_10
    invoke-virtual/range {v61 .. v61}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v62

    .line 500
    .local v62, uid:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mPackageManager:Landroid/content/pm/PackageManager;

    move/from16 v0, v62

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_11

    const/16 v3, 0x2710

    move/from16 v0, v62

    if-lt v0, v3, :cond_11

    .line 501
    new-instance v3, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;

    invoke-virtual/range {v61 .. v61}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v4

    move-wide/from16 v0, v39

    invoke-direct {v3, v4, v0, v1}, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;-><init>(ID)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->DEBUG:Z

    if-eqz v3, :cond_11

    const-string v3, "PowerManagementModel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added power = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v39

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "PowerManagementModel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added background power = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v39

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  UID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v62

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 509
    .end local v9           #now:J
    .end local v20           #cpuFgTime:J
    .end local v22           #cpuTime:J
    .end local v27           #highestDrain:D
    .end local v29           #i$:Ljava/util/Iterator;
    .end local v33           #mobileBytes:J
    .end local v38           #packageWithHighestDrain:Ljava/lang/String;
    .end local v39           #power:D
    .end local v44           #processStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v50           #sensorStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v61           #u:Landroid/os/BatteryStats$Uid;
    .end local v62           #uid:I
    .end local v68           #wakelockStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v69           #wakelockTime:J
    .end local v72           #wifiBytes:J
    .end local v74           #wifiRunningTimeMs:J
    .end local v76           #wifiScanTimeMs:J
    :cond_12
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .restart local v29       #i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;

    .line 510
    .local v14, UidAndPowerlist:Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;
    const-string v3, "PowerManagementModel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "in bg calculate and uid is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v14, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and power is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v14, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;->power:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 512
    .end local v14           #UidAndPowerlist:Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;
    :cond_13
    return-object v19

    .line 481
    :pswitch_data_0
    .packed-switch -0x2710
        :pswitch_0
    .end packed-switch
.end method

.method public computerPowerConsumption()Ljava/util/ArrayList;
    .locals 81
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mContext:Landroid/content/Context;

    move-object/from16 v76, v0

    invoke-virtual/range {v76 .. v76}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v76

    move-object/from16 v0, v76

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mContext:Landroid/content/Context;

    move-object/from16 v76, v0

    const-string v77, "sensor"

    invoke-virtual/range {v76 .. v77}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/hardware/SensorManager;

    .line 173
    .local v42, sensorManager:Landroid/hardware/SensorManager;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mStatsType:I

    move/from16 v71, v0

    .line 174
    .local v71, which:I
    const-wide/16 v22, 0x0

    .line 175
    .local v22, mAndroidPower:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v76, v0

    invoke-virtual/range {v76 .. v76}, Lcom/android/internal/os/PowerProfile;->getNumSpeedSteps()I

    move-result v47

    .line 176
    .local v47, speedSteps:I
    move/from16 v0, v47

    new-array v0, v0, [D

    move-object/from16 v30, v0

    .line 177
    .local v30, powerCpuNormal:[D
    move/from16 v0, v47

    new-array v12, v0, [J

    .line 178
    .local v12, cpuSpeedStepTimes:[J
    const/16 v26, 0x0

    .local v26, p:I
    :goto_0
    move/from16 v0, v26

    move/from16 v1, v47

    if-ge v0, v1, :cond_0

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v76, v0

    const-string v77, "cpu.active"

    move-object/from16 v0, v76

    move-object/from16 v1, v77

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v76

    aput-wide v76, v30, v26

    .line 178
    add-int/lit8 v26, v26, 0x1

    goto :goto_0

    .line 181
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->getAverageDataCost()D

    move-result-wide v8

    .line 185
    .local v8, averageCostPerByte:D
    const-wide/16 v6, 0x0

    .line 189
    .local v6, appWakelockTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v76, v0

    invoke-virtual/range {v76 .. v76}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v61

    .line 190
    .local v61, uidStats:Landroid/util/SparseArray;,"Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v61 .. v61}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 191
    .local v5, NU:I
    const/16 v21, 0x0

    .local v21, iu:I
    :goto_1
    move/from16 v0, v21

    if-ge v0, v5, :cond_16

    .line 192
    move-object/from16 v0, v61

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Landroid/os/BatteryStats$Uid;

    .line 193
    .local v59, u:Landroid/os/BatteryStats$Uid;
    const-wide/16 v28, 0x0

    .line 194
    .local v28, power:D
    const-wide/16 v18, 0x0

    .line 195
    .local v18, highestDrain:D
    const/16 v27, 0x0

    .line 197
    .local v27, packageWithHighestDrain:Ljava/lang/String;
    invoke-virtual/range {v59 .. v59}, Landroid/os/BatteryStats$Uid;->getProcessStats()Ljava/util/Map;

    move-result-object v35

    .line 198
    .local v35, processStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    const-wide/16 v13, 0x0

    .line 199
    .local v13, cpuTime:J
    const-wide/16 v10, 0x0

    .line 200
    .local v10, cpuFgTime:J
    const-wide/16 v69, 0x0

    .line 201
    .local v69, wakelockTime:J
    invoke-interface/range {v35 .. v35}, Ljava/util/Map;->size()I

    move-result v76

    if-lez v76, :cond_9

    .line 204
    invoke-interface/range {v35 .. v35}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v76

    invoke-interface/range {v76 .. v76}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v76

    if-eqz v76, :cond_8

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 205
    .local v15, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->DEBUG:Z

    move/from16 v76, v0

    if-eqz v76, :cond_2

    const-string v77, "PowerManagementModel"

    new-instance v76, Ljava/lang/StringBuilder;

    invoke-direct/range {v76 .. v76}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "Process name = "

    move-object/from16 v0, v76

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v76

    check-cast v76, Ljava/lang/String;

    move-object/from16 v0, v78

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v76

    invoke-virtual/range {v76 .. v76}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v76

    move-object/from16 v0, v77

    move-object/from16 v1, v76

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_2
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/os/BatteryStats$Uid$Proc;

    .line 207
    .local v36, ps:Landroid/os/BatteryStats$Uid$Proc;
    move-object/from16 v0, v36

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v62

    .line 208
    .local v62, userTime:J
    move-object/from16 v0, v36

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v49

    .line 209
    .local v49, systemTime:J
    move-object/from16 v0, v36

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v16

    .line 210
    .local v16, foregroundTime:J
    const-wide/16 v76, 0xa

    mul-long v76, v76, v16

    add-long v10, v10, v76

    .line 211
    add-long v76, v62, v49

    const-wide/16 v78, 0xa

    mul-long v56, v76, v78

    .line 212
    .local v56, tmpCpuTime:J
    const/16 v58, 0x0

    .line 214
    .local v58, totalTimeAtSpeeds:I
    const/16 v48, 0x0

    .local v48, step:I
    :goto_3
    move/from16 v0, v48

    move/from16 v1, v47

    if-ge v0, v1, :cond_3

    .line 215
    move-object/from16 v0, v36

    move/from16 v1, v48

    move/from16 v2, v71

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid$Proc;->getTimeAtCpuSpeedStep(II)J

    move-result-wide v76

    aput-wide v76, v12, v48

    .line 216
    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v76, v0

    aget-wide v78, v12, v48

    add-long v76, v76, v78

    move-wide/from16 v0, v76

    long-to-int v0, v0

    move/from16 v58, v0

    .line 214
    add-int/lit8 v48, v48, 0x1

    goto :goto_3

    .line 218
    :cond_3
    if-nez v58, :cond_4

    const/16 v58, 0x1

    .line 220
    :cond_4
    const-wide/16 v33, 0x0

    .line 221
    .local v33, processPower:D
    const/16 v48, 0x0

    :goto_4
    move/from16 v0, v48

    move/from16 v1, v47

    if-ge v0, v1, :cond_5

    .line 222
    aget-wide v76, v12, v48

    move-wide/from16 v0, v76

    long-to-double v0, v0

    move-wide/from16 v76, v0

    move/from16 v0, v58

    int-to-double v0, v0

    move-wide/from16 v78, v0

    div-double v37, v76, v78

    .line 223
    .local v37, ratio:D
    move-wide/from16 v0, v56

    long-to-double v0, v0

    move-wide/from16 v76, v0

    mul-double v76, v76, v37

    aget-wide v78, v30, v48

    mul-double v76, v76, v78

    add-double v33, v33, v76

    .line 221
    add-int/lit8 v48, v48, 0x1

    goto :goto_4

    .line 225
    .end local v37           #ratio:D
    :cond_5
    add-long v13, v13, v56

    .line 226
    add-double v28, v28, v33

    .line 227
    if-eqz v27, :cond_6

    const-string v76, "*"

    move-object/from16 v0, v27

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v76

    if-eqz v76, :cond_7

    .line 229
    :cond_6
    move-wide/from16 v18, v33

    .line 230
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v27

    .end local v27           #packageWithHighestDrain:Ljava/lang/String;
    check-cast v27, Ljava/lang/String;

    .restart local v27       #packageWithHighestDrain:Ljava/lang/String;
    goto/16 :goto_2

    .line 231
    :cond_7
    cmpg-double v76, v18, v33

    if-gez v76, :cond_1

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v76

    check-cast v76, Ljava/lang/String;

    const-string v77, "*"

    invoke-virtual/range {v76 .. v77}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v76

    if-nez v76, :cond_1

    .line 233
    move-wide/from16 v18, v33

    .line 234
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v27

    .end local v27           #packageWithHighestDrain:Ljava/lang/String;
    check-cast v27, Ljava/lang/String;

    .restart local v27       #packageWithHighestDrain:Ljava/lang/String;
    goto/16 :goto_2

    .line 237
    .end local v15           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v16           #foregroundTime:J
    .end local v33           #processPower:D
    .end local v36           #ps:Landroid/os/BatteryStats$Uid$Proc;
    .end local v48           #step:I
    .end local v49           #systemTime:J
    .end local v56           #tmpCpuTime:J
    .end local v58           #totalTimeAtSpeeds:I
    .end local v62           #userTime:J
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->DEBUG:Z

    move/from16 v76, v0

    if-eqz v76, :cond_9

    const-string v76, "PowerManagementModel"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "Max drain of "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v77

    const-string v78, " by "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    .end local v20           #i$:Ljava/util/Iterator;
    :cond_9
    cmp-long v76, v10, v13

    if-lez v76, :cond_b

    .line 241
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->DEBUG:Z

    move/from16 v76, v0

    if-eqz v76, :cond_a

    const-wide/16 v76, 0x2710

    add-long v76, v76, v13

    cmp-long v76, v10, v76

    if-lez v76, :cond_a

    .line 242
    const-string v76, "PowerManagementModel"

    const-string v77, "WARNING! Cputime is more than 10 seconds behind Foreground time"

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_a
    move-wide v13, v10

    .line 246
    :cond_b
    const-wide v76, 0x408f400000000000L

    div-double v28, v28, v76

    .line 249
    invoke-virtual/range {v59 .. v59}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Ljava/util/Map;

    move-result-object v68

    .line 251
    .local v68, wakelockStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v68 .. v68}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v76

    invoke-interface/range {v76 .. v76}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .restart local v20       #i$:Ljava/util/Iterator;
    :cond_c
    :goto_5
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v76

    if-eqz v76, :cond_d

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Ljava/util/Map$Entry;

    .line 252
    .local v67, wakelockEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v67 .. v67}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v66

    check-cast v66, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 255
    .local v66, wakelock:Landroid/os/BatteryStats$Uid$Wakelock;
    const/16 v76, 0x0

    move-object/from16 v0, v66

    move/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v55

    .line 256
    .local v55, timer:Landroid/os/BatteryStats$Timer;
    if-eqz v55, :cond_c

    .line 257
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->uSecTime:J

    move-wide/from16 v76, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v76

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v76

    add-long v69, v69, v76

    goto :goto_5

    .line 260
    .end local v55           #timer:Landroid/os/BatteryStats$Timer;
    .end local v66           #wakelock:Landroid/os/BatteryStats$Uid$Wakelock;
    .end local v67           #wakelockEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :cond_d
    const-wide/16 v76, 0x3e8

    div-long v69, v69, v76

    .line 261
    add-long v6, v6, v69

    .line 264
    move-wide/from16 v0, v69

    long-to-double v0, v0

    move-wide/from16 v76, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v78, v0

    const-string v79, "cpu.awake"

    invoke-virtual/range {v78 .. v79}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v78

    mul-double v76, v76, v78

    const-wide v78, 0x408f400000000000L

    div-double v76, v76, v78

    add-double v28, v28, v76

    .line 268
    move-object/from16 v0, p0

    iget v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mStatsType:I

    move/from16 v76, v0

    move-object/from16 v0, v59

    move/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getTcpBytesReceived(I)J

    move-result-wide v51

    .line 269
    .local v51, tcpBytesReceived:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mStatsType:I

    move/from16 v76, v0

    move-object/from16 v0, v59

    move/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getTcpBytesSent(I)J

    move-result-wide v53

    .line 270
    .local v53, tcpBytesSent:J
    add-long v76, v51, v53

    move-wide/from16 v0, v76

    long-to-double v0, v0

    move-wide/from16 v76, v0

    mul-double v76, v76, v8

    add-double v28, v28, v76

    .line 274
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->uSecTime:J

    move-wide/from16 v76, v0

    move-object/from16 v0, v59

    move-wide/from16 v1, v76

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v76

    const-wide/16 v78, 0x3e8

    div-long v72, v76, v78

    .line 275
    .local v72, wifiRunningTimeMs:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mAppWifiRunning:J

    move-wide/from16 v76, v0

    add-long v76, v76, v72

    move-wide/from16 v0, v76

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mAppWifiRunning:J

    .line 276
    move-wide/from16 v0, v72

    long-to-double v0, v0

    move-wide/from16 v76, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v78, v0

    const-string v79, "wifi.on"

    invoke-virtual/range {v78 .. v79}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v78

    mul-double v76, v76, v78

    const-wide v78, 0x408f400000000000L

    div-double v76, v76, v78

    add-double v28, v28, v76

    .line 281
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->uSecTime:J

    move-wide/from16 v76, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move-wide/from16 v2, v76

    move/from16 v4, v71

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->getWifiScanTime(Landroid/os/BatteryStats$Uid;JI)J

    move-result-wide v76

    const-wide/16 v78, 0x3e8

    div-long v74, v76, v78

    .line 282
    .local v74, wifiScanTimeMs:J
    move-wide/from16 v0, v74

    long-to-double v0, v0

    move-wide/from16 v76, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v78, v0

    const-string v79, "wifi.scan"

    invoke-virtual/range {v78 .. v79}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v78

    mul-double v76, v76, v78

    const-wide v78, 0x408f400000000000L

    div-double v76, v76, v78

    add-double v28, v28, v76

    .line 287
    invoke-virtual/range {v59 .. v59}, Landroid/os/BatteryStats$Uid;->getSensorStats()Ljava/util/Map;

    move-result-object v43

    .line 289
    .local v43, sensorStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-interface/range {v43 .. v43}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v76

    invoke-interface/range {v76 .. v76}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_6
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v76

    if-eqz v76, :cond_f

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/util/Map$Entry;

    .line 290
    .local v41, sensorEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-interface/range {v41 .. v41}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/os/BatteryStats$Uid$Sensor;

    .line 291
    .local v39, sensor:Landroid/os/BatteryStats$Uid$Sensor;
    invoke-virtual/range {v39 .. v39}, Landroid/os/BatteryStats$Uid$Sensor;->getHandle()I

    move-result v46

    .line 292
    .local v46, sensorType:I
    invoke-virtual/range {v39 .. v39}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v55

    .line 293
    .restart local v55       #timer:Landroid/os/BatteryStats$Timer;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->uSecTime:J

    move-wide/from16 v76, v0

    move-object/from16 v0, v55

    move-wide/from16 v1, v76

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v76

    const-wide/16 v78, 0x3e8

    div-long v44, v76, v78

    .line 294
    .local v44, sensorTime:J
    const-wide/16 v24, 0x0

    .line 295
    .local v24, multiplier:D
    packed-switch v46, :pswitch_data_0

    .line 300
    move-object/from16 v0, v42

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v40

    .line 302
    .local v40, sensorData:Landroid/hardware/Sensor;
    if-eqz v40, :cond_e

    .line 303
    invoke-virtual/range {v40 .. v40}, Landroid/hardware/Sensor;->getPower()F

    move-result v76

    move/from16 v0, v76

    float-to-double v0, v0

    move-wide/from16 v24, v0

    .line 304
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->DEBUG:Z

    move/from16 v76, v0

    if-eqz v76, :cond_e

    .line 305
    const-string v76, "PowerManagementModel"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "Got sensor "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v40 .. v40}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v78

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    const-string v78, " with power = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    .end local v40           #sensorData:Landroid/hardware/Sensor;
    :cond_e
    :goto_7
    move-wide/from16 v0, v44

    long-to-double v0, v0

    move-wide/from16 v76, v0

    mul-double v76, v76, v24

    const-wide v78, 0x408f400000000000L

    div-double v76, v76, v78

    add-double v28, v28, v76

    .line 311
    goto/16 :goto_6

    .line 297
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v76, v0

    const-string v77, "gps.on"

    invoke-virtual/range {v76 .. v77}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v24

    .line 298
    goto :goto_7

    .line 313
    .end local v24           #multiplier:D
    .end local v39           #sensor:Landroid/os/BatteryStats$Uid$Sensor;
    .end local v41           #sensorEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v44           #sensorTime:J
    .end local v46           #sensorType:I
    .end local v55           #timer:Landroid/os/BatteryStats$Timer;
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->DEBUG:Z

    move/from16 v76, v0

    if-eqz v76, :cond_10

    const-string v76, "PowerManagementModel"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "UID "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v59 .. v59}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v78

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    const-string v78, ": power="

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_10
    invoke-virtual/range {v59 .. v59}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v60

    .line 316
    .local v60, uid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v76, v0

    move-object/from16 v0, v76

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v76

    if-nez v76, :cond_14

    .line 317
    if-nez v60, :cond_13

    .line 318
    add-double v22, v22, v28

    .line 329
    :cond_11
    :goto_8
    invoke-virtual/range {v59 .. v59}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v76

    const/16 v77, 0x3f2

    move/from16 v0, v76

    move/from16 v1, v77

    if-ne v0, v1, :cond_15

    .line 330
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mWifiPower:D

    move-wide/from16 v76, v0

    add-double v76, v76, v28

    move-wide/from16 v0, v76

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mWifiPower:D

    .line 191
    :cond_12
    :goto_9
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_1

    .line 319
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mMediaUid:I

    move/from16 v76, v0

    move/from16 v0, v60

    move/from16 v1, v76

    if-ne v0, v1, :cond_11

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mAppConsume:Ljava/util/ArrayList;

    move-object/from16 v76, v0

    new-instance v77, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mMediaUid:I

    move/from16 v78, v0

    move-object/from16 v0, v77

    move/from16 v1, v78

    move-wide/from16 v2, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;-><init>(ID)V

    invoke-virtual/range {v76 .. v77}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 325
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mAppConsume:Ljava/util/ArrayList;

    move-object/from16 v76, v0

    new-instance v77, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;

    invoke-virtual/range {v59 .. v59}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v78

    move-object/from16 v0, v77

    move/from16 v1, v78

    move-wide/from16 v2, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;-><init>(ID)V

    invoke-virtual/range {v76 .. v77}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 331
    :cond_15
    invoke-virtual/range {v59 .. v59}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v76

    const/16 v77, 0x7d0

    move/from16 v0, v76

    move/from16 v1, v77

    if-ne v0, v1, :cond_12

    .line 332
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mBluetoothPower:D

    move-wide/from16 v76, v0

    add-double v76, v76, v28

    move-wide/from16 v0, v76

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mBluetoothPower:D

    goto :goto_9

    .line 339
    .end local v10           #cpuFgTime:J
    .end local v13           #cpuTime:J
    .end local v18           #highestDrain:D
    .end local v20           #i$:Ljava/util/Iterator;
    .end local v27           #packageWithHighestDrain:Ljava/lang/String;
    .end local v28           #power:D
    .end local v35           #processStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v43           #sensorStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v51           #tcpBytesReceived:J
    .end local v53           #tcpBytesSent:J
    .end local v59           #u:Landroid/os/BatteryStats$Uid;
    .end local v60           #uid:I
    .end local v68           #wakelockStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v69           #wakelockTime:J
    .end local v72           #wifiRunningTimeMs:J
    .end local v74           #wifiScanTimeMs:J
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v76, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v77

    const-wide/16 v79, 0x3e8

    mul-long v77, v77, v79

    move-object/from16 v0, v76

    move-wide/from16 v1, v77

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryUptime(JI)J

    move-result-wide v76

    const-wide/16 v78, 0x3e8

    div-long v64, v76, v78

    .line 341
    .local v64, wakeTimeMillis:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v76, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v77

    move-object/from16 v0, v76

    move-wide/from16 v1, v77

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v76

    const-wide/16 v78, 0x3e8

    div-long v76, v76, v78

    add-long v76, v76, v6

    sub-long v64, v64, v76

    .line 343
    const-wide/16 v76, 0x0

    cmp-long v76, v64, v76

    if-lez v76, :cond_18

    .line 344
    move-wide/from16 v0, v64

    long-to-double v0, v0

    move-wide/from16 v76, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v78, v0

    const-string v79, "cpu.awake"

    invoke-virtual/range {v78 .. v79}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v78

    mul-double v76, v76, v78

    const-wide v78, 0x408f400000000000L

    div-double v31, v76, v78

    .line 346
    .local v31, powerExt:D
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->DEBUG:Z

    move/from16 v76, v0

    if-eqz v76, :cond_17

    const-string v76, "PowerManagementModel"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "OS wakeLockTime "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move-wide/from16 v1, v64

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v77

    const-string v78, " power "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_17
    add-double v22, v22, v31

    .line 349
    .end local v31           #powerExt:D
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mAppConsume:Ljava/util/ArrayList;

    move-object/from16 v76, v0

    new-instance v77, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;

    const/16 v78, 0x0

    move-object/from16 v0, v77

    move/from16 v1, v78

    move-wide/from16 v2, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;-><init>(ID)V

    invoke-virtual/range {v76 .. v77}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mAppConsume:Ljava/util/ArrayList;

    move-object/from16 v76, v0

    return-object v76

    .line 295
    :pswitch_data_0
    .packed-switch -0x2710
        :pswitch_0
    .end packed-switch
.end method

.method public getDataConsumByUid(ILjava/lang/String;IJJJ)J
    .locals 23
    .parameter "uid"
    .parameter "dataType"
    .parameter "dataFlag"
    .parameter "start"
    .parameter "end"
    .parameter "now"

    .prologue
    .line 618
    const-wide/16 v19, 0x0

    .line 619
    .local v19, data:J
    const/4 v3, 0x0

    .line 620
    .local v3, detailDefault:Landroid/net/NetworkStatsHistory;
    const/4 v11, 0x0

    .line 621
    .local v11, detailForeground:Landroid/net/NetworkStatsHistory;
    const/16 v22, 0x0

    .line 624
    .local v22, mTemplate:Landroid/net/NetworkTemplate;
    :try_start_0
    const-string v4, "mobile"

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 625
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v22

    .line 630
    :cond_0
    :goto_0
    if-nez p3, :cond_3

    .line 632
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, p1

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->collectHistoryForUid(Landroid/net/NetworkTemplate;IILandroid/net/NetworkStatsHistory;)Landroid/net/NetworkStatsHistory;

    move-result-object v3

    .line 633
    const/4 v10, 0x0

    .local v10, entry:Landroid/net/NetworkStatsHistory$Entry;
    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    .line 634
    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 635
    iget-wide v4, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v6, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v19, v4, v6

    .line 649
    .end local v10           #entry:Landroid/net/NetworkStatsHistory$Entry;
    :cond_1
    :goto_1
    return-wide v19

    .line 626
    :cond_2
    const-string v4, "wifi"

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 627
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v22

    goto :goto_0

    .line 636
    :cond_3
    const/4 v4, 0x1

    move/from16 v0, p3

    if-ne v4, v0, :cond_1

    .line 638
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, p1

    invoke-direct {v0, v1, v2, v4, v11}, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->collectHistoryForUid(Landroid/net/NetworkTemplate;IILandroid/net/NetworkStatsHistory;)Landroid/net/NetworkStatsHistory;

    move-result-object v11

    .line 639
    const/4 v10, 0x0

    .restart local v10       #entry:Landroid/net/NetworkStatsHistory$Entry;
    move-wide/from16 v12, p4

    move-wide/from16 v14, p6

    move-wide/from16 v16, p8

    move-object/from16 v18, v10

    .line 640
    invoke-virtual/range {v11 .. v18}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 641
    iget-wide v4, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v6, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-long v19, v4, v6

    goto :goto_1

    .line 644
    .end local v10           #entry:Landroid/net/NetworkStatsHistory$Entry;
    :catch_0
    move-exception v21

    .line 645
    .local v21, e:Ljava/lang/Exception;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V

    .line 646
    const-string v4, ""

    const-string v5, "Exception:"

    move-object/from16 v0, v21

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method getWifiScanTime(Landroid/os/BatteryStats$Uid;JI)J
    .locals 5
    .parameter "u"
    .parameter "uSecTime"
    .parameter "which"

    .prologue
    .line 527
    sget-object v1, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->sCachedMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 529
    :try_start_0
    sget-object v1, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->sCachedMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-wide v1

    .line 540
    :goto_0
    return-wide v1

    .line 530
    :catch_0
    move-exception v0

    .line 531
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 540
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :goto_1
    const-wide/16 v1, 0x0

    goto :goto_0

    .line 532
    :catch_1
    move-exception v0

    .line 533
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 534
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v0

    .line 535
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 538
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const-string v1, "PowerManagementModel"

    const-string v2, "method getWifiScanTime NOT found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
