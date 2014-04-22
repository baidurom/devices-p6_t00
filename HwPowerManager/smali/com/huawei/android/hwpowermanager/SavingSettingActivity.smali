.class public Lcom/huawei/android/hwpowermanager/SavingSettingActivity;
.super Landroid/app/ListActivity;
.source "SavingSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ComparatotValues;,
        Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;,
        Lcom/huawei/android/hwpowermanager/SavingSettingActivity$SwitchChangeListener;,
        Lcom/huawei/android/hwpowermanager/SavingSettingActivity$SystemAppAdapter;,
        Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Lcom/huawei/android/hwpowermanager/SavingSettingsData;

.field private mInvalidMenu:Landroid/view/MenuItem;

.field protected mIschecked:Ljava/lang/Boolean;

.field private mLoader:Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader;

.field private mSelectAllSwitch:Landroid/widget/Switch;

.field private mSystemAppAdapter:Lcom/huawei/android/hwpowermanager/SavingSettingActivity$SystemAppAdapter;

.field private mValidMenu:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->mSystemAppAdapter:Lcom/huawei/android/hwpowermanager/SavingSettingActivity$SystemAppAdapter;

    .line 58
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->mIschecked:Ljava/lang/Boolean;

    .line 317
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/android/hwpowermanager/SavingSettingActivity;)Lcom/huawei/android/hwpowermanager/SavingSettingsData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->mData:Lcom/huawei/android/hwpowermanager/SavingSettingsData;

    return-object v0
.end method

.method static synthetic access$100(Lcom/huawei/android/hwpowermanager/SavingSettingActivity;)Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->mLoader:Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader;

    return-object v0
.end method

