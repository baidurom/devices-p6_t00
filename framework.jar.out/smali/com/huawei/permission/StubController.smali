.class public Lcom/huawei/permission/StubController;
.super Ljava/lang/Object;
.source "StubController.java"


# static fields
.field public static final AGGRESSIVE_DEFENSE_OFF:I = 0x1

.field public static final AGGRESSIVE_DEFENSE_ON:I = 0x0

.field public static final APP_GOOGLE:Ljava/lang/String; = "com.android"

.field public static final APP_HUAWEI:Ljava/lang/String; = "com.huawei"

.field public static final COMMON_VALUE_INTENT_KEY:I = 0x1330615

.field public static final CONTENT_COMMON_URI:Ljava/lang/String; = "content://com.huawei.permissionmanager.provider.PermissionDataProvider/common"

.field public static final CONTENT_LOG_URI:Ljava/lang/String; = "content://com.huawei.permissionmanager.provider.PermissionDataProvider/log"

.field public static final CONTENT_URI:Ljava/lang/String; = "content://com.huawei.permissionmanager.provider.PermissionDataProvider/permission"

.field private static final CUST_URL:Ljava/lang/String; = "/data/cust"

.field public static final MIN_APPLICATION_UID:I = 0x2710

.field public static final PATH:Ljava/lang/String; = "/data/data/com.huawei.permissionmanager/databases/permission.db"

.field public static final PERMISSION_ACCESS_3G:I = 0x100

.field public static final PERMISSION_ACCESS_WIFI:I = 0x200

.field public static final PERMISSION_ACTION_CALL:I = 0x40

.field public static final PERMISSION_CALENDAR:I = 0x800

.field public static final PERMISSION_CALLLOG:I = 0x2

.field public static final PERMISSION_CALL_LISTENER:I = 0x80

.field public static final PERMISSION_CAMERA:I = 0x400

.field public static final PERMISSION_CONTACTS:I = 0x1

.field public static final PERMISSION_GET_DEVICEID:I = 0x10

.field public static final PERMISSION_LOCATION:I = 0x8

.field public static final PERMISSION_NONE:I = 0x0

.field public static final PERMISSION_NOTIFICATION:I = 0x1000

.field public static final PERMISSION_SEND_SMS:I = 0x20

.field public static final PERMISSION_SMSLOG:I = 0x4

.field public static final PERMISSION_TYPE_ALLOWED:I = 0x1

.field public static final PERMISSION_TYPE_BLOCKED:I = 0x2

.field public static final PERMISSION_TYPE_REMIND:I = 0x0

.field public static final PERMISSION_TYPE_UNKNOWN:I = -0x1

.field public static final REMIND_FAIL:I = -0x1

.field public static final REMIND_SKIP:I = 0x1

.field public static final REMIND_SUCCESS:I = 0x0

.field public static final SEND_INTENT_VALUE:I = 0x0

.field private static final SYSTEM_APP:Ljava/lang/String; = "/system/app"

.field public static final TABLE_COLUM_KEY:Ljava/lang/String; = "key"

.field public static final TABLE_COLUM_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final TABLE_COLUM_PERMISSION_CFG:Ljava/lang/String; = "permissionCfg"

.field public static final TABLE_COLUM_PERMISSION_CODE:Ljava/lang/String; = "permissionCode"

.field public static final TABLE_COLUM_TRUST:Ljava/lang/String; = "trust"

.field public static final TABLE_COLUM_UID:Ljava/lang/String; = "uid"

.field public static final TABLE_COLUM_VALUE:Ljava/lang/String; = "value"

.field public static final TABLE_COMMON_COLUM_KEY:Ljava/lang/String; = "key"

.field public static final TABLE_COMMON_COLUM_VALUE:Ljava/lang/String; = "value"

.field public static final TABLE_NAME_COMMON:Ljava/lang/String; = "commonTable"

.field public static final TABLE_NAME_PERMSSION:Ljava/lang/String; = "permissionCfg"

