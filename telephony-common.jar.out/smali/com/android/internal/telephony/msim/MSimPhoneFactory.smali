.class public Lcom/android/internal/telephony/msim/MSimPhoneFactory;
.super Lcom/android/internal/telephony/PhoneFactory;
.source "MSimPhoneFactory.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field protected static MsimphoneService:Lcom/android/internal/telephony/PhoneFactory$PhoneServiceInterface;

.field private static mCardSubscriptionManager:Lcom/android/internal/telephony/msim/CardSubscriptionManager;

.field private static mMSimProxyManager:Lcom/android/internal/telephony/msim/MSimProxyManager;

.field private static mSubscriptionManager:Lcom/android/internal/telephony/msim/SubscriptionManager;

.field private static sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

.field private static sMadeMultiSimDefaults:Z

.field private static sProxyPhones:[Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    sput-object v1, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    .line 53
    sput-object v1, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    .line 55
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sMadeMultiSimDefaults:Z

    .line 61
    sput-object v1, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->MsimphoneService:Lcom/android/internal/telephony/PhoneFactory$PhoneServiceInterface;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneFactory;-><init>()V

    return-void
.end method

.method public static getDataSubscription()I
    .locals 4

    .prologue
    .line 301
    const/4 v1, 0x0

    .line 304
    .local v1, subscription:I
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "multi_sim_data_call"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 310
    :goto_0
    return v1

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "PHONE"

    const-string v3, "Settings Exception Reading Dual Sim Data Call Values"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getDefaultSubscription()I
    .locals 3

    .prologue
    .line 251
    const/4 v0, 0x0

    .line 253
    .local v0, subscription:I
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_subscription"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 258
    :goto_0
    return v0

    .line 255
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getMSimCdmaPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 5
    .parameter "subscription"

    .prologue
    .line 193
    sget-object v2, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v2

    .line 194
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/msim/MSimCDMAPhone;

    sget-object v1, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, p0

    sget-object v4, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v1, v3, v4, p0}, Lcom/android/internal/telephony/msim/MSimCDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 196
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    monitor-exit v2

    .line 197
    return-object v0

    .line 196
    .end local v0           #phone:Lcom/android/internal/telephony/Phone;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getMSimGsmPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 5
    .parameter "subscription"

    .prologue
    .line 201
    sget-object v2, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v2

    .line 202
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/msim/MSimGSMPhone;

    sget-object v1, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, p0

    sget-object v4, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v1, v3, v4, p0}, Lcom/android/internal/telephony/msim/MSimGSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 204
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    monitor-exit v2

    return-object v0

    .line 205
    .end local v0           #phone:Lcom/android/internal/telephony/Phone;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 2
    .parameter "subscription"

    .prologue
    .line 209
    sget-object v0, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sLooper:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 210
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "MSimPhoneFactory.getPhone must be called from Looper thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_0
    sget-boolean v0, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sMadeMultiSimDefaults:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    if-nez v0, :cond_3

    .line 215
    :cond_1
    sget-boolean v0, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sMadeDefaults:Z

    if-nez v0, :cond_2

    .line 216
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Default phones haven\'t been made yet!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_2
    if-nez p0, :cond_3

    .line 218
    sget-object v0, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;

    .line 222
    :goto_0
    return-object v0

    :cond_3
    sget-object v0, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static getSMSSubscription()I
    .locals 4

    .prologue
    .line 315
    const/4 v1, 0x0

    .line 317
    .local v1, subscription:I
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "multi_sim_sms"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 323
    :goto_0
    return v1

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "PHONE"

    const-string v3, "Settings Exception Reading Dual Sim SMS Values"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getVoiceSubscription()I
    .locals 4

    .prologue
    .line 263
    const/4 v1, 0x0

    .line 266
    .local v1, subscription:I
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "multi_sim_voice_call"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 272
    :goto_0
    return v1

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "PHONE"

    const-string v3, "Settings Exception Reading Dual Sim Voice Call Values"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isPromptEnabled()Z
    .locals 6

    .prologue
    .line 277
    const/4 v0, 0x0

    .line 278
    .local v0, prompt:Z
    const/4 v2, 0x0

    .line 280
    .local v2, value:I
    :try_start_0
    sget-object v3, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "multi_sim_voice_prompt"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 285
    :goto_0
    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 286
    :goto_1
    const-string v3, "PHONE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Prompt option:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return v0

    .line 282
    :catch_0
    move-exception v1

    .line 283
    .local v1, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "PHONE"

    const-string v4, "Settings Exception Reading Dual Sim Voice Prompt Values"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 285
    .end local v1           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static makeMultiSimDefaultPhone(Landroid/content/Context;)V
    .locals 22
    .parameter "context"

    .prologue
    .line 70
    const-class v17, Lcom/android/internal/telephony/Phone;

    monitor-enter v17

    .line 71
    :try_start_0
    sget-boolean v16, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sMadeMultiSimDefaults:Z

    if-nez v16, :cond_8

    .line 72
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v16

    sput-object v16, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sLooper:Landroid/os/Looper;

    .line 73
    sput-object p0, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sContext:Landroid/content/Context;

    .line 75
    sget-object v16, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sLooper:Landroid/os/Looper;

    if-nez v16, :cond_0

    .line 76
    new-instance v16, Ljava/lang/RuntimeException;

    const-string v18, "MSimPhoneFactory.makeDefaultPhone must be called from Looper thread"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 187
    :catchall_0
    move-exception v16

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v16

    .line 80
    :cond_0
    const/4 v14, 0x0

    .line 82
    .local v14, retryCount:I
    :goto_0
    const/4 v8, 0x0

    .line 83
    .local v8, hasException:Z
    add-int/lit8 v14, v14, 0x1

    .line 88
    :try_start_1
    new-instance v16, Landroid/net/LocalServerSocket;

    const-string v18, "com.android.internal.telephony"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 93
    :goto_1
    if-nez v8, :cond_2

    .line 105
    :try_start_2
    new-instance v16, Lcom/android/internal/telephony/msim/MSimDefaultPhoneNotifier;

    invoke-direct/range {v16 .. v16}, Lcom/android/internal/telephony/msim/MSimDefaultPhoneNotifier;-><init>()V

    sput-object v16, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 108
    const/4 v13, 0x0

    .line 109
    .local v13, preferredNetworkMode:I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v16

    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 110
    const/4 v13, 0x7

    .line 115
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v18, "subscription_mode"

    const/16 v19, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 118
    .local v5, cdmaSubscription:I
    const-string v16, "PHONE"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Cdma Subscription set to "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v11

    .line 124
    .local v11, numPhones:I
    new-array v10, v11, [I

    .line 125
    .local v10, networkModes:[I
    new-array v0, v11, [Lcom/android/internal/telephony/msim/MSimPhoneProxy;

    move-object/from16 v16, v0

    sput-object v16, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    .line 126
    new-array v0, v11, [Lcom/android/internal/telephony/RIL;

    move-object/from16 v16, v0

    sput-object v16, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    if-ge v9, v11, :cond_4

    .line 131
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v18, "preferred_network_mode"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1, v9}, Landroid/provider/Settings$Secure;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    aput v16, v10, v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    .line 138
    :goto_3
    :try_start_4
    const-string v16, "PHONE"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Network Mode set to "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    aget v19, v10, v9

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    sget-object v16, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    new-instance v18, Lcom/android/internal/telephony/RIL;

    aget v19, v10, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    aput-object v18, v16, v9

    .line 128
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 89
    .end local v5           #cdmaSubscription:I
    .end local v9           #i:I
    .end local v10           #networkModes:[I
    .end local v11           #numPhones:I
    .end local v13           #preferredNetworkMode:I
    :catch_0
    move-exception v7

    .line 90
    .local v7, ex:Ljava/io/IOException;
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 95
    .end local v7           #ex:Ljava/io/IOException;
    :cond_2
    const/16 v16, 0x3

    move/from16 v0, v16

    if-le v14, v0, :cond_3

    .line 96
    new-instance v16, Ljava/lang/RuntimeException;

    const-string v18, "MSimPhoneFactory probably already running"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 99
    :cond_3
    const-wide/16 v18, 0x7d0

    :try_start_5
    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 100
    :catch_1
    move-exception v16

    goto/16 :goto_0

    .line 134
    .restart local v5       #cdmaSubscription:I
    .restart local v9       #i:I
    .restart local v10       #networkModes:[I
    .restart local v11       #numPhones:I
    .restart local v13       #preferredNetworkMode:I
    :catch_2
    move-exception v15

    .line 135
    .local v15, snfe:Landroid/provider/Settings$SettingNotFoundException;
    :try_start_6
    const-string v16, "PHONE"

    const-string v18, "Settings Exception Reading Value At Index"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    aput v13, v10, v9

    goto :goto_3

    .line 143
    .end local v15           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    :cond_4
    sget-object v16, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v16

    sput-object v16, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 144
    sget-object v16, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    sget-object v18, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/msim/CardSubscriptionManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    move-result-object v16

    sput-object v16, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->mCardSubscriptionManager:Lcom/android/internal/telephony/msim/CardSubscriptionManager;

    .line 146
    sget-object v16, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    sget-object v18, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v16

    sput-object v16, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->mSubscriptionManager:Lcom/android/internal/telephony/msim/SubscriptionManager;

    .line 149
    const/4 v9, 0x0

    :goto_4
    if-ge v9, v11, :cond_7

    .line 150
    aget v16, v10, v9

    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->getPhoneType(I)I

    move-result v12

    .line 151
    .local v12, phoneType:I
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v12, v0, :cond_6

    .line 152
    const-string v16, "PHONE"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Creating MSimGSMPhone sub = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    sget-object v16, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    new-instance v18, Lcom/android/internal/telephony/msim/MSimPhoneProxy;

    new-instance v19, Lcom/android/internal/telephony/msim/MSimGSMPhone;

    sget-object v20, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v20, v20, v9

    sget-object v21, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/android/internal/telephony/msim/MSimGSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    invoke-direct/range {v18 .. v19}, Lcom/android/internal/telephony/msim/MSimPhoneProxy;-><init>(Lcom/android/internal/telephony/Phone;)V

    aput-object v18, v16, v9

    .line 149
    :cond_5
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 155
    :cond_6
    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v12, v0, :cond_5

    .line 156
    const-string v16, "PHONE"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Creating MSimCDMAPhone sub = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    sget-object v16, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    new-instance v18, Lcom/android/internal/telephony/msim/MSimPhoneProxy;

    new-instance v19, Lcom/android/internal/telephony/msim/MSimCDMAPhone;

    sget-object v20, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v20, v20, v9

    sget-object v21, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/android/internal/telephony/msim/MSimCDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    invoke-direct/range {v18 .. v19}, Lcom/android/internal/telephony/msim/MSimPhoneProxy;-><init>(Lcom/android/internal/telephony/Phone;)V

    aput-object v18, v16, v9

    goto :goto_5

    .line 161
    .end local v12           #phoneType:I
    :cond_7
    sget-object v16, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    sget-object v18, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    sget-object v19, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/msim/MSimProxyManager;->getInstance(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/msim/MSimProxyManager;

    move-result-object v16

    sput-object v16, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->mMSimProxyManager:Lcom/android/internal/telephony/msim/MSimProxyManager;

    .line 164
    const/16 v16, 0x1

    sput-boolean v16, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sMadeMultiSimDefaults:Z

    .line 167
    sget-object v16, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    const/16 v18, 0x0

    aget-object v16, v16, v18

    sput-object v16, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;

    .line 168
    sget-object v16, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    const/16 v18, 0x0

    aget-object v16, v16, v18

    sput-object v16, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 169
    const/16 v16, 0x1

    sput-boolean v16, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sMadeDefaults:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 172
    :try_start_7
    const-string v16, "com.huawei.telephony.HuaweiPhoneService"

    invoke-static/range {v16 .. v16}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 173
    .local v4, HuaweiPhoneServiceClass:Ljava/lang/Class;
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/internal/telephony/PhoneFactory$PhoneServiceInterface;

    sput-object v16, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->MsimphoneService:Lcom/android/internal/telephony/PhoneFactory$PhoneServiceInterface;

    .line 175
    sget-object v16, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->MsimphoneService:Lcom/android/internal/telephony/PhoneFactory$PhoneServiceInterface;

    sget-object v18, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    sget-object v19, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sContext:Landroid/content/Context;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/PhoneFactory$PhoneServiceInterface;->setPhone([Lcom/android/internal/telephony/Phone;Landroid/content/Context;)V

    .line 177
    sget-object v16, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->MsimphoneService:Lcom/android/internal/telephony/PhoneFactory$PhoneServiceInterface;

    new-instance v18, Lcom/android/internal/telephony/msim/HuaweiMsim;

    sget-object v19, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->mSubscriptionManager:Lcom/android/internal/telephony/msim/SubscriptionManager;

    invoke-direct/range {v18 .. v19}, Lcom/android/internal/telephony/msim/HuaweiMsim;-><init>(Lcom/android/internal/telephony/msim/SubscriptionManager;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/PhoneFactory$PhoneServiceInterface;->setHuaweiMsim(Lcom/android/internal/telephony/IHuaweiMsim;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/InstantiationException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_5

    .line 187
    .end local v4           #HuaweiPhoneServiceClass:Ljava/lang/Class;
    .end local v5           #cdmaSubscription:I
    .end local v8           #hasException:Z
    .end local v9           #i:I
    .end local v10           #networkModes:[I
    .end local v11           #numPhones:I
    .end local v13           #preferredNetworkMode:I
    .end local v14           #retryCount:I
    :cond_8
    :goto_6
    :try_start_8
    monitor-exit v17

    .line 188
    return-void

    .line 178
    .restart local v5       #cdmaSubscription:I
    .restart local v8       #hasException:Z
    .restart local v9       #i:I
    .restart local v10       #networkModes:[I
    .restart local v11       #numPhones:I
    .restart local v13       #preferredNetworkMode:I
    .restart local v14       #retryCount:I
    :catch_3
    move-exception v6

    .line 179
    .local v6, e:Ljava/lang/InstantiationException;
    const-string v16, "PHONE"

    const-string v18, "InstantiationException "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 180
    .end local v6           #e:Ljava/lang/InstantiationException;
    :catch_4
    move-exception v6

    .line 181
    .local v6, e:Ljava/lang/IllegalAccessException;
    const-string v16, "PHONE"

    const-string v18, "IllegalAccessException "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 182
    .end local v6           #e:Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v6

    .line 183
    .local v6, e:Ljava/lang/ClassNotFoundException;
    const-string v16, "PHONE"

    const-string v18, "ClassNotFoundException "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_6
.end method

.method public static makeMultiSimDefaultPhones(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 66
    invoke-static {p0}, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->makeMultiSimDefaultPhone(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method public static setDataSubscription(I)V
    .locals 3
    .parameter "subscription"

    .prologue
    .line 333
    sget-object v0, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "multi_sim_data_call"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 335
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataSubscription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    return-void
.end method

.method public static setDefaultSubscription(I)V
    .locals 4
    .parameter "subscription"

    .prologue
    .line 230
    sget-object v1, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_subscription"

    invoke-static {v1, v2, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 234
    if-ltz p0, :cond_0

    sget-object v1, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    array-length v1, v1

    if-ge p0, v1, :cond_0

    .line 235
    sget-object v1, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, p0

    sput-object v1, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;

    .line 236
    sget-object v1, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sCommandsInterfaces:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, p0

    sput-object v1, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 237
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sMadeDefaults:Z

    .line 241
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_DEFAULT_SUBSCRIPTION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 242
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 243
    const-string v1, "subscription"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 244
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDefaultSubscription : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Broadcasting Default Subscription Changed..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    sget-object v1, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 247
    return-void
.end method

.method public static setPromptEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 293
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 294
    .local v0, value:I
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "multi_sim_voice_prompt"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 296
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVoicePromptOption to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    return-void

    .line 293
    .end local v0           #value:I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setSMSSubscription(I)V
    .locals 4
    .parameter "subscription"

    .prologue
    .line 339
    sget-object v1, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "multi_sim_sms"

    invoke-static {v1, v2, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 342
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mms.transaction.SEND_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 343
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 344
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSMSSubscription : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    return-void
.end method

.method public static setVoiceSubscription(I)V
    .locals 3
    .parameter "subscription"

    .prologue
    .line 327
    sget-object v0, Lcom/android/internal/telephony/msim/MSimPhoneFactory;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "multi_sim_voice_call"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 329
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVoiceSubscription : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return-void
.end method
