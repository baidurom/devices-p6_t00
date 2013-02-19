.class public Lorg/simalliance/openmobileapi/SEService;
.super Ljava/lang/Object;
.source "SEService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simalliance/openmobileapi/SEService$CallBack;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final SERVICE_TAG:Ljava/lang/String; = "SEService"


# instance fields
.field private final mCallback:Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;

.field private mCallerCallback:Lorg/simalliance/openmobileapi/SEService$CallBack;

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mReaders:[Lorg/simalliance/openmobileapi/Reader;

.field private volatile mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/simalliance/openmobileapi/SEService$CallBack;)V
    .locals 5
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v1, Lorg/simalliance/openmobileapi/SEService$1;

    invoke-direct {v1, p0}, Lorg/simalliance/openmobileapi/SEService$1;-><init>(Lorg/simalliance/openmobileapi/SEService;)V

    iput-object v1, p0, Lorg/simalliance/openmobileapi/SEService;->mCallback:Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;

    .line 113
    const-string v1, "SEService"

    const-string v2, "SEService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    if-nez p1, :cond_0

    .line 116
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "context must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 118
    :cond_0
    if-nez p2, :cond_1

    .line 119
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "listener must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    :cond_1
    iput-object p1, p0, Lorg/simalliance/openmobileapi/SEService;->mContext:Landroid/content/Context;

    .line 123
    iput-object p2, p0, Lorg/simalliance/openmobileapi/SEService;->mCallerCallback:Lorg/simalliance/openmobileapi/SEService$CallBack;

    .line 125
    new-instance v1, Lorg/simalliance/openmobileapi/SEService$2;

    invoke-direct {v1, p0}, Lorg/simalliance/openmobileapi/SEService$2;-><init>(Lorg/simalliance/openmobileapi/SEService;)V

    iput-object v1, p0, Lorg/simalliance/openmobileapi/SEService;->mConnection:Landroid/content/ServiceConnection;

    .line 152
    iget-object v1, p0, Lorg/simalliance/openmobileapi/SEService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lorg/simalliance/openmobileapi/service/ISmartcardService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/simalliance/openmobileapi/SEService;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 154
    .local v0, bindingSuccessful:Z
    if-eqz v0, :cond_2

    .line 155
    const-string v1, "SEService"

    const-string v2, "bindService successful"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_2
    return-void
.end method

.method static synthetic access$002(Lorg/simalliance/openmobileapi/SEService;Lorg/simalliance/openmobileapi/service/ISmartcardService;)Lorg/simalliance/openmobileapi/service/ISmartcardService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    return-object p1
.end method

.method static synthetic access$100(Lorg/simalliance/openmobileapi/SEService;)Lorg/simalliance/openmobileapi/SEService$CallBack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lorg/simalliance/openmobileapi/SEService;->mCallerCallback:Lorg/simalliance/openmobileapi/SEService$CallBack;

    return-object v0
.end method

