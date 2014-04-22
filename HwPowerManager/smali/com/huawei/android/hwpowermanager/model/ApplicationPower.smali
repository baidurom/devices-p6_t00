.class public Lcom/huawei/android/hwpowermanager/model/ApplicationPower;
.super Ljava/lang/Object;
.source "ApplicationPower.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/hwpowermanager/model/ApplicationPower$ApplicationModelComparator;
    }
.end annotation


# static fields
.field private static final sComparator:Lcom/huawei/android/hwpowermanager/model/ApplicationPower$ApplicationModelComparator;


# instance fields
.field private DEBUG:Z

.field private mContext:Landroid/content/Context;

.field private mMediaServerUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/huawei/android/hwpowermanager/model/ApplicationPower$ApplicationModelComparator;

    invoke-direct {v0}, Lcom/huawei/android/hwpowermanager/model/ApplicationPower$ApplicationModelComparator;-><init>()V

    sput-object v0, Lcom/huawei/android/hwpowermanager/model/ApplicationPower;->sComparator:Lcom/huawei/android/hwpowermanager/model/ApplicationPower$ApplicationModelComparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/16 v0, 0x3f5

    iput v0, p0, Lcom/huawei/android/hwpowermanager/model/ApplicationPower;->mMediaServerUid:I

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/android/hwpowermanager/model/ApplicationPower;->DEBUG:Z

    .line 32
    iput-object p1, p0, Lcom/huawei/android/hwpowermanager/model/ApplicationPower;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method

.method private toDecreased100Double(I)D
    .locals 6
    .parameter "original"

    .prologue
    .line 179
    int-to-double v2, p1

    const-wide/high16 v4, 0x4059

    div-double v0, v2, v4

    .line 180
    .local v0, d:D
    return-wide v0
.end method

.method private toIncreased100Int(D)I
    .locals 3
    .parameter "original"

    .prologue
    .line 173
    const-wide/high16 v1, 0x4059

    mul-double/2addr p1, v1

    .line 174
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v0, v1

    .line 175
    .local v0, temp:I
    return v0
.end method