.field static final TAG:Ljava/lang/String; = "StubController"

.field public static final USER_ALLOWED:I = 0x1

.field public static final USER_IGNORED:I = 0x0

.field public static final USER_REFUSED:I = 0x2

.field public static final isPermissionManagerPropertyOn:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 676
    const-string/jumbo v0, "ro.config.hw_rightsmgr"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/huawei/permission/StubController;->isPermissionManagerPropertyOn:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPrecondition(Landroid/content/Context;I)Z
    .locals 3
    .parameter "context"
    .parameter "uid"

    .prologue
    const/4 v0, 0x0

    .line 338
    sget v1, Lcom/huawei/permission/StubController;->isPermissionManagerPropertyOn:I

    if-nez v1, :cond_1

    .line 354
    :cond_0
    :goto_0
    return v0

    .line 343
    :cond_1
    if-nez p0, :cond_2

    .line 344
    const-string v1, "StubController"

    const-string v2, "context is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 349
    :cond_2
    invoke-static {p0, p1}, Lcom/huawei/permission/StubController;->isSystemApp(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 354
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static checkSystemAppInternal(Landroid/content/Context;IZ)Z
    .locals 9
    .parameter "context"
    .parameter "callUid"
    .parameter "excludeCust"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 362
    const/16 v6, 0x2710

    if-ge p1, v6, :cond_1

    .line 438
    :cond_0
    :goto_0
    return v4

    .line 366
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 372
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    .line 377
    :try_start_0
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 379
    .local v3, pkgName:[Ljava/lang/String;
    if-eqz v3, :cond_2

    array-length v6, v3

    if-gtz v6, :cond_3

    .line 380
    :cond_2
    const-string v5, "StubController"

    const-string/jumbo v6, "pkgName = null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 433
    .end local v3           #pkgName:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 434
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 385
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v3       #pkgName:[Ljava/lang/String;
    :cond_3
    const/4 v6, 0x0

    :try_start_1
    aget-object v6, v3, v6

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 386
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_4

    .line 387
    const-string v5, "StubController"

    const-string v6, "appInfo = null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 391
    :cond_4
    if-nez p2, :cond_6

    .line 392
    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-gtz v6, :cond_0

    .line 421
    :cond_5
    :goto_1
    const/4 v6, 0x0

    aget-object v6, v3, v6

    const-string v7, "com.android.cts"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x0

    aget-object v6, v3, v6

    const-string v7, "android.tests.devicesetup"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x0

    aget-object v6, v3, v6

    const-string v7, "android.permission.cts"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x0

    aget-object v6, v3, v6

    const-string v7, "android.permission2.cts"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x0

    aget-object v6, v3, v6

    const-string v7, "android.telephony.cts.SmsManagerTest"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x0

    aget-object v6, v3, v6

    const-string v7, "android.telephony.cts.TelephonyManagerTest"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x0

    aget-object v6, v3, v6

    const-string v7, "android.telephony.gsm.cts.SmsManagerTest"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    move v4, v5

    .line 438
    goto/16 :goto_0

    .line 396
    :cond_6
    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-lez v6, :cond_5

    .line 397
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v7, "/data/cust"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 398
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    if-eqz v6, :cond_8

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string v7, "com.huawei"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string v7, "com.android"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 399
    :cond_7
    const-string v5, "StubController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "huawei cust app = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 403
    :cond_8
    const-string v6, "StubController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cust app processName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 407
    :cond_9
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v7, "/system/app"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 410
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    if-eqz v6, :cond_5

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string v7, "com.huawei"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string v7, "com.android"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    if-eqz v6, :cond_5

    goto/16 :goto_0
.end method

.method private static getHoldService()Lcom/huawei/permission/IHoldService;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 528
    const/4 v2, 0x0

    .line 530
    .local v2, hService:Lcom/huawei/permission/IHoldService;
    :try_start_0
    const-string v4, "com.huawei.permissionmanager.service.holdservice"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 531
    .local v0, b:Landroid/os/IBinder;
    if-nez v0, :cond_0

    move-object v2, v3

    .line 546
    .end local v0           #b:Landroid/os/IBinder;
    .end local v2           #hService:Lcom/huawei/permission/IHoldService;
    :goto_0
    return-object v2

    .line 535
    .restart local v0       #b:Landroid/os/IBinder;
    .restart local v2       #hService:Lcom/huawei/permission/IHoldService;
    :cond_0
    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v4

    if-nez v4, :cond_1

    .line 536
    const-string v4, "StubController"

    const-string v5, "binder is not exist"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 537
    goto :goto_0

    .line 540
    :cond_1
    invoke-static {v0}, Lcom/huawei/permission/IHoldService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/permission/IHoldService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 541
    .end local v0           #b:Landroid/os/IBinder;
    :catch_0
    move-exception v1

    .line 542
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v3

    .line 543
    goto :goto_0
.end method

.method public static getPermission(Landroid/content/Context;II)I
    .locals 9
    .parameter "context"
    .parameter "permissionType"
    .parameter "uid"

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    .line 290
    const-string v0, "content://com.huawei.permissionmanager.provider.PermissionDataProvider/permission"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 291
    .local v1, permissionUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 292
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 303
    :goto_0
    return v8

    .line 296
    :cond_0
    invoke-static {v6, p1}, Lcom/huawei/permission/StubController;->getPermission(Landroid/database/Cursor;I)I

    move-result v7

    .line 297
    .local v7, op:I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 299
    invoke-static {p0, p1, p2, v7}, Lcom/huawei/permission/StubController;->sendIntentForNotify(Landroid/content/Context;III)V

    .line 301
    if-ne v8, v7, :cond_1

    move v0, v8

    :goto_1
    invoke-static {p0, p1, p2, v0}, Lcom/huawei/permission/StubController;->insertLog(Landroid/content/Context;IIZ)V

    move v8, v7

    .line 303
    goto :goto_0

    .line 301
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getPermission(Landroid/database/Cursor;I)I
    .locals 6
    .parameter "c"
    .parameter "permissionType"

    .prologue
    const/4 v3, 0x1

    .line 307
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 308
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-gtz v4, :cond_1

    .line 309
    const-string v4, "StubController"

    const-string v5, "cursor\'s count <= 0, allowed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_0
    :goto_0
    return v3

    .line 315
    :cond_1
    const-string/jumbo v4, "permissionCfg"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 316
    .local v2, permissionCfgIndex:I
    const/4 v4, -0x1

    if-eq v4, v2, :cond_0

    .line 321
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 324
    .local v1, permissionCfg:I
    and-int v0, v1, p1

    .line 325
    .local v0, isBlocked:I
    if-eqz v0, :cond_0

    .line 330
    const/4 v3, 0x2

    goto :goto_0
.end method

.method private static hold(IILjava/lang/String;)I
    .locals 9
    .parameter "permissionType"
    .parameter "uid"
    .parameter "desAddr"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 485
    invoke-static {}, Lcom/huawei/permission/StubController;->getHoldService()Lcom/huawei/permission/IHoldService;

    move-result-object v1

    .line 486
    .local v1, hService:Lcom/huawei/permission/IHoldService;
    if-nez v1, :cond_0

    .line 487
    const-string v4, "StubController"

    const-string/jumbo v5, "service = null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :goto_0
    return v3

    .line 492
    :cond_0
    const-string v6, "StubController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hold! permissionType:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " uid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, p1, v7}, Landroid/app/IActivityManager;->handleANRFilterFIFO(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    :try_start_1
    invoke-interface {v1, p1, p0, p2}, Lcom/huawei/permission/IHoldService;->holdServiceByRequestPermission(IILjava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v2

    .line 513
    .local v2, holdResult:I
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, p1, v7}, Landroid/app/IActivityManager;->handleANRFilterFIFO(II)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 520
    if-nez v2, :cond_1

    move v3, v4

    .line 521
    goto :goto_0

    .line 497
    .end local v2           #holdResult:I
    :catch_0
    move-exception v0

    .line 498
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 514
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #holdResult:I
    :catch_1
    move-exception v0

    .line 515
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 507
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #holdResult:I
    :catch_2
    move-exception v0

    .line 508
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 513
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, p1, v5}, Landroid/app/IActivityManager;->handleANRFilterFIFO(II)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 514
    :catch_3
    move-exception v0

    .line 515
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 511
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 513
    :try_start_5
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, p1, v6}, Landroid/app/IActivityManager;->handleANRFilterFIFO(II)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 516
    throw v4

    .line 514
    :catch_4
    move-exception v0

    .line 515
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #holdResult:I
    :cond_1
    move v3, v5

    .line 523
    goto :goto_0
