.class public Lcom/huawei/android/hwpowermanager/BgPowerManagerService;
.super Landroid/app/Service;
.source "BgPowerManagerService.java"


# static fields
.field private static mCurBatterylevel:I

.field private static mScreenOffBatterylevel:I

.field private static mScreenOffTime:Ljava/lang/Long;

.field private static mScreenOmTime:Ljava/lang/Long;

.field private static mScreenOnBatterylevel:I

.field private static totalElectricValue:I


# instance fields
.field private BATTERY_CHANGE_INTENT_INTERVAL:I

.field private electricValue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBatInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryCapacity:I

.field private mHandler:Landroid/os/Handler;

.field private num:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 28
    sput v1, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->totalElectricValue:I

    .line 30
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->mScreenOmTime:Ljava/lang/Long;

    .line 31
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->mScreenOffTime:Ljava/lang/Long;

    .line 32
    sput v1, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->mScreenOffBatterylevel:I

    .line 33
    sput v1, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->mScreenOnBatterylevel:I

    .line 34
    sput v1, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->mCurBatterylevel:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 26
    const/16 v0, 0x1e

    iput v0, p0, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->BATTERY_CHANGE_INTENT_INTERVAL:I

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->electricValue:Ljava/util/ArrayList;

    .line 29
    const/16 v0, 0xa

    iput v0, p0, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->num:I

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->mBatteryCapacity:I

    .line 72
    new-instance v0, Lcom/huawei/android/hwpowermanager/BgPowerManagerService$1;

    invoke-direct {v0, p0}, Lcom/huawei/android/hwpowermanager/BgPowerManagerService$1;-><init>(Lcom/huawei/android/hwpowermanager/BgPowerManagerService;)V

    iput-object v0, p0, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->mBatInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 96
    new-instance v0, Lcom/huawei/android/hwpowermanager/BgPowerManagerService$2;

    invoke-direct {v0, p0}, Lcom/huawei/android/hwpowermanager/BgPowerManagerService$2;-><init>(Lcom/huawei/android/hwpowermanager/BgPowerManagerService;)V

    iput-object v0, p0, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    sput p0, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->mCurBatterylevel:I

    return p0
.end method

.method static synthetic access$100(Lcom/huawei/android/hwpowermanager/BgPowerManagerService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/huawei/android/hwpowermanager/BgPowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->handleVlaueClear()V

    return-void
.end method

.method static synthetic access$300(Lcom/huawei/android/hwpowermanager/BgPowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->handleScreenOn()V

    return-void
.end method

.method static synthetic access$400(Lcom/huawei/android/hwpowermanager/BgPowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->handleScreenOff()V

    return-void
.end method

.method static synthetic access$500(Lcom/huawei/android/hwpowermanager/BgPowerManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->handleBatteryChange()V

    return-void
.end method

.method private handleBatteryChange()V
    .locals 6

    .prologue
    .line 157
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->electricValue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 158
    .local v1, size:I
    iget v3, p0, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->num:I

    if-ne v1, v3, :cond_1

    .line 159
    sget v3, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->totalElectricValue:I

    iget v4, p0, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->num:I

    div-int v0, v3, v4

    .line 160
    .local v0, avgValue:I
    invoke-static {}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getAverage_current_fg()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 161
    const-string v3, "BgPowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "electricValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->electricValue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " num = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " avgValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.POWER_STATISTIC"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 163
    invoke-direct {p0}, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->handleVlaueClear()V

    .line 175
    .end local v0           #avgValue:I
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    invoke-static {}, Lcom/huawei/android/hwpowermanager/util/BatteryInfo;->getCurrentChargingValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 167
    .local v2, value:I
    if-gez v2, :cond_2

    .line 168
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 172
    :goto_1
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->electricValue:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    sget v3, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->totalElectricValue:I

    add-int/2addr v3, v2

    sput v3, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->totalElectricValue:I

    goto :goto_0

    .line 170
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private handleScreenOff()V
    .locals 3

    .prologue
    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->mScreenOffTime:Ljava/lang/Long;

    .line 124
    sget v0, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->mCurBatterylevel:I

    sput v0, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->mScreenOffBatterylevel:I

    .line 125
    const-string v0, "BgPowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_SCREEN_OFF Received and mScreenOffTime :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->mScreenOffTime:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mScreenOffBatterylevel :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->mScreenOffBatterylevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void
.end method

.method private handleScreenOn()V
    .locals 14

    .prologue
    .line 136
    invoke-static {}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getMin_interval_time()I

    move-result v5

    .line 137
    .local v5, min_interval_time:I
    invoke-static {}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getDangerous_current_level()I

    move-result v4

    .line 138
    .local v4, dangerous_current_level:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    sput-object v8, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->mScreenOmTime:Ljava/lang/Long;

    .line 140
    const-string v8, "BgPowerManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MSG_SCREEN_ON Received and mScreenOmTime :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->mScreenOmTime:Ljava/lang/Long;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mScreenOffTime :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->mScreenOffTime:Ljava/lang/Long;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "mCurBatterylevel :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->mCurBatterylevel:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "mScreenOffBatterylevel :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->mScreenOffBatterylevel:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    sget-object v8, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->mScreenOmTime:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sget-object v10, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->mScreenOffTime:Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long/2addr v8, v10

    int-to-long v10, v5

    const-wide/32 v12, 0xea60

    mul-long/2addr v10, v12

    cmp-long v8, v8, v10

    if-lez v8, :cond_0

    .line 146
    sget v8, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->mCurBatterylevel:I

    sget v9, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->mScreenOffBatterylevel:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->mBatteryCapacity:I

    div-int/lit8 v9, v9, 0x64

    mul-int/2addr v8, v9

    int-to-long v8, v8

    const-wide/32 v10, 0x36ee80

    mul-long v0, v8, v10

    .line 147
    .local v0, batterylevel:J
    sget-object v8, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->mScreenOmTime:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sget-object v10, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->mScreenOffTime:Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long v6, v8, v10

    .line 148
    .local v6, time:J
    div-long v2, v0, v6

    .line 149
    .local v2, curElectic:J
    int-to-long v8, v4

    cmp-long v8, v2, v8

    if-lez v8, :cond_0

    .line 150
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.POWER_STATISTIC"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 154
    .end local v0           #batterylevel:J
    .end local v2           #curElectic:J
    .end local v6           #time:J
    :cond_0
    return-void
.end method

.method private handleVlaueClear()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->electricValue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 132
    const/4 v0, 0x0

    sput v0, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->totalElectricValue:I

    .line 133
    return-void
.end method

.method private registerBatteryReceiver()V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 66
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->mBatInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 70
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 46
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 47
    invoke-direct {p0}, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->registerBatteryReceiver()V

    .line 48
    invoke-static {}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getCount_frequency_fg()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    iget v1, p0, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->BATTERY_CHANGE_INTENT_INTERVAL:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->num:I

    .line 49
    invoke-static {}, Lcom/huawei/android/hwpowermanager/util/BatteryInfo;->getBatteryCapacity()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->mBatteryCapacity:I

    .line 50
    const-string v0, "BgPowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BgPowerManagerService  num = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->num:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and mBatteryCapacity is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->mBatteryCapacity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 56
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->mBatInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/huawei/android/hwpowermanager/BgPowerManagerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 57
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 61
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 62
    return-void
.end method