.method static synthetic access$200(Lcom/huawei/android/hwpowermanager/SavingSettingActivity;Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ViewHolder;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->checkAndMarkRogueApp(Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ViewHolder;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/huawei/android/hwpowermanager/SavingSettingActivity;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->mSelectAllSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$400(Lcom/huawei/android/hwpowermanager/SavingSettingActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/huawei/android/hwpowermanager/SavingSettingActivity;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->mValidMenu:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$600(Lcom/huawei/android/hwpowermanager/SavingSettingActivity;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->mInvalidMenu:Landroid/view/MenuItem;

    return-object v0
.end method

.method private checkAndMarkRogueApp(Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ViewHolder;)Z
    .locals 7
    .parameter "vh"

    .prologue
    const/4 v4, 0x0

    .line 436
    iget-object v2, p1, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ViewHolder;->packgeName:Ljava/lang/String;

    .line 437
    .local v2, pkgName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 439
    .local v1, isRogue:Z
    :try_start_0
    iget-object v5, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v2, v6}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getRogue(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 441
    .local v3, type:Ljava/lang/Integer;
    if-nez v3, :cond_0

    .line 458
    .end local v3           #type:Ljava/lang/Integer;
    :goto_0
    return v4

    .line 444
    .restart local v3       #type:Ljava/lang/Integer;
    :cond_0
    const-string v4, "SavingSettingActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " PACKAGE_FIELD_TYPE="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    iget-object v4, p1, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ViewHolder;->packgeName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 447
    iget-object v4, p1, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ViewHolder;->message:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 448
    const/4 v1, 0x1

    .end local v3           #type:Ljava/lang/Integer;
    :goto_1
    move v4, v1

    .line 458
    goto :goto_0

    .line 450
    .restart local v3       #type:Ljava/lang/Integer;
    :cond_1
    iget-object v4, p1, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ViewHolder;->message:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 451
    const/4 v1, 0x0

    goto :goto_1

    .line 453
    .end local v3           #type:Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 454
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_1

    .line 455
    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v0

    .line 456
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private invalidAllItem()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 428
    invoke-virtual {p0, v2}, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->changeSwitchStatus(Z)V

    .line 429
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->mValidMenu:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 430
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->mInvalidMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 431
    return-void
.end method

.method private validAllItem()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 422
    invoke-virtual {p0, v2}, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->changeSwitchStatus(Z)V

    .line 423
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->mValidMenu:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 424
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->mInvalidMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 425
    return-void
.end method


# virtual methods
.method public allChecked()Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 245
    const/4 v1, 0x0

    .line 247
    .local v1, haveItemUnChecked:Z
    :try_start_0
    iget-object v6, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->mData:Lcom/huawei/android/hwpowermanager/SavingSettingsData;

    invoke-virtual {v6}, Lcom/huawei/android/hwpowermanager/SavingSettingsData;->getAllApps()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;

    .line 248
    .local v3, item:Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;
    iget-boolean v6, v3, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;->isChecked:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v6, :cond_1

    move v1, v5

    .line 249
    :goto_0
    if-eqz v1, :cond_0

    .line 257
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #item:Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;
    :goto_1
    return v4

    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #item:Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;
    :cond_1
    move v1, v4

    .line 248
    goto :goto_0

    .line 253
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #item:Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;
    :catch_0
    move-exception v0

    .line 255
    .local v0, e:Ljava/lang/Exception;
    goto :goto_1

    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_2
    move v4, v5

    .line 257
    goto :goto_1
.end method

.method public allUnchecked()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 227
    const/4 v1, 0x0

    .line 229
    .local v1, haveItemChecked:Z
    :try_start_0
    iget-object v5, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->mData:Lcom/huawei/android/hwpowermanager/SavingSettingsData;

    invoke-virtual {v5}, Lcom/huawei/android/hwpowermanager/SavingSettingsData;->getAllApps()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;

    .line 230
    .local v3, item:Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;
    iget-boolean v1, v3, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;->isChecked:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    if-eqz v1, :cond_0

    .line 239
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #item:Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;
    :goto_0
    return v4

    .line 235
    :catch_0
    move-exception v0

    .line 237
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0

    .line 239
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public changeSwitchStatus(Z)V
    .locals 3
    .parameter "isValid"

    .prologue
    .line 344
    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->mData:Lcom/huawei/android/hwpowermanager/SavingSettingsData;

    invoke-virtual {v2}, Lcom/huawei/android/hwpowermanager/SavingSettingsData;->getAllApps()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 345
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, ifor:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 346
    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->mData:Lcom/huawei/android/hwpowermanager/SavingSettingsData;

    invoke-virtual {v2}, Lcom/huawei/android/hwpowermanager/SavingSettingsData;->getAllApps()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;

    iput-boolean p1, v2, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;->isChecked:Z

    .line 345
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 348
    :cond_0
    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->mSystemAppAdapter:Lcom/huawei/android/hwpowermanager/SavingSettingActivity$SystemAppAdapter;

    invoke-virtual {v2}, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$SystemAppAdapter;->notifyDataSetChanged()V

    .line 349
    return-void
.end method

.method public contentResolverOnDestory()V
    .locals 2

    .prologue
    .line 406
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$2;

    invoke-direct {v1, p0}, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$2;-><init>(Lcom/huawei/android/hwpowermanager/SavingSettingActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 415
    .local v0, contentResolverOnDestory:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 416
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->contentResolverOnDestory()V

    .line 395
    invoke-super {p0}, Landroid/app/ListActivity;->onBackPressed()V

    .line 396
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 339
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 263
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 265
    iput-object p0, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->mContext:Landroid/content/Context;

    .line 270
    new-instance v3, Lcom/huawei/android/hwpowermanager/SavingSettingsData;

    invoke-direct {v3, p0}, Lcom/huawei/android/hwpowermanager/SavingSettingsData;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->mData:Lcom/huawei/android/hwpowermanager/SavingSettingsData;

    .line 272
    new-instance v3, Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader;

    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6, p0}, Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader;-><init>(Landroid/content/Context;Landroid/app/ListActivity;)V

    iput-object v3, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->mLoader:Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader;

    .line 273
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->mLoader:Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader;

    invoke-virtual {v3}, Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader;->loadInBackground()V

    .line 278
    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 279
    const v3, 0x7f03000e

    invoke-virtual {p0, v3}, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->setContentView(I)V

    .line 280
    const v3, 0x7f0b0005

    invoke-virtual {p0, v3}, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 284
    .local v2, mSettingTitle:Landroid/widget/TextView;
    const v3, 0x7f0b0010

    invoke-virtual {p0, v3}, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Switch;

    iput-object v3, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->mSelectAllSwitch:Landroid/widget/Switch;

    .line 286
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 290
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->mData:Lcom/huawei/android/hwpowermanager/SavingSettingsData;

    invoke-virtual {v3, v5}, Lcom/huawei/android/hwpowermanager/SavingSettingsData;->setupProtectedTable(Z)V

    .line 291
    iget-object v6, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->mSelectAllSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->allUnchecked()Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 292
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->mSelectAllSwitch:Landroid/widget/Switch;

    new-instance v4, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$1;

    invoke-direct {v4, p0}, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$1;-><init>(Lcom/huawei/android/hwpowermanager/SavingSettingActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 306
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->mData:Lcom/huawei/android/hwpowermanager/SavingSettingsData;

    invoke-virtual {v3}, Lcom/huawei/android/hwpowermanager/SavingSettingsData;->getAllApps()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ComparatotValues;

    invoke-direct {v4}, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ComparatotValues;-><init>()V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 307
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->mData:Lcom/huawei/android/hwpowermanager/SavingSettingsData;

    invoke-virtual {v3}, Lcom/huawei/android/hwpowermanager/SavingSettingsData;->getAllApps()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;

    .line 308
    .local v1, item:Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->mLoader:Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader;

    invoke-virtual {v3, v1}, Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader;->putWaitingObject(Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;)V

    goto :goto_1

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;
    :cond_0
    move v3, v5

    .line 291
    goto :goto_0

    .line 310
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->mLoader:Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader;

    invoke-static {}, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;->getEmptyListItem()Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader;->putWaitingObject(Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;)V

    .line 312
    new-instance v3, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$SystemAppAdapter;

    invoke-direct {v3, p0, p0}, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$SystemAppAdapter;-><init>(Lcom/huawei/android/hwpowermanager/SavingSettingActivity;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->mSystemAppAdapter:Lcom/huawei/android/hwpowermanager/SavingSettingActivity$SystemAppAdapter;

    .line 313
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->mSystemAppAdapter:Lcom/huawei/android/hwpowermanager/SavingSettingActivity$SystemAppAdapter;

    invoke-virtual {p0, v3}, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 315
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 353
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 355
    const v0, 0x7f090037

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 357
    const v0, 0x7f090036

    invoke-interface {p1, v1, v3, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 361
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->mValidMenu:Landroid/view/MenuItem;

    .line 362
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->mInvalidMenu:Landroid/view/MenuItem;

    .line 363
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->mValidMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 364
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->mInvalidMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 366
    return v2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 334
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 335
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->mLoader:Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader;

    invoke-virtual {v0}, Lcom/huawei/android/hwpowermanager/ApplicationInfoLoader;->cancelLoading()V

    .line 336
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x0

    .line 371
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 387
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_1
    return v0

    .line 374
    :sswitch_0
    invoke-direct {p0}, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->invalidAllItem()V

    goto :goto_1

    .line 377
    :sswitch_1
    invoke-direct {p0}, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->validAllItem()V

    goto :goto_1

    .line 380
    :sswitch_2
    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->contentResolverOnDestory()V

    .line 382
    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->finish()V

    goto :goto_0

    .line 371
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x102002c -> :sswitch_2
    .end sparse-switch
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->contentResolverOnDestory()V

    .line 402
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 403
    return-void
.end method
