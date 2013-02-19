.class public Lcom/android/internal/telephony/PhoneFactory;
.super Ljava/lang/Object;
.source "PhoneFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/PhoneFactory$PhoneServiceInterface;
    }
.end annotation


# static fields
.field public static final CALLS_ON_IMS_ENABLED_PROPERTY:Ljava/lang/String; = "persist.radio.calls.on.ims"

.field static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field protected static final SOCKET_OPEN_MAX_RETRY:I = 0x3

.field protected static final SOCKET_OPEN_RETRY_MILLIS:I = 0x7d0

.field protected static mUiccController:Lcom/android/internal/telephony/uicc/UiccController; = null

.field protected static phoneService:Lcom/android/internal/telephony/PhoneFactory$PhoneServiceInterface; = null

.field protected static final preferredCdmaSubscription:I = 0x1

.field protected static sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

.field protected static sContext:Landroid/content/Context;

.field protected static sLooper:Landroid/os/Looper;

.field protected static sMadeDefaults:Z

.field protected static sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

.field protected static sProxyPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;

    .line 49
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    .line 59
    sput-object v1, Lcom/android/internal/telephony/PhoneFactory;->phoneService:Lcom/android/internal/telephony/PhoneFactory$PhoneServiceInterface;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCdmaPhone()Lcom/android/internal/telephony/Phone;
    .locals 5

    .prologue
    .line 263
    sget-object v2, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v2

    .line 264
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 272
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 276
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    :goto_0
    monitor-exit v2

    .line 277
    return-object v0

    .line 266
    .end local v0           #phone:Lcom/android/internal/telephony/Phone;
    :pswitch_0
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 267
    .restart local v0       #phone:Lcom/android/internal/telephony/Phone;
    goto :goto_0

    .line 276
    .end local v0           #phone:Lcom/android/internal/telephony/Phone;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 264
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 2

    .prologue
    .line 250
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 251
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PhoneFactory.getDefaultPhone must be called from Looper thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_0
    sget-boolean v0, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v0, :cond_1

    .line 256
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Default phones haven\'t been made yet!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public static getGsmPhone()Lcom/android/internal/telephony/Phone;
    .locals 5

    .prologue
    .line 281
    sget-object v2, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v2

    .line 282
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v4, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 283
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    monitor-exit v2

    return-object v0

    .line 284
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getPhoneType(I)I
    .locals 3
    .parameter "networkMode"

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 219
    packed-switch p0, :pswitch_data_0

    move v0, v1

    .line 245
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 230
    goto :goto_0

    .line 239
    :pswitch_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v2

    if-eq v2, v1, :cond_0

    move v0, v1

    .line 242
    goto :goto_0

    .line 219
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static isCallOnImsEnabled()Z
    .locals 2

    .prologue
    .line 301
    const-string v0, "persist.radio.calls.on.ims"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static makeDefaultPhone(Landroid/content/Context;)V
    .locals 15
    .parameter "context"

    .prologue
    const/4 v14, 0x1

    .line 91
    const-class v11, Lcom/android/internal/telephony/Phone;

    monitor-enter v11

    .line 92
    :try_start_0
    sget-boolean v10, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z

    if-nez v10, :cond_3

    .line 93
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v10

    sput-object v10, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    .line 94
    sput-object p0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    .line 96
    sget-object v10, Lcom/android/internal/telephony/PhoneFactory;->sLooper:Landroid/os/Looper;

    if-nez v10, :cond_0

    .line 97
    new-instance v10, Ljava/lang/RuntimeException;

    const-string v12, "PhoneFactory.makeDefaultPhone must be called from Looper thread"

    invoke-direct {v10, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 208
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 101
    :cond_0
    const/4 v9, 0x0

    .line 103
    .local v9, retryCount:I
    :goto_0
    const/4 v4, 0x0

    .line 104
    .local v4, hasException:Z
    add-int/lit8 v9, v9, 0x1

    .line 109
    :try_start_1
    new-instance v10, Landroid/net/LocalServerSocket;

    const-string v12, "com.android.internal.telephony"

    invoke-direct {v10, v12}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 114
    :goto_1
    if-nez v4, :cond_4

    .line 126
    :try_start_2
    new-instance v10, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    invoke-direct {v10}, Lcom/android/internal/telephony/DefaultPhoneNotifier;-><init>()V

    sput-object v10, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 129
    const/4 v8, 0x0

    .line 130
    .local v8, preferredNetworkMode:I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v10

    if-ne v10, v14, :cond_1

    .line 131
    const/4 v8, 0x7

    .line 133
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v12, "preferred_network_mode"

    invoke-static {v10, v12, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 135
    .local v6, networkMode:I
    const-string v10, "PHONE"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Network Mode set to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v5

    .line 143
    .local v5, lteOnCdma:I
    packed-switch v5, :pswitch_data_0

    .line 155
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v12, "preferred_cdma_subscription"

    const/4 v13, 0x1

    invoke-static {v10, v12, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 158
    .local v1, cdmaSubscription:I
    const-string v10, "PHONE"

    const-string v12, "lteOnCdma not set, using PREFERRED_CDMA_SUBSCRIPTION"

    invoke-static {v10, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :goto_2
    const-string v10, "PHONE"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cdma Subscription set to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-instance v10, Lcom/android/internal/telephony/RIL;

    invoke-direct {v10, p0, v6, v1}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;II)V

    sput-object v10, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 167
    const/4 v10, 0x1

    new-array v10, v10, [Lcom/android/internal/telephony/CommandsInterface;

    const/4 v12, 0x0

    sget-object v13, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    aput-object v13, v10, v12

    invoke-static {p0, v10}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v10

    sput-object v10, Lcom/android/internal/telephony/PhoneFactory;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 169
    invoke-static {v6}, Landroid/telephony/TelephonyManager;->getPhoneType(I)I

    move-result v7

    .line 170
    .local v7, phoneType:I
    if-ne v7, v14, :cond_6

    .line 171
    const-string v10, "PHONE"

    const-string v12, "Creating GSMPhone"

    invoke-static {v10, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    new-instance v10, Lcom/android/internal/telephony/PhoneProxy;

    new-instance v12, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v13, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v14, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v12, p0, v13, v14}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    invoke-direct {v10, v12}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v10, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;

    .line 190
    :cond_2
    :goto_3
    const/4 v10, 0x1

    sput-boolean v10, Lcom/android/internal/telephony/PhoneFactory;->sMadeDefaults:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 194
    :try_start_3
    const-string v10, "com.huawei.telephony.HuaweiPhoneService"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 195
    .local v0, HuaweiPhoneServiceClass:Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/PhoneFactory$PhoneServiceInterface;

    sput-object v10, Lcom/android/internal/telephony/PhoneFactory;->phoneService:Lcom/android/internal/telephony/PhoneFactory$PhoneServiceInterface;

    .line 196
    sget-object v10, Lcom/android/internal/telephony/PhoneFactory;->phoneService:Lcom/android/internal/telephony/PhoneFactory$PhoneServiceInterface;

    sget-object v12, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;

    sget-object v13, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    invoke-interface {v10, v12, v13}, Lcom/android/internal/telephony/PhoneFactory$PhoneServiceInterface;->setPhone(Lcom/android/internal/telephony/Phone;Landroid/content/Context;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_5

    .line 208
    .end local v0           #HuaweiPhoneServiceClass:Ljava/lang/Class;
    .end local v1           #cdmaSubscription:I
    .end local v4           #hasException:Z
    .end local v5           #lteOnCdma:I
    .end local v6           #networkMode:I
    .end local v7           #phoneType:I
    .end local v8           #preferredNetworkMode:I
    .end local v9           #retryCount:I
    :cond_3
    :goto_4
    :try_start_4
    monitor-exit v11

    .line 209
    return-void

    .line 110
    .restart local v4       #hasException:Z
    .restart local v9       #retryCount:I
    :catch_0
    move-exception v3

    .line 111
    .local v3, ex:Ljava/io/IOException;
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 116
    .end local v3           #ex:Ljava/io/IOException;
    :cond_4
    const/4 v10, 0x3

    if-le v9, v10, :cond_5

    .line 117
    new-instance v10, Ljava/lang/RuntimeException;

    const-string v12, "PhoneFactory probably already running"

    invoke-direct {v10, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 120
    :cond_5
    const-wide/16 v12, 0x7d0

    :try_start_5
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 121
    :catch_1
    move-exception v10

    goto/16 :goto_0

    .line 145
    .restart local v5       #lteOnCdma:I
    .restart local v6       #networkMode:I
    .restart local v8       #preferredNetworkMode:I
    :pswitch_0
    const/4 v1, 0x1

    .line 146
    .restart local v1       #cdmaSubscription:I
    :try_start_6
    const-string v10, "PHONE"

    const-string v12, "lteOnCdma is 0 use SUBSCRIPTION_FROM_NV"

    invoke-static {v10, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 149
    .end local v1           #cdmaSubscription:I
    :pswitch_1
    const/4 v1, 0x0

    .line 150
    .restart local v1       #cdmaSubscription:I
    const-string v10, "PHONE"

    const-string v12, "lteOnCdma is 1 use SUBSCRIPTION_FROM_RUIM"

    invoke-static {v10, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 174
    .restart local v7       #phoneType:I
    :cond_6
    const/4 v10, 0x2

    if-ne v7, v10, :cond_2

    .line 175
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v10

    packed-switch v10, :pswitch_data_1

    .line 183
    const-string v10, "PHONE"

    const-string v12, "Creating CDMAPhone"

    invoke-static {v10, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    new-instance v10, Lcom/android/internal/telephony/PhoneProxy;

    new-instance v12, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v13, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v14, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v12, p0, v13, v14}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    invoke-direct {v10, v12}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v10, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_3

    .line 177
    :pswitch_2
    const-string v10, "PHONE"

    const-string v12, "Creating CDMALTEPhone"

    invoke-static {v10, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    new-instance v10, Lcom/android/internal/telephony/PhoneProxy;

    new-instance v12, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    sget-object v13, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    sget-object v14, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-direct {v12, p0, v13, v14}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    invoke-direct {v10, v12}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v10, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_3

    .line 197
    :catch_2
    move-exception v2

    .line 198
    .local v2, e:Ljava/lang/InstantiationException;
    const-string v10, "PHONE"

    const-string v12, "InstantiationException "

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 199
    .end local v2           #e:Ljava/lang/InstantiationException;
    :catch_3
    move-exception v2

    .line 200
    .local v2, e:Ljava/lang/IllegalAccessException;
    const-string v10, "PHONE"

    const-string v12, "IllegalAccessException "

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 201
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v2

    .line 202
    .local v2, e:Ljava/lang/ClassNotFoundException;
    const-string v10, "PHONE"

    const-string v12, "ClassNotFoundException "

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 203
    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    :catch_5
    move-exception v2

    .line 204
    .local v2, e:Ljava/lang/SecurityException;
    const-string v10, "PHONE"

    const-string v12, "SecurityException "

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_4

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 175
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method public static makeDefaultPhones(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 70
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->makeDefaultPhone(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method public static makeSipPhone(Ljava/lang/String;)Lcom/android/internal/telephony/sip/SipPhone;
    .locals 2
    .parameter "sipUri"

    .prologue
    .line 293
    sget-object v0, Lcom/android/internal/telephony/PhoneFactory;->sContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/sip/SipPhoneFactory;->makePhone(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    return-object v0
.end method
