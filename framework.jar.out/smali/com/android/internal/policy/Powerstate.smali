.class public Lcom/android/internal/policy/Powerstate;
.super Ljava/lang/Object;
.source "Powerstate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/Powerstate$ScreenStateControllerHandler;
    }
.end annotation


# static fields
.field private static final AIRPLANE_MODE:Ljava/lang/String; = "airplanemode"

.field private static final BLUETOOTH_STATE:Ljava/lang/String; = "btstate"

.field private static final CHARGER_SHOW_LOCK:Ljava/lang/Object; = null

.field private static DEBUG:Z = false

.field private static final DELAY_FM_TIME:I = 0x64

.field private static final DELEY_WAITTOSHOW_TIME:I = 0x64

.field private static final FAST_POWER_OFF:Ljava/lang/String; = "fastpoweroff"

.field private static final FAST_POWER_STATE_FILENAME:Ljava/lang/String; = "before_power_off.xml"

.field private static final GPS_STATE:Ljava/lang/String; = "gpsstate"

.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_NUM_STATE_READS:I = 0x10

.field static final MAX_RECENT_TASKS:I = 0x14

.field private static final MAX_SERVICES:I = 0x64

.field private static final MAX_TIMES_WAIT_ANIMATION:I = 0x28

.field private static final MAX_TIMES_WAIT_FM:I = 0x14

.field private static final MAX_WAIT_TIME_CLOSETETHER:I = 0x1b58

.field private static final MODEM_POWERON_SLEEP_MSEC:I = 0x14

.field public static final NEED_RESTORE:I = 0x1

.field public static final NOT_NEED_RESTORE:I = 0x0

.field public static final POWERUP_ANIMATION:I = 0x1

.field private static POWER_CONNECTED:Z = false

.field private static final RADIO_STATE:Ljava/lang/String; = "radiostate"

.field private static final RINGER_MODE:Ljava/lang/String; = "ringermode"

.field private static final SENSOR_STATE:Ljava/lang/String; = "sensorstate"

.field private static final STATE_DISABLED:I = 0x0

.field private static final STATE_ENABLED:I = 0x1

.field private static final STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "Powerstate"

.field private static final TIME_POWERON_ANIMATION:I = 0x1388

.field private static final TIME_SECOND_KILL_WAIT:I = 0x258

.field private static final TIME_WAIT_RESET_SCREEN_STATE:I = 0x190

.field private static final WIFI_STATE:Ljava/lang/String; = "wifistate"

.field public static animChargeProcess:Ljava/lang/Process;

.field private static bGetWallPaperProc:Z

.field private static bootAnimateIsRun:Z

.field private static broadcastDone:Z

.field private static currenScreenStateIsOn:Z

.field public static fProcess:Ljava/lang/Process;

.field private static isReadFromStateFile:Z

.field public static isSetInChargeEnable:Z

.field private static mAudioManager:Landroid/media/AudioManager;

.field private static mConnectivityManager:Landroid/net/ConnectivityManager;

.field private static mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mPowerDownCharge_path1:Ljava/lang/String;

.field private static mPowerDownCharge_path2:Ljava/lang/String;

.field public static sHandler:Landroid/os/Handler;

.field private static sInstance:Lcom/android/internal/policy/Powerstate;

.field private static sLooper:Landroid/os/Looper;

.field private static sPowerManagerService:Landroid/os/IPowerManager;

.field private static sService:Landroid/app/INotificationManager;

.field private static sWpm:Landroid/app/IWallpaperManager;

.field private static wallPaperProcName:Ljava/lang/String;


# instance fields
.field private final MSG_SET_SCREEN_OFF:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 87
    sput-boolean v3, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    .line 102
    sput-boolean v2, Lcom/android/internal/policy/Powerstate;->bootAnimateIsRun:Z

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    .line 108
    const-string/jumbo v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/Powerstate;->sPowerManagerService:Landroid/os/IPowerManager;

    .line 110
    sput-object v1, Lcom/android/internal/policy/Powerstate;->mAudioManager:Landroid/media/AudioManager;

    .line 111
    sput-object v1, Lcom/android/internal/policy/Powerstate;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 124
    sput-boolean v2, Lcom/android/internal/policy/Powerstate;->bGetWallPaperProc:Z

    .line 125
    sput-object v1, Lcom/android/internal/policy/Powerstate;->wallPaperProcName:Ljava/lang/String;

    .line 127
    sput-boolean v2, Lcom/android/internal/policy/Powerstate;->isReadFromStateFile:Z

    .line 131
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/policy/Powerstate;->CHARGER_SHOW_LOCK:Ljava/lang/Object;

    .line 713
    sput-boolean v2, Lcom/android/internal/policy/Powerstate;->broadcastDone:Z

    .line 782
    sput-object v1, Lcom/android/internal/policy/Powerstate;->fProcess:Ljava/lang/Process;

    .line 887
    const-string v0, "/system/media/chargeranimation.zip"

    sput-object v0, Lcom/android/internal/policy/Powerstate;->mPowerDownCharge_path1:Ljava/lang/String;

    .line 888
    const-string v0, "/data/local/chargeranimation.zip"

    sput-object v0, Lcom/android/internal/policy/Powerstate;->mPowerDownCharge_path2:Ljava/lang/String;

    .line 889
    sput-boolean v3, Lcom/android/internal/policy/Powerstate;->isSetInChargeEnable:Z

    .line 890
    sput-object v1, Lcom/android/internal/policy/Powerstate;->animChargeProcess:Ljava/lang/Process;

    .line 937
    sput-boolean v3, Lcom/android/internal/policy/Powerstate;->POWER_CONNECTED:Z

    .line 938
    sput-boolean v3, Lcom/android/internal/policy/Powerstate;->currenScreenStateIsOn:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 964
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/Powerstate;->MSG_SET_SCREEN_OFF:I

    .line 134
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Powerstate"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 135
    .local v0, handlerThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 136
    new-instance v1, Lcom/android/internal/policy/Powerstate$ScreenStateControllerHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/Powerstate$ScreenStateControllerHandler;-><init>(Lcom/android/internal/policy/Powerstate;Landroid/os/Looper;)V

    sput-object v1, Lcom/android/internal/policy/Powerstate;->sHandler:Landroid/os/Handler;

    .line 137
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 85
    sget-boolean v0, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    sput-boolean p0, Lcom/android/internal/policy/Powerstate;->broadcastDone:Z

    return p0
.end method

