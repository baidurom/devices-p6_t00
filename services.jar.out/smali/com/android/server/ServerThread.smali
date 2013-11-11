.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# static fields
.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final LOCAL_LOGV:Z = true

.field private static final MOTOR_TYPE_HAPTIC:Ljava/lang/String; = "int:2"

.field private static final MOTOR_TYPE_PATH:Ljava/lang/String; = "/sys/kernel/debug/boardid/common/audio/motor_type"

.field private static final TAG:Ljava/lang/String; = "SystemServer"


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;

.field private mDrmDialogService:Lcom/android/server/HWDrmDialogsService;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ServerThread;->mDrmDialogService:Lcom/android/server/HWDrmDialogsService;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ServerThread;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/server/ServerThread;->setAirplaneMode(Landroid/content/Context;)V

    return-void
.end method

.method public static readFileByChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "fileName"

    .prologue
    .line 1179
    const-string v7, "SystemServer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fileName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1181
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1182
    :cond_0
    const-string v7, ""

    .line 1206
    :goto_0
    return-object v7

    .line 1185
    :cond_1
    const/4 v0, 0x0

    .line 1186
    .local v0, charRead:I
    const/4 v3, 0x0

    .line 1187
    .local v3, reader:Ljava/io/Reader;
    const/16 v7, 0x200

    new-array v6, v7, [C

    .line 1188
    .local v6, tempChars:[C
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1191
    .local v5, sb:Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 1193
    .end local v3           #reader:Ljava/io/Reader;
    .local v4, reader:Ljava/io/Reader;
    :goto_1
    :try_start_1
    invoke-virtual {v4, v6}, Ljava/io/Reader;->read([C)I

    move-result v0

    const/4 v7, -0x1

    if-eq v0, v7, :cond_3

    .line 1194
    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1196
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 1197
    .end local v4           #reader:Ljava/io/Reader;
    .local v1, e1:Ljava/io/IOException;
    .restart local v3       #reader:Ljava/io/Reader;
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1199
    if-eqz v3, :cond_2

    .line 1201
    :try_start_3
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1206
    .end local v1           #e1:Ljava/io/IOException;
    :cond_2
    :goto_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 1199
    .end local v3           #reader:Ljava/io/Reader;
    .restart local v4       #reader:Ljava/io/Reader;
    :cond_3
    if-eqz v4, :cond_4

    .line 1201
    :try_start_4
    invoke-virtual {v4}, Ljava/io/Reader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_4
    :goto_4
    move-object v3, v4

    .line 1205
    .end local v4           #reader:Ljava/io/Reader;
    .restart local v3       #reader:Ljava/io/Reader;
    goto :goto_3

    .line 1199
    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v3, :cond_5

    .line 1201
    :try_start_5
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1199
    :cond_5
    :goto_6
    throw v7

    .line 1202
    :catch_1
    move-exception v8

    goto :goto_6

    .restart local v1       #e1:Ljava/io/IOException;
    :catch_2
    move-exception v7

    goto :goto_3

    .end local v1           #e1:Ljava/io/IOException;
    .end local v3           #reader:Ljava/io/Reader;
    .restart local v4       #reader:Ljava/io/Reader;
    :catch_3
    move-exception v7

    goto :goto_4

    .line 1199
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4           #reader:Ljava/io/Reader;
    .restart local v3       #reader:Ljava/io/Reader;
    goto :goto_5

    .line 1196
    :catch_4
    move-exception v1

    goto :goto_2
.end method

.method private sendAirplaneModeChangedBroadcast(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "on"

    .prologue
    .line 1126
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1127
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1128
    const-string v1, "state"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1129
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1130
    return-void
.end method

.method private setAirplaneMode(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v8, -0x1

    const/4 v3, 0x1

    .line 1135
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1138
    .local v1, lastAirplaneMode:I
    const-string v5, "SystemServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lastAirplaneMode= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    const-string v5, "RTC"

    const-string v6, "persist.sys.powerup_reason"

    const-string v7, "NORMAL"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1142
    const-string v3, "SystemServer"

    const-string v4, "RTC power on"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1147
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "user_set_airplane"

    invoke-static {v3, v4, v1}, Landroid/provider/SettingsEx$Systemex;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1149
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lcom/android/server/ServerThread;->sendAirplaneModeChangedBroadcast(Landroid/content/Context;Z)V

    .line 1167
    .end local v1           #lastAirplaneMode:I
    :cond_0
    :goto_0
    return-void

    .line 1152
    .restart local v1       #lastAirplaneMode:I
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "user_set_airplane"

    const/4 v7, -0x1

    invoke-static {v5, v6, v7}, Landroid/provider/SettingsEx$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1154
    .local v2, userChangeAirplane:I
    const-string v5, "SystemServer"

    const-string v6, "normal power on"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    const-string v5, "SystemServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "userSetAirplane= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    if-eq v8, v2, :cond_0

    .line 1160
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1161
    if-ne v2, v3, :cond_2

    :goto_1
    invoke-direct {p0, p1, v3}, Lcom/android/server/ServerThread;->sendAirplaneModeChangedBroadcast(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1164
    .end local v1           #lastAirplaneMode:I
    .end local v2           #userChangeAirplane:I
    :catch_0
    move-exception v0

    .line 1165
    .local v0, e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v4, "power off alarm occure error:"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/Throwable;
    .restart local v1       #lastAirplaneMode:I
    .restart local v2       #userChangeAirplane:I
    :cond_2
    move v3, v4

    .line 1161
    goto :goto_1
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 1171
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1172
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1175
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1176
    return-void
.end method


# virtual methods
.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 113
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    return-void
.end method

.method public run()V
    .locals 147

    .prologue
    .line 119
    const/16 v7, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    invoke-static {v7, v11, v12}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 122
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 124
    const/4 v7, -0x2

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 127
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 128
    const/4 v7, 0x0

    invoke-static {v7}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 132
    const-string v7, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v120

    .line 134
    .local v120, shutdownAction:Ljava/lang/String;
    if-eqz v120, :cond_0

    invoke-virtual/range {v120 .. v120}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 135
    const/4 v7, 0x0

    move-object/from16 v0, v120

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x31

    if-ne v7, v9, :cond_14

    const/16 v114, 0x1

    .line 138
    .local v114, reboot:Z
    :goto_0
    invoke-virtual/range {v120 .. v120}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v9, 0x1

    if-le v7, v9, :cond_15

    .line 139
    const/4 v7, 0x1

    invoke-virtual/range {v120 .. v120}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v120

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v113

    .line 144
    .local v113, reason:Ljava/lang/String;
    :goto_1
    move/from16 v0, v114

    move-object/from16 v1, v113

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 148
    .end local v113           #reason:Ljava/lang/String;
    .end local v114           #reboot:Z
    :cond_0
    const-string v7, "ro.factorytest"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v87

    .line 149
    .local v87, factoryTestStr:Ljava/lang/String;
    const-string v7, ""

    move-object/from16 v0, v87

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    const/16 v86, 0x0

    .line 151
    .local v86, factoryTest:I
    :goto_2
    const-string v7, "1"

    const-string v9, "ro.config.headless"

    const-string v11, "0"

    invoke-static {v9, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    .line 153
    .local v33, headless:Z
    const/16 v93, 0x0

    .line 154
    .local v93, installer:Lcom/android/server/pm/Installer;
    const/16 v61, 0x0

    .line 155
    .local v61, accountManager:Landroid/accounts/AccountManagerService;
    const/16 v74, 0x0

    .line 156
    .local v74, contentService:Landroid/content/ContentService;
    const/16 v95, 0x0

    .line 157
    .local v95, lights:Lcom/android/server/LightsService;
    const/16 v112, 0x0

    .line 158
    .local v112, power:Lcom/android/server/power/PowerManagerService;
    const/16 v80, 0x0

    .line 159
    .local v80, display:Lcom/android/server/display/DisplayManagerService;
    const/16 v66, 0x0

    .line 160
    .local v66, battery:Lcom/android/server/BatteryService;
    const/16 v137, 0x0

    .line 161
    .local v137, vibrator:Lcom/android/server/VibratorService;
    const/16 v63, 0x0

    .line 162
    .local v63, alarm:Lcom/android/server/AlarmManagerService;
    const/16 v101, 0x0

    .line 163
    .local v101, mountService:Lcom/android/server/MountService;
    const/16 v30, 0x0

    .line 164
    .local v30, networkManagement:Lcom/android/server/NetworkManagementService;
    const/16 v29, 0x0

    .line 165
    .local v29, networkStats:Lcom/android/server/net/NetworkStatsService;
    const/16 v105, 0x0

    .line 166
    .local v105, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v72, 0x0

    .line 167
    .local v72, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v143, 0x0

    .line 168
    .local v143, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v141, 0x0

    .line 169
    .local v141, wifi:Lcom/android/server/WifiService;
    const/16 v119, 0x0

    .line 170
    .local v119, serviceDiscovery:Lcom/android/server/NsdService;
    const/16 v111, 0x0

    .line 171
    .local v111, pm:Landroid/content/pm/IPackageManager;
    const/4 v5, 0x0

    .line 172
    .local v5, context:Landroid/content/Context;
    const/16 v145, 0x0

    .line 173
    .local v145, wm:Lcom/android/server/wm/WindowManagerService;
    const/16 v67, 0x0

    .line 174
    .local v67, bluetooth:Lcom/android/server/BluetoothManagerService;
    const/16 v81, 0x0

    .line 175
    .local v81, dock:Lcom/android/server/DockObserver;
    const/16 v135, 0x0

    .line 176
    .local v135, usb:Lcom/android/server/usb/UsbService;
    const/16 v117, 0x0

    .line 177
    .local v117, serial:Lcom/android/server/SerialService;
    const/16 v130, 0x0

    .line 178
    .local v130, twilight:Lcom/android/server/TwilightService;
    const/16 v133, 0x0

    .line 179
    .local v133, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v115, 0x0

    .line 180
    .local v115, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v126, 0x0

    .line 181
    .local v126, throttle:Lcom/android/server/ThrottleService;
    const/16 v107, 0x0

    .line 182
    .local v107, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    const/16 v69, 0x0

    .line 183
    .local v69, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    const/16 v92, 0x0

    .line 184
    .local v92, inputManager:Lcom/android/server/input/InputManagerService;
    const/16 v124, 0x0

    .line 186
    .local v124, telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    const/16 v103, 0x0

    .line 189
    .local v103, msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    invoke-static {}, Lcom/android/server/HWDataSpaceHolder;->activePlaceFile()V

    .line 196
    new-instance v132, Landroid/os/HandlerThread;

    const-string v7, "UI"

    move-object/from16 v0, v132

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 197
    .local v132, uiHandlerThread:Landroid/os/HandlerThread;
    invoke-virtual/range {v132 .. v132}, Landroid/os/HandlerThread;->start()V

    .line 198
    new-instance v20, Landroid/os/Handler;

    invoke-virtual/range {v132 .. v132}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-direct {v0, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 199
    .local v20, uiHandler:Landroid/os/Handler;
    new-instance v7, Lcom/android/server/ServerThread$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 216
    new-instance v146, Landroid/os/HandlerThread;

    const-string v7, "WindowManager"

    move-object/from16 v0, v146

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 217
    .local v146, wmHandlerThread:Landroid/os/HandlerThread;
    invoke-virtual/range {v146 .. v146}, Landroid/os/HandlerThread;->start()V

    .line 218
    new-instance v21, Landroid/os/Handler;

    invoke-virtual/range {v146 .. v146}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 219
    .local v21, wmHandler:Landroid/os/Handler;
    new-instance v7, Lcom/android/server/ServerThread$2;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/ServerThread$2;-><init>(Lcom/android/server/ServerThread;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 236
    const/16 v24, 0x0

    .line 239
    .local v24, onlyCore:Z
    :try_start_0
    const-string v7, "true"

    const-string v9, "ro.config.hw_quickpoweron"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 240
    const-string v7, "persist.sys.quickpoweron"

    const-string v9, ""

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v121

    .line 241
    .local v121, siBefor:Ljava/lang/String;
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "before ACTION_BOOT_COMPLETED  persist.sys.quickpoweron is "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v121

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const-string v7, "persist.sys.quickpoweron"

    const-string v9, "normal"

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .end local v121           #siBefor:Ljava/lang/String;
    :cond_1
    const-string v7, "SystemServer"

    const-string v9, "Waiting for installd to be ready."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    new-instance v94, Lcom/android/server/pm/Installer;

    invoke-direct/range {v94 .. v94}, Lcom/android/server/pm/Installer;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_52

    .line 250
    .end local v93           #installer:Lcom/android/server/pm/Installer;
    .local v94, installer:Lcom/android/server/pm/Installer;
    :try_start_1
    invoke-virtual/range {v94 .. v94}, Lcom/android/server/pm/Installer;->ping()Z

    .line 252
    const-string v7, "SystemServer"

    const-string v9, "Entropy Mixer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const-string v7, "entropy"

    new-instance v9, Lcom/android/server/EntropyMixer;

    invoke-direct {v9}, Lcom/android/server/EntropyMixer;-><init>()V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 255
    const-string v7, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    new-instance v4, Lcom/android/server/power/PowerManagerService;

    invoke-direct {v4}, Lcom/android/server/power/PowerManagerService;-><init>()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_53

    .line 257
    .end local v112           #power:Lcom/android/server/power/PowerManagerService;
    .local v4, power:Lcom/android/server/power/PowerManagerService;
    :try_start_2
    const-string v7, "power"

    invoke-static {v7, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 259
    const-string v7, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-static/range {v86 .. v86}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v5

    .line 262
    const-string v7, "SystemServer"

    const-string v9, "Display Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    new-instance v10, Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v10, v5, v0, v1}, Lcom/android/server/display/DisplayManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_54

    .line 264
    .end local v80           #display:Lcom/android/server/display/DisplayManagerService;
    .local v10, display:Lcom/android/server/display/DisplayManagerService;
    :try_start_3
    const-string v7, "display"

    const/4 v9, 0x1

    invoke-static {v7, v10, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 267
    const-string v7, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    sget v7, Lcom/huawei/permission/StubController;->isPermissionManagerPropertyOn:I

    if-nez v7, :cond_17

    .line 270
    new-instance v125, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v125

    invoke-direct {v0, v5}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V

    .end local v124           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .local v125, telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v124, v125

    .line 275
    .end local v125           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v124       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :goto_3
    const-string v7, "telephony.registry"

    move-object/from16 v0, v124

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 277
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 278
    const-string v7, "SystemServer"

    const-string v9, "MSimTelephony Registry"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    new-instance v104, Lcom/android/server/MSimTelephonyRegistry;

    move-object/from16 v0, v104

    invoke-direct {v0, v5}, Lcom/android/server/MSimTelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 280
    .end local v103           #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    .local v104, msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    :try_start_4
    const-string v7, "telephony.msim.registry"

    move-object/from16 v0, v104

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_55

    move-object/from16 v103, v104

    .line 284
    .end local v104           #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    .restart local v103       #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    :cond_2
    :try_start_5
    const-string v7, "SystemServer"

    const-string v9, "Scheduling Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const-string v7, "scheduling_policy"

    new-instance v9, Landroid/os/SchedulingPolicyService;

    invoke-direct {v9}, Landroid/os/SchedulingPolicyService;-><init>()V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 288
    invoke-static {v5}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 290
    invoke-virtual {v10}, Lcom/android/server/display/DisplayManagerService;->waitForDefaultDisplay()Z

    move-result v7

    if-nez v7, :cond_3

    .line 291
    const-string v7, "Timeout waiting for default display to be initialized."

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 295
    :cond_3
    const-string v7, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const-string v7, "vold.decrypt"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v77

    .line 298
    .local v77, cryptState:Ljava/lang/String;
    const-string v7, "trigger_restart_min_framework"

    move-object/from16 v0, v77

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 299
    const-string v7, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/16 v24, 0x1

    .line 306
    :cond_4
    :goto_4
    if-eqz v86, :cond_19

    const/4 v7, 0x1

    :goto_5
    move-object/from16 v0, v94

    move/from16 v1, v24

    invoke-static {v5, v0, v7, v1}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Landroid/content/pm/IPackageManager;
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v111

    .line 309
    const/16 v88, 0x0

    .line 311
    .local v88, firstBoot:Z
    :try_start_6
    invoke-interface/range {v111 .. v111}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3b
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    move-result v88

    .line 315
    :goto_6
    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 317
    const-string v7, "SystemServer"

    const-string v9, "User Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const-string v7, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 322
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1

    .line 326
    :try_start_8
    const-string v7, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    new-instance v62, Landroid/accounts/AccountManagerService;

    move-object/from16 v0, v62

    invoke-direct {v0, v5}, Landroid/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1

    .line 328
    .end local v61           #accountManager:Landroid/accounts/AccountManagerService;
    .local v62, accountManager:Landroid/accounts/AccountManagerService;
    :try_start_9
    const-string v7, "account"

    move-object/from16 v0, v62

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_5a
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_56

    move-object/from16 v61, v62

    .line 333
    .end local v62           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v61       #accountManager:Landroid/accounts/AccountManagerService;
    :goto_7
    :try_start_a
    const-string v7, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const/4 v7, 0x1

    move/from16 v0, v86

    if-ne v0, v7, :cond_1a

    const/4 v7, 0x1

    :goto_8
    invoke-static {v5, v7}, Landroid/content/ContentService;->main(Landroid/content/Context;Z)Landroid/content/ContentService;

    move-result-object v74

    .line 337
    const-string v7, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 340
    const-string v7, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    new-instance v6, Lcom/android/server/LightsService;

    invoke-direct {v6, v5}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_1

    .line 343
    .end local v95           #lights:Lcom/android/server/LightsService;
    .local v6, lights:Lcom/android/server/LightsService;
    :try_start_b
    const-string v7, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    new-instance v8, Lcom/android/server/BatteryService;

    invoke-direct {v8, v5, v6}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_57

    .line 345
    .end local v66           #battery:Lcom/android/server/BatteryService;
    .local v8, battery:Lcom/android/server/BatteryService;
    :try_start_c
    const-string v7, "battery"

    invoke-static {v7, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 347
    const-string v7, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_3

    .line 349
    const/16 v89, 0x0

    .line 351
    .local v89, hashaptic:Ljava/lang/String;
    :try_start_d
    const-string v7, "/sys/kernel/debug/boardid/common/audio/motor_type"

    invoke-static {v7}, Lcom/android/server/ServerThread;->readFileByChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v11, 0x5

    invoke-virtual {v7, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_3

    move-result-object v89

    .line 355
    :goto_9
    :try_start_e
    const-string v7, "int:2"

    move-object/from16 v0, v89

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 356
    const-string v7, "SystemServer"

    const-string v9, "MOTOR=Haptic"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const-string v7, "vibrator"

    new-instance v9, Lcom/android/server/HapticService;

    invoke-direct {v9, v5}, Lcom/android/server/HapticService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 365
    :goto_a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v9

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/power/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/BatteryService;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/display/DisplayManagerService;)V

    .line 368
    const-string v7, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    new-instance v15, Lcom/android/server/AlarmManagerService;

    invoke-direct {v15, v5}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_3

    .line 370
    .end local v63           #alarm:Lcom/android/server/AlarmManagerService;
    .local v15, alarm:Lcom/android/server/AlarmManagerService;
    :try_start_f
    const-string v7, "alarm"

    invoke-static {v7, v15}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 373
    const-string v7, "true"

    const-string v9, "ro.huawei.cust.oma_drm"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 374
    new-instance v7, Lcom/android/server/HWDrmDialogsService;

    invoke-direct {v7, v5}, Lcom/android/server/HWDrmDialogsService;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/ServerThread;->mDrmDialogService:Lcom/android/server/HWDrmDialogsService;

    .line 377
    :cond_5
    const-string v7, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v16

    move-object v12, v5

    move-object v13, v8

    move-object v14, v4

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/power/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 381
    const-string v7, "SystemServer"

    const-string v9, "Input Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    new-instance v19, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_58

    .line 384
    .end local v92           #inputManager:Lcom/android/server/input/InputManagerService;
    .local v19, inputManager:Lcom/android/server/input/InputManagerService;
    :try_start_10
    const-string v7, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const/4 v7, 0x1

    move/from16 v0, v86

    if-eq v0, v7, :cond_1c

    const/16 v22, 0x1

    :goto_b
    if-nez v88, :cond_1d

    const/16 v23, 0x1

    :goto_c
    move-object/from16 v16, v5

    move-object/from16 v17, v4

    move-object/from16 v18, v10

    invoke-static/range {v16 .. v24}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/input/InputManagerService;Landroid/os/Handler;Landroid/os/Handler;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v145

    .line 389
    const-string v7, "window"

    move-object/from16 v0, v145

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 390
    const-string v7, "input"

    move-object/from16 v0, v19

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 392
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    move-object/from16 v0, v145

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    invoke-static {v5}, Lcom/baidu/service/YiServiceLoader;->main(Landroid/content/Context;)V
    
    .line 394
    invoke-virtual/range {v145 .. v145}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 395
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/input/InputManagerService;->start()V

    .line 397
    move-object/from16 v0, v145

    invoke-virtual {v10, v0}, Lcom/android/server/display/DisplayManagerService;->setWindowManager(Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;)V

    .line 398
    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/android/server/display/DisplayManagerService;->setInputManager(Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;)V

    .line 403
    const-string v7, "ro.kernel.qemu"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "1"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 404
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_4

    :goto_d
    move-object/from16 v93, v94

    .line 418
    .end local v77           #cryptState:Ljava/lang/String;
    .end local v88           #firstBoot:Z
    .end local v89           #hashaptic:Ljava/lang/String;
    .end local v94           #installer:Lcom/android/server/pm/Installer;
    .restart local v93       #installer:Lcom/android/server/pm/Installer;
    :goto_e
    const/16 v78, 0x0

    .line 419
    .local v78, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v122, 0x0

    .line 420
    .local v122, statusBar:Lcom/android/server/StatusBarManagerService;
    const/16 v90, 0x0

    .line 421
    .local v90, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v64, 0x0

    .line 422
    .local v64, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v109, 0x0

    .line 423
    .local v109, notification:Lcom/android/server/NotificationManagerService;
    const/16 v139, 0x0

    .line 424
    .local v139, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v96, 0x0

    .line 425
    .local v96, location:Lcom/android/server/LocationManagerService;
    const/16 v75, 0x0

    .line 426
    .local v75, countryDetector:Lcom/android/server/CountryDetectorService;
    const/16 v128, 0x0

    .line 427
    .local v128, tsms:Lcom/android/server/TextServicesManagerService;
    const/16 v98, 0x0

    .line 428
    .local v98, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    const/16 v83, 0x0

    .line 431
    .local v83, dreamy:Lcom/android/server/dreams/DreamManagerService;
    const/4 v7, 0x1

    move/from16 v0, v86

    if-eq v0, v7, :cond_6

    .line 433
    :try_start_11
    const-string v7, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    new-instance v91, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v91

    move-object/from16 v1, v145

    invoke-direct {v0, v5, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_5

    .line 435
    .end local v90           #imm:Lcom/android/server/InputMethodManagerService;
    .local v91, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_12
    const-string v7, "input_method"

    move-object/from16 v0, v91

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_51

    move-object/from16 v90, v91

    .line 441
    .end local v91           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v90       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_f
    :try_start_13
    const-string v7, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const-string v7, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_6

    .line 450
    :cond_6
    :goto_10
    :try_start_14
    invoke-virtual/range {v145 .. v145}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_7

    .line 456
    :goto_11
    :try_start_15
    invoke-interface/range {v111 .. v111}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_8

    .line 462
    :goto_12
    :try_start_16
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x10403e9

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v11, 0x0

    invoke-interface {v7, v9, v11}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_50

    .line 469
    :goto_13
    const/4 v7, 0x1

    move/from16 v0, v86

    if-eq v0, v7, :cond_21

    .line 470
    const-string v7, "0"

    const-string v9, "system_init.startmountservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 476
    :try_start_17
    const-string v7, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    new-instance v102, Lcom/android/server/MountService;

    move-object/from16 v0, v102

    invoke-direct {v0, v5}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_9

    .line 478
    .end local v101           #mountService:Lcom/android/server/MountService;
    .local v102, mountService:Lcom/android/server/MountService;
    :try_start_18
    const-string v7, "mount"

    move-object/from16 v0, v102

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_4f

    move-object/from16 v101, v102

    .line 485
    .end local v102           #mountService:Lcom/android/server/MountService;
    .restart local v101       #mountService:Lcom/android/server/MountService;
    :cond_7
    :goto_14
    :try_start_19
    const-string v7, "SystemServer"

    const-string v9, "LockSettingsService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    new-instance v99, Lcom/android/internal/widget/LockSettingsService;

    move-object/from16 v0, v99

    invoke-direct {v0, v5}, Lcom/android/internal/widget/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_a

    .line 487
    .end local v98           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .local v99, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :try_start_1a
    const-string v7, "lock_settings"

    move-object/from16 v0, v99

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_4e

    move-object/from16 v98, v99

    .line 493
    .end local v99           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v98       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :goto_15
    :try_start_1b
    const-string v7, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    new-instance v79, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v79

    invoke-direct {v0, v5}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_b

    .line 495
    .end local v78           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v79, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_1c
    const-string v7, "device_policy"

    move-object/from16 v0, v79

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_4d

    move-object/from16 v78, v79

    .line 501
    .end local v79           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v78       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :goto_16
    :try_start_1d
    const-string v7, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    new-instance v123, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v123

    move-object/from16 v1, v145

    invoke-direct {v0, v5, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_c

    .line 503
    .end local v122           #statusBar:Lcom/android/server/StatusBarManagerService;
    .local v123, statusBar:Lcom/android/server/StatusBarManagerService;
    :try_start_1e
    const-string v7, "statusbar"

    move-object/from16 v0, v123

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_4c

    move-object/from16 v122, v123

    .line 509
    .end local v123           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v122       #statusBar:Lcom/android/server/StatusBarManagerService;
    :goto_17
    :try_start_1f
    const-string v7, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const-string v7, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v5}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_d

    .line 517
    :goto_18
    :try_start_20
    const-string v7, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    invoke-static {v5}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v30

    .line 519
    const-string v7, "network_management"

    move-object/from16 v0, v30

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_e

    .line 525
    :goto_19
    :try_start_21
    const-string v7, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    new-instance v129, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v129

    invoke-direct {v0, v5}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_f

    .line 527
    .end local v128           #tsms:Lcom/android/server/TextServicesManagerService;
    .local v129, tsms:Lcom/android/server/TextServicesManagerService;
    :try_start_22
    const-string v7, "textservices"

    move-object/from16 v0, v129

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_4b

    move-object/from16 v128, v129

    .line 533
    .end local v129           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v128       #tsms:Lcom/android/server/TextServicesManagerService;
    :goto_1a
    :try_start_23
    const-string v7, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    new-instance v106, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v106

    move-object/from16 v1, v30

    invoke-direct {v0, v5, v1, v15}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_10

    .line 535
    .end local v29           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .local v106, networkStats:Lcom/android/server/net/NetworkStatsService;
    :try_start_24
    const-string v7, "netstats"

    move-object/from16 v0, v106

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_4a

    move-object/from16 v29, v106

    .line 541
    .end local v106           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v29       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :goto_1b
    :try_start_25
    const-string v7, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    new-instance v25, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v27

    move-object/from16 v26, v5

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_11

    .line 545
    .end local v105           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .local v25, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_26
    const-string v7, "netpolicy"

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_49

    .line 551
    :goto_1c
    :try_start_27
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    new-instance v144, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v144

    invoke-direct {v0, v5}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_12

    .line 553
    .end local v143           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .local v144, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_28
    const-string v7, "wifip2p"

    move-object/from16 v0, v144

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_48

    move-object/from16 v143, v144

    .line 559
    .end local v144           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v143       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :goto_1d
    :try_start_29
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    new-instance v142, Lcom/android/server/WifiService;

    move-object/from16 v0, v142

    invoke-direct {v0, v5}, Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_13

    .line 561
    .end local v141           #wifi:Lcom/android/server/WifiService;
    .local v142, wifi:Lcom/android/server/WifiService;
    :try_start_2a
    const-string v7, "wifi"

    move-object/from16 v0, v142

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_47

    move-object/from16 v141, v142

    .line 567
    .end local v142           #wifi:Lcom/android/server/WifiService;
    .restart local v141       #wifi:Lcom/android/server/WifiService;
    :goto_1e
    :try_start_2b
    const-string v7, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    new-instance v73, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v73

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    move-object/from16 v3, v25

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_14

    .line 570
    .end local v72           #connectivity:Lcom/android/server/ConnectivityService;
    .local v73, connectivity:Lcom/android/server/ConnectivityService;
    :try_start_2c
    const-string v7, "connectivity"

    move-object/from16 v0, v73

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 571
    move-object/from16 v0, v29

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 572
    move-object/from16 v0, v25

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 573
    invoke-virtual/range {v141 .. v141}, Lcom/android/server/WifiService;->checkAndStartWifi()V

    .line 574
    invoke-virtual/range {v143 .. v143}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_46

    move-object/from16 v72, v73

    .line 580
    .end local v73           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v72       #connectivity:Lcom/android/server/ConnectivityService;
    :goto_1f
    :try_start_2d
    const-string v7, "SystemServer"

    const-string v9, "Network Service Discovery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    invoke-static {v5}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v119

    .line 582
    const-string v7, "servicediscovery"

    move-object/from16 v0, v119

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_15

    .line 589
    :goto_20
    :try_start_2e
    const-string v7, "SystemServer"

    const-string v9, "Throttle Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    new-instance v127, Lcom/android/server/ThrottleService;

    move-object/from16 v0, v127

    invoke-direct {v0, v5}, Lcom/android/server/ThrottleService;-><init>(Landroid/content/Context;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_16

    .line 591
    .end local v126           #throttle:Lcom/android/server/ThrottleService;
    .local v127, throttle:Lcom/android/server/ThrottleService;
    :try_start_2f
    const-string v7, "throttle"

    move-object/from16 v0, v127

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_45

    move-object/from16 v126, v127

    .line 598
    .end local v127           #throttle:Lcom/android/server/ThrottleService;
    .restart local v126       #throttle:Lcom/android/server/ThrottleService;
    :goto_21
    :try_start_30
    const-string v7, "SystemServer"

    const-string v9, "UpdateLock Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    const-string v7, "updatelock"

    new-instance v9, Lcom/android/server/UpdateLockService;

    invoke-direct {v9, v5}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_17

    .line 610
    :goto_22
    if-eqz v101, :cond_8

    .line 611
    invoke-virtual/range {v101 .. v101}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 615
    :cond_8
    if-eqz v61, :cond_9

    .line 616
    :try_start_31
    invoke-virtual/range {v61 .. v61}, Landroid/accounts/AccountManagerService;->systemReady()V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_18

    .line 622
    :cond_9
    :goto_23
    if-eqz v74, :cond_a

    .line 623
    :try_start_32
    invoke-virtual/range {v74 .. v74}, Landroid/content/ContentService;->systemReady()V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_19

    .line 629
    :cond_a
    :goto_24
    :try_start_33
    const-string v7, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    new-instance v110, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v110

    move-object/from16 v1, v122

    invoke-direct {v0, v5, v1, v6}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_1a

    .line 631
    .end local v109           #notification:Lcom/android/server/NotificationManagerService;
    .local v110, notification:Lcom/android/server/NotificationManagerService;
    :try_start_34
    const-string v7, "notification"

    move-object/from16 v0, v110

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 632
    move-object/from16 v0, v25

    move-object/from16 v1, v110

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_44

    move-object/from16 v109, v110

    .line 638
    .end local v110           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v109       #notification:Lcom/android/server/NotificationManagerService;
    :goto_25
    :try_start_35
    const-string v7, "SystemServer"

    const-string v9, "HDMI Connect Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    const-string v7, "hdmi"

    new-instance v9, Lcom/android/server/HDMIConnectService;

    invoke-direct {v9, v5}, Lcom/android/server/HDMIConnectService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_1b

    .line 644
    :goto_26
    :try_start_36
    const-string v7, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    const-string v7, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v5}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_1c

    .line 652
    :goto_27
    :try_start_37
    const-string v7, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    new-instance v97, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v97

    invoke-direct {v0, v5}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_1d

    .line 654
    .end local v96           #location:Lcom/android/server/LocationManagerService;
    .local v97, location:Lcom/android/server/LocationManagerService;
    :try_start_38
    const-string v7, "location"

    move-object/from16 v0, v97

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_43

    move-object/from16 v96, v97

    .line 660
    .end local v97           #location:Lcom/android/server/LocationManagerService;
    .restart local v96       #location:Lcom/android/server/LocationManagerService;
    :goto_28
    :try_start_39
    const-string v7, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    new-instance v76, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v76

    invoke-direct {v0, v5}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_1e

    .line 662
    .end local v75           #countryDetector:Lcom/android/server/CountryDetectorService;
    .local v76, countryDetector:Lcom/android/server/CountryDetectorService;
    :try_start_3a
    const-string v7, "country_detector"

    move-object/from16 v0, v76

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_42

    move-object/from16 v75, v76

    .line 668
    .end local v76           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v75       #countryDetector:Lcom/android/server/CountryDetectorService;
    :goto_29
    :try_start_3b
    const-string v7, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    const-string v7, "search"

    new-instance v9, Landroid/server/search/SearchManagerService;

    invoke-direct {v9, v5}, Landroid/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_1f

    .line 676
    :goto_2a
    :try_start_3c
    const-string v7, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    const-string v7, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v11, Ljava/io/File;

    const-string v12, "/data/system/dropbox"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v5, v11}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_20

    .line 683
    :goto_2b
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x111002b

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 686
    :try_start_3d
    const-string v7, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    if-nez v33, :cond_b

    .line 688
    new-instance v140, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v140

    invoke-direct {v0, v5}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_21

    .line 689
    .end local v139           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v140, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_3e
    const-string v7, "wallpaper"

    move-object/from16 v0, v140

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_41

    move-object/from16 v139, v140

    .line 696
    .end local v140           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v139       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_b
    :goto_2c
    const-string v7, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 698
    :try_start_3f
    const-string v7, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    const-string v7, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v5}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_22

    .line 706
    :cond_c
    :goto_2d
    :try_start_40
    const-string v7, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    new-instance v82, Lcom/android/server/DockObserver;

    move-object/from16 v0, v82

    invoke-direct {v0, v5}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_23

    .end local v81           #dock:Lcom/android/server/DockObserver;
    .local v82, dock:Lcom/android/server/DockObserver;
    move-object/from16 v81, v82

    .line 714
    .end local v82           #dock:Lcom/android/server/DockObserver;
    .restart local v81       #dock:Lcom/android/server/DockObserver;
    :goto_2e
    :try_start_41
    const-string v7, "SystemServer"

    const-string v9, "Wired Accessory Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    new-instance v7, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v19

    invoke-direct {v7, v5, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_24

    .line 723
    :goto_2f
    :try_start_42
    const-string v7, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    new-instance v136, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v136

    invoke-direct {v0, v5}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_25

    .line 726
    .end local v135           #usb:Lcom/android/server/usb/UsbService;
    .local v136, usb:Lcom/android/server/usb/UsbService;
    :try_start_43
    const-string v7, "usb"

    move-object/from16 v0, v136

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_40

    move-object/from16 v135, v136

    .line 732
    .end local v136           #usb:Lcom/android/server/usb/UsbService;
    .restart local v135       #usb:Lcom/android/server/usb/UsbService;
    :goto_30
    :try_start_44
    const-string v7, "SystemServer"

    const-string v9, "Serial Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    new-instance v118, Lcom/android/server/SerialService;

    move-object/from16 v0, v118

    invoke-direct {v0, v5}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_26

    .line 735
    .end local v117           #serial:Lcom/android/server/SerialService;
    .local v118, serial:Lcom/android/server/SerialService;
    :try_start_45
    const-string v7, "serial"

    move-object/from16 v0, v118

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_3f

    move-object/from16 v117, v118

    .line 741
    .end local v118           #serial:Lcom/android/server/SerialService;
    .restart local v117       #serial:Lcom/android/server/SerialService;
    :goto_31
    :try_start_46
    const-string v7, "SystemServer"

    const-string v9, "Twilight Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    new-instance v131, Lcom/android/server/TwilightService;

    move-object/from16 v0, v131

    invoke-direct {v0, v5}, Lcom/android/server/TwilightService;-><init>(Landroid/content/Context;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_27

    .end local v130           #twilight:Lcom/android/server/TwilightService;
    .local v131, twilight:Lcom/android/server/TwilightService;
    move-object/from16 v130, v131

    .line 748
    .end local v131           #twilight:Lcom/android/server/TwilightService;
    .restart local v130       #twilight:Lcom/android/server/TwilightService;
    :goto_32
    :try_start_47
    const-string v7, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    new-instance v134, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v134

    move-object/from16 v1, v130

    invoke-direct {v0, v5, v1}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;Lcom/android/server/TwilightService;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_28

    .end local v133           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v134, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v133, v134

    .line 756
    .end local v134           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v133       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_33
    :try_start_48
    const-string v7, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    const-string v7, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_29

    .line 764
    :goto_34
    :try_start_49
    const-string v7, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    new-instance v65, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v65

    invoke-direct {v0, v5}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_2a

    .line 766
    .end local v64           #appWidget:Lcom/android/server/AppWidgetService;
    .local v65, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_4a
    const-string v7, "appwidget"

    move-object/from16 v0, v65

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_3e

    move-object/from16 v64, v65

    .line 772
    .end local v65           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v64       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_35
    :try_start_4b
    const-string v7, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    new-instance v116, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v116

    invoke-direct {v0, v5}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_2b

    .end local v115           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v116, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v115, v116

    .line 779
    .end local v116           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v115       #recognition:Lcom/android/server/RecognitionManagerService;
    :goto_36
    const-string v7, "true"

    const-string v9, "ro.config.hw_eapsim"

    const-string v11, "false"

    invoke-static {v9, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 781
    :try_start_4c
    const-string v7, "SystemServer"

    const-string v9, "Smartcard System Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    const-string v7, "smartcardservice"

    new-instance v9, Lcom/android/server/SmartcardSystemService;

    invoke-direct {v9, v5}, Lcom/android/server/SmartcardSystemService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_2c

    .line 790
    :cond_d
    :goto_37
    :try_start_4d
    const-string v7, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    const-string v7, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v5}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_2d

    .line 801
    :goto_38
    :try_start_4e
    const-string v7, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    const-string v7, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v5}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_2e

    .line 809
    :goto_39
    :try_start_4f
    const-string v7, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    new-instance v108, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v108

    invoke-direct {v0, v5}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_2f

    .end local v107           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .local v108, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v107, v108

    .line 816
    .end local v108           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v107       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    :goto_3a
    :try_start_50
    const-string v7, "SystemServer"

    const-string v9, "CommonTimeManagementService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    new-instance v70, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v70

    invoke-direct {v0, v5}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_30

    .line 818
    .end local v69           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .local v70, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :try_start_51
    const-string v7, "commontime_management"

    move-object/from16 v0, v70

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_3d

    move-object/from16 v69, v70

    .line 824
    .end local v70           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v69       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :goto_3b
    :try_start_52
    const-string v7, "SystemServer"

    const-string v9, "CertBlacklister"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    new-instance v7, Lcom/android/server/CertBlacklister;

    invoke-direct {v7, v5}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_31

    .line 830
    :goto_3c
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x111003f

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 833
    :try_start_53
    const-string v7, "SystemServer"

    const-string v9, "Dreams Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    new-instance v84, Lcom/android/server/dreams/DreamManagerService;

    move-object/from16 v0, v84

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/dreams/DreamManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_32

    .line 836
    .end local v83           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .local v84, dreamy:Lcom/android/server/dreams/DreamManagerService;
    :try_start_54
    const-string v7, "dreams"

    move-object/from16 v0, v84

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_54} :catch_3c

    move-object/from16 v83, v84

    .line 845
    .end local v84           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v83       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    :cond_e
    :goto_3d
    invoke-virtual/range {v145 .. v145}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v47

    .line 846
    .local v47, safeMode:Z
    if-eqz v47, :cond_20

    .line 847
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 849
    const/4 v7, 0x1

    sput-boolean v7, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 851
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 862
    :goto_3e
    if-eqz v137, :cond_f

    .line 863
    :try_start_55
    invoke-virtual/range {v137 .. v137}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_55} :catch_33

    .line 871
    :cond_f
    :goto_3f
    :try_start_56
    invoke-virtual/range {v98 .. v98}, Lcom/android/internal/widget/LockSettingsService;->systemReady()V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_56} :catch_34

    .line 876
    :goto_40
    if-eqz v78, :cond_10

    .line 878
    :try_start_57
    invoke-virtual/range {v78 .. v78}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_57} :catch_35

    .line 884
    :cond_10
    :goto_41
    if-eqz v109, :cond_11

    .line 886
    :try_start_58
    invoke-virtual/range {v109 .. v109}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_58} :catch_36

    .line 893
    :cond_11
    :goto_42
    :try_start_59
    invoke-virtual/range {v145 .. v145}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_59} :catch_37

    .line 898
    :goto_43
    if-eqz v47, :cond_12

    .line 899
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 905
    :cond_12
    invoke-virtual/range {v145 .. v145}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v71

    .line 906
    .local v71, config:Landroid/content/res/Configuration;
    new-instance v100, Landroid/util/DisplayMetrics;

    invoke-direct/range {v100 .. v100}, Landroid/util/DisplayMetrics;-><init>()V

    .line 907
    .local v100, metrics:Landroid/util/DisplayMetrics;
    const-string v7, "window"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v138

    check-cast v138, Landroid/view/WindowManager;

    .line 908
    .local v138, w:Landroid/view/WindowManager;
    invoke-interface/range {v138 .. v138}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    move-object/from16 v0, v100

    invoke-virtual {v7, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 909
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v0, v71

    move-object/from16 v1, v100

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 912
    :try_start_5a
    move-object/from16 v0, v130

    move-object/from16 v1, v83

    invoke-virtual {v4, v0, v1}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/server/TwilightService;Lcom/android/server/dreams/DreamManagerService;)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5a} :catch_38

    .line 918
    :goto_44
    :try_start_5b
    invoke-interface/range {v111 .. v111}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5b} :catch_39

    .line 924
    :goto_45
    :try_start_5c
    move/from16 v0, v47

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5c} :catch_3a

    .line 930
    :goto_46
    move-object/from16 v34, v5

    .line 931
    .local v34, contextF:Landroid/content/Context;
    move-object/from16 v35, v101

    .line 932
    .local v35, mountServiceF:Lcom/android/server/MountService;
    move-object/from16 v36, v8

    .line 933
    .local v36, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v37, v30

    .line 934
    .local v37, networkManagementF:Lcom/android/server/NetworkManagementService;
    move-object/from16 v38, v29

    .line 935
    .local v38, networkStatsF:Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v39, v25

    .line 936
    .local v39, networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v40, v72

    .line 937
    .local v40, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v41, v81

    .line 938
    .local v41, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v42, v135

    .line 939
    .local v42, usbF:Lcom/android/server/usb/UsbService;
    move-object/from16 v53, v126

    .line 940
    .local v53, throttleF:Lcom/android/server/ThrottleService;
    move-object/from16 v43, v130

    .line 941
    .local v43, twilightF:Lcom/android/server/TwilightService;
    move-object/from16 v44, v133

    .line 942
    .local v44, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v46, v64

    .line 943
    .local v46, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v48, v139

    .line 944
    .local v48, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v49, v90

    .line 945
    .local v49, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v45, v115

    .line 946
    .local v45, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v51, v96

    .line 947
    .local v51, locationF:Lcom/android/server/LocationManagerService;
    move-object/from16 v52, v75

    .line 948
    .local v52, countryDetectorF:Lcom/android/server/CountryDetectorService;
    move-object/from16 v54, v107

    .line 949
    .local v54, networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v55, v69

    .line 950
    .local v55, commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v56, v128

    .line 951
    .local v56, textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    move-object/from16 v50, v122

    .line 952
    .local v50, statusBarF:Lcom/android/server/StatusBarManagerService;
    move-object/from16 v57, v83

    .line 953
    .local v57, dreamyF:Lcom/android/server/dreams/DreamManagerService;
    move-object/from16 v58, v19

    .line 954
    .local v58, inputManagerF:Lcom/android/server/input/InputManagerService;
    move-object/from16 v59, v124

    .line 956
    .local v59, telephonyRegistryF:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v60, v103

    .line 964
    .local v60, msimTelephonyRegistryF:Lcom/android/server/MSimTelephonyRegistry;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    new-instance v31, Lcom/android/server/ServerThread$3;

    move-object/from16 v32, p0

    invoke-direct/range {v31 .. v60}, Lcom/android/server/ServerThread$3;-><init>(Lcom/android/server/ServerThread;ZLandroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/TwilightService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/ThrottleService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/MSimTelephonyRegistry;)V

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1109
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v7

    if-eqz v7, :cond_13

    .line 1110
    const-string v7, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    :cond_13
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1114
    const-string v7, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    return-void

    .line 135
    .end local v4           #power:Lcom/android/server/power/PowerManagerService;
    .end local v5           #context:Landroid/content/Context;
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v20           #uiHandler:Landroid/os/Handler;
    .end local v21           #wmHandler:Landroid/os/Handler;
    .end local v24           #onlyCore:Z
    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .end local v30           #networkManagement:Lcom/android/server/NetworkManagementService;
    .end local v33           #headless:Z
    .end local v34           #contextF:Landroid/content/Context;
    .end local v35           #mountServiceF:Lcom/android/server/MountService;
    .end local v36           #batteryF:Lcom/android/server/BatteryService;
    .end local v37           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v38           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v39           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v40           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v41           #dockF:Lcom/android/server/DockObserver;
    .end local v42           #usbF:Lcom/android/server/usb/UsbService;
    .end local v43           #twilightF:Lcom/android/server/TwilightService;
    .end local v44           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v45           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v46           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v47           #safeMode:Z
    .end local v48           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v49           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v50           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v51           #locationF:Lcom/android/server/LocationManagerService;
    .end local v52           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v53           #throttleF:Lcom/android/server/ThrottleService;
    .end local v54           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v55           #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .end local v56           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v57           #dreamyF:Lcom/android/server/dreams/DreamManagerService;
    .end local v58           #inputManagerF:Lcom/android/server/input/InputManagerService;
    .end local v59           #telephonyRegistryF:Lcom/android/server/TelephonyRegistry;
    .end local v60           #msimTelephonyRegistryF:Lcom/android/server/MSimTelephonyRegistry;
    .end local v61           #accountManager:Landroid/accounts/AccountManagerService;
    .end local v64           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v67           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .end local v69           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .end local v71           #config:Landroid/content/res/Configuration;
    .end local v72           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v74           #contentService:Landroid/content/ContentService;
    .end local v75           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v78           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v81           #dock:Lcom/android/server/DockObserver;
    .end local v83           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v86           #factoryTest:I
    .end local v87           #factoryTestStr:Ljava/lang/String;
    .end local v90           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v93           #installer:Lcom/android/server/pm/Installer;
    .end local v96           #location:Lcom/android/server/LocationManagerService;
    .end local v98           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v100           #metrics:Landroid/util/DisplayMetrics;
    .end local v101           #mountService:Lcom/android/server/MountService;
    .end local v103           #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    .end local v107           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .end local v109           #notification:Lcom/android/server/NotificationManagerService;
    .end local v111           #pm:Landroid/content/pm/IPackageManager;
    .end local v115           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v117           #serial:Lcom/android/server/SerialService;
    .end local v119           #serviceDiscovery:Lcom/android/server/NsdService;
    .end local v122           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v124           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v126           #throttle:Lcom/android/server/ThrottleService;
    .end local v128           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v130           #twilight:Lcom/android/server/TwilightService;
    .end local v132           #uiHandlerThread:Landroid/os/HandlerThread;
    .end local v133           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v135           #usb:Lcom/android/server/usb/UsbService;
    .end local v137           #vibrator:Lcom/android/server/VibratorService;
    .end local v138           #w:Landroid/view/WindowManager;
    .end local v139           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .end local v141           #wifi:Lcom/android/server/WifiService;
    .end local v143           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .end local v145           #wm:Lcom/android/server/wm/WindowManagerService;
    .end local v146           #wmHandlerThread:Landroid/os/HandlerThread;
    :cond_14
    const/16 v114, 0x0

    goto/16 :goto_0

    .line 141
    .restart local v114       #reboot:Z
    :cond_15
    const/16 v113, 0x0

    .restart local v113       #reason:Ljava/lang/String;
    goto/16 :goto_1

    .line 149
    .end local v113           #reason:Ljava/lang/String;
    .end local v114           #reboot:Z
    .restart local v87       #factoryTestStr:Ljava/lang/String;
    :cond_16
    invoke-static/range {v87 .. v87}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v86

    goto/16 :goto_2

    .line 272
    .restart local v4       #power:Lcom/android/server/power/PowerManagerService;
    .restart local v5       #context:Landroid/content/Context;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v20       #uiHandler:Landroid/os/Handler;
    .restart local v21       #wmHandler:Landroid/os/Handler;
    .restart local v24       #onlyCore:Z
    .restart local v29       #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v30       #networkManagement:Lcom/android/server/NetworkManagementService;
    .restart local v33       #headless:Z
    .restart local v61       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v63       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v66       #battery:Lcom/android/server/BatteryService;
    .restart local v67       #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v69       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v72       #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v74       #contentService:Landroid/content/ContentService;
    .restart local v81       #dock:Lcom/android/server/DockObserver;
    .restart local v86       #factoryTest:I
    .restart local v92       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v94       #installer:Lcom/android/server/pm/Installer;
    .restart local v95       #lights:Lcom/android/server/LightsService;
    .restart local v101       #mountService:Lcom/android/server/MountService;
    .restart local v103       #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    .restart local v105       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v107       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v111       #pm:Landroid/content/pm/IPackageManager;
    .restart local v115       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v117       #serial:Lcom/android/server/SerialService;
    .restart local v119       #serviceDiscovery:Lcom/android/server/NsdService;
    .restart local v124       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v126       #throttle:Lcom/android/server/ThrottleService;
    .restart local v130       #twilight:Lcom/android/server/TwilightService;
    .restart local v132       #uiHandlerThread:Landroid/os/HandlerThread;
    .restart local v133       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v135       #usb:Lcom/android/server/usb/UsbService;
    .restart local v137       #vibrator:Lcom/android/server/VibratorService;
    .restart local v141       #wifi:Lcom/android/server/WifiService;
    .restart local v143       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v145       #wm:Lcom/android/server/wm/WindowManagerService;
    .restart local v146       #wmHandlerThread:Landroid/os/HandlerThread;
    :cond_17
    :try_start_5d
    new-instance v125, Lcom/android/server/StubTelephonyRegistry;

    move-object/from16 v0, v125

    invoke-direct {v0, v5}, Lcom/android/server/StubTelephonyRegistry;-><init>(Landroid/content/Context;)V

    .end local v124           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v125       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v124, v125

    .end local v125           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v124       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_3

    .line 301
    .restart local v77       #cryptState:Ljava/lang/String;
    :cond_18
    const-string v7, "1"

    move-object/from16 v0, v77

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 302
    const-string v7, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const/16 v24, 0x1

    goto/16 :goto_4

    .line 306
    :cond_19
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 329
    .restart local v88       #firstBoot:Z
    :catch_0
    move-exception v85

    .line 330
    .local v85, e:Ljava/lang/Throwable;
    :goto_47
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v85

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5d
    .catch Ljava/lang/RuntimeException; {:try_start_5d .. :try_end_5d} :catch_1

    goto/16 :goto_7

    .line 413
    .end local v77           #cryptState:Ljava/lang/String;
    .end local v85           #e:Ljava/lang/Throwable;
    .end local v88           #firstBoot:Z
    :catch_1
    move-exception v85

    move-object/from16 v19, v92

    .end local v92           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v63

    .end local v63           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v66

    .end local v66           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v95

    .end local v95           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v93, v94

    .line 414
    .end local v94           #installer:Lcom/android/server/pm/Installer;
    .local v85, e:Ljava/lang/RuntimeException;
    .restart local v93       #installer:Lcom/android/server/pm/Installer;
    :goto_48
    const-string v7, "System"

    const-string v9, "******************************************"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const-string v7, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v85

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_e

    .line 334
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v85           #e:Ljava/lang/RuntimeException;
    .end local v93           #installer:Lcom/android/server/pm/Installer;
    .restart local v63       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v66       #battery:Lcom/android/server/BatteryService;
    .restart local v77       #cryptState:Ljava/lang/String;
    .restart local v88       #firstBoot:Z
    .restart local v92       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v94       #installer:Lcom/android/server/pm/Installer;
    .restart local v95       #lights:Lcom/android/server/LightsService;
    :cond_1a
    const/4 v7, 0x0

    goto/16 :goto_8

    .line 352
    .end local v66           #battery:Lcom/android/server/BatteryService;
    .end local v95           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    .restart local v89       #hashaptic:Ljava/lang/String;
    :catch_2
    move-exception v85

    .line 353
    .local v85, e:Ljava/lang/Throwable;
    :try_start_5e
    const-string v89, ""

    goto/16 :goto_9

    .line 359
    .end local v85           #e:Ljava/lang/Throwable;
    :cond_1b
    const-string v7, "SystemServer"

    const-string v9, "MOTOR=Vibrator"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const-string v7, "vibrator"

    new-instance v9, Lcom/android/server/VibratorService;

    invoke-direct {v9, v5}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5e
    .catch Ljava/lang/RuntimeException; {:try_start_5e .. :try_end_5e} :catch_3

    goto/16 :goto_a

    .line 413
    .end local v89           #hashaptic:Ljava/lang/String;
    :catch_3
    move-exception v85

    move-object/from16 v19, v92

    .end local v92           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v63

    .end local v63           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v93, v94

    .end local v94           #installer:Lcom/android/server/pm/Installer;
    .restart local v93       #installer:Lcom/android/server/pm/Installer;
    goto :goto_48

    .line 385
    .end local v93           #installer:Lcom/android/server/pm/Installer;
    .restart local v89       #hashaptic:Ljava/lang/String;
    .restart local v94       #installer:Lcom/android/server/pm/Installer;
    :cond_1c
    const/16 v22, 0x0

    goto/16 :goto_b

    :cond_1d
    const/16 v23, 0x0

    goto/16 :goto_c

    .line 405
    :cond_1e
    const/4 v7, 0x1

    move/from16 v0, v86

    if-ne v0, v7, :cond_1f

    .line 406
    :try_start_5f
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 413
    :catch_4
    move-exception v85

    move-object/from16 v93, v94

    .end local v94           #installer:Lcom/android/server/pm/Installer;
    .restart local v93       #installer:Lcom/android/server/pm/Installer;
    goto :goto_48

    .line 408
    .end local v93           #installer:Lcom/android/server/pm/Installer;
    .restart local v94       #installer:Lcom/android/server/pm/Installer;
    :cond_1f
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    new-instance v68, Lcom/android/server/BluetoothManagerService;

    move-object/from16 v0, v68

    invoke-direct {v0, v5}, Lcom/android/server/BluetoothManagerService;-><init>(Landroid/content/Context;)V
    :try_end_5f
    .catch Ljava/lang/RuntimeException; {:try_start_5f .. :try_end_5f} :catch_4

    .line 410
    .end local v67           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .local v68, bluetooth:Lcom/android/server/BluetoothManagerService;
    :try_start_60
    const-string v7, "bluetooth_manager"

    move-object/from16 v0, v68

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_60
    .catch Ljava/lang/RuntimeException; {:try_start_60 .. :try_end_60} :catch_59

    move-object/from16 v67, v68

    .end local v68           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v67       #bluetooth:Lcom/android/server/BluetoothManagerService;
    goto/16 :goto_d

    .line 436
    .end local v77           #cryptState:Ljava/lang/String;
    .end local v88           #firstBoot:Z
    .end local v89           #hashaptic:Ljava/lang/String;
    .end local v94           #installer:Lcom/android/server/pm/Installer;
    .restart local v64       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v75       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v78       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v83       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v90       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v93       #installer:Lcom/android/server/pm/Installer;
    .restart local v96       #location:Lcom/android/server/LocationManagerService;
    .restart local v98       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v109       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v122       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v128       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v139       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_5
    move-exception v85

    .line 437
    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_49
    const-string v7, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 444
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_6
    move-exception v85

    .line 445
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 451
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_7
    move-exception v85

    .line 452
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 457
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_8
    move-exception v85

    .line 458
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 479
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_9
    move-exception v85

    .line 480
    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_4a
    const-string v7, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 488
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_a
    move-exception v85

    .line 489
    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_4b
    const-string v7, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 496
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_b
    move-exception v85

    .line 497
    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_4c
    const-string v7, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 504
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_c
    move-exception v85

    .line 505
    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_4d
    const-string v7, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 512
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_d
    move-exception v85

    .line 513
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 520
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_e
    move-exception v85

    .line 521
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 528
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_f
    move-exception v85

    .line 529
    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_4e
    const-string v7, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 536
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_10
    move-exception v85

    .line 537
    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_4f
    const-string v7, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 546
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_11
    move-exception v85

    move-object/from16 v25, v105

    .line 547
    .end local v105           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_50
    const-string v7, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 554
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_12
    move-exception v85

    .line 555
    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_51
    const-string v7, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 562
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_13
    move-exception v85

    .line 563
    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_52
    const-string v7, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 575
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_14
    move-exception v85

    .line 576
    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_53
    const-string v7, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 584
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_15
    move-exception v85

    .line 585
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 593
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_16
    move-exception v85

    .line 594
    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_54
    const-string v7, "starting ThrottleService"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 601
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_17
    move-exception v85

    .line 602
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 617
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_18
    move-exception v85

    .line 618
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 624
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_19
    move-exception v85

    .line 625
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 633
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_1a
    move-exception v85

    .line 634
    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_55
    const-string v7, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 640
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_1b
    move-exception v85

    .line 641
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting HDMI Service "

    move-object/from16 v0, v85

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_26

    .line 647
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_1c
    move-exception v85

    .line 648
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 655
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_1d
    move-exception v85

    .line 656
    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_56
    const-string v7, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 663
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_1e
    move-exception v85

    .line 664
    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_57
    const-string v7, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 671
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_1f
    move-exception v85

    .line 672
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 679
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_20
    move-exception v85

    .line 680
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 691
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_21
    move-exception v85

    .line 692
    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_58
    const-string v7, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 700
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_22
    move-exception v85

    .line 701
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 709
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_23
    move-exception v85

    .line 710
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 718
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_24
    move-exception v85

    .line 719
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 727
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_25
    move-exception v85

    .line 728
    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_59
    const-string v7, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 736
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_26
    move-exception v85

    .line 737
    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_5a
    const-string v7, "SystemServer"

    const-string v9, "Failure starting SerialService"

    move-object/from16 v0, v85

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_31

    .line 743
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_27
    move-exception v85

    .line 744
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "starting TwilightService"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .line 751
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_28
    move-exception v85

    .line 752
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 759
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_29
    move-exception v85

    .line 760
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v85

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_34

    .line 767
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_2a
    move-exception v85

    .line 768
    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_5b
    const-string v7, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .line 774
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_2b
    move-exception v85

    .line 775
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .line 783
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_2c
    move-exception v85

    .line 784
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Smartcard System Service"

    move-object/from16 v0, v85

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_37

    .line 792
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_2d
    move-exception v85

    .line 793
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .line 804
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_2e
    move-exception v85

    .line 805
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    .line 811
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_2f
    move-exception v85

    .line 812
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a

    .line 819
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_30
    move-exception v85

    .line 820
    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_5c
    const-string v7, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3b

    .line 826
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_31
    move-exception v85

    .line 827
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3c

    .line 837
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_32
    move-exception v85

    .line 838
    .restart local v85       #e:Ljava/lang/Throwable;
    :goto_5d
    const-string v7, "starting DreamManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .line 854
    .end local v85           #e:Ljava/lang/Throwable;
    .restart local v47       #safeMode:Z
    :cond_20
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_3e

    .line 866
    :catch_33
    move-exception v85

    .line 867
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3f

    .line 872
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_34
    move-exception v85

    .line 873
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_40

    .line 879
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_35
    move-exception v85

    .line 880
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_41

    .line 887
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_36
    move-exception v85

    .line 888
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_42

    .line 894
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_37
    move-exception v85

    .line 895
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_43

    .line 913
    .end local v85           #e:Ljava/lang/Throwable;
    .restart local v71       #config:Landroid/content/res/Configuration;
    .restart local v100       #metrics:Landroid/util/DisplayMetrics;
    .restart local v138       #w:Landroid/view/WindowManager;
    :catch_38
    move-exception v85

    .line 914
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_44

    .line 919
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_39
    move-exception v85

    .line 920
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_45

    .line 925
    .end local v85           #e:Ljava/lang/Throwable;
    :catch_3a
    move-exception v85

    .line 926
    .restart local v85       #e:Ljava/lang/Throwable;
    const-string v7, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_46

    .line 312
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v47           #safeMode:Z
    .end local v64           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v71           #config:Landroid/content/res/Configuration;
    .end local v75           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v78           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v83           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v85           #e:Ljava/lang/Throwable;
    .end local v90           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v93           #installer:Lcom/android/server/pm/Installer;
    .end local v96           #location:Lcom/android/server/LocationManagerService;
    .end local v98           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v100           #metrics:Landroid/util/DisplayMetrics;
    .end local v109           #notification:Lcom/android/server/NotificationManagerService;
    .end local v122           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v128           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v138           #w:Landroid/view/WindowManager;
    .end local v139           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v63       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v66       #battery:Lcom/android/server/BatteryService;
    .restart local v77       #cryptState:Ljava/lang/String;
    .restart local v88       #firstBoot:Z
    .restart local v92       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v94       #installer:Lcom/android/server/pm/Installer;
    .restart local v95       #lights:Lcom/android/server/LightsService;
    .restart local v105       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    :catch_3b
    move-exception v7

    goto/16 :goto_6

    .line 837
    .end local v63           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v66           #battery:Lcom/android/server/BatteryService;
    .end local v77           #cryptState:Ljava/lang/String;
    .end local v88           #firstBoot:Z
    .end local v92           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v94           #installer:Lcom/android/server/pm/Installer;
    .end local v95           #lights:Lcom/android/server/LightsService;
    .end local v105           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v25       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v64       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v75       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v78       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v84       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v90       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v93       #installer:Lcom/android/server/pm/Installer;
    .restart local v96       #location:Lcom/android/server/LocationManagerService;
    .restart local v98       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v109       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v122       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v128       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v139       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_3c
    move-exception v85

    move-object/from16 v83, v84

    .end local v84           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v83       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    goto :goto_5d

    .line 819
    .end local v69           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v70       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :catch_3d
    move-exception v85

    move-object/from16 v69, v70

    .end local v70           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v69       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_5c

    .line 767
    .end local v64           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v65       #appWidget:Lcom/android/server/AppWidgetService;
    :catch_3e
    move-exception v85

    move-object/from16 v64, v65

    .end local v65           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v64       #appWidget:Lcom/android/server/AppWidgetService;
    goto/16 :goto_5b

    .line 736
    .end local v117           #serial:Lcom/android/server/SerialService;
    .restart local v118       #serial:Lcom/android/server/SerialService;
    :catch_3f
    move-exception v85

    move-object/from16 v117, v118

    .end local v118           #serial:Lcom/android/server/SerialService;
    .restart local v117       #serial:Lcom/android/server/SerialService;
    goto/16 :goto_5a

    .line 727
    .end local v135           #usb:Lcom/android/server/usb/UsbService;
    .restart local v136       #usb:Lcom/android/server/usb/UsbService;
    :catch_40
    move-exception v85

    move-object/from16 v135, v136

    .end local v136           #usb:Lcom/android/server/usb/UsbService;
    .restart local v135       #usb:Lcom/android/server/usb/UsbService;
    goto/16 :goto_59

    .line 691
    .end local v139           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v140       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_41
    move-exception v85

    move-object/from16 v139, v140

    .end local v140           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v139       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_58

    .line 663
    .end local v75           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v76       #countryDetector:Lcom/android/server/CountryDetectorService;
    :catch_42
    move-exception v85

    move-object/from16 v75, v76

    .end local v76           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v75       #countryDetector:Lcom/android/server/CountryDetectorService;
    goto/16 :goto_57

    .line 655
    .end local v96           #location:Lcom/android/server/LocationManagerService;
    .restart local v97       #location:Lcom/android/server/LocationManagerService;
    :catch_43
    move-exception v85

    move-object/from16 v96, v97

    .end local v97           #location:Lcom/android/server/LocationManagerService;
    .restart local v96       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_56

    .line 633
    .end local v109           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v110       #notification:Lcom/android/server/NotificationManagerService;
    :catch_44
    move-exception v85

    move-object/from16 v109, v110

    .end local v110           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v109       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_55

    .line 593
    .end local v126           #throttle:Lcom/android/server/ThrottleService;
    .restart local v127       #throttle:Lcom/android/server/ThrottleService;
    :catch_45
    move-exception v85

    move-object/from16 v126, v127

    .end local v127           #throttle:Lcom/android/server/ThrottleService;
    .restart local v126       #throttle:Lcom/android/server/ThrottleService;
    goto/16 :goto_54

    .line 575
    .end local v72           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v73       #connectivity:Lcom/android/server/ConnectivityService;
    :catch_46
    move-exception v85

    move-object/from16 v72, v73

    .end local v73           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v72       #connectivity:Lcom/android/server/ConnectivityService;
    goto/16 :goto_53

    .line 562
    .end local v141           #wifi:Lcom/android/server/WifiService;
    .restart local v142       #wifi:Lcom/android/server/WifiService;
    :catch_47
    move-exception v85

    move-object/from16 v141, v142

    .end local v142           #wifi:Lcom/android/server/WifiService;
    .restart local v141       #wifi:Lcom/android/server/WifiService;
    goto/16 :goto_52

    .line 554
    .end local v143           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v144       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :catch_48
    move-exception v85

    move-object/from16 v143, v144

    .end local v144           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v143       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_51

    .line 546
    :catch_49
    move-exception v85

    goto/16 :goto_50

    .line 536
    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v105       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v106       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :catch_4a
    move-exception v85

    move-object/from16 v29, v106

    .end local v106           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v29       #networkStats:Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_4f

    .line 528
    .end local v128           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v129       #tsms:Lcom/android/server/TextServicesManagerService;
    :catch_4b
    move-exception v85

    move-object/from16 v128, v129

    .end local v129           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v128       #tsms:Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_4e

    .line 504
    .end local v122           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v123       #statusBar:Lcom/android/server/StatusBarManagerService;
    :catch_4c
    move-exception v85

    move-object/from16 v122, v123

    .end local v123           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v122       #statusBar:Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_4d

    .line 496
    .end local v78           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v79       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_4d
    move-exception v85

    move-object/from16 v78, v79

    .end local v79           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v78       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_4c

    .line 488
    .end local v98           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v99       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :catch_4e
    move-exception v85

    move-object/from16 v98, v99

    .end local v99           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v98       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    goto/16 :goto_4b

    .line 479
    .end local v101           #mountService:Lcom/android/server/MountService;
    .restart local v102       #mountService:Lcom/android/server/MountService;
    :catch_4f
    move-exception v85

    move-object/from16 v101, v102

    .end local v102           #mountService:Lcom/android/server/MountService;
    .restart local v101       #mountService:Lcom/android/server/MountService;
    goto/16 :goto_4a

    .line 466
    :catch_50
    move-exception v7

    goto/16 :goto_13

    .line 436
    .end local v90           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v91       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_51
    move-exception v85

    move-object/from16 v90, v91

    .end local v91           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v90       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_49

    .line 413
    .end local v4           #power:Lcom/android/server/power/PowerManagerService;
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v64           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v75           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v78           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v83           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v90           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v96           #location:Lcom/android/server/LocationManagerService;
    .end local v98           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v109           #notification:Lcom/android/server/NotificationManagerService;
    .end local v122           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v128           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v139           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v63       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v66       #battery:Lcom/android/server/BatteryService;
    .restart local v80       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v92       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v95       #lights:Lcom/android/server/LightsService;
    .restart local v112       #power:Lcom/android/server/power/PowerManagerService;
    :catch_52
    move-exception v85

    move-object/from16 v19, v92

    .end local v92           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v63

    .end local v63           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v66

    .end local v66           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v10, v80

    .end local v80           #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v4, v112

    .end local v112           #power:Lcom/android/server/power/PowerManagerService;
    .restart local v4       #power:Lcom/android/server/power/PowerManagerService;
    move-object/from16 v6, v95

    .end local v95           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_48

    .end local v4           #power:Lcom/android/server/power/PowerManagerService;
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v93           #installer:Lcom/android/server/pm/Installer;
    .restart local v63       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v66       #battery:Lcom/android/server/BatteryService;
    .restart local v80       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v92       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v94       #installer:Lcom/android/server/pm/Installer;
    .restart local v95       #lights:Lcom/android/server/LightsService;
    .restart local v112       #power:Lcom/android/server/power/PowerManagerService;
    :catch_53
    move-exception v85

    move-object/from16 v19, v92

    .end local v92           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v63

    .end local v63           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v66

    .end local v66           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v10, v80

    .end local v80           #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v4, v112

    .end local v112           #power:Lcom/android/server/power/PowerManagerService;
    .restart local v4       #power:Lcom/android/server/power/PowerManagerService;
    move-object/from16 v6, v95

    .end local v95           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v93, v94

    .end local v94           #installer:Lcom/android/server/pm/Installer;
    .restart local v93       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_48

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v93           #installer:Lcom/android/server/pm/Installer;
    .restart local v63       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v66       #battery:Lcom/android/server/BatteryService;
    .restart local v80       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v92       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v94       #installer:Lcom/android/server/pm/Installer;
    .restart local v95       #lights:Lcom/android/server/LightsService;
    :catch_54
    move-exception v85

    move-object/from16 v19, v92

    .end local v92           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v63

    .end local v63           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v66

    .end local v66           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v10, v80

    .end local v80           #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v6, v95

    .end local v95           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v93, v94

    .end local v94           #installer:Lcom/android/server/pm/Installer;
    .restart local v93       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_48

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v93           #installer:Lcom/android/server/pm/Installer;
    .end local v103           #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    .restart local v63       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v66       #battery:Lcom/android/server/BatteryService;
    .restart local v92       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v94       #installer:Lcom/android/server/pm/Installer;
    .restart local v95       #lights:Lcom/android/server/LightsService;
    .restart local v104       #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    :catch_55
    move-exception v85

    move-object/from16 v103, v104

    .end local v104           #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    .restart local v103       #msimTelephonyRegistry:Lcom/android/server/MSimTelephonyRegistry;
    move-object/from16 v19, v92

    .end local v92           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v63

    .end local v63           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v66

    .end local v66           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v95

    .end local v95           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v93, v94

    .end local v94           #installer:Lcom/android/server/pm/Installer;
    .restart local v93       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_48

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v61           #accountManager:Landroid/accounts/AccountManagerService;
    .end local v93           #installer:Lcom/android/server/pm/Installer;
    .restart local v62       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v63       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v66       #battery:Lcom/android/server/BatteryService;
    .restart local v77       #cryptState:Ljava/lang/String;
    .restart local v88       #firstBoot:Z
    .restart local v92       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v94       #installer:Lcom/android/server/pm/Installer;
    .restart local v95       #lights:Lcom/android/server/LightsService;
    :catch_56
    move-exception v85

    move-object/from16 v19, v92

    .end local v92           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v63

    .end local v63           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v66

    .end local v66           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v95

    .end local v95           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v61, v62

    .end local v62           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v61       #accountManager:Landroid/accounts/AccountManagerService;
    move-object/from16 v93, v94

    .end local v94           #installer:Lcom/android/server/pm/Installer;
    .restart local v93       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_48

    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v93           #installer:Lcom/android/server/pm/Installer;
    .restart local v63       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v66       #battery:Lcom/android/server/BatteryService;
    .restart local v92       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v94       #installer:Lcom/android/server/pm/Installer;
    :catch_57
    move-exception v85

    move-object/from16 v19, v92

    .end local v92           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v63

    .end local v63           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v66

    .end local v66           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v93, v94

    .end local v94           #installer:Lcom/android/server/pm/Installer;
    .restart local v93       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_48

    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v93           #installer:Lcom/android/server/pm/Installer;
    .restart local v89       #hashaptic:Ljava/lang/String;
    .restart local v92       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v94       #installer:Lcom/android/server/pm/Installer;
    :catch_58
    move-exception v85

    move-object/from16 v19, v92

    .end local v92           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v93, v94

    .end local v94           #installer:Lcom/android/server/pm/Installer;
    .restart local v93       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_48

    .end local v67           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .end local v93           #installer:Lcom/android/server/pm/Installer;
    .restart local v68       #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v94       #installer:Lcom/android/server/pm/Installer;
    :catch_59
    move-exception v85

    move-object/from16 v67, v68

    .end local v68           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v67       #bluetooth:Lcom/android/server/BluetoothManagerService;
    move-object/from16 v93, v94

    .end local v94           #installer:Lcom/android/server/pm/Installer;
    .restart local v93       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_48

    .line 329
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v61           #accountManager:Landroid/accounts/AccountManagerService;
    .end local v89           #hashaptic:Ljava/lang/String;
    .end local v93           #installer:Lcom/android/server/pm/Installer;
    .restart local v62       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v63       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v66       #battery:Lcom/android/server/BatteryService;
    .restart local v92       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v94       #installer:Lcom/android/server/pm/Installer;
    .restart local v95       #lights:Lcom/android/server/LightsService;
    :catch_5a
    move-exception v85

    move-object/from16 v61, v62

    .end local v62           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v61       #accountManager:Landroid/accounts/AccountManagerService;
    goto/16 :goto_47

    .end local v63           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v66           #battery:Lcom/android/server/BatteryService;
    .end local v77           #cryptState:Ljava/lang/String;
    .end local v88           #firstBoot:Z
    .end local v92           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v94           #installer:Lcom/android/server/pm/Installer;
    .end local v95           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v64       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v75       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v78       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v83       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v90       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v93       #installer:Lcom/android/server/pm/Installer;
    .restart local v96       #location:Lcom/android/server/LocationManagerService;
    .restart local v98       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v109       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v122       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v128       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v139       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_21
    move-object/from16 v25, v105

    .end local v105           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_3d
.end method