.method static synthetic access$200(Lorg/simalliance/openmobileapi/SEService;)[Lorg/simalliance/openmobileapi/Reader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lorg/simalliance/openmobileapi/SEService;->mReaders:[Lorg/simalliance/openmobileapi/Reader;

    return-object v0
.end method

.method private basicChannelInUse(Lorg/simalliance/openmobileapi/service/SmartcardError;)Z
    .locals 3
    .parameter "error"

    .prologue
    .line 531
    invoke-virtual {p1}, Lorg/simalliance/openmobileapi/service/SmartcardError;->createException()Ljava/lang/Exception;

    move-result-object v0

    .line 532
    .local v0, exp:Ljava/lang/Exception;
    if-eqz v0, :cond_0

    .line 533
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 534
    .local v1, msg:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 535
    const-string v2, "basic channel in use"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 536
    const/4 v2, 0x1

    .line 540
    .end local v1           #msg:Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private channelCannotBeEstablished(Lorg/simalliance/openmobileapi/service/SmartcardError;)Z
    .locals 4
    .parameter "error"

    .prologue
    const/4 v2, 0x1

    .line 544
    invoke-virtual {p1}, Lorg/simalliance/openmobileapi/service/SmartcardError;->createException()Ljava/lang/Exception;

    move-result-object v0

    .line 545
    .local v0, exp:Ljava/lang/Exception;
    if-eqz v0, :cond_2

    .line 546
    instance-of v3, v0, Ljava/util/MissingResourceException;

    if-eqz v3, :cond_1

    .line 565
    :cond_0
    :goto_0
    return v2

    .line 549
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 550
    .local v1, msg:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 551
    const-string v3, "channel in use"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 554
    const-string/jumbo v3, "open channel failed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 557
    const-string/jumbo v3, "out of channels"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 560
    const-string v3, "MANAGE CHANNEL"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 565
    .end local v1           #msg:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 579
    :try_start_0
    invoke-virtual {p1}, Lorg/simalliance/openmobileapi/service/SmartcardError;->throwException()V
    :try_end_0
    .catch Lorg/simalliance/openmobileapi/service/CardException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_1

    .line 585
    return-void

    .line 580
    :catch_0
    move-exception v0

    .line 581
    .local v0, exp:Lorg/simalliance/openmobileapi/service/CardException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Lorg/simalliance/openmobileapi/service/CardException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 582
    .end local v0           #exp:Lorg/simalliance/openmobileapi/service/CardException;
    :catch_1
    move-exception v0

    .line 583
    .local v0, exp:Ljava/security/AccessControlException;
    new-instance v1, Ljava/lang/SecurityException;

    invoke-virtual {v0}, Ljava/security/AccessControlException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkIfAppletAvailable(Lorg/simalliance/openmobileapi/service/SmartcardError;)V
    .locals 3
    .parameter "error"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    .line 569
    invoke-virtual {p1}, Lorg/simalliance/openmobileapi/service/SmartcardError;->createException()Ljava/lang/Exception;

    move-result-object v0

    .line 570
    .local v0, exp:Ljava/lang/Exception;
    if-eqz v0, :cond_0

    .line 571
    instance-of v1, v0, Ljava/util/NoSuchElementException;

    if-eqz v1, :cond_0

    .line 572
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "Applet with the defined aid does not exist in the SE"

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 575
    :cond_0
    return-void
.end method

.method private isDefaultApplicationSelected(Lorg/simalliance/openmobileapi/service/SmartcardError;)Z
    .locals 3
    .parameter "error"

    .prologue
    .line 518
    invoke-virtual {p1}, Lorg/simalliance/openmobileapi/service/SmartcardError;->createException()Ljava/lang/Exception;

    move-result-object v0

    .line 519
    .local v0, exp:Ljava/lang/Exception;
    if-eqz v0, :cond_0

    .line 520
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 521
    .local v1, msg:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 522
    const-string v2, "default application is not selected"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 523
    const/4 v2, 0x0

    .line 527
    .end local v1           #msg:Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method closeChannel(Lorg/simalliance/openmobileapi/Channel;)V
    .locals 5
    .parameter "channel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 400
    const-string v2, "SEService"

    const-string v3, "closeChannel"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v2, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    if-nez v2, :cond_0

    .line 406
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "service not connected to system"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 408
    :cond_0
    if-nez p1, :cond_1

    .line 409
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "channel must not be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 411
    :cond_1
    invoke-virtual {p1}, Lorg/simalliance/openmobileapi/Channel;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 422
    :goto_0
    return-void

    .line 415
    :cond_2
    new-instance v1, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 417
    .local v1, error:Lorg/simalliance/openmobileapi/service/SmartcardError;
    :try_start_0
    iget-object v2, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    invoke-virtual {p1}, Lorg/simalliance/openmobileapi/Channel;->getHandle()J

    move-result-wide v3

    invoke-interface {v2, v3, v4, v1}, Lorg/simalliance/openmobileapi/service/ISmartcardService;->closeChannel(JLorg/simalliance/openmobileapi/service/SmartcardError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    invoke-direct {p0, v1}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    goto :goto_0

    .line 418
    :catch_0
    move-exception v0

    .line 419
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method getAtr(Lorg/simalliance/openmobileapi/Reader;)[B
    .locals 5
    .parameter "reader"

    .prologue
    .line 499
    if-nez p1, :cond_0

    .line 500
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "reader must not be null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 502
    :cond_0
    iget-object v3, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    if-nez v3, :cond_1

    .line 503
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "service not connected to system"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 506
    :cond_1
    new-instance v2, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v2}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 509
    .local v2, error:Lorg/simalliance/openmobileapi/service/SmartcardError;
    :try_start_0
    iget-object v3, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    invoke-virtual {p1}, Lorg/simalliance/openmobileapi/Reader;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lorg/simalliance/openmobileapi/service/ISmartcardService;->getAtr(Ljava/lang/String;Lorg/simalliance/openmobileapi/service/SmartcardError;)[B

    move-result-object v0

    .line 510
    .local v0, atr:[B
    invoke-direct {p0, v2}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    .end local v0           #atr:[B
    :goto_0
    return-object v0

    .line 511
    :catch_0
    move-exception v1

    .line 512
    .local v1, e:Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getReaders()[Lorg/simalliance/openmobileapi/Reader;
    .locals 10

    .prologue
    .line 179
    iget-object v8, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    if-nez v8, :cond_0

    .line 180
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string/jumbo v9, "service not connected to system"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 183
    :cond_0
    new-instance v2, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v2}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 186
    .local v2, error:Lorg/simalliance/openmobileapi/service/SmartcardError;
    :try_start_0
    iget-object v8, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    invoke-interface {v8, v2}, Lorg/simalliance/openmobileapi/service/ISmartcardService;->getReaders(Lorg/simalliance/openmobileapi/service/SmartcardError;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 190
    .local v7, readerNames:[Ljava/lang/String;
    invoke-direct {p0, v2}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 192
    array-length v8, v7

    new-array v8, v8, [Lorg/simalliance/openmobileapi/Reader;

    iput-object v8, p0, Lorg/simalliance/openmobileapi/SEService;->mReaders:[Lorg/simalliance/openmobileapi/Reader;

    .line 193
    const/4 v3, 0x0

    .line 194
    .local v3, i:I
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v6, v0, v4

    .line 195
    .local v6, readerName:Ljava/lang/String;
    iget-object v8, p0, Lorg/simalliance/openmobileapi/SEService;->mReaders:[Lorg/simalliance/openmobileapi/Reader;

    new-instance v9, Lorg/simalliance/openmobileapi/Reader;

    invoke-direct {v9, v6, p0}, Lorg/simalliance/openmobileapi/Reader;-><init>(Ljava/lang/String;Lorg/simalliance/openmobileapi/SEService;)V

    aput-object v9, v8, v3

    .line 196
    add-int/lit8 v3, v3, 0x1

    .line 194
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 187
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #readerName:Ljava/lang/String;
    .end local v7           #readerNames:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 188
    .local v1, e:Ljava/lang/Exception;
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 198
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v3       #i:I
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    .restart local v7       #readerNames:[Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lorg/simalliance/openmobileapi/SEService;->mReaders:[Lorg/simalliance/openmobileapi/Reader;

    return-object v8
.end method

.method getSelectResponse(Lorg/simalliance/openmobileapi/Channel;)[B
    .locals 6
    .parameter "channel"

    .prologue
    .line 474
    iget-object v3, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    if-nez v3, :cond_0

    .line 475
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "service not connected to system"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 477
    :cond_0
    if-nez p1, :cond_1

    .line 478
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "channel must not be null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 480
    :cond_1
    invoke-virtual {p1}, Lorg/simalliance/openmobileapi/Channel;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 481
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "channel is closed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 484
    :cond_2
    new-instance v1, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 487
    .local v1, error:Lorg/simalliance/openmobileapi/service/SmartcardError;
    :try_start_0
    iget-object v3, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    invoke-virtual {p1}, Lorg/simalliance/openmobileapi/Channel;->getHandle()J

    move-result-wide v4

    invoke-interface {v3, v4, v5, v1}, Lorg/simalliance/openmobileapi/service/ISmartcardService;->getSelectResponse(JLorg/simalliance/openmobileapi/service/SmartcardError;)[B

    move-result-object v2

    .line 488
    .local v2, response:[B
    invoke-direct {p0, v1}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    invoke-direct {p0, v1}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 494
    return-object v2

    .line 489
    .end local v2           #response:[B
    :catch_0
    move-exception v0

    .line 490
    .local v0, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    throw v3
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    if-nez v0, :cond_0

    .line 166
    const/4 v0, 0x0

    .line 168
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isSecureElementPresent(Lorg/simalliance/openmobileapi/Reader;)Z
    .locals 5
    .parameter "reader"

    .prologue
    .line 246
    if-nez p1, :cond_0

    .line 247
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "reader must not be null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 249
    :cond_0
    iget-object v3, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    if-nez v3, :cond_1

    .line 250
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "service not connected to system"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 253
    :cond_1
    new-instance v1, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 256
    .local v1, error:Lorg/simalliance/openmobileapi/service/SmartcardError;
    :try_start_0
    iget-object v3, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    invoke-virtual {p1}, Lorg/simalliance/openmobileapi/Reader;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Lorg/simalliance/openmobileapi/service/ISmartcardService;->isCardPresent(Ljava/lang/String;Lorg/simalliance/openmobileapi/service/SmartcardError;)Z

    move-result v2

    .line 257
    .local v2, isPresent:Z
    invoke-direct {p0, v1}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    .end local v2           #isPresent:Z
    :goto_0
    return v2

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method openBasicChannel(Lorg/simalliance/openmobileapi/Session;[B)Lorg/simalliance/openmobileapi/Channel;
    .locals 8
    .parameter "session"
    .parameter "aid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 289
    const-string v5, "SEService"

    const-string/jumbo v6, "openBasicChannel"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    if-nez p1, :cond_0

    .line 292
    new-instance v5, Ljava/lang/NullPointerException;

    const-string/jumbo v6, "session must not be null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 294
    :cond_0
    invoke-virtual {p1}, Lorg/simalliance/openmobileapi/Session;->getReader()Lorg/simalliance/openmobileapi/Reader;

    move-result-object v5

    if-nez v5, :cond_1

    .line 295
    new-instance v5, Ljava/lang/NullPointerException;

    const-string/jumbo v6, "reader must not be null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 298
    :cond_1
    iget-object v5, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    if-nez v5, :cond_2

    .line 299
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "service not connected to system"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 301
    :cond_2
    invoke-virtual {p1}, Lorg/simalliance/openmobileapi/Session;->isClosed()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 302
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "session is closed"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 305
    :cond_3
    new-instance v2, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v2}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 308
    .local v2, error:Lorg/simalliance/openmobileapi/service/SmartcardError;
    :try_start_0
    iget-object v5, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    invoke-virtual {p1}, Lorg/simalliance/openmobileapi/Session;->getReader()Lorg/simalliance/openmobileapi/Reader;

    move-result-object v6

    invoke-virtual {v6}, Lorg/simalliance/openmobileapi/Reader;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/simalliance/openmobileapi/SEService;->mCallback:Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;

    invoke-interface {v5, v6, p2, v7, v2}, Lorg/simalliance/openmobileapi/service/ISmartcardService;->openBasicChannelAid(Ljava/lang/String;[BLorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;Lorg/simalliance/openmobileapi/service/SmartcardError;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 313
    .local v3, hChannel:J
    invoke-direct {p0, v2}, Lorg/simalliance/openmobileapi/SEService;->basicChannelInUse(Lorg/simalliance/openmobileapi/service/SmartcardError;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 332
    :cond_4
    :goto_0
    return-object v0

    .line 310
    .end local v3           #hChannel:J
    :catch_0
    move-exception v1

    .line 311
    .local v1, e:Ljava/lang/Exception;
    new-instance v5, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 316
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v3       #hChannel:J
    :cond_5
    invoke-direct {p0, v2}, Lorg/simalliance/openmobileapi/SEService;->channelCannotBeEstablished(Lorg/simalliance/openmobileapi/service/SmartcardError;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 319
    if-eqz p2, :cond_6

    array-length v5, p2

    if-nez v5, :cond_7

    .line 321
    :cond_6
    invoke-direct {p0, v2}, Lorg/simalliance/openmobileapi/SEService;->isDefaultApplicationSelected(Lorg/simalliance/openmobileapi/service/SmartcardError;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 325
    :cond_7
    invoke-direct {p0, v2}, Lorg/simalliance/openmobileapi/SEService;->checkIfAppletAvailable(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 326
    invoke-direct {p0, v2}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 328
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_4

    .line 331
    new-instance v0, Lorg/simalliance/openmobileapi/Channel;

    const/4 v5, 0x0

    invoke-direct {v0, p1, v3, v4, v5}, Lorg/simalliance/openmobileapi/Channel;-><init>(Lorg/simalliance/openmobileapi/Session;JZ)V

    .line 332
    .local v0, basicChannel:Lorg/simalliance/openmobileapi/Channel;
    goto :goto_0
.end method

.method openLogicalChannel(Lorg/simalliance/openmobileapi/Session;[B)Lorg/simalliance/openmobileapi/Channel;
    .locals 8
    .parameter "session"
    .parameter "aid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 354
    const-string v5, "SEService"

    const-string/jumbo v6, "openLogicalChannel"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    if-nez p1, :cond_0

    .line 357
    new-instance v5, Ljava/lang/NullPointerException;

    const-string/jumbo v6, "session must not be null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 359
    :cond_0
    invoke-virtual {p1}, Lorg/simalliance/openmobileapi/Session;->getReader()Lorg/simalliance/openmobileapi/Reader;

    move-result-object v5

    if-nez v5, :cond_1

    .line 360
    new-instance v5, Ljava/lang/NullPointerException;

    const-string/jumbo v6, "reader must not be null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 363
    :cond_1
    iget-object v5, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    if-nez v5, :cond_2

    .line 364
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "service not connected to system"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 366
    :cond_2
    invoke-virtual {p1}, Lorg/simalliance/openmobileapi/Session;->isClosed()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 367
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "session is closed"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 371
    :cond_3
    new-instance v1, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 374
    .local v1, error:Lorg/simalliance/openmobileapi/service/SmartcardError;
    :try_start_0
    iget-object v5, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    invoke-virtual {p1}, Lorg/simalliance/openmobileapi/Session;->getReader()Lorg/simalliance/openmobileapi/Reader;

    move-result-object v6

    invoke-virtual {v6}, Lorg/simalliance/openmobileapi/Reader;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/simalliance/openmobileapi/SEService;->mCallback:Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;

    invoke-interface {v5, v6, p2, v7, v1}, Lorg/simalliance/openmobileapi/service/ISmartcardService;->openLogicalChannel(Ljava/lang/String;[BLorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;Lorg/simalliance/openmobileapi/service/SmartcardError;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 379
    .local v2, hChannel:J
    invoke-direct {p0, v1}, Lorg/simalliance/openmobileapi/SEService;->channelCannotBeEstablished(Lorg/simalliance/openmobileapi/service/SmartcardError;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 389
    :cond_4
    :goto_0
    return-object v4

    .line 376
    .end local v2           #hChannel:J
    :catch_0
    move-exception v0

    .line 377
    .local v0, e:Ljava/lang/Exception;
    new-instance v5, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 382
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #hChannel:J
    :cond_5
    invoke-direct {p0, v1}, Lorg/simalliance/openmobileapi/SEService;->checkIfAppletAvailable(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 383
    invoke-direct {p0, v1}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 385
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-eqz v5, :cond_4

    .line 388
    new-instance v4, Lorg/simalliance/openmobileapi/Channel;

    const/4 v5, 0x1

    invoke-direct {v4, p1, v2, v3, v5}, Lorg/simalliance/openmobileapi/Channel;-><init>(Lorg/simalliance/openmobileapi/Session;JZ)V

    .line 389
    .local v4, logicalChannel:Lorg/simalliance/openmobileapi/Channel;
    goto :goto_0
.end method

.method public shutdown()V
    .locals 7

    .prologue
    .line 208
    iget-object v5, p0, Lorg/simalliance/openmobileapi/SEService;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v5

    .line 209
    :try_start_0
    iget-object v4, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/simalliance/openmobileapi/SEService;->mReaders:[Lorg/simalliance/openmobileapi/Reader;

    if-eqz v4, :cond_1

    .line 210
    iget-object v6, p0, Lorg/simalliance/openmobileapi/SEService;->mReaders:[Lorg/simalliance/openmobileapi/Reader;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 212
    :try_start_1
    iget-object v0, p0, Lorg/simalliance/openmobileapi/SEService;->mReaders:[Lorg/simalliance/openmobileapi/Reader;

    .local v0, arr$:[Lorg/simalliance/openmobileapi/Reader;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    .local v3, reader:Lorg/simalliance/openmobileapi/Reader;
    :try_start_2
    invoke-virtual {v3}, Lorg/simalliance/openmobileapi/Reader;->closeSessions()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 212
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 218
    .end local v3           #reader:Lorg/simalliance/openmobileapi/Reader;
    :cond_0
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 221
    .end local v0           #arr$:[Lorg/simalliance/openmobileapi/Reader;
    .end local v1           #i$:I
    .end local v2           #len$:I
    :cond_1
    :try_start_4
    iget-object v4, p0, Lorg/simalliance/openmobileapi/SEService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lorg/simalliance/openmobileapi/SEService;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v4, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1

    .line 226
    :goto_2
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 227
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    .line 228
    return-void

    .line 218
    :catchall_0
    move-exception v4

    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v4

    .line 226
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v4

    .line 215
    .restart local v0       #arr$:[Lorg/simalliance/openmobileapi/Reader;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #reader:Lorg/simalliance/openmobileapi/Reader;
    :catch_0
    move-exception v4

    goto :goto_1

    .line 222
    .end local v0           #arr$:[Lorg/simalliance/openmobileapi/Reader;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #reader:Lorg/simalliance/openmobileapi/Reader;
    :catch_1
    move-exception v4

    goto :goto_2
.end method

.method transmit(Lorg/simalliance/openmobileapi/Channel;[B)[B
    .locals 6
    .parameter "channel"
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 442
    const-string v3, "SEService"

    const-string/jumbo v4, "transmit"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    if-nez p2, :cond_0

    .line 445
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "command must not be null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 447
    :cond_0
    array-length v3, p2

    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    .line 448
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "command must have at least 4 bytes"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 450
    :cond_1
    iget-object v3, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    if-nez v3, :cond_2

    .line 451
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "service not connected to system"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 453
    :cond_2
    if-nez p1, :cond_3

    .line 454
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "channel must not be null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 456
    :cond_3
    invoke-virtual {p1}, Lorg/simalliance/openmobileapi/Channel;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 457
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "channel is closed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 460
    :cond_4
    new-instance v1, Lorg/simalliance/openmobileapi/service/SmartcardError;

    invoke-direct {v1}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>()V

    .line 463
    .local v1, error:Lorg/simalliance/openmobileapi/service/SmartcardError;
    :try_start_0
    iget-object v3, p0, Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;

    invoke-virtual {p1}, Lorg/simalliance/openmobileapi/Channel;->getHandle()J

    move-result-wide v4

    invoke-interface {v3, v4, v5, p2, v1}, Lorg/simalliance/openmobileapi/service/ISmartcardService;->transmit(J[BLorg/simalliance/openmobileapi/service/SmartcardError;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 467
    .local v2, response:[B
    invoke-direct {p0, v1}, Lorg/simalliance/openmobileapi/SEService;->checkForException(Lorg/simalliance/openmobileapi/service/SmartcardError;)V

    .line 469
    return-object v2

    .line 464
    .end local v2           #response:[B
    :catch_0
    move-exception v0

    .line 465
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
