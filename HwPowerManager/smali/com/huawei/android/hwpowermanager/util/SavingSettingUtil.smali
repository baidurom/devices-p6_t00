.class public Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;
.super Ljava/lang/Object;
.source "SavingSettingUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;
    }
.end annotation


# static fields
.field public static final BASE_URI:Landroid/net/Uri;

.field public static final FORBIDDEN_APPS_URI:Landroid/net/Uri;

.field public static final PROTECTED_APPS_URI:Landroid/net/Uri;

.field public static final ROGUE_APPS_URI:Landroid/net/Uri;

.field private static app_show_level:I

.field private static average_current_fg:I

.field private static count_frequency:I

.field private static count_frequency_fg:I

.field private static dangerous_current_level:I

.field private static dangerous_level_standard:I

.field private static high_level_standard:I

.field private static min_interval_time:I

.field private static msg_send_interval:I

.field private static rogueList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    const-string v0, "content://com.huawei.android.batteryspriteprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->BASE_URI:Landroid/net/Uri;

    .line 42
    sget-object v0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->BASE_URI:Landroid/net/Uri;

    const-string v1, "protectedapps"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->PROTECTED_APPS_URI:Landroid/net/Uri;

    .line 45
    sget-object v0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->BASE_URI:Landroid/net/Uri;

    const-string v1, "rogueapps"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->ROGUE_APPS_URI:Landroid/net/Uri;

    .line 48
    sget-object v0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->BASE_URI:Landroid/net/Uri;

    const-string v1, "forbiddenapps"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->FORBIDDEN_APPS_URI:Landroid/net/Uri;

    .line 67
    const/16 v0, 0xa

    sput v0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->high_level_standard:I

    .line 68
    const/16 v0, 0xf0

    sput v0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->msg_send_interval:I

    .line 69
    const/16 v0, 0x3c

    sput v0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->count_frequency:I

    .line 70
    const/16 v0, 0x32

    sput v0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->dangerous_level_standard:I

    .line 71
    const/4 v0, 0x1

    sput v0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->app_show_level:I

    .line 72
    const/16 v0, 0x1e

    sput v0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->dangerous_current_level:I

    .line 73
    const/16 v0, 0x14

    sput v0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->min_interval_time:I

    .line 74
    const/16 v0, 0x15e

    sput v0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->average_current_fg:I

    .line 75
    const/4 v0, 0x5

    sput v0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->count_frequency_fg:I

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->rogueList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    return-void
.end method

.method public static cancelNotification(Landroid/content/Context;)V
    .locals 1
    .parameter "mContext"

    .prologue
    .line 623
    new-instance v0, Lcom/huawei/android/hwpowermanager/UserNotifier;

    invoke-direct {v0, p0}, Lcom/huawei/android/hwpowermanager/UserNotifier;-><init>(Landroid/content/Context;)V

    .line 624
    .local v0, userNotifier:Lcom/huawei/android/hwpowermanager/UserNotifier;
    invoke-virtual {v0}, Lcom/huawei/android/hwpowermanager/UserNotifier;->destoryNotification()V

    .line 625
    return-void
.end method

.method public static deleteFromSmartProviderDB(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)V
    .locals 3
    .parameter "context"
    .parameter "uri"
    .parameter "packageName"
    .parameter "mType"

    .prologue
    .line 613
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package_name = \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" and list_type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 615
    .local v0, deleteCondition:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 616
    return-void
.end method

