.class public Lorg/simalliance/openmobileapi/Reader;
.super Ljava/lang/Object;
.source "Reader.java"


# static fields
.field private static final DBG:Z = false

.field public static final TAG:Ljava/lang/String; = "AccessControl"


# instance fields
.field private mName:Ljava/lang/String;

.field private mService:Lorg/simalliance/openmobileapi/SEService;

.field private final mSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/simalliance/openmobileapi/Session;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/simalliance/openmobileapi/SEService;)V
    .locals 1
    .parameter "name"
    .parameter "service"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/simalliance/openmobileapi/Reader;->mSessions:Ljava/util/ArrayList;

    .line 48
    iput-object p1, p0, Lorg/simalliance/openmobileapi/Reader;->mName:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lorg/simalliance/openmobileapi/Reader;->mService:Lorg/simalliance/openmobileapi/SEService;

    .line 50
    return-void
.end method


# virtual methods
.method closeSession(Lorg/simalliance/openmobileapi/Session;)V
    .locals 2
    .parameter "session"

    .prologue
    .line 145
    if-nez p1, :cond_0

    .line 146
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "session is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_0
    iget-object v1, p0, Lorg/simalliance/openmobileapi/Reader;->mSessions:Ljava/util/ArrayList;

    monitor-enter v1

    .line 151
    :try_start_0
    invoke-virtual {p1}, Lorg/simalliance/openmobileapi/Session;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    invoke-virtual {p1}, Lorg/simalliance/openmobileapi/Session;->closeChannels()V

    .line 153
    invoke-virtual {p1}, Lorg/simalliance/openmobileapi/Session;->setClosed()V

    .line 155
    :cond_1
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Reader;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 156
    monitor-exit v1

    .line 157
    return-void

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public closeSessions()V
    .locals 4

    .prologue
    .line 118
    const-string v2, "AccessControl"

    const-string v3, "Reader to closeSessions"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v3, p0, Lorg/simalliance/openmobileapi/Reader;->mSessions:Ljava/util/ArrayList;

    monitor-enter v3

    .line 122
    :try_start_0
    iget-object v2, p0, Lorg/simalliance/openmobileapi/Reader;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simalliance/openmobileapi/Session;

    .line 123
    .local v1, session:Lorg/simalliance/openmobileapi/Session;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/simalliance/openmobileapi/Session;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 124
    invoke-virtual {v1}, Lorg/simalliance/openmobileapi/Session;->closeChannels()V

    .line 125
    invoke-virtual {v1}, Lorg/simalliance/openmobileapi/Session;->setClosed()V

    goto :goto_0

    .line 129
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #session:Lorg/simalliance/openmobileapi/Session;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 128
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lorg/simalliance/openmobileapi/Reader;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 129
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Reader;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSEService()Lorg/simalliance/openmobileapi/SEService;
    .locals 2

    .prologue
    .line 107
    const-string v0, "AccessControl"

    const-string v1, "Reader to getSEService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Reader;->mService:Lorg/simalliance/openmobileapi/SEService;

    return-object v0
.end method

.method public isSecureElementPresent()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/simalliance/openmobileapi/Reader;->mService:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v0, p0}, Lorg/simalliance/openmobileapi/SEService;->isSecureElementPresent(Lorg/simalliance/openmobileapi/Reader;)Z

    move-result v0

    return v0
.end method

.method public openSession()Lorg/simalliance/openmobileapi/Session;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v1, p0, Lorg/simalliance/openmobileapi/Reader;->mService:Lorg/simalliance/openmobileapi/SEService;

    invoke-virtual {v1, p0}, Lorg/simalliance/openmobileapi/SEService;->isSecureElementPresent(Lorg/simalliance/openmobileapi/Reader;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Secure Element is not presented."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_0
    iget-object v2, p0, Lorg/simalliance/openmobileapi/Reader;->mSessions:Ljava/util/ArrayList;

    monitor-enter v2

    .line 84
    :try_start_0
    new-instance v0, Lorg/simalliance/openmobileapi/Session;

    invoke-virtual {p0}, Lorg/simalliance/openmobileapi/Reader;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/simalliance/openmobileapi/Session;-><init>(Ljava/lang/String;Lorg/simalliance/openmobileapi/Reader;)V

    .line 85
    .local v0, session:Lorg/simalliance/openmobileapi/Session;
    iget-object v1, p0, Lorg/simalliance/openmobileapi/Reader;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    monitor-exit v2

    return-object v0

    .line 87
    .end local v0           #session:Lorg/simalliance/openmobileapi/Session;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