.method public static checkIfNotKilled(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z
    .locals 14
    .parameter "rapi"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 533
    move-object v5, p0

    .line 535
    .local v5, rapInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    const/4 v1, 0x0

    .line 537
    .local v1, currentWallpaperInfo:Landroid/app/WallpaperInfo;
    :try_start_0
    invoke-static {}, Lcom/android/internal/policy/Powerstate;->getWallpaperManager()Landroid/app/IWallpaperManager;

    move-result-object v11

    invoke-interface {v11}, Landroid/app/IWallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 541
    :goto_0
    sget-boolean v11, Lcom/android/internal/policy/Powerstate;->bGetWallPaperProc:Z

    if-nez v11, :cond_5

    .line 542
    sget-boolean v11, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v11, :cond_0

    const-string v11, "Powerstate"

    const-string v12, "begin parser"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_0
    :try_start_1
    new-instance v3, Ljava/io/File;

    const-string v11, "/data/system/wallpaper_info.xml"

    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 545
    .local v3, file:Ljava/io/File;
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 546
    .local v6, stream:Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 547
    .local v4, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v11, 0x0

    invoke-interface {v4, v6, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 550
    :cond_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .line 551
    .local v8, type:I
    const/4 v11, 0x2

    if-ne v8, v11, :cond_2

    .line 552
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 553
    .local v7, tag:Ljava/lang/String;
    const-string/jumbo v11, "wp"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 554
    const/4 v11, 0x0

    const-string v12, "component"

    invoke-interface {v4, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 555
    .local v0, comp:Ljava/lang/String;
    const/4 v11, 0x0

    const/16 v12, 0x2f

    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/android/internal/policy/Powerstate;->wallPaperProcName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 558
    .end local v0           #comp:Ljava/lang/String;
    .end local v7           #tag:Ljava/lang/String;
    :cond_2
    if-ne v8, v10, :cond_1

    .line 560
    if-eqz v6, :cond_3

    .line 561
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 570
    .end local v3           #file:Ljava/io/File;
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v6           #stream:Ljava/io/FileInputStream;
    .end local v8           #type:I
    :cond_3
    :goto_1
    sget-boolean v11, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v11, :cond_4

    const-string v11, "Powerstate"

    const-string v12, "end parser"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_4
    sput-boolean v10, Lcom/android/internal/policy/Powerstate;->bGetWallPaperProc:Z

    .line 574
    :cond_5
    const-string v11, "com.android.settings"

    iget-object v12, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 588
    :cond_6
    :goto_2
    return v9

    .line 563
    .restart local v3       #file:Ljava/io/File;
    .restart local v4       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    .restart local v8       #type:I
    :catch_0
    move-exception v2

    .line 564
    .local v2, e:Ljava/io/IOException;
    const/4 v11, 0x1

    :try_start_3
    sput-boolean v11, Lcom/android/internal/policy/Powerstate;->bGetWallPaperProc:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 566
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #file:Ljava/io/File;
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v6           #stream:Ljava/io/FileInputStream;
    .end local v8           #type:I
    :catch_1
    move-exception v2

    .line 567
    .local v2, e:Ljava/lang/Exception;
    const-string v11, "Powerstate"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "failed parsing  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    sput-boolean v10, Lcom/android/internal/policy/Powerstate;->bGetWallPaperProc:Z

    goto :goto_1

    .line 579
    .end local v2           #e:Ljava/lang/Exception;
    :cond_7
    iget v11, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    const/16 v12, 0x3e8

    if-eq v11, v12, :cond_9

    iget v11, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    const/16 v12, 0x3e9

    if-eq v11, v12, :cond_9

    const-string v11, "android.process.acore"

    iget-object v12, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    const-string v11, "com.android.systemui"

    iget-object v12, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    const-string v11, "android.process.media"

    iget-object v12, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    sget-object v11, Lcom/android/internal/policy/Powerstate;->wallPaperProcName:Ljava/lang/String;

    if-eqz v11, :cond_8

    sget-object v11, Lcom/android/internal/policy/Powerstate;->wallPaperProcName:Ljava/lang/String;

    iget-object v12, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    :cond_8
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    :cond_9
    move v9, v10

    .line 585
    goto :goto_2

    .line 538
    :catch_2
    move-exception v11

    goto/16 :goto_0
.end method

.method public static destroyPowerOffCharge()V
    .locals 2

    .prologue
    .line 925
    sget-object v1, Lcom/android/internal/policy/Powerstate;->CHARGER_SHOW_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 927
    :try_start_0
    sget-object v0, Lcom/android/internal/policy/Powerstate;->animChargeProcess:Ljava/lang/Process;

    if-eqz v0, :cond_0

    .line 928
    sget-object v0, Lcom/android/internal/policy/Powerstate;->animChargeProcess:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 929
    sget-object v0, Lcom/android/internal/policy/Powerstate;->animChargeProcess:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 930
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/Powerstate;->animChargeProcess:Ljava/lang/Process;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 934
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 935
    return-void

    .line 934
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 932
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static getAirplaneModeOn(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 200
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getBluetoothState(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 155
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 156
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    const/16 v1, 0xa

    .line 158
    .local v1, state:I
    if-nez v0, :cond_0

    .line 159
    const/16 v2, 0xa

    .line 162
    :goto_0
    return v2

    .line 161
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    move v2, v1

    .line 162
    goto :goto_0
.end method

.method private static getGpsState(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 188
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 189
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static getInstance()Lcom/android/internal/policy/Powerstate;
    .locals 2

    .prologue
    .line 141
    const-class v1, Lcom/android/internal/policy/Powerstate;

    monitor-enter v1

    .line 142
    :try_start_0
    sget-object v0, Lcom/android/internal/policy/Powerstate;->sInstance:Lcom/android/internal/policy/Powerstate;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Lcom/android/internal/policy/Powerstate;

    invoke-direct {v0}, Lcom/android/internal/policy/Powerstate;-><init>()V

    sput-object v0, Lcom/android/internal/policy/Powerstate;->sInstance:Lcom/android/internal/policy/Powerstate;

    .line 145
    :cond_0
    sget-object v0, Lcom/android/internal/policy/Powerstate;->sInstance:Lcom/android/internal/policy/Powerstate;

    monitor-exit v1

    return-object v0

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getPowerConnected()Z
    .locals 1

    .prologue
    .line 946
    sget-boolean v0, Lcom/android/internal/policy/Powerstate;->POWER_CONNECTED:Z

    return v0
.end method

.method private static getSensorState(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 210
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getService()Landroid/app/INotificationManager;
    .locals 1

    .prologue
    .line 510
    sget-object v0, Lcom/android/internal/policy/Powerstate;->sService:Landroid/app/INotificationManager;

    if-eqz v0, :cond_0

    .line 511
    sget-object v0, Lcom/android/internal/policy/Powerstate;->sService:Landroid/app/INotificationManager;

    .line 514
    :goto_0
    return-object v0

    .line 513
    :cond_0
    const-string/jumbo v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/Powerstate;->sService:Landroid/app/INotificationManager;

    .line 514
    sget-object v0, Lcom/android/internal/policy/Powerstate;->sService:Landroid/app/INotificationManager;

    goto :goto_0
.end method

.method private static getWallpaperManager()Landroid/app/IWallpaperManager;
    .locals 1

    .prologue
    .line 520
    sget-object v0, Lcom/android/internal/policy/Powerstate;->sWpm:Landroid/app/IWallpaperManager;

    if-eqz v0, :cond_0

    .line 521
    sget-object v0, Lcom/android/internal/policy/Powerstate;->sWpm:Landroid/app/IWallpaperManager;

    .line 524
    :goto_0
    return-object v0

    .line 523
    :cond_0
    const-string/jumbo v0, "wallpaper"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/Powerstate;->sWpm:Landroid/app/IWallpaperManager;

    .line 524
    sget-object v0, Lcom/android/internal/policy/Powerstate;->sWpm:Landroid/app/IWallpaperManager;

    goto :goto_0
.end method

.method private static getWifiState(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 172
    const-string/jumbo v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 174
    .local v1, wfm:Landroid/net/wifi/WifiManager;
    if-eqz v1, :cond_0

    .line 175
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 178
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public static isAllowToShow(I)Z
    .locals 3
    .parameter "state"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1113
    if-ne v1, p0, :cond_0

    .line 1115
    sget-boolean v2, Lcom/android/internal/policy/Powerstate;->bootAnimateIsRun:Z

    if-ne v2, v1, :cond_1

    .line 1117
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1115
    goto :goto_0
.end method

.method public static killRunningProcess(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    .line 453
    const-string v10, "activity"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 455
    .local v0, am:Landroid/app/ActivityManager;
    const/16 v10, 0x64

    invoke-virtual {v0, v10}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v6

    .line 457
    .local v6, runServiceInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-static {}, Lcom/android/internal/policy/Powerstate;->getService()Landroid/app/INotificationManager;

    move-result-object v7

    .line 458
    .local v7, service:Landroid/app/INotificationManager;
    const/4 v1, 0x0

    .line 460
    .local v1, currentWallpaperInfo:Landroid/app/WallpaperInfo;
    :try_start_0
    invoke-static {}, Lcom/android/internal/policy/Powerstate;->getWallpaperManager()Landroid/app/IWallpaperManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/app/IWallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 464
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    .line 466
    .local v8, sumRS:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v8, :cond_3

    .line 467
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 468
    .local v4, rs:Landroid/app/ActivityManager$RunningServiceInfo;
    sget-boolean v10, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v10, :cond_0

    const-string v10, "Powerstate"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RunningServiceInfo  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  service name:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  process :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v4, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  uid:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v4, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_0
    const-string v10, "android.process.acore"

    iget-object v11, v4, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const/16 v10, 0x3e9

    iget v11, v4, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    if-eq v10, v11, :cond_1

    const/16 v10, 0x3e8

    iget v11, v4, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    if-eq v10, v11, :cond_1

    const-string v10, "android.process.media"

    iget-object v11, v4, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "com.android.systemui"

    iget-object v11, v4, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v4, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 466
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 480
    :cond_2
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    iget-object v11, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {p0, v10}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 481
    sget-boolean v10, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v10, :cond_1

    const-string v10, "Powerstate"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "stop RunningServiceInfo name:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 484
    .end local v4           #rs:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_3
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 486
    .local v5, runAppInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    .line 487
    .local v9, sumRunProcesses:I
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v9, :cond_7

    .line 488
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 489
    .local v3, rapInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    sget-boolean v10, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v10, :cond_4

    const-string v10, "Powerstate"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "runAppInfo:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "   packagename:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  uid:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_4
    invoke-static {v3}, Lcom/android/internal/policy/Powerstate;->checkIfNotKilled(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 487
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 493
    :cond_5
    sget-boolean v10, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v10, :cond_6

    const-string v10, "Powerstate"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "killRunningProcess runAppInfo:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "   packagename:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_6
    :try_start_1
    iget-object v10, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const/4 v11, -0x1

    invoke-interface {v7, v10, v11}, Landroid/app/INotificationManager;->cancelAllNotifications(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 500
    :goto_5
    iget v10, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v10}, Landroid/os/Process;->killProcess(I)V

    goto :goto_4

    .line 502
    .end local v3           #rapInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_7
    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/internal/policy/Powerstate;->bGetWallPaperProc:Z

    .line 503
    invoke-virtual {v0}, Landroid/app/ActivityManager;->clearRecentTasks()V

    .line 504
    return-void

    .line 497
    .restart local v3       #rapInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :catch_0
    move-exception v10

    goto :goto_5

    .line 461
    .end local v2           #i:I
    .end local v3           #rapInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v5           #runAppInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v8           #sumRS:I
    .end local v9           #sumRunProcesses:I
    :catch_1
    move-exception v10

    goto/16 :goto_0
.end method

.method public static powerOnforAlarm(Landroid/content/Context;)V
    .locals 15
    .parameter "context"

    .prologue
    const/4 v11, 0x0

    const/4 v1, 0x1

    .line 1128
    sget-boolean v10, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v10, :cond_0

    const-string v10, "Powerstate"

    const-string/jumbo v12, "restorePhoneState"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    :cond_0
    const-string/jumbo v10, "persist.sys.quickpoweron"

    const-string/jumbo v12, "startpoweron"

    invoke-static {v10, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    const-string v10, "Powerstate"

    const-string v12, " before powerOnforAlarm setModemPower(true)"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    const-string/jumbo v10, "phone"

    invoke-static {v10}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    .line 1133
    .local v6, modePhone:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    if-nez v6, :cond_2

    .line 1134
    const-wide/16 v12, 0x14

    invoke-static {v12, v13}, Landroid/os/SystemClock;->sleep(J)V

    .line 1135
    sget-boolean v10, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v10, :cond_1

    const-string v10, "Powerstate"

    const-string/jumbo v12, "toggleAirPlane wait phone ready"

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    :cond_1
    const-string/jumbo v10, "phone"

    invoke-static {v10}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    goto :goto_0

    .line 1139
    :cond_2
    const/4 v10, 0x1

    :try_start_0
    invoke-interface {v6, v10}, Lcom/android/internal/telephony/ITelephony;->setModemPower(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1143
    :goto_1
    const-string v10, "Powerstate"

    const-string v12, " after powerOnforAlarm setModemPower(true)"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    invoke-static {}, Lcom/android/internal/policy/Powerstate;->destroyPowerOffCharge()V

    .line 1146
    new-instance v5, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    const/4 v12, 0x0

    invoke-direct {v5, v10, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1147
    .local v5, mHomeIntent:Landroid/content/Intent;
    const-string v10, "android.intent.category.HOME"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1148
    const/high16 v10, 0x1020

    invoke-virtual {v5, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1149
    invoke-virtual {p0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1151
    invoke-static {}, Lcom/android/internal/policy/Powerstate;->readStateFromFile()Z

    move-result v7

    .line 1152
    .local v7, result:Z
    if-nez v7, :cond_3

    .line 1154
    const-string v10, "Powerstate"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "restorePhoneState readStateFromFile result = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    :goto_2
    return-void

    .line 1140
    .end local v5           #mHomeIntent:Landroid/content/Intent;
    .end local v7           #result:Z
    :catch_0
    move-exception v3

    .line 1141
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1157
    .end local v3           #e:Landroid/os/RemoteException;
    .restart local v5       #mHomeIntent:Landroid/content/Intent;
    .restart local v7       #result:Z
    :cond_3
    sget-object v10, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string/jumbo v12, "wifistate"

    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 1159
    .local v9, wifiState:Ljava/lang/Integer;
    if-nez v9, :cond_4

    .line 1161
    const-string v10, "Powerstate"

    const-string/jumbo v12, "restorePhoneState wifiState get failed use the default value"

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1164
    :cond_4
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {p0, v10}, Lcom/android/internal/policy/Powerstate;->toggleWifi(Landroid/content/Context;I)V

    .line 1166
    sget-object v10, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v12, "btstate"

    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1167
    .local v2, bluethState:Ljava/lang/Integer;
    sget-boolean v10, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v10, :cond_5

    const-string v10, "Powerstate"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "restorePhoneState bluethState ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    :cond_5
    if-nez v2, :cond_6

    .line 1170
    const-string v10, "Powerstate"

    const-string/jumbo v12, "restorePhoneState bluethState get failed use the default value"

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    const/16 v10, 0xa

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1173
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {p0, v10}, Lcom/android/internal/policy/Powerstate;->toggleBluetooth(Landroid/content/Context;I)V

    .line 1175
    sget-object v10, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v12, "gpsstate"

    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1176
    .local v4, gpsState:Ljava/lang/Integer;
    if-nez v4, :cond_7

    .line 1178
    const-string v10, "Powerstate"

    const-string/jumbo v12, "restorePhoneState gpsState get failed use the default value"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1181
    :cond_7
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v1, :cond_e

    .line 1182
    .local v1, bgpsState:Z
    :goto_3
    sget-boolean v10, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v10, :cond_8

    const-string v10, "Powerstate"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "restorePhoneState gpsState:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " bgpsState:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    :cond_8
    invoke-static {p0, v1}, Lcom/android/internal/policy/Powerstate;->toggleGps(Landroid/content/Context;Z)V

    .line 1185
    sget-object v10, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string/jumbo v12, "ringermode"

    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 1186
    .local v8, ringtoneMode:Ljava/lang/Integer;
    if-nez v8, :cond_9

    .line 1188
    const-string v10, "Powerstate"

    const-string/jumbo v12, "restorePhoneState ringtoneMode get failed use the default value"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 1191
    :cond_9
    sget-boolean v10, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v10, :cond_a

    const-string v10, "Powerstate"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "restorePhoneState ringtonemode ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    :cond_a
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {p0, v10}, Lcom/android/internal/policy/Powerstate;->toggleRingToneMode(Landroid/content/Context;I)V

    .line 1196
    const-string/jumbo v10, "true"

    const-string/jumbo v12, "ro.poweroff_alarm"

    const-string/jumbo v13, "true"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1197
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "user_set_airplane"

    sget-object v10, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v14, "airplanemode"

    invoke-interface {v10, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v12, v13, v10}, Landroid/provider/SettingsEx$Systemex;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1200
    :cond_b
    invoke-static {p0}, Lcom/android/internal/policy/Powerstate;->showAnimationAgain(Landroid/content/Context;)V

    .line 1202
    sget-object v10, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string/jumbo v12, "sensorstate"

    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1203
    .local v0, SensorState:Ljava/lang/Integer;
    if-nez v0, :cond_c

    .line 1205
    const-string v10, "Powerstate"

    const-string/jumbo v12, "restorePhoneState Sensor get failed use the default value"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1208
    :cond_c
    sget-boolean v10, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v10, :cond_d

    const-string v10, "Powerstate"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "restorePhoneState Sensor State ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    :cond_d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {p0, v10}, Lcom/android/internal/policy/Powerstate;->toggleSensorState(Landroid/content/Context;I)V

    goto/16 :goto_2

    .end local v0           #SensorState:Ljava/lang/Integer;
    .end local v1           #bgpsState:Z
    .end local v8           #ringtoneMode:Ljava/lang/Integer;
    :cond_e
    move v1, v11

    .line 1181
    goto/16 :goto_3
.end method

.method private static readStateFromFile()Z
    .locals 15

    .prologue
    const/4 v11, 0x1

    .line 1050
    sget-boolean v12, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v12, :cond_0

    const-string v12, "Powerstate"

    const-string/jumbo v13, "readStateFromFile begin"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    :cond_0
    sget-boolean v12, Lcom/android/internal/policy/Powerstate;->isReadFromStateFile:Z

    if-eqz v12, :cond_2

    .line 1052
    const-string v12, "Powerstate"

    const-string/jumbo v13, "readStateFromFile has been called!"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v11

    .line 1104
    .local v1, file:Ljava/io/File;
    :cond_1
    :goto_0
    return v7

    .line 1056
    .end local v1           #file:Ljava/io/File;
    :cond_2
    new-instance v1, Ljava/io/File;

    const-string v12, "/data/system/before_power_off.xml"

    invoke-direct {v1, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1057
    .restart local v1       #file:Ljava/io/File;
    sget-object v12, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->clear()V

    .line 1058
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_3

    .line 1059
    const/4 v7, 0x0

    goto :goto_0

    .line 1062
    :cond_3
    const/4 v5, 0x0

    .line 1063
    .local v5, stream:Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 1065
    .local v7, success:Z
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_4

    .line 1066
    .end local v5           #stream:Ljava/io/FileInputStream;
    .local v6, stream:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 1067
    .local v4, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v12, 0x0

    invoke-interface {v4, v6, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1070
    const/4 v2, 0x0

    .line 1072
    .local v2, itemIndex:I
    :cond_4
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .line 1073
    .local v9, type:I
    const/4 v12, 0x2

    if-ne v9, v12, :cond_5

    .line 1074
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1075
    .local v8, tag:Ljava/lang/String;
    const-string v12, "item"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1076
    const/4 v12, 0x0

    const-string/jumbo v13, "name"

    invoke-interface {v4, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1077
    .local v3, k:Ljava/lang/String;
    const/4 v12, 0x0

    const-string/jumbo v13, "value"

    invoke-interface {v4, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 1078
    .local v10, v:Ljava/lang/Integer;
    sget-object v12, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    invoke-interface {v12, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_6

    .line 1081
    .end local v3           #k:Ljava/lang/String;
    .end local v8           #tag:Ljava/lang/String;
    .end local v10           #v:Ljava/lang/Integer;
    :cond_5
    if-ne v9, v11, :cond_4

    .line 1082
    const/4 v7, 0x1

    move-object v5, v6

    .line 1096
    .end local v2           #itemIndex:I
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v6           #stream:Ljava/io/FileInputStream;
    .end local v9           #type:I
    .restart local v5       #stream:Ljava/io/FileInputStream;
    :goto_1
    if-eqz v5, :cond_6

    .line 1097
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 1102
    :cond_6
    :goto_2
    sput-boolean v11, Lcom/android/internal/policy/Powerstate;->isReadFromStateFile:Z

    .line 1103
    sget-boolean v11, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v11, :cond_1

    const-string v11, "Powerstate"

    const-string/jumbo v12, "readStateFromFile end"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1083
    :catch_0
    move-exception v0

    .line 1084
    .local v0, e:Ljava/lang/NullPointerException;
    :goto_3
    const-string v12, "Powerstate"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "failed parsing "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1085
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1086
    .local v0, e:Ljava/lang/NumberFormatException;
    :goto_4
    const-string v12, "Powerstate"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "failed parsing "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1087
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v0

    .line 1088
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_5
    const-string v12, "Powerstate"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "failed parsing "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1089
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v0

    .line 1090
    .local v0, e:Ljava/io/IOException;
    :goto_6
    const-string v12, "Powerstate"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "failed parsing "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1091
    .end local v0           #e:Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 1092
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    :goto_7
    const-string v12, "Powerstate"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "failed parsing "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1099
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_5
    move-exception v12

    goto/16 :goto_2

    .line 1091
    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :catch_6
    move-exception v0

    move-object v5, v6

    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    goto :goto_7

    .line 1089
    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :catch_7
    move-exception v0

    move-object v5, v6

    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    goto :goto_6

    .line 1087
    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :catch_8
    move-exception v0

    move-object v5, v6

    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    goto :goto_5

    .line 1085
    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :catch_9
    move-exception v0

    move-object v5, v6

    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    goto :goto_4

    .line 1083
    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :catch_a
    move-exception v0

    move-object v5, v6

    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    goto/16 :goto_3
.end method

.method private static resetScreenState()V
    .locals 4

    .prologue
    .line 854
    :try_start_0
    sget-object v2, Lcom/android/internal/policy/Powerstate;->sPowerManagerService:Landroid/os/IPowerManager;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/os/IPowerManager;->allowShowScreenWithDelay(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4

    .line 858
    :goto_0
    const-wide/16 v2, 0x190

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 864
    .local v0, e:Ljava/lang/InterruptedException;
    :goto_1
    :try_start_2
    sget-object v2, Lcom/android/internal/policy/Powerstate;->fProcess:Ljava/lang/Process;

    if-eqz v2, :cond_0

    .line 865
    sget-object v2, Lcom/android/internal/policy/Powerstate;->fProcess:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 866
    sget-object v2, Lcom/android/internal/policy/Powerstate;->fProcess:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 867
    const/4 v2, 0x0

    sput-object v2, Lcom/android/internal/policy/Powerstate;->fProcess:Ljava/lang/Process;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 874
    :cond_0
    :goto_2
    :try_start_3
    sget-object v2, Lcom/android/internal/policy/Powerstate;->sPowerManagerService:Landroid/os/IPowerManager;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/os/IPowerManager;->allowShowScreenWithDelay(Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 880
    :goto_3
    :try_start_4
    const-string/jumbo v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 881
    .local v1, windowManager:Landroid/view/IWindowManager;
    const/4 v2, -0x1

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->freezeOrThawRotation(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    .line 885
    .end local v1           #windowManager:Landroid/view/IWindowManager;
    :goto_4
    return-void

    .line 859
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_0
    move-exception v0

    .line 860
    .restart local v0       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 869
    :catch_1
    move-exception v0

    .line 870
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 882
    :catch_2
    move-exception v2

    goto :goto_4

    .line 875
    :catch_3
    move-exception v2

    goto :goto_3

    .line 855
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_4
    move-exception v2

    goto :goto_0
.end method

.method public static restoreAirMode(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 647
    sget-boolean v2, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "Powerstate"

    const-string/jumbo v3, "restoreAirMode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_0
    invoke-static {}, Lcom/android/internal/policy/Powerstate;->readStateFromFile()Z

    move-result v1

    .line 649
    .local v1, result:Z
    if-nez v1, :cond_2

    .line 651
    const-string v2, "Powerstate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restoreAirMode readStateFromFile result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_1
    :goto_0
    return-void

    .line 657
    :cond_2
    const-string v2, "RTC"

    const-string/jumbo v3, "persist.sys.powerup_reason"

    const-string v4, "NORMAL"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 658
    sget-object v2, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v3, "airplanemode"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 659
    .local v0, airplaneMode:Ljava/lang/Integer;
    if-nez v0, :cond_3

    .line 661
    const-string v2, "Powerstate"

    const-string/jumbo v3, "restorePhoneState airplaneMode get failed use the default value"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 664
    :cond_3
    sget-boolean v2, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "Powerstate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restorePhoneState airplaneMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p0, v2}, Lcom/android/internal/policy/Powerstate;->toggleAirPlane(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public static restorePhoneState(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x1

    .line 596
    sget-boolean v7, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "Powerstate"

    const-string/jumbo v8, "restorePhoneState"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :cond_0
    invoke-static {}, Lcom/android/internal/policy/Powerstate;->readStateFromFile()Z

    move-result v3

    .line 599
    .local v3, result:Z
    if-nez v3, :cond_1

    .line 601
    const-string v6, "Powerstate"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "restorePhoneState readStateFromFile result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :goto_0
    return-void

    .line 604
    :cond_1
    sget-object v7, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string/jumbo v8, "wifistate"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 606
    .local v5, wifiState:Ljava/lang/Integer;
    if-nez v5, :cond_2

    .line 608
    const-string v7, "Powerstate"

    const-string/jumbo v8, "restorePhoneState wifiState get failed use the default value"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 611
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {p0, v7}, Lcom/android/internal/policy/Powerstate;->toggleWifi(Landroid/content/Context;I)V

    .line 613
    sget-object v7, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v8, "btstate"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 614
    .local v1, bluethState:Ljava/lang/Integer;
    sget-boolean v7, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v7, :cond_3

    const-string v7, "Powerstate"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "restorePhoneState bluethState ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :cond_3
    if-nez v1, :cond_4

    .line 617
    const-string v7, "Powerstate"

    const-string/jumbo v8, "restorePhoneState bluethState get failed use the default value"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    const/16 v7, 0xa

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 620
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {p0, v7}, Lcom/android/internal/policy/Powerstate;->toggleBluetooth(Landroid/content/Context;I)V

    .line 622
    sget-object v7, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v8, "gpsstate"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 623
    .local v2, gpsState:Ljava/lang/Integer;
    if-nez v2, :cond_5

    .line 625
    const-string v7, "Powerstate"

    const-string/jumbo v8, "restorePhoneState gpsState get failed use the default value"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 628
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v0, :cond_9

    .line 629
    .local v0, bgpsState:Z
    :goto_1
    sget-boolean v6, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v6, :cond_6

    const-string v6, "Powerstate"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "restorePhoneState gpsState:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bgpsState:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :cond_6
    invoke-static {p0, v0}, Lcom/android/internal/policy/Powerstate;->toggleGps(Landroid/content/Context;Z)V

    .line 632
    sget-object v6, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string/jumbo v7, "ringermode"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 633
    .local v4, ringtoneMode:Ljava/lang/Integer;
    if-nez v4, :cond_7

    .line 635
    const-string v6, "Powerstate"

    const-string/jumbo v7, "restorePhoneState ringtoneMode get failed use the default value"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 638
    :cond_7
    sget-boolean v6, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v6, :cond_8

    const-string v6, "Powerstate"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "restorePhoneState ringtonemode ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_8
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {p0, v6}, Lcom/android/internal/policy/Powerstate;->toggleRingToneMode(Landroid/content/Context;I)V

    goto/16 :goto_0

    .end local v0           #bgpsState:Z
    .end local v4           #ringtoneMode:Ljava/lang/Integer;
    :cond_9
    move v0, v6

    .line 628
    goto :goto_1
.end method

.method public static restoreSensorState(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 675
    sget-boolean v2, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "Powerstate"

    const-string/jumbo v3, "restoreSensorState"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_0
    invoke-static {}, Lcom/android/internal/policy/Powerstate;->readStateFromFile()Z

    move-result v1

    .line 678
    .local v1, result:Z
    if-nez v1, :cond_1

    .line 680
    const-string v2, "Powerstate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restoreSensorState readStateFromFile result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :goto_0
    return-void

    .line 684
    :cond_1
    sget-object v2, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string/jumbo v3, "sensorstate"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 685
    .local v0, SensorState:Ljava/lang/Integer;
    if-nez v0, :cond_2

    .line 687
    const-string v2, "Powerstate"

    const-string/jumbo v3, "restoreSensorState Sensor get failed use the default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 690
    :cond_2
    sget-boolean v2, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "Powerstate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restoreSensorState Sensor State ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p0, v2}, Lcom/android/internal/policy/Powerstate;->toggleSensorState(Landroid/content/Context;I)V

    .line 692
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "need_restore_phone_state"

    invoke-static {v2, v3, v5}, Landroid/provider/SettingsEx$Systemex;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public static savePhoneState(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v7, -0x1

    .line 409
    sget-object v2, Lcom/android/internal/policy/Powerstate;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v2, :cond_0

    .line 410
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    sput-object v2, Lcom/android/internal/policy/Powerstate;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 413
    :cond_0
    sget-object v2, Lcom/android/internal/policy/Powerstate;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v4}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    .line 414
    sget-object v2, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v5, "fastpoweroff"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    sget-object v2, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string/jumbo v5, "wifistate"

    invoke-static {p0}, Lcom/android/internal/policy/Powerstate;->getWifiState(Landroid/content/Context;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    sget-object v2, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v5, "btstate"

    invoke-static {p0}, Lcom/android/internal/policy/Powerstate;->getBluetoothState(Landroid/content/Context;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    sget-object v5, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v6, "gpsstate"

    invoke-static {p0}, Lcom/android/internal/policy/Powerstate;->getGpsState(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    sget-object v2, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string/jumbo v3, "sensorstate"

    invoke-static {p0}, Lcom/android/internal/policy/Powerstate;->getSensorState(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    const-string/jumbo v2, "true"

    const-string/jumbo v3, "ro.poweroff_alarm"

    const-string/jumbo v4, "true"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "RTC"

    const-string/jumbo v3, "persist.sys.powerup_reason"

    const-string v4, "NORMAL"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 425
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "user_set_airplane"

    invoke-static {v2, v3, v7}, Landroid/provider/SettingsEx$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 426
    .local v1, userSetAirplane:I
    sget-boolean v2, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "Powerstate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Power off Alarm userSetAirplane : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_1
    if-ne v7, v1, :cond_5

    .line 429
    sget-object v2, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v3, "airplanemode"

    invoke-static {p0}, Lcom/android/internal/policy/Powerstate;->getAirplaneModeOn(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    .end local v1           #userSetAirplane:I
    :goto_1
    sget-object v2, Lcom/android/internal/policy/Powerstate;->mAudioManager:Landroid/media/AudioManager;

    if-nez v2, :cond_2

    .line 439
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    sput-object v2, Lcom/android/internal/policy/Powerstate;->mAudioManager:Landroid/media/AudioManager;

    .line 441
    :cond_2
    sget-object v2, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string/jumbo v3, "ringermode"

    sget-object v4, Lcom/android/internal/policy/Powerstate;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    invoke-static {}, Lcom/android/internal/policy/Powerstate;->saveStateToFile()Z

    move-result v0

    .line 444
    .local v0, bResult:Z
    sget-boolean v2, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "Powerstate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "savePhoneSatesaveStateToFile bResult:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_3
    return-void

    .end local v0           #bResult:Z
    :cond_4
    move v2, v4

    .line 417
    goto/16 :goto_0

    .line 431
    .restart local v1       #userSetAirplane:I
    :cond_5
    sget-object v2, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v3, "airplanemode"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 434
    .end local v1           #userSetAirplane:I
    :cond_6
    sget-object v2, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v3, "airplanemode"

    invoke-static {p0}, Lcom/android/internal/policy/Powerstate;->getAirplaneModeOn(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private static saveStateToFile()Z
    .locals 15

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 991
    sget-boolean v12, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v12, :cond_0

    const-string v12, "Powerstate"

    const-string/jumbo v13, "saveStateToFile"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v12, "/data/system/before_power_off.xml"

    invoke-direct {v2, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 995
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_1

    .line 997
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1002
    :cond_1
    :goto_0
    sput-boolean v11, Lcom/android/internal/policy/Powerstate;->isReadFromStateFile:Z

    .line 1004
    const/4 v7, 0x0

    .line 1006
    .local v7, stream:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v8, Ljava/io/FileOutputStream;

    const/4 v12, 0x0

    invoke-direct {v8, v2, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1007
    .end local v7           #stream:Ljava/io/FileOutputStream;
    .local v8, stream:Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v6, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v6}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1008
    .local v6, out:Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v12, "utf-8"

    invoke-interface {v6, v8, v12}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1009
    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v6, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1010
    const/4 v12, 0x0

    const-string/jumbo v13, "state"

    invoke-interface {v6, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1011
    const/4 v4, 0x0

    .line 1013
    .local v4, itemIndex:I
    sget-object v12, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v4

    .line 1014
    sget-object v12, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1015
    .local v1, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1016
    .local v5, k:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    .line 1017
    .local v9, v:Ljava/lang/Object;
    const/4 v12, 0x0

    const-string v13, "item"

    invoke-interface {v6, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1018
    const/4 v12, 0x0

    const-string/jumbo v13, "name"

    invoke-interface {v6, v12, v13, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1019
    const/4 v12, 0x0

    const-string/jumbo v13, "value"

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v6, v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1020
    const/4 v12, 0x0

    const-string v13, "item"

    invoke-interface {v6, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1029
    .end local v1           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #itemIndex:I
    .end local v5           #k:Ljava/lang/String;
    .end local v6           #out:Lorg/xmlpull/v1/XmlSerializer;
    .end local v9           #v:Ljava/lang/Object;
    :catch_0
    move-exception v0

    move-object v7, v8

    .line 1031
    .end local v8           #stream:Ljava/io/FileOutputStream;
    .local v0, e:Ljava/io/IOException;
    .restart local v7       #stream:Ljava/io/FileOutputStream;
    :goto_2
    if-eqz v7, :cond_2

    .line 1032
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1037
    :cond_2
    :goto_3
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1038
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_3
    move v10, v11

    .line 1040
    .end local v0           #e:Ljava/io/IOException;
    :goto_4
    return v10

    .line 1023
    .end local v7           #stream:Ljava/io/FileOutputStream;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #itemIndex:I
    .restart local v6       #out:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v8       #stream:Ljava/io/FileOutputStream;
    :cond_4
    const/4 v12, 0x0

    :try_start_4
    const-string/jumbo v13, "state"

    invoke-interface {v6, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1024
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1025
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    .line 1026
    invoke-static {v8}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1027
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-object v7, v8

    .line 1028
    .end local v8           #stream:Ljava/io/FileOutputStream;
    .restart local v7       #stream:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 998
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #itemIndex:I
    .end local v6           #out:Lorg/xmlpull/v1/XmlSerializer;
    .end local v7           #stream:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v12

    goto/16 :goto_0

    .line 1034
    .restart local v0       #e:Ljava/io/IOException;
    .restart local v7       #stream:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v10

    goto :goto_3

    .line 1029
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method public static setCurrenScreenState(Z)V
    .locals 0
    .parameter "isOn"

    .prologue
    .line 943
    sput-boolean p0, Lcom/android/internal/policy/Powerstate;->currenScreenStateIsOn:Z

    .line 944
    return-void
.end method

.method public static setPowerConnected(Z)V
    .locals 0
    .parameter "powerConnected"

    .prologue
    .line 940
    sput-boolean p0, Lcom/android/internal/policy/Powerstate;->POWER_CONNECTED:Z

    .line 941
    return-void
.end method

.method public static setPoweroffState(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 702
    sget-boolean v0, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Powerstate"

    const-string/jumbo v1, "setPoweroffState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "need_restore_phone_state"

    invoke-static {v0, v1, v3}, Landroid/provider/SettingsEx$Systemex;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 705
    invoke-static {p0, v3}, Lcom/android/internal/policy/Powerstate;->toggleWifi(Landroid/content/Context;I)V

    .line 706
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/android/internal/policy/Powerstate;->toggleBluetooth(Landroid/content/Context;I)V

    .line 707
    invoke-static {p0, v2}, Lcom/android/internal/policy/Powerstate;->toggleGps(Landroid/content/Context;Z)V

    .line 708
    invoke-static {p0, v3}, Lcom/android/internal/policy/Powerstate;->toggleAirPlane(Landroid/content/Context;I)V

    .line 709
    invoke-static {p0, v2}, Lcom/android/internal/policy/Powerstate;->toggleRingToneMode(Landroid/content/Context;I)V

    .line 710
    invoke-static {p0, v2}, Lcom/android/internal/policy/Powerstate;->toggleSensorState(Landroid/content/Context;I)V

    .line 711
    return-void
.end method

.method private static setScreenState(Z)V
    .locals 6
    .parameter "on"

    .prologue
    .line 846
    :try_start_0
    sget-object v1, Lcom/android/internal/policy/Powerstate;->sPowerManagerService:Landroid/os/IPowerManager;

    invoke-interface {v1, p0}, Landroid/os/IPowerManager;->setScreenState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 850
    :goto_0
    return-void

    .line 847
    :catch_0
    move-exception v0

    .line 848
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "Powerstate"

    const-string/jumbo v2, "setScreenState to %b failed"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static showAnimationAgain(Landroid/content/Context;)V
    .locals 8
    .parameter "mContext"

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 789
    sget-boolean v4, Lcom/android/internal/policy/Powerstate;->bootAnimateIsRun:Z

    if-eqz v4, :cond_1

    .line 791
    sget-boolean v4, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "Powerstate"

    const-string v5, "Power on animation is running"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    :cond_0
    :goto_0
    return-void

    .line 796
    :cond_1
    sput-boolean v5, Lcom/android/internal/policy/Powerstate;->bootAnimateIsRun:Z

    .line 798
    invoke-static {v7}, Lcom/android/internal/policy/Powerstate;->setScreenState(Z)V

    .line 800
    const-string/jumbo v4, "vibrator"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    .line 801
    .local v3, vibrator:Landroid/os/Vibrator;
    if-eqz v3, :cond_2

    .line 802
    const/4 v4, 0x2

    new-array v4, v4, [J

    fill-array-data v4, :array_0

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 807
    :cond_2
    sget-boolean v4, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "Powerstate"

    const-string/jumbo v5, "start to show power on AnimationAgain"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    :cond_3
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const-string v5, "/system/bin/bootanimationex"

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    sput-object v4, Lcom/android/internal/policy/Powerstate;->fProcess:Ljava/lang/Process;

    .line 812
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/16 v4, 0x28

    if-ge v1, v4, :cond_4

    .line 813
    const-string/jumbo v4, "true"

    const-string/jumbo v5, "persist.sys.animationstart"

    const-string v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 820
    :cond_4
    invoke-static {}, Lcom/android/internal/policy/Powerstate;->destroyPowerOffCharge()V

    .line 821
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/android/internal/policy/Powerstate;->setScreenState(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 824
    :try_start_1
    const-string/jumbo v4, "ro.config.hw_poanimation"

    const/16 v5, 0x1388

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 825
    .local v2, timeLong:I
    add-int/lit16 v4, v2, -0x190

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 834
    .end local v2           #timeLong:I
    :goto_2
    const-string/jumbo v4, "persist.sys.animationstart"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    const-string/jumbo v4, "persist.sys.quickpoweron"

    const-string/jumbo v5, "normal"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    invoke-static {}, Lcom/android/internal/policy/Powerstate;->resetScreenState()V

    .line 839
    sget-boolean v4, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v4, :cond_5

    const-string v4, "Powerstate"

    const-string/jumbo v5, "showAnimation finished"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    .end local v1           #i:I
    :cond_5
    :goto_3
    sput-boolean v7, Lcom/android/internal/policy/Powerstate;->bootAnimateIsRun:Z

    goto/16 :goto_0

    .line 816
    .restart local v1       #i:I
    :cond_6
    :try_start_2
    sget-boolean v4, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v4, :cond_7

    const-string v4, "Powerstate"

    const-string/jumbo v5, "wait to show animation"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    :cond_7
    const-wide/16 v4, 0x64

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 812
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 826
    :catch_0
    move-exception v0

    .line 827
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 830
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #i:I
    :catch_1
    move-exception v0

    .line 831
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    sget-boolean v4, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v4, :cond_8

    const-string v4, "Powerstate"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Runtime.getRuntime().exec failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    :cond_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 834
    const-string/jumbo v4, "persist.sys.animationstart"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    const-string/jumbo v4, "persist.sys.quickpoweron"

    const-string/jumbo v5, "normal"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    invoke-static {}, Lcom/android/internal/policy/Powerstate;->resetScreenState()V

    .line 839
    sget-boolean v4, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v4, :cond_5

    const-string v4, "Powerstate"

    const-string/jumbo v5, "showAnimation finished"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 834
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    const-string/jumbo v5, "persist.sys.animationstart"

    const-string v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    const-string/jumbo v5, "persist.sys.quickpoweron"

    const-string/jumbo v6, "normal"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    invoke-static {}, Lcom/android/internal/policy/Powerstate;->resetScreenState()V

    .line 839
    sget-boolean v5, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v5, :cond_9

    const-string v5, "Powerstate"

    const-string/jumbo v6, "showAnimation finished"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    :cond_9
    sput-boolean v7, Lcom/android/internal/policy/Powerstate;->bootAnimateIsRun:Z

    .line 834
    throw v4

    .line 802
    nop

    :array_0
    .array-data 0x8
        0xat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static synAirplaneMode(Landroid/content/Context;)V
    .locals 10
    .parameter "mContext"

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 1217
    sget-boolean v6, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "Powerstate"

    const-string/jumbo v7, "synairplanemode"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    :cond_0
    move-object v2, p0

    .line 1219
    .local v2, modeContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/policy/Powerstate;->readStateFromFile()Z

    move-result v3

    .line 1220
    .local v3, resultReadStateFromFile:Z
    if-nez v3, :cond_2

    .line 1221
    const-string v6, "Powerstate"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "synAirplaneMode readStateFromFile result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    :cond_1
    :goto_0
    return-void

    .line 1225
    :cond_2
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "user_set_airplane"

    invoke-static {v6, v7, v8}, Landroid/provider/SettingsEx$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 1226
    .local v5, userChangeAirplane:I
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 1228
    .local v4, stateAirPlane:I
    if-ne v8, v5, :cond_3

    .line 1230
    sget-object v6, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v7, "airplanemode"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1231
    invoke-static {}, Lcom/android/internal/policy/Powerstate;->saveStateToFile()Z

    move-result v1

    .line 1232
    .local v1, bResultSaveStateToFile:Z
    sget-boolean v6, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string v6, "Powerstate"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "user have change airplane and saveStateToFile result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1235
    .end local v1           #bResultSaveStateToFile:Z
    :cond_3
    sget-object v6, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v7, "airplanemode"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1236
    .local v0, airplaneMode:Ljava/lang/Integer;
    if-nez v0, :cond_4

    .line 1237
    const-string v6, "Powerstate"

    const-string/jumbo v7, "user not change airplane, synAirplaneMode airplaneMode get failed use the default value"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1240
    :cond_4
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private static toggleAirPlane(Landroid/content/Context;I)V
    .locals 14
    .parameter "mContext"
    .parameter "isOn"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 307
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "airplane_mode_on"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 309
    .local v7, stateAirPlane:I
    sget-boolean v11, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v11, :cond_0

    const-string v11, "Powerstate"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "toggle AirPlane now stateAirPlane is :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_0
    if-ne p1, v7, :cond_2

    .line 312
    sget-boolean v9, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v9, :cond_1

    const-string v9, "Powerstate"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "toggle AirPlane now is :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  then return"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_1
    :goto_0
    return-void

    .line 316
    :cond_2
    sget-boolean v11, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v11, :cond_3

    const-string v11, "Powerstate"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "toggleAirPlane switch air mode: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_3
    if-nez p1, :cond_4

    .line 318
    move-object v4, p0

    .line 319
    .local v4, modeContext:Landroid/content/Context;
    move v8, p1

    .line 320
    .local v8, stateIson:I
    new-instance v0, Lcom/android/internal/policy/Powerstate$1;

    invoke-direct {v0, v4, v8}, Lcom/android/internal/policy/Powerstate$1;-><init>(Landroid/content/Context;I)V

    .line 339
    .local v0, aThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 340
    .end local v0           #aThread:Ljava/lang/Thread;
    .end local v4           #modeContext:Landroid/content/Context;
    .end local v8           #stateIson:I
    :cond_4
    if-ne v9, p1, :cond_1

    .line 341
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "airplane_mode_on"

    invoke-static {v11, v12, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 342
    new-instance v3, Landroid/content/Intent;

    const-string v11, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v3, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 343
    .local v3, intent:Landroid/content/Intent;
    const-string/jumbo v11, "state"

    invoke-virtual {v3, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 344
    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v3, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 346
    const-string/jumbo v11, "phone"

    invoke-static {v11}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    .line 348
    .local v5, phone:Lcom/android/internal/telephony/ITelephony;
    if-nez v5, :cond_6

    move v6, v9

    .line 350
    .local v6, radioOff:Z
    :goto_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    const/16 v11, 0x10

    if-ge v2, v11, :cond_1

    .line 351
    if-nez v6, :cond_5

    .line 353
    :try_start_0
    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-nez v11, :cond_7

    move v6, v9

    .line 359
    :cond_5
    :goto_3
    if-eqz v6, :cond_8

    .line 360
    const-string v9, "Powerstate"

    const-string v10, "Radio shutdown complete."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2           #i:I
    .end local v6           #radioOff:Z
    :cond_6
    move v6, v10

    .line 348
    goto :goto_1

    .restart local v2       #i:I
    .restart local v6       #radioOff:Z
    :cond_7
    move v6, v10

    .line 353
    goto :goto_3

    .line 354
    :catch_0
    move-exception v1

    .line 355
    .local v1, ex:Landroid/os/RemoteException;
    const-string v11, "Powerstate"

    const-string v12, "RemoteException during radio shutdown"

    invoke-static {v11, v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 356
    const/4 v6, 0x1

    goto :goto_3

    .line 363
    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_8
    const-wide/16 v11, 0x1f4

    invoke-static {v11, v12}, Landroid/os/SystemClock;->sleep(J)V

    .line 350
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private static toggleBluetooth(Landroid/content/Context;I)V
    .locals 8
    .parameter "context"
    .parameter "state"

    .prologue
    const/16 v7, 0xa

    const/4 v4, 0x0

    .line 219
    const-string v5, "bluetooth_manager"

    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    .line 222
    .local v0, bluetooth:Landroid/bluetooth/IBluetoothManager;
    if-nez v0, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    invoke-static {p0}, Lcom/android/internal/policy/Powerstate;->getBluetoothState(Landroid/content/Context;)I

    move-result v5

    if-ne v5, p1, :cond_2

    .line 227
    sget-boolean v4, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "Powerstate"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "toggleBluetooth now is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,then  return"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 231
    :cond_2
    if-ne v7, p1, :cond_5

    .line 232
    sget-boolean v5, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v5, :cond_3

    const-string v5, "Powerstate"

    const-string v6, "Disabling Bluetooth..."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_3
    const/4 v5, 0x0

    :try_start_0
    invoke-interface {v0, v5}, Landroid/bluetooth/IBluetoothManager;->disable(Z)Z

    .line 236
    const/4 v1, 0x0

    .line 237
    .local v1, bluetoothOff:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    const/16 v5, 0x10

    if-ge v3, v5, :cond_5

    .line 238
    if-nez v1, :cond_4

    .line 239
    invoke-static {p0}, Lcom/android/internal/policy/Powerstate;->getBluetoothState(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v7, :cond_7

    const/4 v1, 0x1

    .line 241
    :cond_4
    :goto_2
    if-eqz v1, :cond_8

    .line 242
    const-string v4, "Powerstate"

    const-string v5, "Bluetooth shutdown complete."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 253
    .end local v1           #bluetoothOff:Z
    .end local v3           #i:I
    :cond_5
    :goto_3
    const/16 v4, 0xc

    if-ne v4, p1, :cond_0

    .line 254
    sget-boolean v4, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v4, :cond_6

    const-string v4, "Powerstate"

    const-string v5, "enable Bluetooth..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_6
    :try_start_1
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->enable()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 257
    :catch_0
    move-exception v2

    .line 258
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v1       #bluetoothOff:Z
    .restart local v3       #i:I
    :cond_7
    move v1, v4

    .line 239
    goto :goto_2

    .line 245
    :cond_8
    const-wide/16 v5, 0x1f4

    :try_start_2
    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 237
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 248
    .end local v1           #bluetoothOff:Z
    .end local v3           #i:I
    :catch_1
    move-exception v2

    .line 249
    .restart local v2       #e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3
.end method

.method private static toggleGps(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "enabled"

    .prologue
    .line 295
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 296
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-boolean v1, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Powerstate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "toggleGps "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_0
    const-string v1, "gps"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 299
    return-void
.end method

.method private static toggleRingToneMode(Landroid/content/Context;I)V
    .locals 3
    .parameter "mContext"
    .parameter "mode"

    .prologue
    .line 397
    sget-object v0, Lcom/android/internal/policy/Powerstate;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 398
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/android/internal/policy/Powerstate;->mAudioManager:Landroid/media/AudioManager;

    .line 400
    :cond_0
    sget-object v0, Lcom/android/internal/policy/Powerstate;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 401
    sget-boolean v0, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "Powerstate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toggleRingToneMode mAudioManager mode is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_1
    return-void
.end method

.method private static toggleSensorState(Landroid/content/Context;I)V
    .locals 4
    .parameter "mContext"
    .parameter "isOn"

    .prologue
    .line 375
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 378
    .local v0, SensorState:I
    sget-boolean v1, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Powerstate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "toggle SensorState now SensorState is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_0
    if-ne p1, v0, :cond_2

    .line 381
    sget-boolean v1, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "Powerstate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "toggle SensorState now is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  then return"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_1
    :goto_0
    return-void

    .line 385
    :cond_2
    sget-boolean v1, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "Powerstate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "toggle SensorState switch air mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private static toggleWifi(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    .line 269
    const-string/jumbo v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 271
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    if-ne v1, p1, :cond_2

    .line 276
    sget-boolean v1, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Powerstate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiState now is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , nothing then  return"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 280
    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 281
    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 282
    sget-boolean v1, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Powerstate"

    const-string/jumbo v2, "wifi state is enable"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 283
    :cond_3
    if-ne p1, v2, :cond_0

    .line 284
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 285
    sget-boolean v1, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Powerstate"

    const-string/jumbo v2, "wifi state is disable"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public quityScreenOffNatually()V
    .locals 2

    .prologue
    .line 982
    sget-object v0, Lcom/android/internal/policy/Powerstate;->sHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 983
    return-void
.end method

.method public sendStopBC(Landroid/content/Context;)V
    .locals 21
    .parameter "context"

    .prologue
    .line 725
    :try_start_0
    const-string v18, "com.huawei.android.FMRadio"

    .line 727
    .local v18, fmPackageName:Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v17

    .line 728
    .local v17, fmContext:Landroid/content/Context;
    const/4 v2, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 731
    .local v19, fmSp:Landroid/content/SharedPreferences;
    const-string v2, "fm_state"

    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 733
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.huawei.android.FMRadio.fmradioservicecommand.stop"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 735
    const/16 v20, 0x0

    .local v20, i:I
    :goto_0
    const/16 v2, 0x14

    move/from16 v0, v20

    if-ge v0, v2, :cond_0

    .line 736
    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 738
    const-string v2, "fm_state"

    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_2

    .line 748
    .end local v17           #fmContext:Landroid/content/Context;
    .end local v18           #fmPackageName:Ljava/lang/String;
    .end local v19           #fmSp:Landroid/content/SharedPreferences;
    .end local v20           #i:I
    :cond_0
    :goto_1
    new-instance v11, Landroid/content/Intent;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v11, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 749
    .local v11, closeDialogs:Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 752
    new-instance v10, Ljava/lang/Object;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 753
    .local v10, broadcastDoneSync:Ljava/lang/Object;
    new-instance v5, Lcom/android/internal/policy/Powerstate$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v10}, Lcom/android/internal/policy/Powerstate$2;-><init>(Lcom/android/internal/policy/Powerstate;Ljava/lang/Object;)V

    .line 762
    .local v5, br:Landroid/content/BroadcastReceiver;
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/internal/policy/Powerstate;->broadcastDone:Z

    .line 763
    const-string v2, "Powerstate"

    const-string v3, "begin Sending shutdown broadcast"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    new-instance v3, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    sget-object v6, Lcom/android/internal/policy/Powerstate;->sHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 765
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x2710

    add-long v15, v2, v6

    .line 766
    .local v15, endTime:J
    monitor-enter v10

    .line 767
    :goto_2
    :try_start_1
    sget-boolean v2, Lcom/android/internal/policy/Powerstate;->broadcastDone:Z

    if-nez v2, :cond_1

    .line 768
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v12, v15, v2

    .line 769
    .local v12, delay:J
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-gtz v2, :cond_3

    .line 770
    const-string v2, "Powerstate"

    const-string/jumbo v3, "shutdown broadcast timed out"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    .end local v12           #delay:J
    :cond_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 779
    const-string v2, "Powerstate"

    const-string v3, "end Sending shutdown broadcast"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    return-void

    .line 735
    .end local v5           #br:Landroid/content/BroadcastReceiver;
    .end local v10           #broadcastDoneSync:Ljava/lang/Object;
    .end local v11           #closeDialogs:Landroid/content/Intent;
    .end local v15           #endTime:J
    .restart local v17       #fmContext:Landroid/content/Context;
    .restart local v18       #fmPackageName:Ljava/lang/String;
    .restart local v19       #fmSp:Landroid/content/SharedPreferences;
    .restart local v20       #i:I
    :cond_2
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 743
    .end local v17           #fmContext:Landroid/content/Context;
    .end local v18           #fmPackageName:Ljava/lang/String;
    .end local v19           #fmSp:Landroid/content/SharedPreferences;
    .end local v20           #i:I
    :catch_0
    move-exception v14

    .line 744
    .local v14, e:Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 774
    .end local v14           #e:Ljava/lang/Exception;
    .restart local v5       #br:Landroid/content/BroadcastReceiver;
    .restart local v10       #broadcastDoneSync:Ljava/lang/Object;
    .restart local v11       #closeDialogs:Landroid/content/Intent;
    .restart local v12       #delay:J
    .restart local v15       #endTime:J
    :cond_3
    :try_start_2
    invoke-virtual {v10, v12, v13}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 775
    :catch_1
    move-exception v2

    goto :goto_2

    .line 778
    .end local v12           #delay:J
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public setInChargeScreenState()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 950
    sget-object v0, Lcom/android/internal/policy/Powerstate;->animChargeProcess:Ljava/lang/Process;

    if-eqz v0, :cond_0

    .line 951
    const-string v0, "InputMonitor OoO"

    const-string v1, "i am going to handle the screen problem."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    sget-object v0, Lcom/android/internal/policy/Powerstate;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 953
    sget-boolean v0, Lcom/android/internal/policy/Powerstate;->currenScreenStateIsOn:Z

    if-eqz v0, :cond_1

    .line 954
    const-string v0, "Powerstate"

    const-string/jumbo v1, "setScreenState false."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/policy/Powerstate;->setScreenState(Z)V

    .line 962
    :cond_0
    :goto_0
    return-void

    .line 956
    :cond_1
    sget-boolean v0, Lcom/android/internal/policy/Powerstate;->POWER_CONNECTED:Z

    if-eqz v0, :cond_0

    .line 957
    const-string v0, "Powerstate"

    const-string/jumbo v1, "setScreenState true."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    invoke-static {v3}, Lcom/android/internal/policy/Powerstate;->setScreenState(Z)V

    .line 959
    sget-object v0, Lcom/android/internal/policy/Powerstate;->sHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x2328

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public showPowerOffCharge()V
    .locals 6

    .prologue
    .line 894
    sget-object v3, Lcom/android/internal/policy/Powerstate;->CHARGER_SHOW_LOCK:Ljava/lang/Object;

    monitor-enter v3

    .line 895
    :try_start_0
    sget-object v2, Lcom/android/internal/policy/Powerstate;->animChargeProcess:Ljava/lang/Process;

    if-eqz v2, :cond_0

    .line 896
    invoke-virtual {p0}, Lcom/android/internal/policy/Powerstate;->setInChargeScreenState()V

    .line 897
    monitor-exit v3

    .line 921
    :goto_0
    return-void

    .line 899
    :cond_0
    const-string v2, "Powerstate"

    const-string/jumbo v4, "showPowerOffCharge E"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    new-instance v2, Ljava/io/File;

    sget-object v4, Lcom/android/internal/policy/Powerstate;->mPowerDownCharge_path1:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/io/File;

    sget-object v4, Lcom/android/internal/policy/Powerstate;->mPowerDownCharge_path2:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 902
    :cond_1
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/internal/policy/Powerstate;->setScreenState(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 904
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v4, "/system/bin/chargershow"

    invoke-virtual {v2, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    sput-object v2, Lcom/android/internal/policy/Powerstate;->animChargeProcess:Ljava/lang/Process;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 909
    :goto_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    const/16 v2, 0x28

    if-ge v1, v2, :cond_2

    .line 910
    :try_start_2
    const-string/jumbo v2, "true"

    const-string/jumbo v4, "persist.sys.animationstart"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 916
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/Powerstate;->setInChargeScreenState()V

    .line 917
    const-string/jumbo v2, "persist.sys.animationstart"

    const-string v4, "false"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    .end local v1           #i:I
    :cond_3
    const-string v2, "Powerstate"

    const-string/jumbo v4, "showPowerOffCharge X"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 905
    :catch_0
    move-exception v0

    .line 906
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    const-string v2, "Powerstate"

    const-string/jumbo v4, "run powerdown charge animation failed"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 913
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #i:I
    :cond_4
    sget-boolean v2, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "Powerstate"

    const-string/jumbo v4, "wait to show power off animation"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    :cond_5
    const-wide/16 v4, 0x64

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 909
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method