# virtual methods
.method public getApplicationInfo()Ljava/util/ArrayList;
    .locals 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/android/hwpowermanager/model/ApplicationModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    const-wide/16 v29, 0x0

    .line 38
    .local v29, totalPower:D
    const-wide/16 v18, 0x0

    .line 39
    .local v18, mediaPower:D
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v33, uidArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v6, appInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/android/hwpowermanager/model/ApplicationModel;>;"
    new-instance v35, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/hwpowermanager/model/ApplicationPower;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-direct/range {v35 .. v36}, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v35 .. v35}, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->computerPowerConsumption()Ljava/util/ArrayList;

    move-result-object v4

    .line 42
    .local v4, appConsumption:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;

    .line 43
    .local v31, uap:Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;
    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;->power:D

    move-wide/from16 v35, v0

    add-double v29, v29, v35

    .line 44
    move-object/from16 v0, p0

    iget v0, v0, Lcom/huawei/android/hwpowermanager/model/ApplicationPower;->mMediaServerUid:I

    move/from16 v35, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;->uid:I

    move/from16 v36, v0

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_0

    .line 45
    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;->power:D

    move-wide/from16 v18, v0

    goto :goto_0

    .line 50
    .end local v31           #uap:Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/hwpowermanager/model/ApplicationPower;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    .line 51
    .local v22, pm:Landroid/content/pm/PackageManager;
    const/16 v35, 0x2000

    move-object/from16 v0, v22

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v5

    .line 52
    .local v5, appInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .end local v13           #i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ApplicationInfo;

    .line 54
    .local v9, applicationInfo:Landroid/content/pm/ApplicationInfo;
    iget v0, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v32, v0

    .line 55
    .local v32, uid:I
    const/4 v12, 0x0

    .line 56
    .local v12, flag:I
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v34

    .line 57
    .local v34, us:I
    const/4 v3, 0x0

    .local v3, a:I
    :goto_2
    move/from16 v0, v34

    if-ge v3, v0, :cond_3

    .line 58
    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/Integer;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v35

    move/from16 v0, v32

    move/from16 v1, v35

    if-ne v0, v1, :cond_6

    .line 59
    const/4 v12, 0x1

    .line 63
    :cond_3
    if-nez v12, :cond_2

    .line 64
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    const-wide/16 v23, 0x0

    .line 66
    .local v23, power:D
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;

    .line 67
    .restart local v31       #uap:Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;
    move-object/from16 v0, v31

    iget v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;->uid:I

    move/from16 v35, v0

    move/from16 v0, v32

    move/from16 v1, v35

    if-ne v0, v1, :cond_4

    .line 68
    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;->power:D

    move-wide/from16 v23, v0

    .line 73
    .end local v31           #uap:Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;
    :cond_5
    const-wide/16 v35, 0x0

    cmpl-double v35, v23, v35

    if-eqz v35, :cond_2

    .line 74
    new-instance v8, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;

    invoke-direct {v8}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;-><init>()V

    .line 75
    .local v8, appModel:Lcom/huawei/android/hwpowermanager/model/ApplicationModel;
    move/from16 v0, v32

    invoke-virtual {v8, v0}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->setUid(I)V

    .line 76
    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v8, v0}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    .line 77
    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v8, v0}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->setAppLabel(Ljava/lang/String;)V

    .line 78
    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v8, v0}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->setPkgName(Ljava/lang/String;)V

    .line 79
    move-wide/from16 v0, v23

    invoke-virtual {v8, v0, v1}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->setPower(D)V

    .line 80
    div-double v35, v23, v29

    move-wide/from16 v0, v35

    invoke-virtual {v8, v0, v1}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->setAvaragePower(D)V

    .line 81
    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v8, v0}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->setProcessName(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 57
    .end local v8           #appModel:Lcom/huawei/android/hwpowermanager/model/ApplicationModel;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v23           #power:D
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 88
    .end local v3           #a:I
    .end local v9           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v12           #flag:I
    .end local v32           #uid:I
    .end local v34           #us:I
    :cond_7
    new-instance v25, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;

    invoke-direct/range {v25 .. v25}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;-><init>()V

    .line 89
    .local v25, systemApp:Lcom/huawei/android/hwpowermanager/model/ApplicationModel;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v35

    add-int/lit8 v35, v35, -0x1

    move/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;

    move-object/from16 v0, v35

    iget-wide v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;->power:D

    move-wide/from16 v26, v0

    .line 90
    .local v26, systemPower:D
    invoke-virtual/range {v25 .. v27}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->setPower(D)V

    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/hwpowermanager/model/ApplicationPower;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const v36, 0x7f020010

    invoke-virtual/range {v35 .. v36}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 92
    .local v15, icon:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/hwpowermanager/model/ApplicationPower;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const v36, 0x7f090025

    invoke-virtual/range {v35 .. v36}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->setAppLabel(Ljava/lang/String;)V

    .line 96
    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v17, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;

    invoke-direct/range {v17 .. v17}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;-><init>()V

    .line 99
    .local v17, mediaApp:Lcom/huawei/android/hwpowermanager/model/ApplicationModel;
    invoke-virtual/range {v17 .. v19}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->setPower(D)V

    .line 100
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/hwpowermanager/model/ApplicationPower;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const v36, 0x7f090023

    invoke-virtual/range {v35 .. v36}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->setAppLabel(Ljava/lang/String;)V

    .line 102
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;

    .line 106
    .local v20, model:Lcom/huawei/android/hwpowermanager/model/ApplicationModel;
    const-wide/high16 v35, 0x4059

    invoke-virtual/range {v20 .. v20}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->getPower()D

    move-result-wide v37

    mul-double v35, v35, v37

    div-double v35, v35, v29

    move-object/from16 v0, v20

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->setPercentageInSoftware(D)V

    goto :goto_3

    .line 109
    .end local v20           #model:Lcom/huawei/android/hwpowermanager/model/ApplicationModel;
    :cond_8
    sget-object v35, Lcom/huawei/android/hwpowermanager/model/ApplicationPower;->sComparator:Lcom/huawei/android/hwpowermanager/model/ApplicationPower$ApplicationModelComparator;

    move-object/from16 v0, v35

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 121
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v7, appInfoListTemp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/android/hwpowermanager/model/ApplicationModel;>;"
    const-wide/high16 v10, 0x4059

    .line 124
    .local v10, avaragePower:D
    const/16 v28, 0x2710

    .line 126
    .local v28, total:I
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;

    .line 127
    .restart local v20       #model:Lcom/huawei/android/hwpowermanager/model/ApplicationModel;
    invoke-virtual/range {v20 .. v20}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->getPercentageInSoftware()D

    move-result-wide v35

    const-wide v37, 0x3f847ae147ae147bL

    cmpl-double v35, v35, v37

    if-lez v35, :cond_b

    .line 128
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/huawei/android/hwpowermanager/model/ApplicationPower;->DEBUG:Z

    move/from16 v35, v0

    if-eqz v35, :cond_9

    .line 129
    const-string v35, "CurrentService"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "AppLabel:"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v20 .. v20}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->getAppLabel()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const-string v35, "CurrentService"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "AvaragePower:"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v20 .. v20}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->getAvaragePower()D

    move-result-wide v37

    invoke-virtual/range {v36 .. v38}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const-string v35, "CurrentService"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "ActiveSince:"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v20 .. v20}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->getActiveSince()J

    move-result-wide v37

    invoke-virtual/range {v36 .. v38}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-string v35, "CurrentService"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Power:"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v20 .. v20}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->getPower()D

    move-result-wide v37

    invoke-virtual/range {v36 .. v38}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_9
    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    invoke-virtual/range {v20 .. v20}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->getPercentageInSoftware()D

    move-result-wide v35

    move-object/from16 v0, p0

    move-wide/from16 v1, v35

    invoke-direct {v0, v1, v2}, Lcom/huawei/android/hwpowermanager/model/ApplicationPower;->toIncreased100Int(D)I

    move-result v16

    .line 143
    .local v16, increased100IntData:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/huawei/android/hwpowermanager/model/ApplicationPower;->DEBUG:Z

    move/from16 v35, v0

    if-eqz v35, :cond_a

    .line 144
    const-string v35, "CurrentService"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "increased100IntData = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_a
    sub-int v28, v28, v16

    .line 148
    goto/16 :goto_4

    .line 156
    .end local v16           #increased100IntData:I
    .end local v20           #model:Lcom/huawei/android/hwpowermanager/model/ApplicationModel;
    :cond_b
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/huawei/android/hwpowermanager/model/ApplicationPower;->toDecreased100Double(I)D

    move-result-wide v10

    .line 157
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/huawei/android/hwpowermanager/model/ApplicationPower;->DEBUG:Z

    move/from16 v35, v0

    if-eqz v35, :cond_c

    .line 158
    const-string v35, "CurrentService"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "avaragePower = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_c
    const-wide/16 v35, 0x0

    cmpl-double v35, v10, v35

    if-lez v35, :cond_d

    .line 162
    new-instance v21, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;

    invoke-direct/range {v21 .. v21}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;-><init>()V

    .line 163
    .local v21, otherApp:Lcom/huawei/android/hwpowermanager/model/ApplicationModel;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/hwpowermanager/model/ApplicationPower;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const v36, 0x7f090026

    invoke-virtual/range {v35 .. v36}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v21

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->setAppLabel(Ljava/lang/String;)V

    .line 164
    move-object/from16 v0, v21

    invoke-virtual {v0, v10, v11}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->setPercentageInSoftware(D)V

    .line 165
    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v35

    move-object/from16 v0, v21

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    .line 166
    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    .end local v21           #otherApp:Lcom/huawei/android/hwpowermanager/model/ApplicationModel;
    :cond_d
    return-object v7
.end method