.method public static findPowerWarningParameterFromXml(Landroid/content/Context;)Ljava/util/Map;
    .locals 12
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 372
    .local v5, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 373
    .local v3, fin:Ljava/io/FileInputStream;
    const/4 v9, 0x0

    .line 375
    .local v9, xrp:Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getCustPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/xml/hw_powersaving_powerwarning_parameter.xml"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 377
    .local v0, custWarningParameterFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 378
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 379
    .end local v3           #fin:Ljava/io/FileInputStream;
    .local v4, fin:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 380
    const/4 v10, 0x0

    invoke-interface {v9, v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    move-object v3, v4

    .line 386
    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    :goto_0
    :try_start_2
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_3

    .line 387
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    .line 388
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 389
    .local v6, name:Ljava/lang/String;
    const-string v10, "Parameter"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 391
    const/4 v10, 0x0

    const-string v11, "name"

    invoke-interface {v9, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 392
    .local v8, parametername:Ljava/lang/String;
    const/4 v10, 0x0

    const-string v11, "value"

    invoke-interface {v9, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 395
    .local v7, parameter:I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #parameter:I
    .end local v8           #parametername:Ljava/lang/String;
    :cond_0
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 401
    .end local v0           #custWarningParameterFile:Ljava/io/File;
    :catch_0
    move-exception v2

    .line 402
    .local v2, e1:Ljava/lang/RuntimeException;
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 406
    if-eqz v3, :cond_1

    .line 408
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 414
    .end local v2           #e1:Ljava/lang/RuntimeException;
    :cond_1
    :goto_2
    return-object v5

    .line 382
    .restart local v0       #custWarningParameterFile:Ljava/io/File;
    :cond_2
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f040003

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v9

    goto :goto_0

    .line 406
    :cond_3
    if-eqz v3, :cond_1

    .line 408
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 409
    :catch_1
    move-exception v1

    .line 410
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 409
    .end local v0           #custWarningParameterFile:Ljava/io/File;
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #e1:Ljava/lang/RuntimeException;
    :catch_2
    move-exception v1

    .line 410
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 403
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #e1:Ljava/lang/RuntimeException;
    :catch_3
    move-exception v1

    .line 404
    .local v1, e:Ljava/lang/Exception;
    :goto_3
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 406
    if-eqz v3, :cond_1

    .line 408
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_2

    .line 409
    :catch_4
    move-exception v1

    .line 410
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 406
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :goto_4
    if-eqz v3, :cond_4

    .line 408
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 411
    :cond_4
    :goto_5
    throw v10

    .line 409
    :catch_5
    move-exception v1

    .line 410
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 406
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #fin:Ljava/io/FileInputStream;
    .restart local v0       #custWarningParameterFile:Ljava/io/File;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v10

    move-object v3, v4

    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    goto :goto_4

    .line 403
    .end local v3           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    :catch_6
    move-exception v1

    move-object v3, v4

    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    goto :goto_3

    .line 401
    .end local v3           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    :catch_7
    move-exception v2

    move-object v3, v4

    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static findProtectedApps(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .parameter "resolver"
    .parameter "selection"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v8, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 86
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->PROTECTED_APPS_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "distinct package_name"

    aput-object v3, v2, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 88
    if-eqz v6, :cond_1

    .line 89
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v7

    .line 94
    .local v7, ex:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "SavingSettingUtil"

    const-string v1, "Database exception!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    if-eqz v6, :cond_0

    .line 97
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 100
    .end local v7           #ex:Landroid/database/sqlite/SQLiteException;
    :cond_0
    :goto_1
    return-object v8

    .line 96
    :cond_1
    if-eqz v6, :cond_0

    .line 97
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 96
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 97
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static findWhiteListFromXml(Landroid/content/Context;)Ljava/util/List;
    .locals 13
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 315
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 316
    .local v7, list:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;>;"
    const/4 v3, 0x0

    .line 317
    .local v3, fin:Ljava/io/FileInputStream;
    const/4 v10, 0x0

    .line 319
    .local v10, xrp:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v5, 0x0

    .line 321
    .local v5, isChecked:Z
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getCustPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/xml/hw_powersaving_packagename_whitelist.xml"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 323
    .local v0, custWhiteListFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 324
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 325
    .end local v3           #fin:Ljava/io/FileInputStream;
    .local v4, fin:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v10

    .line 326
    const/4 v11, 0x0

    invoke-interface {v10, v4, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    move-object v3, v4

    .line 332
    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    :goto_0
    :try_start_2
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_4

    .line 333
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_0

    .line 334
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 335
    .local v8, name:Ljava/lang/String;
    const-string v11, "package"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 337
    const/4 v11, 0x0

    const-string v12, "name"

    invoke-interface {v10, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 338
    .local v9, pkg:Ljava/lang/String;
    const/4 v11, 0x0

    const-string v12, "check"

    invoke-interface {v10, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 339
    .local v6, isRogue:Ljava/lang/String;
    const-string v11, "rogue"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 340
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 341
    new-instance v11, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;

    invoke-direct {v11, v9, v5}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    .end local v6           #isRogue:Ljava/lang/String;
    .end local v8           #name:Ljava/lang/String;
    .end local v9           #pkg:Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 350
    .end local v0           #custWhiteListFile:Ljava/io/File;
    :catch_0
    move-exception v2

    .line 351
    .local v2, e1:Ljava/lang/RuntimeException;
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 355
    if-eqz v3, :cond_1

    .line 357
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 363
    .end local v2           #e1:Ljava/lang/RuntimeException;
    :cond_1
    :goto_3
    return-object v7

    .line 328
    .restart local v0       #custWhiteListFile:Ljava/io/File;
    :cond_2
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const/high16 v12, 0x7f04

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v10

    goto :goto_0

    .line 343
    .restart local v6       #isRogue:Ljava/lang/String;
    .restart local v8       #name:Ljava/lang/String;
    .restart local v9       #pkg:Ljava/lang/String;
    :cond_3
    sget-object v11, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->rogueList:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 352
    .end local v0           #custWhiteListFile:Ljava/io/File;
    .end local v6           #isRogue:Ljava/lang/String;
    .end local v8           #name:Ljava/lang/String;
    .end local v9           #pkg:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 353
    .local v1, e:Ljava/lang/Exception;
    :goto_4
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 355
    if-eqz v3, :cond_1

    .line 357
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    .line 358
    :catch_2
    move-exception v1

    .line 359
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 355
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #custWhiteListFile:Ljava/io/File;
    :cond_4
    if-eqz v3, :cond_1

    .line 357
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_3

    .line 358
    :catch_3
    move-exception v1

    .line 359
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 358
    .end local v0           #custWhiteListFile:Ljava/io/File;
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #e1:Ljava/lang/RuntimeException;
    :catch_4
    move-exception v1

    .line 359
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 355
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #e1:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v11

    :goto_5
    if-eqz v3, :cond_5

    .line 357
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 360
    :cond_5
    :goto_6
    throw v11

    .line 358
    :catch_5
    move-exception v1

    .line 359
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 355
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #fin:Ljava/io/FileInputStream;
    .restart local v0       #custWhiteListFile:Ljava/io/File;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v11

    move-object v3, v4

    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    goto :goto_5

    .line 352
    .end local v3           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    :catch_6
    move-exception v1

    move-object v3, v4

    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    goto :goto_4

    .line 350
    .end local v3           #fin:Ljava/io/FileInputStream;
    .restart local v4       #fin:Ljava/io/FileInputStream;
    :catch_7
    move-exception v2

    move-object v3, v4

    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static forceStopPackageAndSyncSaving(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 6
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, packages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x1

    .line 629
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 640
    :cond_0
    return-void

    .line 630
    :cond_1
    const-string v2, "SavingSettingUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xxxx Force stop package by pg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-static {p0, p1}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->killAppsByPG(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 632
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 635
    .local v1, pkg:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1, v5}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getRogue(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 636
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v1, v5, v3}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->setRogue(Landroid/content/ContentResolver;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static getAddedCustimizedApps(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    .local p0, listInDB:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p1, listInCust:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v0, addedList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;

    .line 268
    .local v2, pkg:Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;
    invoke-virtual {v2}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 269
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 272
    .end local v2           #pkg:Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;
    :cond_1
    return-object v0
.end method

.method public static getAppInfoByUid(Landroid/content/Context;I)Ljava/util/ArrayList;
    .locals 7
    .parameter "context"
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 435
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 437
    .local v4, resultApp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 438
    .local v3, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 440
    .local v2, pkaName:[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v5, v2

    if-lez v5, :cond_0

    .line 441
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v2

    if-ge v1, v5, :cond_0

    .line 443
    :try_start_0
    aget-object v5, v2, v1

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    .end local v1           #i:I
    :cond_0
    return-object v4

    .line 445
    .restart local v1       #i:I
    :catch_0
    move-exception v0

    .line 446
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 441
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getApp_show_level()I
    .locals 1

    .prologue
    .line 535
    sget v0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->app_show_level:I

    return v0
.end method

.method public static getAverage_current_fg()I
    .locals 1

    .prologue
    .line 527
    sget v0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->average_current_fg:I

    return v0
.end method

.method public static getCount_frequency_fg()I
    .locals 1

    .prologue
    .line 531
    sget v0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->count_frequency_fg:I

    return v0
.end method

.method public static getCustPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    const-string v0, "/data/cust"

    return-object v0
.end method

.method public static getCustimizedSysAppsFromCust(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    invoke-static {p0}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->findWhiteListFromXml(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getCustimizedSysAppsFromDB(Landroid/content/ContentResolver;)Ljava/util/List;
    .locals 9
    .parameter "resolver"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v8, resultList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 234
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->PROTECTED_APPS_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "package_name"

    aput-object v3, v2, v0

    const-string v3, "list_type=2"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 236
    if-eqz v6, :cond_1

    .line 237
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 241
    :catch_0
    move-exception v7

    .line 242
    .local v7, ex:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "SavingSettingUtil"

    const-string v1, "Database exception!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    if-eqz v6, :cond_0

    .line 245
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 248
    .end local v7           #ex:Landroid/database/sqlite/SQLiteException;
    :cond_0
    :goto_1
    return-object v8

    .line 244
    :cond_1
    if-eqz v6, :cond_0

    .line 245
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 244
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 245
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static getDangerous_current_level()I
    .locals 1

    .prologue
    .line 519
    sget v0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->dangerous_current_level:I

    return v0
.end method

.method public static getDangerous_level_standard()I
    .locals 1

    .prologue
    .line 515
    sget v0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->dangerous_level_standard:I

    return v0
.end method

.method public static getHigh_level_standard()I
    .locals 1

    .prologue
    .line 511
    sget v0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->high_level_standard:I

    return v0
.end method

.method public static getLastModifiedOfWhiteList()J
    .locals 3

    .prologue
    .line 252
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getCustPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/xml/hw_powersaving_packagename_whitelist.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 254
    .local v0, whiteListCustFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 255
    const-wide/16 v1, 0x0

    .line 257
    :goto_0
    return-wide v1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    goto :goto_0
.end method

.method public static getMin_interval_time()I
    .locals 1

    .prologue
    .line 523
    sget v0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->min_interval_time:I

    return v0
.end method

.method public static getMsgSendInterval()I
    .locals 1

    .prologue
    .line 507
    sget v0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->msg_send_interval:I

    return v0
.end method

.method public static getRemovedCustimizedApps(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    .local p0, listInDB:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p1, listInCust:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 277
    .local v4, removedList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 278
    .local v2, packageNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;

    .line 279
    .local v1, item:Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;
    invoke-virtual {v1}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 282
    .end local v1           #item:Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 284
    .local v3, pkg:Ljava/lang/String;
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 285
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 288
    .end local v3           #pkg:Ljava/lang/String;
    :cond_2
    return-object v4
.end method

.method public static getRogue(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 9
    .parameter "resolver"
    .parameter "pkgname"
    .parameter "flag"

    .prologue
    const/4 v2, 0x0

    .line 129
    const/4 v8, 0x0

    .line 130
    .local v8, obj:Ljava/lang/Object;
    const-string v7, ""

    .line 131
    .local v7, fieldName:Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 141
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid segment flag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :pswitch_0
    const-string v7, "isrogue"

    .line 144
    :goto_0
    const-string v0, "content://com.huawei.android.batteryspriteprovider/rogueapps"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 145
    .local v1, uri:Landroid/net/Uri;
    const-string v3, "pkgname = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    move-object v0, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 147
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 148
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 149
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 150
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 152
    .end local v8           #obj:Ljava/lang/Object;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 155
    :cond_1
    return-object v8

    .line 134
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #c:Landroid/database/Cursor;
    .restart local v8       #obj:Ljava/lang/Object;
    :pswitch_1
    const-string v7, "ignore"

    .line 135
    goto :goto_0

    .line 136
    :pswitch_2
    const-string v7, "clear"

    .line 137
    goto :goto_0

    .line 138
    :pswitch_3
    const-string v7, "presetblackapp"

    .line 139
    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getRogueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 368
    sget-object v0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->rogueList:Ljava/util/List;

    return-object v0
.end method

.method public static initalPowerWarningParameter(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 484
    invoke-static {p0}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->findPowerWarningParameterFromXml(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 485
    .local v0, powerWarningParameter:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v1, "high_level_standard"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->high_level_standard:I

    .line 486
    const-string v1, "msg_send_interval"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->msg_send_interval:I

    .line 487
    const-string v1, "count_frequency"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->count_frequency:I

    .line 488
    const-string v1, "dangerous_level_standard"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->dangerous_level_standard:I

    .line 489
    const-string v1, "app_show_level"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->app_show_level:I

    .line 490
    const-string v1, "dangerous_current_level"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->dangerous_current_level:I

    .line 491
    const-string v1, "min_interval_time"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->min_interval_time:I

    .line 492
    const-string v1, "average_current_fg"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->average_current_fg:I

    .line 493
    const-string v1, "count_frequency_fg"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->count_frequency_fg:I

    .line 495
    const-string v1, "SavingSettingUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAlarm and high_level_standard is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getHigh_level_standard()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " msg_send_interval is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getMsgSendInterval()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " count_frequency is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->count_frequency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dangerous_level_standard is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getDangerous_level_standard()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dangerous_current_level is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getDangerous_current_level()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " min_interval_time is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getMin_interval_time()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " average_current_fg is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getAverage_current_fg()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " count_frequency_fg is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getCount_frequency_fg()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " app_show_level is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getApp_show_level()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    return-void
.end method

.method public static insertCustimizedAppsToDB(Landroid/content/Context;Ljava/util/List;)V
    .locals 8
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 298
    .local p1, packageList:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 299
    .local v0, cValues:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 300
    .local v5, resolver:Landroid/content/ContentResolver;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;

    .line 301
    .local v3, item:Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;
    invoke-virtual {v3}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 302
    .local v4, packageName:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;->isChecked()Z

    move-result v2

    .line 303
    .local v2, isChecked:Z
    const-string v6, "package_name"

    invoke-virtual {v0, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v6, "list_type"

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 305
    sget-object v6, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->PROTECTED_APPS_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 306
    invoke-virtual {v3}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 307
    const-string v6, "package_name"

    invoke-virtual {v0, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v6, "list_type"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 309
    sget-object v6, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->PROTECTED_APPS_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    .line 312
    .end local v2           #isChecked:Z
    .end local v3           #item:Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;
    .end local v4           #packageName:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static insertRogue(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 5
    .parameter "resolver"
    .parameter "pkgname"
    .parameter "values"

    .prologue
    const/4 v3, 0x0

    .line 160
    invoke-static {p0, p1, v3}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getRogue(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    .line 161
    .local v0, obj:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 162
    const-string v2, "content://com.huawei.android.batteryspriteprovider/rogueapps"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 163
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0, v1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 171
    .end local v1           #uri:Landroid/net/Uri;
    :goto_0
    return-void

    .line 165
    :cond_0
    const-string v2, "isrogue"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, p1, v3, v2}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->setRogue(Landroid/content/ContentResolver;Ljava/lang/String;ILjava/lang/Object;)V

    .line 166
    const/4 v2, 0x1

    const-string v3, "ignore"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, p1, v2, v3}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->setRogue(Landroid/content/ContentResolver;Ljava/lang/String;ILjava/lang/Object;)V

    .line 167
    const/4 v2, 0x2

    const-string v3, "clear"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, p1, v2, v3}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->setRogue(Landroid/content/ContentResolver;Ljava/lang/String;ILjava/lang/Object;)V

    .line 168
    const/4 v2, 0x3

    const-string v3, "presetblackapp"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, p1, v2, v3}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->setRogue(Landroid/content/ContentResolver;Ljava/lang/String;ILjava/lang/Object;)V

    .line 169
    const-string v2, "SavingSettingUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the pkgname = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is exist!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static insertToDB(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)V
    .locals 9
    .parameter "context"
    .parameter "uri"
    .parameter "packName"
    .parameter "mType"

    .prologue
    .line 591
    const/4 v6, 0x0

    .line 592
    .local v6, cursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 594
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "package_name=?"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v4, v1

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 596
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 597
    :cond_0
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 598
    .local v8, values:Landroid/content/ContentValues;
    const-string v1, "package_name"

    invoke-virtual {v8, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    const-string v1, "app_type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 600
    invoke-virtual {v0, p1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 601
    const-string v1, "SavingSettingUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertToDB "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " successfully!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 606
    .end local v8           #values:Landroid/content/ContentValues;
    :cond_1
    if-eqz v6, :cond_2

    .line 607
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 610
    :cond_2
    :goto_0
    return-void

    .line 603
    :catch_0
    move-exception v7

    .line 604
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "SavingSettingUtil"

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 606
    if-eqz v6, :cond_2

    .line 607
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 606
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    .line 607
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method public static insertToSmartProviderDB(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)Landroid/net/Uri;
    .locals 5
    .parameter "context"
    .parameter "uri"
    .parameter "packageName"
    .parameter "mType"

    .prologue
    .line 578
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 579
    .local v0, cValues:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 580
    .local v1, resolver:Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .line 581
    .local v2, result:Landroid/net/Uri;
    const-string v3, "package_name"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    const-string v3, "list_type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 583
    invoke-virtual {v1, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 584
    return-object v2
.end method

.method public static isSystemApp(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 5
    .parameter "packageName"
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 455
    const/4 v1, 0x0

    .line 457
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 464
    iget v3, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 465
    const/4 v2, 0x1

    .line 467
    :cond_0
    :goto_0
    return v2

    .line 459
    :catch_0
    move-exception v0

    .line 460
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private static killAppsByPG(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 643
    .local p1, packages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.huawei.android.HwPowerManager.KILLAPPS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 644
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "packages"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 645
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 646
    return-void
.end method

.method public static logHighPowerApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "pkgName"
    .parameter "report"

    .prologue
    const/4 v3, 0x0

    .line 619
    const-string v1, "power"

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/huawei/android/hwpowermanager/util/DbmsHelper;->addLogToDropBox(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 620
    return-void
.end method

.method public static queryAllBootApps(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .parameter "mContext"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v5, 0x202

    .line 654
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 655
    .local v2, pm:Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 659
    .local v0, bootApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 663
    .local v1, connectApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 664
    return-object v0
.end method

.method public static removeCustimizedAppsFromDB(Landroid/content/Context;Ljava/util/List;)V
    .locals 6
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 291
    .local p1, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 292
    .local v2, packageName:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package_name = \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, deleteCondition:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->PROTECTED_APPS_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 295
    .end local v0           #deleteCondition:Ljava/lang/String;
    .end local v2           #packageName:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static setPowerNotificationAlarmTime(Landroid/content/Context;J)V
    .locals 10
    .parameter "context"
    .parameter "timeInMillis"

    .prologue
    .line 473
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 474
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v7, Landroid/content/Intent;

    const-string v1, "android.intent.action.POWER_STATISTIC"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 475
    .local v7, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    const/high16 v2, 0x1000

    invoke-static {p0, v1, v7, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 477
    .local v6, sender:Landroid/app/PendingIntent;
    sget v1, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->count_frequency:I

    int-to-long v1, v1

    const-wide/32 v8, 0xea60

    mul-long v4, v1, v8

    .line 478
    .local v4, interval:J
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 480
    const/4 v1, 0x1

    add-long v2, p1, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 481
    return-void
.end method

.method public static setRogue(Landroid/content/ContentResolver;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 5
    .parameter "resolver"
    .parameter "pkgname"
    .parameter "flag"
    .parameter "value"

    .prologue
    .line 108
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 110
    .local v0, updateValues:Landroid/content/ContentValues;
    packed-switch p2, :pswitch_data_0

    .line 120
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid segment flag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 111
    :pswitch_0
    const-string v2, "isrogue"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 122
    :goto_0
    const-string v2, "content://com.huawei.android.batteryspriteprovider/rogueapps"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 123
    .local v1, uri:Landroid/net/Uri;
    const-string v2, "pkgname = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 125
    return-void

    .line 113
    .end local v1           #uri:Landroid/net/Uri;
    :pswitch_1
    const-string v2, "ignore"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 115
    :pswitch_2
    const-string v2, "clear"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 117
    :pswitch_3
    const-string v2, "presetblackapp"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static toShortName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "original"

    .prologue
    .line 419
    if-nez p0, :cond_0

    .line 420
    const/4 v1, 0x0

    .line 429
    :goto_0
    return-object v1

    .line 423
    :cond_0
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "com."

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 424
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 425
    .local v0, lastIndex:I
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 427
    .local v1, shortName:Ljava/lang/String;
    goto :goto_0

    .end local v0           #lastIndex:I
    .end local v1           #shortName:Ljava/lang/String;
    :cond_1
    move-object v1, p0

    .line 429
    goto :goto_0
.end method

.method public static updateAllSystemApp(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 222
    invoke-static {p0}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getCustimizedSysAppsFromCust(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 223
    .local v1, custItems:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getCustimizedSysAppsFromDB(Landroid/content/ContentResolver;)Ljava/util/List;

    move-result-object v2

    .line 224
    .local v2, dbItems:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v2, v1}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getAddedCustimizedApps(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 225
    .local v0, added:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;>;"
    invoke-static {v2, v1}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getRemovedCustimizedApps(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 226
    .local v3, removed:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, v3}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->removeCustimizedAppsFromDB(Landroid/content/Context;Ljava/util/List;)V

    .line 227
    invoke-static {p0, v0}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->insertCustimizedAppsToDB(Landroid/content/Context;Ljava/util/List;)V

    .line 228
    return-void
.end method

.method public static updateProtectedAppsDB(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 8
    .parameter "context"
    .parameter "pkgName"
    .parameter "isProtected"

    .prologue
    .line 540
    const/4 v6, 0x0

    .line 542
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->PROTECTED_APPS_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "package_name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "list_type"

    aput-object v4, v2, v3

    const-string v3, "package_name=?and list_type=1"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 546
    if-nez v6, :cond_1

    .line 568
    if-eqz v6, :cond_0

    .line 569
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 572
    :cond_0
    :goto_0
    return-void

    .line 549
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 550
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    .line 551
    sget-object v0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->PROTECTED_APPS_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->insertToSmartProviderDB(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)Landroid/net/Uri;

    .line 562
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, p1, v1}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->getRogue(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 563
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_2
    invoke-static {v1, p1, v2, v0}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->setRogue(Landroid/content/ContentResolver;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 568
    :cond_3
    if-eqz v6, :cond_0

    .line 569
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 556
    :cond_4
    :try_start_2
    sget-object v0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->PROTECTED_APPS_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->deleteFromSmartProviderDB(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 565
    :catch_0
    move-exception v7

    .line 566
    .local v7, ex:Landroid/database/sqlite/SQLiteException;
    :try_start_3
    const-string v0, "SavingSettingUtil"

    const-string v1, "Database exception!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 568
    if-eqz v6, :cond_0

    .line 569
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 563
    .end local v7           #ex:Landroid/database/sqlite/SQLiteException;
    :cond_5
    const/4 v0, 0x1

    :try_start_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v0

    goto :goto_2

    .line 568
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 569
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method
