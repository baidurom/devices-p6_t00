.class public Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;
.super Landroid/app/Activity;
.source "PowerConsumeBackgroundActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity$ApplicationBgComparator;,
        Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity$CheckBoxChangeListener;
    }
.end annotation


# instance fields
.field private checkedItemName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mBackgroundAppConsumeAdapter:Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter;

.field private mContext:Landroid/content/Context;

.field private mPkgNameFromNotify:Ljava/lang/String;

.field private mValidMenu:Landroid/view/MenuItem;

.field private softList:Landroid/widget/ListView;

.field private unCheckedItemName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->dataList:Ljava/util/List;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->mPkgNameFromNotify:Ljava/lang/String;

    .line 455
    return-void
.end method

.method static synthetic access$100(Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->dataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;ZLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->remarkCheckedItem(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->mValidMenu:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$600(Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->getMenuTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->getCheckedNumer()I

    move-result v0

    return v0
.end method

.method private addExtraItemFormNotification(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "mPm"
    .parameter "pkgName"
    .parameter "mHighlevel"

    .prologue
    .line 210
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1, p2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 212
    .local v2, recAppInfo:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v2, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->toShortName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, mPackageLabel:Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 214
    .local v3, serviceMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "icon_app"

    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string v4, "title"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string v4, "packageName"

    invoke-interface {v3, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-string v4, "consume_level"

    iget-object v5, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02000b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string v4, "indicator"

    invoke-interface {v3, v4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string v4, "switcher"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v4, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->dataList:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .end local v1           #mPackageLabel:Ljava/lang/String;
    .end local v2           #recAppInfo:Landroid/content/pm/ApplicationInfo;
    .end local v3           #serviceMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 225
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private bindAdapterToList()V
    .locals 11

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x1

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 78
    invoke-direct {p0}, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->getBackgroundConsumeData()Ljava/util/List;

    move-result-object v2

    .line 79
    .local v2, backgroundConsumeData:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const v0, 0x7f0b0007

    invoke-virtual {p0, v0}, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 80
    .local v8, mNoItemLinearLayout:Landroid/widget/LinearLayout;
    const v0, 0x7f0b0008

    invoke-virtual {p0, v0}, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 83
    .local v7, mDiscriptionLinearLayout:Landroid/widget/LinearLayout;
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->mValidMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->mValidMenu:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->getMenuTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 86
    invoke-direct {p0}, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->getCheckedNumer()I

    move-result v0

    if-nez v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->mValidMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 94
    :cond_0
    :goto_0
    new-instance v0, Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter;

    const/high16 v3, 0x7f03

    new-array v4, v6, [Ljava/lang/String;

    const-string v1, "icon_app"

    aput-object v1, v4, v9

    const-string v1, "title"

    aput-object v1, v4, v5

    const/4 v1, 0x2

    const-string v5, "consume_level"

    aput-object v5, v4, v1

    const/4 v1, 0x3

    const-string v5, "indicator"

    aput-object v5, v4, v1

    const/4 v1, 0x4

    const-string v5, "switcher"

    aput-object v5, v4, v1

    new-array v5, v6, [I

    fill-array-data v5, :array_0

    new-instance v6, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity$CheckBoxChangeListener;

    const/4 v1, 0x0

    invoke-direct {v6, p0, v1}, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity$CheckBoxChangeListener;-><init>(Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity$1;)V

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iput-object v0, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->mBackgroundAppConsumeAdapter:Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter;

    .line 98
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->softList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->mBackgroundAppConsumeAdapter:Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 100
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 101
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 102
    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->softList:Landroid/widget/ListView;

    invoke-virtual {v0, v10}, Landroid/widget/ListView;->setVisibility(I)V

    .line 114
    :goto_1
    return-void

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->mValidMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 107
    :cond_2
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 108
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->softList:Landroid/widget/ListView;

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1

    .line 94
    :array_0
    .array-data 0x4
        0x0t 0x0t 0xbt 0x7ft
        0x1t 0x0t 0xbt 0x7ft
        0x2t 0x0t 0xbt 0x7ft
        0x3t 0x0t 0xbt 0x7ft
        0x4t 0x0t 0xbt 0x7ft
    .end array-data
.end method

.method private forceStopPackageAndSyncSaving()V
    .locals 9

    .prologue
    .line 336
    iget-object v5, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->checkedItemName:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 338
    .local v2, mCheckedNameSize:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .local v3, mPackageName:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 342
    :try_start_0
    iget-object v5, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->checkedItemName:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 349
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 350
    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->forceStopPackageAndSyncSaving(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 353
    :cond_1
    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 354
    .local v4, recIntent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->mPkgNameFromNotify:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 355
    const-string v5, "pkgName"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 364
    :cond_2
    iget-object v5, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->mBackgroundAppConsumeAdapter:Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter;

    if-eqz v5, :cond_3

    .line 365
    iget-object v5, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->mBackgroundAppConsumeAdapter:Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter;

    invoke-virtual {v5}, Lcom/huawei/android/hwpowermanager/adapter/BackgroundAppPowerConsumeAdapter;->notifyDataSetChanged()V

    .line 367
    :cond_3
    iget-object v5, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->checkedItemName:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 370
    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->getCheckedNumer()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090045

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 372
    return-void
.end method

.method private getBackgroundConsumeData()Ljava/util/List;
    .locals 21
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
    .line 137
    new-instance v17, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v17 .. v17}, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;->computerPowerBgConsumption()Ljava/util/ArrayList;

    move-result-object v5

    .line 138
    .local v5, backgroundAppConsumption:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 139
    .local v13, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f09003b

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 140
    .local v9, mHighlevel:Ljava/lang/String;
    const-string v10, ""

    .line 141
    .local v10, mLowlevel:Ljava/lang/String;
    const/4 v12, 0x0

    .line 142
    .local v12, mPackageName:Ljava/lang/String;
    const/4 v11, 0x0

    .line 143
    .local v11, mPackageLabel:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    .line 144
    .local v14, recIntent:Landroid/content/Intent;
    const/4 v8, 0x0

    .line 145
    .local v8, isAlreadyContain:Z
    const-string v17, "pkgName"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->mPkgNameFromNotify:Ljava/lang/String;

    .line 147
    new-instance v17, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity$ApplicationBgComparator;

    const/16 v18, 0x0

    invoke-direct/range {v17 .. v18}, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity$ApplicationBgComparator;-><init>(Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity$1;)V

    move-object/from16 v0, v17

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->dataList:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->clear()V

    .line 150
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;

    .line 152
    .local v16, uap:Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;->uid:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getAppInfoByUid(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 154
    .local v4, appInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v4, :cond_0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;->power:D

    move-wide/from16 v17, v0

    invoke-static {}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getApp_show_level()I

    move-result v19

    move/from16 v0, v19

    mul-int/lit16 v0, v0, 0xe10

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    cmpg-double v17, v17, v19

    if-ltz v17, :cond_0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;->uid:I

    move/from16 v17, v0

    const/16 v18, 0x3e8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 159
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 160
    .local v3, appInfo:Landroid/content/pm/ApplicationInfo;
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 161
    .local v15, serviceMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v12, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->toShortName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 163
    const-string v17, "icon_app"

    invoke-virtual {v13, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v17, "title"

    move-object/from16 v0, v17

    invoke-interface {v15, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v17, "packageName"

    move-object/from16 v0, v17

    invoke-interface {v15, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string v17, "PowerConsumeBackgroundActivity"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mPackageName is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;->power:D

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v0, v1, v2}, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->isNeedRed(D)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 171
    const-string v17, "consume_level"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f02000b

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v17, "indicator"

    move-object/from16 v0, v17

    invoke-interface {v15, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :goto_2
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;->power:D

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v0, v12, v1, v2}, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->isNeedChecked(Ljava/lang/String;D)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 179
    const-string v17, "switcher"

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v12}, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->remarkCheckedItem(ZLjava/lang/String;)V

    .line 182
    const-string v17, "PowerConsumeBackgroundActivity"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "checkedItemName.add("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->dataList:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 174
    :cond_1
    const-string v17, "consume_level"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f02000c

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v17, "indicator"

    move-object/from16 v0, v17

    invoke-interface {v15, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 186
    :cond_2
    const-string v17, "switcher"

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v12}, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->remarkCheckedItem(ZLjava/lang/String;)V

    goto :goto_3

    .line 192
    .end local v3           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v15           #serviceMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->mPkgNameFromNotify:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 193
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 199
    .end local v4           #appInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v16           #uap:Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;
    :cond_4
    if-nez v8, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->mPkgNameFromNotify:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 200
    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->mPkgNameFromNotify:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->remarkCheckedItem(ZLjava/lang/String;)V

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->mPkgNameFromNotify:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v13, v1, v9}, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->addExtraItemFormNotification(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->dataList:Ljava/util/List;

    move-object/from16 v17, v0

    return-object v17
.end method

.method private getCheckedNumer()I
    .locals 6

    .prologue
    .line 441
    const/4 v4, 0x0

    .line 442
    .local v4, total:I
    iget-object v5, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->dataList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 443
    .local v2, data:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 444
    .local v0, checked:Z
    const-string v5, "switcher"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 445
    .local v1, checkedObject:Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 446
    check-cast v1, Ljava/lang/Boolean;

    .end local v1           #checkedObject:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 448
    :cond_1
    if-eqz v0, :cond_0

    .line 449
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 452
    .end local v0           #checked:Z
    .end local v2           #data:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    return v4
.end method

.method private getMenuTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 433
    .local v0, mMenutitle:Ljava/lang/StringBuilder;
    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    invoke-direct {p0}, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->getCheckedNumer()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isNeedChecked(Ljava/lang/String;D)Z
    .locals 6
    .parameter "mPackageName"
    .parameter "mPackagePower"

    .prologue
    const/4 v5, 0x1

    .line 230
    const/4 v1, 0x0

    .line 231
    .local v1, mIsCheck:Z
    const/4 v0, 0x0

    .line 232
    .local v0, isIgnore:I
    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p1, v5}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getRogue(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    .line 233
    .local v2, tempObject:Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 234
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 237
    :cond_0
    invoke-static {}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getHigh_level_standard()I

    move-result v3

    mul-int/lit16 v3, v3, 0xe10

    int-to-double v3, v3

    cmpl-double v3, p2, v3

    if-lez v3, :cond_1

    .line 238
    const/4 v1, 0x1

    .line 240
    :cond_1
    if-ne v0, v5, :cond_2

    .line 241
    const/4 v1, 0x0

    .line 247
    :cond_2
    const-string v3, "PowerConsumeBackgroundActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkedItemName.contains(mPackageLabel) ? :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->checkedItemName:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->checkedItemName:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 250
    const/4 v1, 0x1

    .line 253
    :cond_3
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->unCheckedItemName:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 254
    const/4 v1, 0x0

    .line 258
    :cond_4
    const-string v3, "PowerConsumeBackgroundActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " checkedItemName is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->checkedItemName:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return v1
.end method

.method private isNeedRed(D)Z
    .locals 3
    .parameter "mPackagePower"

    .prologue
    .line 264
    const/4 v0, 0x0

    .line 265
    .local v0, mIsNeedRed:Z
    invoke-static {}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getHigh_level_standard()I

    move-result v1

    mul-int/lit16 v1, v1, 0xe10

    int-to-double v1, v1

    cmpl-double v1, p1, v1

    if-lez v1, :cond_0

    .line 266
    const/4 v0, 0x1

    .line 268
    :cond_0
    return v0
.end method

.method private remarkCheckedItem(ZLjava/lang/String;)V
    .locals 1
    .parameter "isChecked"
    .parameter "packageName"

    .prologue
    .line 375
    if-eqz p1, :cond_2

    .line 376
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->checkedItemName:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->checkedItemName:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->unCheckedItemName:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 386
    :cond_1
    :goto_0
    return-void

    .line 381
    :cond_2
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->checkedItemName:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 382
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->unCheckedItemName:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 383
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->unCheckedItemName:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private setClickListener()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->softList:Landroid/widget/ListView;

    new-instance v1, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity$1;

    invoke-direct {v1, p0}, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity$1;-><init>(Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 134
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->setContentView(I)V

    .line 60
    iput-object p0, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->mContext:Landroid/content/Context;

    .line 61
    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 62
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 63
    const v1, 0x7f09003e

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 65
    const v1, 0x7f0b0006

    invoke-virtual {p0, v1}, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->softList:Landroid/widget/ListView;

    .line 66
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->initalPowerWarningParameter(Landroid/content/Context;)V

    .line 67
    invoke-direct {p0}, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->setClickListener()V

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->checkedItemName:Ljava/util/ArrayList;

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->unCheckedItemName:Ljava/util/ArrayList;

    .line 73
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 305
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 306
    invoke-direct {p0}, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->getMenuTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 308
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->mValidMenu:Landroid/view/MenuItem;

    .line 310
    invoke-direct {p0}, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->getCheckedNumer()I

    move-result v0

    if-nez v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->mValidMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 315
    :goto_0
    return v1

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->mValidMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->dataList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->checkedItemName:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->checkedItemName:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->unCheckedItemName:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 281
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->unCheckedItemName:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 284
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 285
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 319
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 330
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 321
    :sswitch_0
    invoke-direct {p0}, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->forceStopPackageAndSyncSaving()V

    .line 322
    invoke-direct {p0}, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->bindAdapterToList()V

    goto :goto_0

    .line 325
    :sswitch_1
    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->finish()V

    goto :goto_0

    .line 319
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 294
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 295
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->cancelNotification(Landroid/content/Context;)V

    .line 296
    invoke-direct {p0}, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->bindAdapterToList()V

    .line 298
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->setPowerNotificationAlarmTime(Landroid/content/Context;J)V

    .line 300
    return-void
.end method
