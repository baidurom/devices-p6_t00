.class public Lcom/huawei/android/hwpowermanager/PowerConsumptionDetailActivity;
.super Landroid/app/Activity;
.source "PowerConsumptionDetailActivity.java"


# instance fields
.field private context:Landroid/content/Context;

.field private mDebug:Z

.field private mServiceInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/android/hwpowermanager/model/ApplicationModel;",
            ">;"
        }
    .end annotation
.end field

.field private mSoftwareDetailAdapter:Lcom/huawei/android/hwpowermanager/adapter/SoftwareConsumeDetailAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/android/hwpowermanager/PowerConsumptionDetailActivity;->mDebug:Z

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/hwpowermanager/PowerConsumptionDetailActivity;->mServiceInfoList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/huawei/android/hwpowermanager/PowerConsumptionDetailActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/PowerConsumptionDetailActivity;->mServiceInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/huawei/android/hwpowermanager/PowerConsumptionDetailActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/PowerConsumptionDetailActivity;->context:Landroid/content/Context;

    return-object v0
.end method

.method private getSoftwareConsumeData()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 96
    new-instance v2, Lcom/huawei/android/hwpowermanager/model/ApplicationPower;

    invoke-direct {v2, p0}, Lcom/huawei/android/hwpowermanager/model/ApplicationPower;-><init>(Landroid/content/Context;)V

    .line 97
    .local v2, mCurrentService:Lcom/huawei/android/hwpowermanager/model/ApplicationPower;
    invoke-virtual {v2}, Lcom/huawei/android/hwpowermanager/model/ApplicationPower;->getApplicationInfo()Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/huawei/android/hwpowermanager/PowerConsumptionDetailActivity;->mServiceInfoList:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v0, dataList:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lcom/huawei/android/hwpowermanager/PowerConsumptionDetailActivity;->mServiceInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 101
    iget-object v5, p0, Lcom/huawei/android/hwpowermanager/PowerConsumptionDetailActivity;->mServiceInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;

    .line 103
    .local v3, runServiceModel:Lcom/huawei/android/hwpowermanager/model/ApplicationModel;
    invoke-virtual {v3}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->getPercentageInSoftware()D

    move-result-wide v5

    const-wide v7, 0x3f847ae147ae147bL

    cmpg-double v5, v5, v7

    if-gez v5, :cond_1

    .line 100
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 106
    .local v4, serviceMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "icon"

    invoke-virtual {v3}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-virtual {v3}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->getPid()I

    .line 108
    const-string v5, "progress"

    invoke-virtual {v3}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->getPercentageInSoftware()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v5, "title"

    invoke-virtual {v3}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->getAppLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    iget-boolean v5, p0, Lcom/huawei/android/hwpowermanager/PowerConsumptionDetailActivity;->mDebug:Z

    if-eqz v5, :cond_0

    .line 113
    const-string v5, "PowerUsageSummary"

    const-string v6, "==============================================="

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string v5, "PowerUsageSummary"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "thread id :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->getPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-string v5, "PowerUsageSummary"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "thread uid :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->getUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const-string v5, "PowerUsageSummary"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "thread name"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->getProcessName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const-string v5, "PowerUsageSummary"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "service info"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->getServiceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const-string v5, "PowerUsageSummary"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pkgName"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->getPkgName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string v5, "PowerUsageSummary"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "battery"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->getPower()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const-string v5, "PowerUsageSummary"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "battery percent"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->getPercentageInSoftware()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 124
    .end local v3           #runServiceModel:Lcom/huawei/android/hwpowermanager/model/ApplicationModel;
    .end local v4           #serviceMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    return-object v0
.end method

.method private setTitleForChn(Landroid/app/ActionBar;)V
    .locals 2
    .parameter "actionBar"

    .prologue
    .line 49
    const v1, 0x7f09004f

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setTitle(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x1

    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/huawei/android/hwpowermanager/PowerConsumptionDetailActivity;->setContentView(I)V

    .line 59
    iput-object p0, p0, Lcom/huawei/android/hwpowermanager/PowerConsumptionDetailActivity;->context:Landroid/content/Context;

    .line 60
    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/PowerConsumptionDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    .line 61
    .local v6, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v6, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 63
    const v0, 0x7f090003

    invoke-virtual {v6, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 66
    invoke-direct {p0, v6}, Lcom/huawei/android/hwpowermanager/PowerConsumptionDetailActivity;->setTitleForChn(Landroid/app/ActionBar;)V

    .line 69
    const v0, 0x7f0b0012

    invoke-virtual {p0, v0}, Lcom/huawei/android/hwpowermanager/PowerConsumptionDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    .line 70
    .local v7, softList:Landroid/widget/ListView;
    new-instance v0, Lcom/huawei/android/hwpowermanager/PowerConsumptionDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/huawei/android/hwpowermanager/PowerConsumptionDetailActivity$1;-><init>(Lcom/huawei/android/hwpowermanager/PowerConsumptionDetailActivity;)V

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 88
    invoke-direct {p0}, Lcom/huawei/android/hwpowermanager/PowerConsumptionDetailActivity;->getSoftwareConsumeData()Ljava/util/List;

    move-result-object v2

    .line 89
    .local v2, softwareConsumeData:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v0, Lcom/huawei/android/hwpowermanager/adapter/SoftwareConsumeDetailAdapter;

    const v3, 0x7f03000f

    new-array v4, v9, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "icon"

    aput-object v5, v4, v1

    const-string v1, "title"

    aput-object v1, v4, v8

    const/4 v1, 0x2

    const-string v5, "content"

    aput-object v5, v4, v1

    const/4 v1, 0x3

    const-string v5, "progress"

    aput-object v5, v4, v1

    new-array v5, v9, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/huawei/android/hwpowermanager/adapter/SoftwareConsumeDetailAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/huawei/android/hwpowermanager/PowerConsumptionDetailActivity;->mSoftwareDetailAdapter:Lcom/huawei/android/hwpowermanager/adapter/SoftwareConsumeDetailAdapter;

    .line 90
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/PowerConsumptionDetailActivity;->mSoftwareDetailAdapter:Lcom/huawei/android/hwpowermanager/adapter/SoftwareConsumeDetailAdapter;

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    return-void

    .line 89
    nop

    :array_0
    .array-data 0x4
        0x43t 0x0t 0xbt 0x7ft
        0x44t 0x0t 0xbt 0x7ft
        0x46t 0x0t 0xbt 0x7ft
        0x45t 0x0t 0xbt 0x7ft
    .end array-data
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 128
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 136
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 130
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    invoke-virtual {p0, v0}, Lcom/huawei/android/hwpowermanager/PowerConsumptionDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
