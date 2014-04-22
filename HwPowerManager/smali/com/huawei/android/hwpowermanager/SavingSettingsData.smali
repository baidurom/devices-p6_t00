.class public Lcom/huawei/android/hwpowermanager/SavingSettingsData;
.super Ljava/lang/Object;
.source "SavingSettingsData.java"


# instance fields
.field private mAllApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mSystemApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mUserApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/huawei/android/hwpowermanager/SavingSettingsData;->mSystemApps:Ljava/util/List;

    .line 29
    iput-object v0, p0, Lcom/huawei/android/hwpowermanager/SavingSettingsData;->mUserApps:Ljava/util/List;

    .line 30
    iput-object v0, p0, Lcom/huawei/android/hwpowermanager/SavingSettingsData;->mAllApps:Ljava/util/List;

    .line 35
    iput-object p1, p0, Lcom/huawei/android/hwpowermanager/SavingSettingsData;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method

.method private fetchInstalledApps(Ljava/util/List;Z)V
    .locals 13
    .parameter
    .parameter "isFirstTimeBoot"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, protectedApps:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v12, 0x1

    const/4 v5, 0x0

    .line 61
    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/SavingSettingsData;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 62
    .local v10, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v10, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v6

    .line 63
    .local v6, allApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 64
    .local v7, allAppsIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    .line 66
    .local v11, size:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v11}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/huawei/android/hwpowermanager/SavingSettingsData;->mSystemApps:Ljava/util/List;

    .line 67
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v11}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/huawei/android/hwpowermanager/SavingSettingsData;->mUserApps:Ljava/util/List;

    .line 68
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v11}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/huawei/android/hwpowermanager/SavingSettingsData;->mAllApps:Ljava/util/List;

    .line 70
    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/SavingSettingsData;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f020010

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 73
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {p0}, Lcom/huawei/android/hwpowermanager/SavingSettingsData;->isDBReady()Z

    move-result v9

    .line 74
    .local v9, isDBCreated:Z
    move-object v8, p1

    .line 75
    .local v8, appList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 76
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 77
    .local v1, app:Landroid/content/pm/ApplicationInfo;
    new-instance v0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;-><init>(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)V

    .line 79
    .local v0, item:Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 80
    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/SavingSettingsData;->mSystemApps:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 82
    :cond_1
    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/SavingSettingsData;->mUserApps:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    if-nez p2, :cond_2

    if-nez v9, :cond_2

    .line 85
    iput-boolean v12, v0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;->isChecked:Z

    .line 88
    :cond_2
    iget-object v2, v0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;->packageName:Ljava/lang/String;

    invoke-interface {v8, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    iput-boolean v12, v0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;->isChecked:Z

    goto :goto_0

    .line 93
    .end local v0           #item:Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;
    .end local v1           #app:Landroid/content/pm/ApplicationInfo;
    :cond_3
    return-void
.end method

.method private flushToDB(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "c"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 297
    .local p2, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 298
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.huawei.android.batteryspriteprovider"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 303
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 304
    .local v0, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_0
.end method

.method private getLastCustTimeFromPref()J
    .locals 4

    .prologue
    .line 137
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/SavingSettingsData;->mContext:Landroid/content/Context;

    const-string v2, "appDatabase"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 138
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "whitelist_last_modified"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method private initLastModifiedOfWhiteList()V
    .locals 2

    .prologue
    .line 147
    invoke-static {}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getLastModifiedOfWhiteList()J

    move-result-wide v0

    .line 148
    .local v0, currentFileTime:J
    invoke-direct {p0, v0, v1}, Lcom/huawei/android/hwpowermanager/SavingSettingsData;->setLastCustTimeToPref(J)V

    .line 149
    return-void
.end method

.method private isDBReady()Z
    .locals 5

    .prologue
    .line 119
    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/SavingSettingsData;->mContext:Landroid/content/Context;

    const-string v3, "appDatabase"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 120
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "savedDatabase"

    const-string v3, "noSave"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, isSaved:Ljava/lang/String;
    const-string v2, "saved"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public static pushProtecedAppsToOperations(Ljava/util/ArrayList;Ljava/util/List;Landroid/content/ContentValues;Landroid/content/ContentProviderOperation$Builder;)V
    .locals 5
    .parameter
    .parameter
    .parameter "values"
    .parameter "builder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;",
            ">;",
            "Landroid/content/ContentValues;",
            "Landroid/content/ContentProviderOperation$Builder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local p1, apps:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 100
    .local v2, userIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;

    .line 102
    .local v1, item:Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;
    iget-object v0, v1, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 103
    .local v0, app:Landroid/content/pm/ApplicationInfo;
    const-string v3, "package_name"

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v3, "list_type"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 106
    sget-object v3, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->PROTECTED_APPS_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p3

    .line 108
    invoke-virtual {p3, p2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 109
    invoke-virtual {p3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    .end local v0           #app:Landroid/content/pm/ApplicationInfo;
    .end local v1           #item:Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;
    :cond_0
    return-void
.end method

.method private setLastCustTimeToPref(J)V
    .locals 5
    .parameter "lastModified"

    .prologue
    .line 141
    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/SavingSettingsData;->mContext:Landroid/content/Context;

    const-string v3, "appDatabase"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 142
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 143
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "whitelist_last_modified"

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 144
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 145
    return-void
.end method


# virtual methods
.method public getAllApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/SavingSettingsData;->mAllApps:Ljava/util/List;

    return-object v0
.end method

.method public isCustUpdated()Z
    .locals 8

    .prologue
    .line 127
    invoke-static {}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getLastModifiedOfWhiteList()J

    move-result-wide v1

    .line 128
    .local v1, currentFileTime:J
    invoke-direct {p0}, Lcom/huawei/android/hwpowermanager/SavingSettingsData;->getLastCustTimeFromPref()J

    move-result-wide v3

    .line 129
    .local v3, lastModified:J
    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    const/4 v0, 0x1

    .line 130
    .local v0, changed:Z
    :goto_0
    const-string v5, "SavingSettingsData"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cust file updated:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    if-eqz v0, :cond_0

    .line 132
    invoke-direct {p0, v1, v2}, Lcom/huawei/android/hwpowermanager/SavingSettingsData;->setLastCustTimeToPref(J)V

    .line 134
    :cond_0
    return v0

    .line 129
    .end local v0           #changed:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeSureSaveDBReady()V
    .locals 2

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/huawei/android/hwpowermanager/SavingSettingsData;->isDBReady()Z

    move-result v1

    if-nez v1, :cond_1

    .line 157
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/huawei/android/hwpowermanager/SavingSettingsData;->setupProtectedTable(Z)V

    .line 159
    invoke-direct {p0}, Lcom/huawei/android/hwpowermanager/SavingSettingsData;->initLastModifiedOfWhiteList()V

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/SavingSettingsData;->isCustUpdated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/SavingSettingsData;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->updateAllSystemApp(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setupProtectedTable(Z)V
    .locals 26
    .parameter "isFirstTimeBoot"

    .prologue
    .line 182
    const-string v18, "list_type=1"

    .line 183
    .local v18, selection:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/hwpowermanager/SavingSettingsData;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->findProtectedApps(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 188
    .local v3, appList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v3, v1}, Lcom/huawei/android/hwpowermanager/SavingSettingsData;->fetchInstalledApps(Ljava/util/List;Z)V

    .line 190
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v12, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 192
    .local v21, values:Landroid/content/ContentValues;
    const/4 v4, 0x0

    .line 194
    .local v4, builder:Landroid/content/ContentProviderOperation$Builder;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .local v11, list:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/hwpowermanager/SavingSettingsData;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->findWhiteListFromXml(Landroid/content/Context;)Ljava/util/List;

    move-result-object v22

    .line 199
    .local v22, whiteList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;>;"
    invoke-static {}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getRogueList()Ljava/util/List;

    move-result-object v16

    .line 201
    .local v16, rogueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, Lcom/huawei/android/hwpowermanager/SavingSettingsData;->isDBReady()Z

    move-result v8

    .line 202
    .local v8, isDBExisted:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/hwpowermanager/SavingSettingsData;->mSystemApps:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 204
    .local v10, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;>;"
    if-nez v8, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_0

    if-eqz p1, :cond_0

    .line 205
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v19

    .line 206
    .local v19, size:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    move/from16 v0, v19

    if-ge v7, v0, :cond_0

    .line 207
    const-string v24, "pkgname"

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v23, "isrogue"

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 209
    const-string v23, "ignore"

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 210
    const-string v23, "clear"

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 211
    const-string v23, "presetblackapp"

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 213
    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 214
    .local v14, pkgname:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/hwpowermanager/SavingSettingsData;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 215
    .local v15, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-static {v15, v0, v1}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->insertRogue(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 216
    invoke-virtual/range {v21 .. v21}, Landroid/content/ContentValues;->clear()V

    .line 206
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 221
    .end local v7           #i:I
    .end local v14           #pkgname:Ljava/lang/String;
    .end local v15           #resolver:Landroid/content/ContentResolver;
    .end local v19           #size:I
    :cond_0
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_3

    .line 222
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;

    .line 223
    .local v9, item:Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;
    iget-object v13, v9, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;->packageName:Ljava/lang/String;

    .line 229
    .local v13, pName:Ljava/lang/String;
    new-instance v5, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;

    invoke-direct {v5, v13}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;-><init>(Ljava/lang/String;)V

    .line 231
    .local v5, compareItem:Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;
    move-object/from16 v0, v22

    invoke-static {v0, v5}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;->getContainSameWhiteItem(Ljava/util/List;Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;)Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;

    move-result-object v17

    .line 233
    .local v17, sameWhiteItem:Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;
    if-eqz v17, :cond_0

    .line 234
    if-nez v8, :cond_1

    .line 239
    const-string v23, "package_name"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v23, "list_type"

    const/16 v24, 0x2

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 241
    sget-object v23, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->PROTECTED_APPS_URI:Landroid/net/Uri;

    invoke-static/range {v23 .. v23}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 243
    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 244
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    invoke-virtual/range {v17 .. v17}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;->isChecked()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 252
    const-string v23, "package_name"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v23, "list_type"

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 255
    sget-object v23, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->PROTECTED_APPS_URI:Landroid/net/Uri;

    invoke-static/range {v23 .. v23}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 257
    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 258
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    :cond_1
    if-nez p1, :cond_2

    invoke-interface {v3, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 269
    const/16 v23, 0x1

    move/from16 v0, v23

    iput-boolean v0, v9, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;->isChecked:Z

    .line 272
    :cond_2
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 276
    .end local v5           #compareItem:Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;
    .end local v9           #item:Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;
    .end local v13           #pName:Ljava/lang/String;
    .end local v17           #sameWhiteItem:Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;
    :cond_3
    if-nez p1, :cond_4

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/hwpowermanager/SavingSettingsData;->mUserApps:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 278
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/huawei/android/hwpowermanager/SavingSettingsData;->mAllApps:Ljava/util/List;

    .line 281
    :cond_4
    if-nez v8, :cond_5

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/hwpowermanager/SavingSettingsData;->mUserApps:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-static {v12, v0, v1, v4}, Lcom/huawei/android/hwpowermanager/SavingSettingsData;->pushProtecedAppsToOperations(Ljava/util/ArrayList;Ljava/util/List;Landroid/content/ContentValues;Landroid/content/ContentProviderOperation$Builder;)V

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/hwpowermanager/SavingSettingsData;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v12}, Lcom/huawei/android/hwpowermanager/SavingSettingsData;->flushToDB(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huawei/android/hwpowermanager/SavingSettingsData;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string v24, "appDatabase"

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 288
    .local v20, sp:Landroid/content/SharedPreferences;
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 289
    .local v6, editor:Landroid/content/SharedPreferences$Editor;
    const-string v23, "savedDatabase"

    const-string v24, "saved"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 290
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 292
    .end local v6           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v20           #sp:Landroid/content/SharedPreferences;
    :cond_5
    return-void
.end method
