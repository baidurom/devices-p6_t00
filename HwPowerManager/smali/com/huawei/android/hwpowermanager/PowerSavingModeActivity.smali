.class public Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;
.super Landroid/app/Activity;
.source "PowerSavingModeActivity.java"


# instance fields
.field private mBatInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryCapacity:D

.field private mConversion:Lcom/huawei/android/hwpowermanager/util/Conversion;

.field private mList:Landroid/widget/ListView;

.field private mListItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mListItemAdapter:Landroid/widget/SimpleAdapter;

.field private mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field private mRawlevel:I

.field private mRealCapacity:D

.field private mSaveMode:I

.field private mSaveModeSystemBase:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->mListItemAdapter:Landroid/widget/SimpleAdapter;

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->mSaveMode:I

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->mSaveModeSystemBase:D

    return-void
.end method

.method static synthetic access$002(Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput p1, p0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->mRawlevel:I

    return p1
.end method

.method static synthetic access$100(Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->createListItem()V

    return-void
.end method

.method static synthetic access$200(Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;)Landroid/widget/SimpleAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->mListItemAdapter:Landroid/widget/SimpleAdapter;

    return-object v0
.end method

.method static synthetic access$202(Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;Landroid/widget/SimpleAdapter;)Landroid/widget/SimpleAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->mListItemAdapter:Landroid/widget/SimpleAdapter;

    return-object p1
.end method

.method static synthetic access$300(Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->mListItem:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method private batteryLevel(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 70
    new-instance v1, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity$1;

    invoke-direct {v1, p0}, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity$1;-><init>(Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;)V

    iput-object v1, p0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->mBatInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 85
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, batteryLevelFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->mBatInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 87
    return-void
.end method

.method private createListItem()V
    .locals 55

    .prologue
    .line 98
    invoke-static/range {p0 .. p0}, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->getInstance(Landroid/content/Context;)Lcom/huawei/android/hwpowermanager/model/ChangeMode;

    move-result-object v34

    .line 100
    .local v34, changeMode:Lcom/huawei/android/hwpowermanager/model/ChangeMode;
    invoke-virtual/range {v34 .. v34}, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->readSaveMode()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->mSaveMode:I

    .line 101
    new-instance v37, Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;

    invoke-virtual/range {p0 .. p0}, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v37

    invoke-direct {v0, v2}, Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;-><init>(Landroid/content/Context;)V

    .line 103
    .local v37, hwPowerProfile:Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->mSaveMode:I

    if-nez v2, :cond_0

    .line 104
    const-string v2, "system.base.normal"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->mSaveModeSystemBase:D

    .line 112
    :goto_0
    invoke-virtual/range {v37 .. v37}, Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;->currentScreenPower()D

    move-result-wide v49

    .line 113
    .local v49, power_screen:D
    invoke-virtual/range {v37 .. v37}, Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;->wifiPower()D

    move-result-wide v35

    .line 114
    .local v35, generalBase:D
    invoke-virtual/range {v37 .. v37}, Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;->blueToothPower()D

    move-result-wide v2

    add-double v35, v35, v2

    .line 115
    invoke-virtual/range {v37 .. v37}, Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;->gpsPower()D

    move-result-wide v2

    add-double v35, v35, v2

    .line 116
    invoke-virtual/range {v37 .. v37}, Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;->dataPower()D

    move-result-wide v2

    add-double v35, v35, v2

    .line 117
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->mSaveModeSystemBase:D

    add-double v35, v35, v2

    .line 119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v3, "cpu.active"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v43

    .line 120
    .local v43, power_cpu_step0:D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v3, "cpu.active"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v45

    .line 121
    .local v45, power_cpu_step1:D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v3, "radio.active"

    invoke-virtual {v2, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v47

    .line 122
    .local v47, power_radio_active:D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v3, "dsp.video"

    invoke-virtual {v2, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v51

    .line 123
    .local v51, power_video:D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v3, "dsp.audio"

    invoke-virtual {v2, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v41

    .line 124
    .local v41, power_audio:D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v3, "wifi.active"

    invoke-virtual {v2, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v53

    .line 126
    .local v53, power_wifi_active:D
    const-string v2, "HwPowerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "special usage, currentScreenPower:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v49

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", generabase:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v35

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->mListItem:Ljava/util/ArrayList;

    .line 131
    add-double v6, v47, v35

    .line 132
    .local v6, callCost:D
    new-instance v33, Ljava/util/HashMap;

    invoke-direct/range {v33 .. v33}, Ljava/util/HashMap;-><init>()V

    .line 133
    .local v33, callingMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "ItemImage"

    const v3, 0x7f020002

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v8, "ItemText"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->mConversion:Lcom/huawei/android/hwpowermanager/util/Conversion;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->mRealCapacity:D

    move-object/from16 v0, p0

    iget v5, v0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->mRawlevel:I

    invoke-virtual/range {v2 .. v7}, Lcom/huawei/android/hwpowermanager/util/Conversion;->doubleToTime(DID)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v2, "ItemTitle"

    invoke-virtual/range {p0 .. p0}, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090013

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->mListItem:Ljava/util/ArrayList;

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    add-double v2, v53, v49

    add-double v12, v2, v35

    .line 139
    .local v12, internetCost:D
    new-instance v38, Ljava/util/HashMap;

    invoke-direct/range {v38 .. v38}, Ljava/util/HashMap;-><init>()V

    .line 140
    .local v38, internetMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "ItemImage"

    const v3, 0x7f020011

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v38

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v2, "ItemText"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->mConversion:Lcom/huawei/android/hwpowermanager/util/Conversion;

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->mRealCapacity:D

    move-object/from16 v0, p0

    iget v11, v0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->mRawlevel:I

    invoke-virtual/range {v8 .. v13}, Lcom/huawei/android/hwpowermanager/util/Conversion;->doubleToTime(DID)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v38

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v2, "ItemTitle"

    invoke-virtual/range {p0 .. p0}, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090014

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v38

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->mListItem:Ljava/util/ArrayList;

    move-object/from16 v0, v38

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    add-double v2, v51, v45

    add-double v2, v2, v49

    add-double v18, v2, v35

    .line 146
    .local v18, videoCost:D
    new-instance v39, Ljava/util/HashMap;

    invoke-direct/range {v39 .. v39}, Ljava/util/HashMap;-><init>()V

    .line 147
    .local v39, movieMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "ItemImage"

    const v3, 0x7f020003

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v2, "ItemText"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->mConversion:Lcom/huawei/android/hwpowermanager/util/Conversion;

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->mRealCapacity:D

    move-object/from16 v0, p0

    iget v0, v0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->mRawlevel:I

    move/from16 v17, v0

    invoke-virtual/range {v14 .. v19}, Lcom/huawei/android/hwpowermanager/util/Conversion;->doubleToTime(DID)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v2, "ItemTitle"

    invoke-virtual/range {p0 .. p0}, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090015

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->mListItem:Ljava/util/ArrayList;

    move-object/from16 v0, v39

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    add-double v2, v45, v49

    add-double v24, v2, v35

    .line 153
    .local v24, readBookCost:D
    new-instance v32, Ljava/util/HashMap;

    invoke-direct/range {v32 .. v32}, Ljava/util/HashMap;-><init>()V

    .line 154
    .local v32, bookMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "ItemImage"

    const v3, 0x7f020015

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v2, "ItemText"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->mConversion:Lcom/huawei/android/hwpowermanager/util/Conversion;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->mRealCapacity:D

    move-wide/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->mRawlevel:I

    move/from16 v23, v0

    invoke-virtual/range {v20 .. v25}, Lcom/huawei/android/hwpowermanager/util/Conversion;->doubleToTime(DID)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v2, "ItemTitle"

    invoke-virtual/range {p0 .. p0}, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090016

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->mListItem:Ljava/util/ArrayList;

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    add-double v2, v43, v41

    add-double v30, v2, v35

    .line 160
    .local v30, musicCost:D
    new-instance v40, Ljava/util/HashMap;

    invoke-direct/range {v40 .. v40}, Ljava/util/HashMap;-><init>()V

    .line 161
    .local v40, musicMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "ItemImage"

    const v3, 0x7f020014

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v40

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v2, "ItemText"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->mConversion:Lcom/huawei/android/hwpowermanager/util/Conversion;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->mRealCapacity:D

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->mRawlevel:I

    move/from16 v29, v0

    invoke-virtual/range {v26 .. v31}, Lcom/huawei/android/hwpowermanager/util/Conversion;->doubleToTime(DID)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v40

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v2, "ItemTitle"

    invoke-virtual/range {p0 .. p0}, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090017

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v40

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->mListItem:Ljava/util/ArrayList;

    move-object/from16 v0, v40

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    const-string v2, "HwPowerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callCost:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", internetCost:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", videoCost:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", readBootCost:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v24

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", musicCost:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v30

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-void

    .line 105
    .end local v6           #callCost:D
    .end local v12           #internetCost:D
    .end local v18           #videoCost:D
    .end local v24           #readBookCost:D
    .end local v30           #musicCost:D
    .end local v32           #bookMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v33           #callingMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v35           #generalBase:D
    .end local v38           #internetMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v39           #movieMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v40           #musicMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v41           #power_audio:D
    .end local v43           #power_cpu_step0:D
    .end local v45           #power_cpu_step1:D
    .end local v47           #power_radio_active:D
    .end local v49           #power_screen:D
    .end local v51           #power_video:D
    .end local v53           #power_wifi_active:D
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->mSaveMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 106
    const-string v2, "system.base.smart"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->mSaveModeSystemBase:D

    goto/16 :goto_0

    .line 108
    :cond_1
    const-string v2, "system.base.super"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->mSaveModeSystemBase:D

    goto/16 :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    new-instance v1, Lcom/huawei/android/hwpowermanager/util/Conversion;

    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/huawei/android/hwpowermanager/util/Conversion;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->mConversion:Lcom/huawei/android/hwpowermanager/util/Conversion;

    .line 48
    const v1, 0x7f030009

    invoke-virtual {p0, v1}, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->setContentView(I)V

    .line 49
    invoke-direct {p0, p0}, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->batteryLevel(Landroid/content/Context;)V

    .line 51
    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 52
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 54
    const v1, 0x7f090002

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 56
    new-instance v1, Lcom/android/internal/os/PowerProfile;

    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 57
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v2, "battery.capacity"

    invoke-virtual {v1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->mBatteryCapacity:D

    .line 59
    iget-wide v1, p0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->mBatteryCapacity:D

    double-to-int v1, v1

    invoke-static {v1}, Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;->getRealCapacity(I)I

    move-result v1

    int-to-double v1, v1

    iput-wide v1, p0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->mRealCapacity:D

    .line 60
    const-string v1, "PowerSavingModeActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BatteryCapacity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->mBatteryCapacity:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", real capacity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->mRealCapacity:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const v1, 0x7f0b0039

    invoke-virtual {p0, v1}, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->mList:Landroid/widget/ListView;

    .line 67
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->mBatInfoReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->mBatInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 93
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 94
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 177
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 185
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 179
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 180
    invoke-virtual {p0, v0}, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
