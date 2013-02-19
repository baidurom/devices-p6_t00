.class public Lcom/huawei/telephony/HuaweiPhoneService;
.super Lcom/huawei/telephony/IHuaweiTelephony$Stub;
.source "HuaweiPhoneService.java"

# interfaces
.implements Lcom/android/internal/telephony/PhoneFactory$PhoneServiceInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/telephony/HuaweiPhoneService$MainThreadRequest;,
        Lcom/huawei/telephony/HuaweiPhoneService$MainHandler;
    }
.end annotation


# static fields
.field private static final CMD_HANDLE_DEMO:I = 0x1

.field private static final DBG:Z = false

.field private static final EVENT_OEM_RIL_MESSAGE_DONE:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "HuaweiPhoneService"

.field private static final READ_PHONE_STATE:Ljava/lang/String; = "android.permission.READ_PHONE_STATE"


# instance fields
.field private mATResponse:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private mMainHandler:Lcom/huawei/telephony/HuaweiPhoneService$MainHandler;

.field private mMessageThread:Landroid/os/HandlerThread;

.field private mMsim:Lcom/android/internal/telephony/IHuaweiMsim;

.field private mPhone:Lcom/huawei/telephony/HuaweiPhone;

.field private mPhones:[Lcom/huawei/telephony/HuaweiPhone;

.field private mbATReady:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;-><init>()V

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mLock:Ljava/lang/Object;

    .line 84
    iput-object v1, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mPhones:[Lcom/huawei/telephony/HuaweiPhone;

    .line 86
    iput-object v1, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mMsim:Lcom/android/internal/telephony/IHuaweiMsim;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mbATReady:Z

    .line 97
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HuaweiPhoneTempService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mMessageThread:Landroid/os/HandlerThread;

    .line 98
    iget-object v0, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mMessageThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 99
    new-instance v0, Lcom/huawei/telephony/HuaweiPhoneService$MainHandler;

    iget-object v1, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mMessageThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/huawei/telephony/HuaweiPhoneService$MainHandler;-><init>(Lcom/huawei/telephony/HuaweiPhoneService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mMainHandler:Lcom/huawei/telephony/HuaweiPhoneService$MainHandler;

    .line 101
    const-string v0, "huaweiphone"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 102
    return-void
.end method

.method static synthetic access$002(Lcom/huawei/telephony/HuaweiPhoneService;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mATResponse:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/huawei/telephony/HuaweiPhoneService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$202(Lcom/huawei/telephony/HuaweiPhoneService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mbATReady:Z

    return p1
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 215
    const-string v0, "HuaweiPhoneService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneIntfMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return-void
.end method

.method private sendRequest(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "command"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 185
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mMainHandler:Lcom/huawei/telephony/HuaweiPhoneService$MainHandler;

    invoke-virtual {v3}, Lcom/huawei/telephony/HuaweiPhoneService$MainHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 186
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "This method will deadlock if called from the main thread."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 189
    :cond_0
    new-instance v1, Lcom/huawei/telephony/HuaweiPhoneService$MainThreadRequest;

    invoke-direct {v1, p2, p3}, Lcom/huawei/telephony/HuaweiPhoneService$MainThreadRequest;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 190
    .local v1, request:Lcom/huawei/telephony/HuaweiPhoneService$MainThreadRequest;
    iget-object v2, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mMainHandler:Lcom/huawei/telephony/HuaweiPhoneService$MainHandler;

    invoke-virtual {v2, p1, v1}, Lcom/huawei/telephony/HuaweiPhoneService$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 191
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 193
    monitor-enter v1

    .line 194
    :goto_0
    :try_start_0
    iget-object v2, v1, Lcom/huawei/telephony/HuaweiPhoneService$MainThreadRequest;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 196
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 197
    :catch_0
    move-exception v2

    goto :goto_0

    .line 201
    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 203
    iget-object v2, v1, Lcom/huawei/telephony/HuaweiPhoneService$MainThreadRequest;->result:Ljava/lang/Object;

    return-object v2

    .line 201
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method


# virtual methods
.method public ATDirectChannel(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .parameter "ATCommand"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 325
    new-array v5, v8, [Ljava/lang/String;

    const-string v6, "0"

    aput-object v6, v5, v7

    .line 326
    .local v5, response:[Ljava/lang/String;
    new-array v0, v8, [Ljava/lang/String;

    aput-object p1, v0, v7

    .line 327
    .local v0, ATCommands:[Ljava/lang/String;
    iput-boolean v7, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mbATReady:Z

    .line 330
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    .line 331
    .local v4, myLooper:Landroid/os/Looper;
    if-nez v4, :cond_0

    .line 332
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 338
    :cond_0
    iget-object v7, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 340
    :try_start_1
    iget-object v6, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mMainHandler:Lcom/huawei/telephony/HuaweiPhoneService$MainHandler;

    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Lcom/huawei/telephony/HuaweiPhoneService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 343
    .local v3, msg:Landroid/os/Message;
    iget-object v6, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mPhones:[Lcom/huawei/telephony/HuaweiPhone;

    const/4 v8, 0x1

    aget-object v6, v6, v8

    invoke-virtual {v6, v0, v3}, Lcom/huawei/telephony/HuaweiPhone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 346
    :goto_0
    iget-boolean v6, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mbATReady:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_1

    .line 349
    :try_start_2
    iget-object v6, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 351
    :catch_0
    move-exception v1

    .line 353
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v6, "interrupted while trying to send command from ATDirectChannel"

    invoke-direct {p0, v6}, Lcom/huawei/telephony/HuaweiPhoneService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 356
    .end local v1           #e:Ljava/lang/InterruptedException;
    .end local v3           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 358
    .end local v4           #myLooper:Landroid/os/Looper;
    :catch_1
    move-exception v2

    .line 359
    .local v2, ex:Ljava/lang/Exception;
    const-string v6, "HuaweiPhoneService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ATDirectChannel Exception ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    .end local v2           #ex:Ljava/lang/Exception;
    :goto_1
    return-object v5

    .line 356
    .restart local v3       #msg:Landroid/os/Message;
    .restart local v4       #myLooper:Landroid/os/Looper;
    :cond_1
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 357
    :try_start_6
    iget-object v5, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mATResponse:[Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1
.end method

.method public ATDirectChannelMain([Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .parameter "ATCommand"

    .prologue
    const/4 v7, 0x0

    .line 367
    const/4 v6, 0x1

    new-array v5, v6, [Ljava/lang/String;

    const-string v6, "0"

    aput-object v6, v5, v7

    .line 368
    .local v5, response:[Ljava/lang/String;
    move-object v0, p1

    .line 369
    .local v0, ATCommands:[Ljava/lang/String;
    iput-boolean v7, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mbATReady:Z

    .line 372
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    .line 373
    .local v4, myLooper:Landroid/os/Looper;
    if-nez v4, :cond_0

    .line 374
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 380
    :cond_0
    iget-object v7, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 382
    :try_start_1
    iget-object v6, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mMainHandler:Lcom/huawei/telephony/HuaweiPhoneService$MainHandler;

    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Lcom/huawei/telephony/HuaweiPhoneService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 385
    .local v3, msg:Landroid/os/Message;
    iget-object v6, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mPhones:[Lcom/huawei/telephony/HuaweiPhone;

    const/4 v8, 0x0

    aget-object v6, v6, v8

    invoke-virtual {v6, v0, v3}, Lcom/huawei/telephony/HuaweiPhone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 388
    :goto_0
    iget-boolean v6, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mbATReady:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_1

    .line 391
    :try_start_2
    const-string v6, "HuaweiPhoneService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mLock.wait"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mbATReady:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v6, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 394
    :catch_0
    move-exception v1

    .line 396
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v6, "interrupted while trying to send command from ATDirectChannel"

    invoke-direct {p0, v6}, Lcom/huawei/telephony/HuaweiPhoneService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 399
    .end local v1           #e:Ljava/lang/InterruptedException;
    .end local v3           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 401
    .end local v4           #myLooper:Landroid/os/Looper;
    :catch_1
    move-exception v2

    .line 402
    .local v2, ex:Ljava/lang/Exception;
    const-string v6, "HuaweiPhoneService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ATDirectChannel Exception ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    .end local v2           #ex:Ljava/lang/Exception;
    :goto_1
    return-object v5

    .line 399
    .restart local v3       #msg:Landroid/os/Message;
    .restart local v4       #myLooper:Landroid/os/Looper;
    :cond_1
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 400
    :try_start_6
    iget-object v5, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mATResponse:[Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1
.end method

.method public IgnoreManualSelectMode()Z
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mMsim:Lcom/android/internal/telephony/IHuaweiMsim;

    invoke-interface {v0}, Lcom/android/internal/telephony/IHuaweiMsim;->IgnoreManualSelectMode()Z

    move-result v0

    return v0
.end method

.method public IsReselectionEnabled()Z
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mMsim:Lcom/android/internal/telephony/IHuaweiMsim;

    invoke-interface {v0}, Lcom/android/internal/telephony/IHuaweiMsim;->IsReselectionEnabled()Z

    move-result v0

    return v0
.end method

.method public IsSlot2Gsm()Z
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mMsim:Lcom/android/internal/telephony/IHuaweiMsim;

    invoke-interface {v0}, Lcom/android/internal/telephony/IHuaweiMsim;->IsSlot2Gsm()Z

    move-result v0

    return v0
.end method

.method public PowerOnCdmaModem(Z)V
    .locals 1
    .parameter "bOn"

    .prologue
    .line 459
    iget-object v0, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mMsim:Lcom/android/internal/telephony/IHuaweiMsim;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHuaweiMsim;->PowerOnCdmaModem(Z)V

    .line 460
    return-void
.end method

.method public PowerOnGsmModem(Z)V
    .locals 1
    .parameter "bOn"

    .prologue
    .line 471
    iget-object v0, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mMsim:Lcom/android/internal/telephony/IHuaweiMsim;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHuaweiMsim;->PowerOnGsmModem(Z)V

    .line 472
    return-void
.end method

.method public ResetStatus()V
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mMsim:Lcom/android/internal/telephony/IHuaweiMsim;

    invoke-interface {v0}, Lcom/android/internal/telephony/IHuaweiMsim;->ResetStatus()V

    .line 480
    return-void
.end method

.method public SetCdmaCardTypeReady()V
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mMsim:Lcom/android/internal/telephony/IHuaweiMsim;

    invoke-interface {v0}, Lcom/android/internal/telephony/IHuaweiMsim;->SetCdmaCardTypeReady()V

    .line 456
    return-void
.end method

.method public SetCdmaNetworkState(I)V
    .locals 1
    .parameter "nState"

    .prologue
    .line 463
    iget-object v0, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mMsim:Lcom/android/internal/telephony/IHuaweiMsim;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHuaweiMsim;->SetCdmaNetworkState(I)V

    .line 464
    return-void
.end method

.method public SetGsmCardTypeReady()V
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mMsim:Lcom/android/internal/telephony/IHuaweiMsim;

    invoke-interface {v0}, Lcom/android/internal/telephony/IHuaweiMsim;->SetGsmCardTypeReady()V

    .line 468
    return-void
.end method

.method public SwitchModem(I)V
    .locals 1
    .parameter "iMode"

    .prologue
    .line 487
    iget-object v0, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mMsim:Lcom/android/internal/telephony/IHuaweiMsim;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHuaweiMsim;->SwitchModem(I)V

    .line 488
    return-void
.end method

.method public cdmaCardInGsmMode(I)Z
    .locals 1
    .parameter "dualCardMode"

    .prologue
    .line 451
    iget-object v0, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mMsim:Lcom/android/internal/telephony/IHuaweiMsim;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHuaweiMsim;->cdmaCardInGsmMode(I)Z

    move-result v0

    return v0
.end method

.method public clearUserPrefWhenChangeMode(I)V
    .locals 4
    .parameter "nMode"

    .prologue
    .line 442
    :try_start_0
    iget-object v1, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mMsim:Lcom/android/internal/telephony/IHuaweiMsim;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHuaweiMsim;->clearUserPrefWhenChangeMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    :goto_0
    return-void

    .line 443
    :catch_0
    move-exception v0

    .line 444
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "HuaweiPhoneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSubActive Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCardType(I)I
    .locals 4
    .parameter "slotId"

    .prologue
    .line 259
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getCardType(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 262
    :goto_0
    return v1

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "HuaweiPhoneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCardType Exception ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getCdmaPrlVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 318
    iget-object v0, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mPhone:Lcom/huawei/telephony/HuaweiPhone;

    invoke-virtual {v0}, Lcom/huawei/telephony/HuaweiPhone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDSDARadioState(I)Z
    .locals 4
    .parameter "subId"

    .prologue
    .line 411
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 412
    .local v0, radioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;
    iget-object v1, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iget-object v1, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mPhones:[Lcom/huawei/telephony/HuaweiPhone;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/huawei/telephony/HuaweiPhone;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    .line 414
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    return v1
.end method

.method public getDemoString(Ljava/lang/Object;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mPhone:Lcom/huawei/telephony/HuaweiPhone;

    invoke-virtual {v0, p1}, Lcom/huawei/telephony/HuaweiPhone;->getDemoString(Ljava/lang/Object;)V

    .line 212
    return-void
.end method

.method public getDemoStringAsync(Lcom/huawei/telephony/IPhoneCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Lcom/huawei/telephony/HuaweiPhoneService;->getDemoString(Ljava/lang/Object;)V

    .line 208
    return-void
.end method

.method public getEsn()Ljava/lang/String;
    .locals 3

    .prologue
    .line 300
    iget-object v0, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mPhone:Lcom/huawei/telephony/HuaweiPhone;

    invoke-virtual {v0}, Lcom/huawei/telephony/HuaweiPhone;->getEsn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImsiForGSMSlot()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 506
    const-string v2, ""

    .line 507
    .local v2, imsi:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/UiccCard;

    move-result-object v3

    .line 508
    .local v3, uiccCard:Lcom/android/internal/telephony/UiccCard;
    invoke-virtual {p0, v6}, Lcom/huawei/telephony/HuaweiPhoneService;->isCardPresent(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 511
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/UiccCard;->getApplication(I)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v4

    .line 512
    .local v4, uiccapp:Lcom/android/internal/telephony/UiccCardApplication;
    if-eqz v4, :cond_0

    .line 513
    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v1

    .line 514
    .local v1, iccRec:Lcom/android/internal/telephony/IccRecords;
    if-eqz v1, :cond_0

    .line 515
    invoke-virtual {v1}, Lcom/android/internal/telephony/IccRecords;->getIMSI()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 523
    .end local v1           #iccRec:Lcom/android/internal/telephony/IccRecords;
    .end local v4           #uiccapp:Lcom/android/internal/telephony/UiccCardApplication;
    :cond_0
    :goto_0
    return-object v2

    .line 518
    :catch_0
    move-exception v0

    .line 519
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v5, "HuaweiPhoneService"

    const-string v6, "NULL point in getImsiForGSMSlot"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getMin()Ljava/lang/String;
    .locals 3

    .prologue
    .line 295
    iget-object v0, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mPhone:Lcom/huawei/telephony/HuaweiPhone;

    invoke-virtual {v0}, Lcom/huawei/telephony/HuaweiPhone;->getMin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceState()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 286
    iget-object v1, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 288
    .local v0, data:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mPhone:Lcom/huawei/telephony/HuaweiPhone;

    invoke-virtual {v1}, Lcom/huawei/telephony/HuaweiPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/ServiceState;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 289
    return-object v0
.end method

.method public getSignalStrength()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 279
    iget-object v1, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 281
    .local v0, data:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mPhone:Lcom/huawei/telephony/HuaweiPhone;

    invoke-virtual {v1}, Lcom/huawei/telephony/HuaweiPhone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/SignalStrength;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 282
    return-object v0
.end method

.method public getSlotIdFromSubId(I)I
    .locals 2
    .parameter "subId"

    .prologue
    .line 250
    :try_start_0
    iget-object v1, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mMsim:Lcom/android/internal/telephony/IHuaweiMsim;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHuaweiMsim;->getSlotIdFromSubId(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 252
    :goto_0
    return v1

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getSubidFromSlotId(I)I
    .locals 2
    .parameter "slotId"

    .prologue
    .line 240
    :try_start_0
    iget-object v1, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mMsim:Lcom/android/internal/telephony/IHuaweiMsim;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IHuaweiMsim;->getSubidFromSlotId(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 242
    :goto_0
    return v1

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getUimid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 307
    iget-object v0, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mPhone:Lcom/huawei/telephony/HuaweiPhone;

    invoke-virtual {v0}, Lcom/huawei/telephony/HuaweiPhone;->getUimid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCTNationRoamingEnable()Z
    .locals 4

    .prologue
    .line 269
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mMsim:Lcom/android/internal/telephony/IHuaweiMsim;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->isCTNationRoamingEnable(Lcom/android/internal/telephony/IHuaweiMsim;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 272
    :goto_0
    return v1

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "HuaweiPhoneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCTNationRoamingEnable Exception ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCardPresent(I)Z
    .locals 3
    .parameter "slotId"

    .prologue
    const/4 v1, 0x0

    .line 222
    if-ltz p1, :cond_0

    const/4 v2, 0x2

    if-le p1, v2, :cond_1

    .line 230
    :cond_0
    :goto_0
    return v1

    .line 228
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mMsim:Lcom/android/internal/telephony/IHuaweiMsim;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHuaweiMsim;->isCardPresent(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, ex:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public isSubActive(I)Z
    .locals 5
    .parameter "subId"

    .prologue
    .line 419
    const/4 v1, 0x0

    .line 421
    .local v1, result:Z
    :try_start_0
    iget-object v2, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mMsim:Lcom/android/internal/telephony/IHuaweiMsim;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHuaweiMsim;->isSubActive(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 425
    :goto_0
    return v1

    .line 422
    :catch_0
    move-exception v0

    .line 423
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "HuaweiPhoneService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSubActive Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isSubDeactived(I)Z
    .locals 5
    .parameter "subId"

    .prologue
    .line 430
    const/4 v1, 0x0

    .line 432
    .local v1, result:Z
    :try_start_0
    iget-object v2, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mMsim:Lcom/android/internal/telephony/IHuaweiMsim;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IHuaweiMsim;->isSubDeactived(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 436
    :goto_0
    return v1

    .line 433
    :catch_0
    move-exception v0

    .line 434
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "HuaweiPhoneService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSubDeactived Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDualCardMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 483
    iget-object v0, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mMsim:Lcom/android/internal/telephony/IHuaweiMsim;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IHuaweiMsim;->setDualCardMode(I)V

    .line 484
    return-void
.end method

.method public setHuaweiMsim(Lcom/android/internal/telephony/IHuaweiMsim;)V
    .locals 0
    .parameter "msim"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mMsim:Lcom/android/internal/telephony/IHuaweiMsim;

    .line 125
    return-void
.end method

.method public setPhone(Lcom/android/internal/telephony/Phone;Landroid/content/Context;)V
    .locals 1
    .parameter "phone"
    .parameter "context"

    .prologue
    .line 106
    new-instance v0, Lcom/huawei/telephony/HuaweiPhone;

    invoke-direct {v0, p1}, Lcom/huawei/telephony/HuaweiPhone;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mPhone:Lcom/huawei/telephony/HuaweiPhone;

    .line 107
    iput-object p2, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mContext:Landroid/content/Context;

    .line 108
    return-void
.end method

.method public setPhone([Lcom/android/internal/telephony/Phone;Landroid/content/Context;)V
    .locals 5
    .parameter "phones"
    .parameter "context"

    .prologue
    .line 112
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 113
    .local v1, numPhones:I
    new-array v2, v1, [Lcom/huawei/telephony/HuaweiPhone;

    iput-object v2, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mPhones:[Lcom/huawei/telephony/HuaweiPhone;

    .line 114
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 115
    const-string v2, "HuaweiPhoneService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating huaweiphone sub = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v2, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mPhones:[Lcom/huawei/telephony/HuaweiPhone;

    new-instance v3, Lcom/huawei/telephony/HuaweiPhone;

    aget-object v4, p1, v0

    invoke-direct {v3, v4}, Lcom/huawei/telephony/HuaweiPhone;-><init>(Lcom/android/internal/telephony/Phone;)V

    aput-object v3, v2, v0

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_0
    iget-object v2, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mPhones:[Lcom/huawei/telephony/HuaweiPhone;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mPhone:Lcom/huawei/telephony/HuaweiPhone;

    .line 119
    iput-object p2, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mContext:Landroid/content/Context;

    .line 120
    return-void
.end method