.end method

.method private static declared-synchronized insertLog(Landroid/content/Context;IIZ)V
    .locals 5
    .parameter "context"
    .parameter "permissionType"
    .parameter "callUid"
    .parameter "isAllow"

    .prologue
    .line 107
    const-class v3, Lcom/huawei/permission/StubController;

    monitor-enter v3

    if-nez p0, :cond_0

    .line 108
    :try_start_0
    const-string v2, "StubController"

    const-string v4, "insert Log , but mContext == null "

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :goto_0
    monitor-exit v3

    return-void

    .line 112
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 113
    .local v1, mContentResolver:Landroid/content/ContentResolver;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 114
    .local v0, args:Landroid/content/ContentValues;
    const-string/jumbo v2, "uid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 115
    const-string/jumbo v2, "permissionCode"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 116
    const-string v4, "allow"

    if-eqz p3, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 118
    const-string v2, "content://com.huawei.permissionmanager.provider.PermissionDataProvider/log"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 107
    .end local v0           #args:Landroid/content/ContentValues;
    .end local v1           #mContentResolver:Landroid/content/ContentResolver;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 116
    .restart local v0       #args:Landroid/content/ContentValues;
    .restart local v1       #mContentResolver:Landroid/content/ContentResolver;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static declared-synchronized isGlobalSwitchOn(Landroid/content/Context;I)Z
    .locals 12
    .parameter "context"
    .parameter "permissionType"

    .prologue
    const/4 v10, 0x1

    .line 446
    const-class v11, Lcom/huawei/permission/StubController;

    monitor-enter v11

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 448
    :cond_0
    const/4 v8, 0x0

    .line 481
    :goto_0
    monitor-exit v11

    return v8

    .line 451
    :cond_1
    const/4 v8, 0x1

    .line 453
    .local v8, ret:Z
    :try_start_0
    const-string v0, "content://com.huawei.permissionmanager.provider.PermissionDataProvider/common"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 454
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 457
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_2

    move v8, v10

    .line 458
    goto :goto_0

    .line 462
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 463
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_3

    .line 464
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v8, v10

    .line 465
    goto :goto_0

    .line 468
    :cond_3
    const-string/jumbo v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 469
    .local v7, index:I
    const/4 v0, -0x1

    if-ne v0, v7, :cond_4

    .line 470
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v8, v10

    .line 471
    goto :goto_0

    .line 474
    :cond_4
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 475
    .local v9, value:I
    const-string v0, "StubController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "globalSwitch is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    if-ne v10, v9, :cond_5

    .line 477
    const/4 v8, 0x0

    .line 480
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 446
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #index:I
    .end local v9           #value:I
    :catchall_0
    move-exception v0

    monitor-exit v11

    throw v0
