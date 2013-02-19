.class public Lcom/android/internal/telephony/GlobalParamsAdaptor;
.super Ljava/lang/Object;
.source "GlobalParamsAdaptor.java"


# static fields
.field private static final APGS_SERVERS_DOCUMENT:Ljava/lang/String; = "agpsServers"

.field private static final IS_VMN_SHORT_CODE_INDEX:I = 0x7

.field static final LOG_TAG:Ljava/lang/String; = "GlobalParamsAdaptor"

.field private static final MCCMNC:Ljava/lang/String; = "mccmnc"

.field private static final NAME_INDEX:I = 0x1

.field private static final NUMERIC_INDEX:I = 0x2

.field private static final NUM_MATCH_INDEX:I = 0x3

.field private static final NUM_MATCH_SHORT_INDEX:I = 0x4

.field private static final SERVER_NAME:Ljava/lang/String; = "name"

.field private static final SMS_7BIT_ENABLED_INDEX:I = 0x5

.field private static final SMS_CODING_NATIONAL_INDEX:I = 0x6

.field private static final SUPL_PORT:Ljava/lang/String; = "supl_port"

.field private static final SUPL_URL:Ljava/lang/String; = "supl_host"

.field private static final XMLPATH:Ljava/lang/String; = "/cust/xml/globalAgpsServers-conf.xml"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method private arrayContains([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "array"
    .parameter "value"

    .prologue
    .line 63
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 64
    aget-object v1, p1, v0

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    const/4 v1, 0x1

    .line 67
    :goto_1
    return v1

    .line 63
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private broadcastAgpsServerConf(Landroid/content/ContentValues;)V
    .locals 3
    .parameter "row"

    .prologue
    .line 356
    if-eqz p1, :cond_0

    .line 357
    const-string v1, "GlobalParamsAdaptor"

    const-string v2, "broadcast TelephonyIntents.ACTION_AGPS_SERVERS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_AGPS_SERVERS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 359
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 360
    const-string v1, "supl_host"

    const-string v2, "supl_host"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    const-string v1, "supl_port"

    const-string v2, "supl_port"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 364
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private getAgpsServerRow(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/ContentValues;
    .locals 5
    .parameter "parser"

    .prologue
    const/4 v2, 0x0

    .line 336
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 337
    .local v1, prof_type:Ljava/lang/String;
    const-string v3, "agpsServer"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v0, v2

    .line 347
    :goto_0
    return-object v0

    .line 340
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 342
    .local v0, map:Landroid/content/ContentValues;
    const-string v3, "name"

    const-string v4, "name"

    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string v3, "mccmnc"

    const-string v4, "mccmnc"

    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string v3, "supl_port"

    const-string v4, "supl_port"

    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const-string v3, "supl_host"

    const-string v4, "supl_host"

    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public checkAgpsServers(Ljava/lang/String;)V
    .locals 9
    .parameter "currentMccmnc"

    .prologue
    .line 284
    if-nez p1, :cond_1

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    const/4 v1, 0x0

    .line 290
    .local v1, confparser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    const-string v7, "/cust/xml/globalAgpsServers-conf.xml"

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 291
    .local v0, confFile:Ljava/io/File;
    const/4 v2, 0x0

    .line 293
    .local v2, confreader:Ljava/io/FileReader;
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 294
    .end local v2           #confreader:Ljava/io/FileReader;
    .local v3, confreader:Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 296
    if-eqz v1, :cond_4

    .line 297
    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 298
    const-string v6, "agpsServers"

    invoke-static {v1, v6}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 301
    :cond_2
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 302
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/GlobalParamsAdaptor;->getAgpsServerRow(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/ContentValues;

    move-result-object v5

    .line 303
    .local v5, row:Landroid/content/ContentValues;
    if-eqz v5, :cond_4

    .line 304
    const-string v6, "mccmnc"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "mccmnc"

    invoke-virtual {v5, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 306
    :cond_3
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/GlobalParamsAdaptor;->broadcastAgpsServerConf(Landroid/content/ContentValues;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 321
    .end local v5           #row:Landroid/content/ContentValues;
    :cond_4
    if-eqz v3, :cond_5

    .line 322
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_5
    :goto_1
    move-object v2, v3

    .line 326
    .end local v3           #confreader:Ljava/io/FileReader;
    .restart local v2       #confreader:Ljava/io/FileReader;
    goto :goto_0

    .line 314
    :catch_0
    move-exception v4

    .line 316
    .local v4, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    const-string v6, "GlobalParamsAdaptor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File not found: \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 321
    if-eqz v2, :cond_0

    .line 322
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 323
    .end local v4           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v6

    goto :goto_0

    .line 317
    :catch_2
    move-exception v4

    .line 318
    .local v4, e:Ljava/lang/Exception;
    :goto_3
    :try_start_5
    const-string v6, "GlobalParamsAdaptor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception while parsing \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 321
    if-eqz v2, :cond_0

    .line 322
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 320
    .end local v4           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 321
    :goto_4
    if-eqz v2, :cond_6

    .line 322
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 320
    :cond_6
    :goto_5
    throw v6

    .line 323
    :catch_3
    move-exception v7

    goto :goto_5

    .end local v2           #confreader:Ljava/io/FileReader;
    .restart local v3       #confreader:Ljava/io/FileReader;
    :catch_4
    move-exception v6

    goto :goto_1

    .line 320
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3           #confreader:Ljava/io/FileReader;
    .restart local v2       #confreader:Ljava/io/FileReader;
    goto :goto_4

    .line 317
    .end local v2           #confreader:Ljava/io/FileReader;
    .restart local v3       #confreader:Ljava/io/FileReader;
    :catch_5
    move-exception v4

    move-object v2, v3

    .end local v3           #confreader:Ljava/io/FileReader;
    .restart local v2       #confreader:Ljava/io/FileReader;
    goto :goto_3

    .line 314
    .end local v2           #confreader:Ljava/io/FileReader;
    .restart local v3       #confreader:Ljava/io/FileReader;
    :catch_6
    move-exception v4

    move-object v2, v3

    .end local v3           #confreader:Ljava/io/FileReader;
    .restart local v2       #confreader:Ljava/io/FileReader;
    goto :goto_2
.end method

.method public checkGlobalAutoMatchParam(Ljava/lang/String;Landroid/content/Context;)V
    .locals 18
    .parameter "currentImsi"
    .parameter "context"

    .prologue
    .line 148
    invoke-static {}, Lcom/android/internal/telephony/VirtualNet;->isVirtualNet()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 149
    invoke-static {}, Lcom/android/internal/telephony/VirtualNet;->getCurrentVirtualNet()Lcom/android/internal/telephony/VirtualNet;

    move-result-object v17

    .line 150
    .local v17, virtualNet:Lcom/android/internal/telephony/VirtualNet;
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/VirtualNet;->getNumMatch()I

    move-result v1

    if-ltz v1, :cond_0

    .line 151
    const-string v1, "gsm.hw.matchnum"

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/VirtualNet;->getNumMatch()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_0
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/VirtualNet;->getNumMatchShort()I

    move-result v1

    if-ltz v1, :cond_1

    .line 154
    const-string v1, "gsm.hw.matchnum.short"

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/VirtualNet;->getNumMatchShort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_1
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/VirtualNet;->getSms7BitEnabled()I

    move-result v1

    if-ltz v1, :cond_2

    .line 157
    const-string v1, "gsm.sms.7bit.enabled"

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/VirtualNet;->getSms7BitEnabled()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_2
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/VirtualNet;->getSmsCodingNational()I

    move-result v1

    if-ltz v1, :cond_3

    .line 160
    const-string v1, "gsm.sms.coding.national"

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/VirtualNet;->getSmsCodingNational()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_3
    const-string v1, "GlobalParamsAdaptor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "virtual net: after setprop numMatch = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "gsm.hw.matchnum"

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", numMatchShort = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "gsm.hw.matchnum.short"

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sms7BitEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/TelephonyManager;->isSms7BitEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", smsCodingNational = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "gsm.sms.coding.national"

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/4 v1, 0x1

    new-array v0, v1, [I

    move-object/from16 v16, v0

    .line 167
    .local v16, temp:[I
    const-string v1, "ro.config.smsCoding_National"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_5

    .line 168
    const/4 v1, 0x0

    const-string v2, "ro.config.smsCoding_National"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v16, v1

    .line 169
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/GsmAlphabet;->setEnabledSingleShiftTables([I)V

    .line 237
    .end local v16           #temp:[I
    .end local v17           #virtualNet:Lcom/android/internal/telephony/VirtualNet;
    :cond_4
    :goto_0
    return-void

    .line 170
    .restart local v16       #temp:[I
    .restart local v17       #virtualNet:Lcom/android/internal/telephony/VirtualNet;
    :cond_5
    const-string v1, "gsm.sms.coding.national"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_4

    .line 171
    const/4 v1, 0x0

    const-string v2, "gsm.sms.coding.national"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v16, v1

    .line 172
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/GsmAlphabet;->setEnabledSingleShiftTables([I)V

    goto :goto_0

    .line 178
    .end local v16           #temp:[I
    .end local v17           #virtualNet:Lcom/android/internal/telephony/VirtualNet;
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "numeric=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 182
    .local v4, where:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$NumMatchs;->CONTENT_URI:Landroid/net/Uri;

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string v6, "name"

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-string v6, "numeric"

    aput-object v6, v3, v5

    const/4 v5, 0x3

    const-string v6, "num_match"

    aput-object v6, v3, v5

    const/4 v5, 0x4

    const-string v6, "num_match_short"

    aput-object v6, v3, v5

    const/4 v5, 0x5

    const-string v6, "sms_7bit_enabled"

    aput-object v6, v3, v5

    const/4 v5, 0x6

    const-string v6, "sms_coding_national"

    aput-object v6, v3, v5

    const/4 v5, 0x7

    const-string v6, "is_vmn_short_code"

    aput-object v6, v3, v5

    const/4 v5, 0x0

    const-string v6, "name ASC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 186
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_7

    .line 187
    const-string v1, "GlobalParamsAdaptor"

    const-string v2, "SIMRecords:checkGlobalAutoMatchParam: No matched auto match params in db."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 193
    :cond_7
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 194
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_b

    .line 195
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 196
    .local v10, name:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 197
    .local v13, numeric:Ljava/lang/String;
    const/4 v1, 0x3

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 198
    .local v11, numMatch:I
    const/4 v1, 0x4

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 199
    .local v12, numMatchShort:I
    const/4 v1, 0x5

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 200
    .local v14, sms7BitEnabled:I
    const/4 v1, 0x6

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 201
    .local v15, smsCodingNational:I
    const/4 v1, 0x7

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 202
    .local v9, is_vmn_short_code:I
    if-nez v12, :cond_8

    .line 203
    move v12, v11

    .line 207
    :cond_8
    const/16 v1, 0x5c

    const-string v2, "ro.config.hw_opta"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_9

    const/16 v1, 0x9c

    const-string v2, "ro.config.hw_optb"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v1, v2, :cond_a

    .line 210
    :cond_9
    const-string v1, "gsm.hw.matchnum"

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_a
    const-string v1, "gsm.hw.matchnum.short"

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v1, "gsm.sms.7bit.enabled"

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v1, "gsm.sms.coding.national"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v1, "gsm.hw.matchnum.vmn_shortcode"

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v1, "GlobalParamsAdaptor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIMRecords:checkGlobalAutoMatchParam: after setprop numMatch = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "gsm.hw.matchnum"

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", numMatchShort = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "gsm.hw.matchnum.short"

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sms7BitEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/TelephonyManager;->isSms7BitEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", smsCodingNational = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "gsm.sms.coding.national"

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 223
    .end local v9           #is_vmn_short_code:I
    .end local v10           #name:Ljava/lang/String;
    .end local v11           #numMatch:I
    .end local v12           #numMatchShort:I
    .end local v13           #numeric:Ljava/lang/String;
    .end local v14           #sms7BitEnabled:I
    .end local v15           #smsCodingNational:I
    :catch_0
    move-exception v8

    .line 224
    .local v8, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "GlobalParamsAdaptor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIMRecords:checkGlobalAutoMatchParam: global version cause exception!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    .end local v8           #ex:Ljava/lang/Exception;
    :cond_b
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 229
    const/4 v1, 0x1

    new-array v0, v1, [I

    move-object/from16 v16, v0

    .line 230
    .restart local v16       #temp:[I
    const-string v1, "ro.config.smsCoding_National"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_c

    .line 231
    const/4 v1, 0x0

    const-string v2, "ro.config.smsCoding_National"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v16, v1

    .line 232
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/GsmAlphabet;->setEnabledSingleShiftTables([I)V

    goto/16 :goto_0

    .line 226
    .end local v16           #temp:[I
    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    .line 233
    .restart local v16       #temp:[I
    :cond_c
    const-string v1, "gsm.sms.coding.national"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_4

    .line 234
    const/4 v1, 0x0

    const-string v2, "gsm.sms.coding.national"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v16, v1

    .line 235
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/GsmAlphabet;->setEnabledSingleShiftTables([I)V

    goto/16 :goto_0
.end method

.method public checkGlobalEccNum(Ljava/lang/String;Landroid/content/Context;)V
    .locals 8
    .parameter "currentMccmnc"
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 240
    if-nez p1, :cond_1

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    const/4 v1, 0x0

    .line 246
    .local v1, custEccNumsStr:Ljava/lang/String;
    const/4 v0, 0x0

    .line 247
    .local v0, custEccNumsItems:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 251
    .local v2, custNumItem:[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "global_cust_ecc_nums"

    invoke-static {v5, v6}, Landroid/provider/SettingsEx$Systemex;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 257
    if-eqz v1, :cond_0

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 258
    const-string v5, ";"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 259
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v5, v0

    if-ge v4, v5, :cond_0

    .line 260
    aget-object v5, v0, v4

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 262
    const/4 v5, 0x2

    array-length v6, v2

    if-ne v5, v6, :cond_3

    aget-object v5, v2, v7

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    aget-object v5, v2, v7

    const/4 v6, 0x3

    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 266
    :cond_2
    :try_start_1
    const-string v5, "gsm.hw.cust.ecclist"

    const/4 v6, 0x1

    aget-object v6, v2, v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 267
    :catch_0
    move-exception v3

    .line 268
    .local v3, e:Ljava/lang/Exception;
    const-string v5, "GlobalParamsAdaptor"

    const-string v6, "Failed to save ril.ecclist to system property"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 252
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #i:I
    :catch_1
    move-exception v3

    .line 253
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v5, "GlobalParamsAdaptor"

    const-string v6, "Could not load default locales"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 259
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v4       #i:I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public checkPrePostPay(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 9
    .parameter "currentMccmnc"
    .parameter "currentImsi"
    .parameter "context"

    .prologue
    .line 75
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    const/4 v5, 0x0

    .line 81
    .local v5, prepay_postpay_mccmncs:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 82
    .local v6, prepay_postpay_mccmncs_strings:Ljava/lang/String;
    const/4 v4, 0x0

    .line 86
    .local v4, old_imsi_string:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "prepay_postpay_mccmncs"

    invoke-static {v7, v8}, Landroid/provider/SettingsEx$Systemex;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 94
    :try_start_1
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "old_imsi"

    invoke-static {v7, v8}, Landroid/provider/SettingsEx$Systemex;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 100
    :goto_1
    const/4 v2, 0x0

    .line 101
    .local v2, isContainer:Z
    const/4 v3, 0x1

    .line 102
    .local v3, isEqual:Z
    if-eqz v6, :cond_0

    .line 103
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 105
    invoke-direct {p0, v5, p1}, Lcom/android/internal/telephony/GlobalParamsAdaptor;->arrayContains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 106
    if-eqz v4, :cond_2

    .line 107
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 113
    :goto_2
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "old_imsi"

    invoke-static {v7, v8, p2}, Landroid/provider/SettingsEx$Systemex;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 120
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    .line 121
    const-string v7, "GlobalParamsAdaptor"

    const-string v8, "broadcast TelephonyIntents.ACTION_PRE_POST_PAY"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.ACTION_PRE_POST_PAY"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .local v1, intent:Landroid/content/Intent;
    const/high16 v7, 0x2000

    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 124
    const-string v7, "prePostPayState"

    const/4 v8, 0x1

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 125
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v1, v7, v8}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    goto :goto_0

    .line 87
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #isContainer:Z
    .end local v3           #isEqual:Z
    :catch_0
    move-exception v0

    .line 88
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "GlobalParamsAdaptor"

    const-string v8, "Could not load default locales"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 95
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 96
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v7, "GlobalParamsAdaptor"

    const-string v8, "Could not load default locales"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 109
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #isContainer:Z
    .restart local v3       #isEqual:Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method
