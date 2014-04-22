.class public Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;
.super Ljava/lang/Object;
.source "HwPowerProfile.java"


# static fields
.field private static FILEPATH_CAPACITY_FCC:Ljava/lang/String;

.field static final sPowerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPowerProfile:Lcom/android/internal/os/PowerProfile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;->sPowerMap:Ljava/util/HashMap;

    .line 336
    const-string v0, "//sys//class//power_supply//Battery//capacity_fcc"

    sput-object v0, Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;->FILEPATH_CAPACITY_FCC:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    sget-object v0, Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 201
    invoke-direct {p0, p1}, Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;->readPowerValuesFromXml(Landroid/content/Context;)V

    .line 204
    :cond_0
    iput-object p1, p0, Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;->mContext:Landroid/content/Context;

    .line 205
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 207
    return-void
.end method

.method public static getRealCapacity(I)I
    .locals 3
    .parameter "def"

    .prologue
    .line 338
    sget-object v2, Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;->FILEPATH_CAPACITY_FCC:Ljava/lang/String;

    invoke-static {v2}, Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;->readFileByChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 340
    .local v1, fileContent:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p0

    .line 342
    .end local p0
    :goto_0
    return p0

    .line 341
    .restart local p0
    :catch_0
    move-exception v0

    .line 342
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method private static readFileByChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "fileName"

    .prologue
    .line 347
    const-string v4, ""

    .line 348
    .local v4, res:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 349
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v5

    if-nez v5, :cond_1

    .line 350
    :cond_0
    const-string v5, ""

    .line 366
    :goto_0
    return-object v5

    .line 352
    :cond_1
    const/4 v0, 0x0

    .line 354
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 355
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v4

    .line 359
    if-eqz v1, :cond_4

    .line 361
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :cond_2
    :goto_1
    move-object v5, v4

    .line 366
    goto :goto_0

    .line 362
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_0
    move-exception v5

    move-object v0, v1

    .line 363
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_1

    .line 356
    :catch_1
    move-exception v2

    .line 357
    .local v2, e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 359
    if-eqz v0, :cond_2

    .line 361
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 362
    :catch_2
    move-exception v5

    goto :goto_1

    .line 359
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v0, :cond_3

    .line 361
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 363
    :cond_3
    :goto_4
    throw v5

    .line 362
    :catch_3
    move-exception v6

    goto :goto_4

    .line 359
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_3

    .line 356
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_2

    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :cond_4
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method private readPowerValuesFromXml(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    .line 210
    const v4, 0x7f040002

    .line 211
    .local v4, id:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 212
    .local v6, parser:Landroid/content/res/XmlResourceParser;
    const/4 v7, 0x0

    .line 213
    .local v7, parsingArray:Z
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v0, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Double;>;"
    const/4 v1, 0x0

    .line 217
    .local v1, arrayName:Ljava/lang/String;
    :try_start_0
    const-string v11, "device"

    invoke-static {v6, v11}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 220
    :cond_0
    :goto_0
    invoke-static {v6}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 222
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 223
    .local v3, element:Ljava/lang/String;
    if-nez v3, :cond_2

    .line 256
    if-eqz v7, :cond_1

    .line 257
    sget-object v11, Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/Double;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 264
    :cond_1
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    .line 266
    return-void

    .line 227
    :cond_2
    if-eqz v7, :cond_3

    :try_start_1
    const-string v11, "value"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 229
    sget-object v11, Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/Double;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const/4 v7, 0x0

    .line 232
    :cond_3
    const-string v11, "array"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 233
    const/4 v7, 0x1

    .line 234
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 235
    const/4 v11, 0x0

    const-string v12, "name"

    invoke-interface {v6, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 236
    :cond_4
    const-string v11, "item"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "value"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 237
    :cond_5
    const/4 v5, 0x0

    .line 238
    .local v5, name:Ljava/lang/String;
    if-nez v7, :cond_6

    .line 239
    const/4 v11, 0x0

    const-string v12, "name"

    invoke-interface {v6, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 241
    :cond_6
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_0

    .line 242
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 243
    .local v8, power:Ljava/lang/String;
    const-wide/16 v9, 0x0

    .line 245
    .local v9, value:D
    :try_start_2
    invoke-static {v8}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v9

    .line 248
    :goto_1
    :try_start_3
    const-string v11, "item"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 249
    sget-object v11, Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-virtual {v11, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 259
    .end local v3           #element:Ljava/lang/String;
    .end local v5           #name:Ljava/lang/String;
    .end local v8           #power:Ljava/lang/String;
    .end local v9           #value:D
    :catch_0
    move-exception v2

    .line 260
    .local v2, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_4
    new-instance v11, Ljava/lang/RuntimeException;

    invoke-direct {v11, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 264
    .end local v2           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v11

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    throw v11

    .line 250
    .restart local v3       #element:Ljava/lang/String;
    .restart local v5       #name:Ljava/lang/String;
    .restart local v8       #power:Ljava/lang/String;
    .restart local v9       #value:D
    :cond_7
    if-eqz v7, :cond_0

    .line 251
    :try_start_5
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 261
    .end local v3           #element:Ljava/lang/String;
    .end local v5           #name:Ljava/lang/String;
    .end local v8           #power:Ljava/lang/String;
    .end local v9           #value:D
    :catch_1
    move-exception v2

    .line 262
    .local v2, e:Ljava/io/IOException;
    :try_start_6
    new-instance v11, Ljava/lang/RuntimeException;

    invoke-direct {v11, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 246
    .end local v2           #e:Ljava/io/IOException;
    .restart local v3       #element:Ljava/lang/String;
    .restart local v5       #name:Ljava/lang/String;
    .restart local v8       #power:Ljava/lang/String;
    .restart local v9       #value:D
    :catch_2
    move-exception v11

    goto :goto_1
.end method


# virtual methods
.method public blueToothPower()D
    .locals 3

    .prologue
    .line 409
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 410
    .local v0, cwjBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 411
    :cond_0
    const-wide/16 v1, 0x0

    .line 413
    :goto_0
    return-wide v1

    :cond_1
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v2, "bluetooth.on"

    invoke-virtual {v1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    goto :goto_0
.end method

.method public currentScreenPower()D
    .locals 15

    .prologue
    .line 378
    const/16 v0, 0xff

    .line 379
    .local v0, BRIGHTNESS_MAX:I
    const/4 v2, 0x0

    .line 380
    .local v2, BRIGHTNESS_MIN:I
    const/4 v1, 0x1

    .line 381
    .local v1, BRIGHTNESS_MIDDLE:I
    move v8, v1

    .line 383
    .local v8, nowBrightness:I
    :try_start_0
    iget-object v11, p0, Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "screen_brightness"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 388
    :goto_0
    iget-object v11, p0, Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v12, "screen.full"

    invoke-virtual {v11, v12}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v3

    .line 389
    .local v3, deltaScreenPower:D
    iget-object v11, p0, Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v12, "screen.on"

    invoke-virtual {v11, v12}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v6

    .line 390
    .local v6, minScreenPower:D
    sub-int v11, v8, v2

    int-to-double v11, v11

    const/16 v13, 0xff

    int-to-double v13, v13

    div-double/2addr v11, v13

    mul-double/2addr v11, v3

    add-double v9, v6, v11

    .line 391
    .local v9, result:D
    const-string v11, "HwPowerManagerActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "brightniess:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", current screen power:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    return-wide v9

    .line 384
    .end local v3           #deltaScreenPower:D
    .end local v6           #minScreenPower:D
    .end local v9           #result:D
    :catch_0
    move-exception v5

    .line 385
    .local v5, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v5}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public dataPower()D
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 425
    iget-object v4, p0, Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 426
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 430
    :cond_0
    :goto_0
    return-wide v2

    .line 429
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    .line 430
    .local v1, on:Z
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v3, "data.on"

    invoke-virtual {v2, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    goto :goto_0
.end method

.method public futureScreenPower()D
    .locals 8

    .prologue
    .line 371
    iget-object v4, p0, Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "cpu.active"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v0

    .line 373
    .local v0, minCpuActivePower:D
    const-wide v4, 0x3fce2eb1c432ca58L

    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;->currentScreenPower()D

    move-result-wide v6

    add-double/2addr v6, v0

    mul-double v2, v4, v6

    .line 374
    .local v2, result:D
    return-wide v2
.end method

.method public getAveragePower(Ljava/lang/String;)D
    .locals 3
    .parameter "type"

    .prologue
    .line 274
    sget-object v1, Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 275
    sget-object v1, Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 276
    .local v0, data:Ljava/lang/Object;
    instance-of v1, v0, [Ljava/lang/Double;

    if-eqz v1, :cond_0

    .line 277
    check-cast v0, [Ljava/lang/Double;

    .end local v0           #data:Ljava/lang/Object;
    check-cast v0, [Ljava/lang/Double;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 282
    :goto_0
    return-wide v1

    .line 279
    .restart local v0       #data:Ljava/lang/Object;
    :cond_0
    sget-object v1, Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;->sPowerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    goto :goto_0

    .line 282
    .end local v0           #data:Ljava/lang/Object;
    :cond_1
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public gpsPower()D
    .locals 6

    .prologue
    .line 418
    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 419
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 421
    .local v0, on:Z
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v3, "gps.on"

    invoke-virtual {v2, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    const-wide v4, 0x404b800000000000L

    div-double/2addr v2, v4

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public wifiPower()D
    .locals 5

    .prologue
    const-wide/16 v1, 0x0

    .line 395
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 396
    .local v0, mWiFiManager:Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_1

    .line 404
    :cond_0
    :goto_0
    return-wide v1

    .line 399
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    .line 401
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 404
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/util/HwPowerProfile;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v2, "wifi.on"

    invoke-virtual {v1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    goto :goto_0
.end method