.end method

.method private static isSystemAndNotCustApp(Landroid/content/Context;I)Z
    .locals 1
    .parameter "context"
    .parameter "callUid"

    .prologue
    .line 441
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/huawei/permission/StubController;->checkSystemAppInternal(Landroid/content/Context;IZ)Z

    move-result v0

    return v0
.end method

.method public static isSystemApp(Landroid/content/Context;I)Z
    .locals 1
    .parameter "context"
    .parameter "callUid"

    .prologue
    .line 359
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/huawei/permission/StubController;->checkSystemAppInternal(Landroid/content/Context;IZ)Z

    move-result v0

    return v0
.end method

.method public static notifyAlert(Landroid/content/Context;IIILjava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "uid"
    .parameter "permissionType"
    .parameter "permissionOp"
    .parameter "telNumber"

    .prologue
    .line 551
    const/4 v2, 0x0

    .line 552
    .local v2, intentStr:Ljava/lang/String;
    sparse-switch p2, :sswitch_data_0

    .line 594
    :goto_0
    return-void

    .line 554
    :sswitch_0
    const-string v2, "com.huawei.permissionmanager.wiretap"

    .line 582
    :goto_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 583
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "callerUid"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 584
    const-string v3, "eventType"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 585
    const-string/jumbo v3, "telNumber"

    invoke-virtual {v1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 586
    const-string/jumbo v3, "permissionOp"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 589
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 590
    :catch_0
    move-exception v0

    .line 591
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "StubController"

    const-string v4, "broadcastIntent failed error "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 557
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #intent:Landroid/content/Intent;
    :sswitch_1
    const-string v2, "com.huawei.permissionmanager.takepicture"

    .line 558
    goto :goto_1

    .line 560
    :sswitch_2
    const-string v2, "com.huawei.permissionmanager.absorption"

    .line 561
    goto :goto_1

    .line 564
    :sswitch_3
    const-string v2, "com.huawei.permissionmanager.absorption"

    .line 566
    :sswitch_4
    const-string v2, "com.huawei.permissionmanager.notification"

    .line 567
    goto :goto_1

    .line 574
    :sswitch_5
    const-string v2, "com.huawei.permissionmanager.private"

    .line 575
    goto :goto_1

    .line 552
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_5
        0x4 -> :sswitch_5
        0x8 -> :sswitch_5
        0x10 -> :sswitch_5
        0x20 -> :sswitch_2
        0x40 -> :sswitch_3
        0x80 -> :sswitch_0
        0x400 -> :sswitch_1
        0x800 -> :sswitch_5
        0x1000 -> :sswitch_4
    .end sparse-switch
.end method

.method public static remind(Landroid/content/Context;II)I
    .locals 13
    .parameter "context"
    .parameter "permissionType"
    .parameter "uid"

    .prologue
    const/16 v12, 0x1000

    const/4 v11, -0x1

    const/4 v10, 0x1

    .line 173
    sget v0, Lcom/huawei/permission/StubController;->isPermissionManagerPropertyOn:I

    if-nez v0, :cond_0

    move v0, v10

    .line 236
    :goto_0
    return v0

    .line 178
    :cond_0
    if-nez p0, :cond_1

    .line 179
    const-string v0, "StubController"

    const-string v2, "context is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 180
    goto :goto_0

    .line 184
    :cond_1
    invoke-static {p0, p2}, Lcom/huawei/permission/StubController;->isSystemAndNotCustApp(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v10

    .line 185
    goto :goto_0

    .line 189
    :cond_2
    if-eq v12, p1, :cond_3

    .line 190
    const-string v0, "StubController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update db directly without bind permissionManagerService, permission type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_3
    :try_start_0
    invoke-static {p0, p2, p1}, Lcom/huawei/permission/StubController;->updateDb(Landroid/content/Context;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    const-string v0, "content://com.huawei.permissionmanager.provider.PermissionDataProvider/permission"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 203
    .local v1, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 205
    .local v6, c:Landroid/database/Cursor;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 207
    if-nez v6, :cond_5

    .line 230
    if-eqz v6, :cond_4

    .line 231
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v10

    goto :goto_0

    .line 195
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #c:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 196
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v10

    .line 197
    goto :goto_0

    .line 210
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_5
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_7

    .line 211
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 230
    if-eqz v6, :cond_6

    .line 231
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    move v0, v10

    goto :goto_0

    .line 215
    :cond_7
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 216
    const-string/jumbo v0, "permissionCfg"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 217
    .local v9, permissionCfgIndex:I
    if-ne v11, v9, :cond_9

    .line 218
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 230
    if-eqz v6, :cond_8

    .line 231
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8
    move v0, v10

    goto/16 :goto_0

    .line 222
    :cond_9
    :try_start_4
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 223
    .local v8, permissionCfg:I
    and-int v0, v8, p1

    if-nez v0, :cond_a

    if-ne p1, v12, :cond_a

    .line 225
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lcom/huawei/permission/StubController;->sendIntentForNotify(Landroid/content/Context;III)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 230
    :cond_a
    if-eqz v6, :cond_b

    .line 231
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 236
    .end local v8           #permissionCfg:I
    .end local v9           #permissionCfgIndex:I
    :cond_b
    :goto_1
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 227
    :catch_1
    move-exception v7

    .line 228
    .restart local v7       #e:Ljava/lang/Exception;
    :try_start_5
    const-string v0, "StubController"

    const-string v2, "find permissionCfg error!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 230
    if-eqz v6, :cond_b

    .line 231
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 230
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_c

    .line 231
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v0
.end method

.method public static remind(Landroid/content/Context;IILjava/lang/String;)I
    .locals 8
    .parameter "context"
    .parameter "permissionType"
    .parameter "uid"
    .parameter "desAddr"

    .prologue
    const/4 v2, 0x0

    .line 124
    const-string v0, "content://com.huawei.permissionmanager.provider.PermissionDataProvider/permission"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 125
    .local v1, permissionUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 126
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 127
    const/4 v7, -0x1

    .line 134
    :goto_0
    return v7

    .line 130
    :cond_0
    invoke-static {v6, p1, p2, p3}, Lcom/huawei/permission/StubController;->remind(Landroid/database/Cursor;IILjava/lang/String;)I

    move-result v7

    .line 132
    .local v7, ret:I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static remind(Landroid/database/Cursor;IILjava/lang/String;)I
    .locals 6
    .parameter "c"
    .parameter "permissionType"
    .parameter "uid"
    .parameter "desAddr"

    .prologue
    const/4 v3, -0x1

    .line 141
    const/4 v2, -0x1

    .line 143
    .local v2, ret:I
    if-nez p0, :cond_1

    .line 144
    const-string v4, "StubController"

    const-string v5, "cursor is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_0
    :goto_0
    return v3

    .line 148
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 151
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 152
    const-string/jumbo v4, "permissionCode"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 153
    .local v1, permissionCodeIndex:I
    if-eq v3, v1, :cond_0

    .line 157
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 159
    .local v0, permissionCode:I
    and-int v3, v0, p1

    if-eqz v3, :cond_2

    .line 160
    const/4 v3, 0x1

    goto :goto_0

    .line 165
    .end local v0           #permissionCode:I
    .end local v1           #permissionCodeIndex:I
    :cond_2
    invoke-static {p1, p2, p3}, Lcom/huawei/permission/StubController;->hold(IILjava/lang/String;)I

    move-result v2

    move v3, v2

    .line 166
    goto :goto_0
.end method

.method public static sendIntentForNotify(Landroid/content/Context;III)V
    .locals 9
    .parameter "context"
    .parameter "permissionType"
    .parameter "uid"
    .parameter "permissionOp"

    .prologue
    const/4 v2, 0x0

    .line 241
    sparse-switch p1, :sswitch_data_0

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 244
    :sswitch_0
    const-string v0, ""

    invoke-static {p0, p2, p1, p3, v0}, Lcom/huawei/permission/StubController;->notifyAlert(Landroid/content/Context;IIILjava/lang/String;)V

    goto :goto_0

    .line 252
    :sswitch_1
    const-string v0, "content://com.huawei.permissionmanager.provider.PermissionDataProvider/common"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 253
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "key = 20121109"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 256
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 260
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 261
    const-string v0, ""

    invoke-static {p0, p2, p1, p3, v0}, Lcom/huawei/permission/StubController;->notifyAlert(Landroid/content/Context;IIILjava/lang/String;)V

    goto :goto_0

    .line 264
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 265
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    .line 266
    const-string v0, "StubController"

    const-string v2, "cursor\'s count <= 0, allowed"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 270
    :cond_2
    const-string/jumbo v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 271
    .local v8, valueIndex:I
    if-gez v8, :cond_3

    .line 272
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 276
    :cond_3
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 277
    .local v7, value:I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 279
    if-nez v7, :cond_0

    .line 280
    const-string v0, ""

    invoke-static {p0, p2, p1, p3, v0}, Lcom/huawei/permission/StubController;->notifyAlert(Landroid/content/Context;IIILjava/lang/String;)V

    goto :goto_0

    .line 241
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x4 -> :sswitch_1
        0x8 -> :sswitch_1
        0x10 -> :sswitch_1
        0x800 -> :sswitch_1
        0x1000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static updateDb(Landroid/content/Context;II)V
    .locals 18
    .parameter "context"
    .parameter "uid"
    .parameter "permissionType"

    .prologue
    .line 598
    const/4 v9, 0x0

    .line 600
    .local v9, isRowExisted:Z
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 601
    .local v10, packageManager:Landroid/content/pm/PackageManager;
    if-nez v10, :cond_1

    .line 673
    :cond_0
    :goto_0
    return-void

    .line 605
    :cond_1
    const/16 v16, 0x0

    .line 607
    .local v16, pkgNames:[Ljava/lang/String;
    :try_start_0
    move/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v16

    .line 608
    if-eqz v16, :cond_2

    move-object/from16 v0, v16

    array-length v1, v0

    if-gtz v1, :cond_3

    .line 609
    :cond_2
    const-string v1, "StubController"

    const-string/jumbo v3, "pkgNames = null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 612
    :catch_0
    move-exception v8

    .line 613
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 617
    .end local v8           #e:Ljava/lang/Exception;
    :cond_3
    const/4 v1, 0x0

    aget-object v15, v16, v1

    .line 618
    .local v15, pkgName:Ljava/lang/String;
    const-string v1, "content://com.huawei.permissionmanager.provider.PermissionDataProvider/permission"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 619
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 620
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 624
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 625
    const/4 v9, 0x1

    .line 628
    :cond_4
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 629
    .local v17, values:Landroid/content/ContentValues;
    const/4 v11, 0x0

    .line 630
    .local v11, permissionCfg:I
    const/4 v13, 0x0

    .line 632
    .local v13, permissionCode:I
    if-eqz v9, :cond_8

    .line 633
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 634
    const-string/jumbo v1, "permissionCode"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 635
    .local v14, permissionCodeIndex:I
    const/4 v1, -0x1

    if-ne v1, v14, :cond_5

    .line 636
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 640
    :cond_5
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 641
    and-int v1, v13, p2

    if-eqz v1, :cond_6

    .line 642
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 646
    :cond_6
    const-string/jumbo v1, "permissionCfg"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 647
    .local v12, permissionCfgIndex:I
    const/4 v1, -0x1

    if-ne v1, v14, :cond_7

    .line 648
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 652
    :cond_7
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 655
    .end local v12           #permissionCfgIndex:I
    .end local v14           #permissionCodeIndex:I
    :cond_8
    or-int v13, v13, p2

    .line 656
    const-string/jumbo v1, "permissionCode"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 658
    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v11, v1

    .line 659
    const-string/jumbo v1, "permissionCfg"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 662
    if-eqz v9, :cond_9

    .line 663
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 670
    :goto_1
    if-eqz v7, :cond_0

    .line 671
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 665
    :cond_9
    const-string/jumbo v1, "uid"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 666
    const-string/jumbo v1, "packageName"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_1
.end method
