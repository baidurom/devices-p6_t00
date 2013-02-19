.class Lorg/simalliance/openmobileapi/SEService$2;
.super Ljava/lang/Object;
.source "SEService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/simalliance/openmobileapi/SEService;-><init>(Landroid/content/Context;Lorg/simalliance/openmobileapi/SEService$CallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/simalliance/openmobileapi/SEService;


# direct methods
.method constructor <init>(Lorg/simalliance/openmobileapi/SEService;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lorg/simalliance/openmobileapi/SEService$2;->this$0:Lorg/simalliance/openmobileapi/SEService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/simalliance/openmobileapi/SEService$2;->this$0:Lorg/simalliance/openmobileapi/SEService;

    invoke-static {p2}, Lorg/simalliance/openmobileapi/service/ISmartcardService$Stub;->asInterface(Landroid/os/IBinder;)Lorg/simalliance/openmobileapi/service/ISmartcardService;

    move-result-object v1

    #setter for: Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;
    invoke-static {v0, v1}, Lorg/simalliance/openmobileapi/SEService;->access$002(Lorg/simalliance/openmobileapi/SEService;Lorg/simalliance/openmobileapi/service/ISmartcardService;)Lorg/simalliance/openmobileapi/service/ISmartcardService;

    .line 130
    iget-object v0, p0, Lorg/simalliance/openmobileapi/SEService$2;->this$0:Lorg/simalliance/openmobileapi/SEService;

    #getter for: Lorg/simalliance/openmobileapi/SEService;->mCallerCallback:Lorg/simalliance/openmobileapi/SEService$CallBack;
    invoke-static {v0}, Lorg/simalliance/openmobileapi/SEService;->access$100(Lorg/simalliance/openmobileapi/SEService;)Lorg/simalliance/openmobileapi/SEService$CallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lorg/simalliance/openmobileapi/SEService$2;->this$0:Lorg/simalliance/openmobileapi/SEService;

    #getter for: Lorg/simalliance/openmobileapi/SEService;->mCallerCallback:Lorg/simalliance/openmobileapi/SEService$CallBack;
    invoke-static {v0}, Lorg/simalliance/openmobileapi/SEService;->access$100(Lorg/simalliance/openmobileapi/SEService;)Lorg/simalliance/openmobileapi/SEService$CallBack;

    move-result-object v0

    iget-object v1, p0, Lorg/simalliance/openmobileapi/SEService$2;->this$0:Lorg/simalliance/openmobileapi/SEService;

    invoke-interface {v0, v1}, Lorg/simalliance/openmobileapi/SEService$CallBack;->serviceConnected(Lorg/simalliance/openmobileapi/SEService;)V

    .line 133
    :cond_0
    const-string v0, "SEService"

    const-string v1, "Service onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit p0

    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 6
    .parameter "className"

    .prologue
    .line 138
    iget-object v4, p0, Lorg/simalliance/openmobileapi/SEService$2;->this$0:Lorg/simalliance/openmobileapi/SEService;

    #getter for: Lorg/simalliance/openmobileapi/SEService;->mReaders:[Lorg/simalliance/openmobileapi/Reader;
    invoke-static {v4}, Lorg/simalliance/openmobileapi/SEService;->access$200(Lorg/simalliance/openmobileapi/SEService;)[Lorg/simalliance/openmobileapi/Reader;

    move-result-object v5

    monitor-enter v5

    .line 140
    :try_start_0
    iget-object v4, p0, Lorg/simalliance/openmobileapi/SEService$2;->this$0:Lorg/simalliance/openmobileapi/SEService;

    #getter for: Lorg/simalliance/openmobileapi/SEService;->mReaders:[Lorg/simalliance/openmobileapi/Reader;
    invoke-static {v4}, Lorg/simalliance/openmobileapi/SEService;->access$200(Lorg/simalliance/openmobileapi/SEService;)[Lorg/simalliance/openmobileapi/Reader;

    move-result-object v0

    .local v0, arr$:[Lorg/simalliance/openmobileapi/Reader;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    .local v3, reader:Lorg/simalliance/openmobileapi/Reader;
    :try_start_1
    invoke-virtual {v3}, Lorg/simalliance/openmobileapi/Reader;->closeSessions()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 140
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    .end local v3           #reader:Lorg/simalliance/openmobileapi/Reader;
    :cond_0
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 147
    iget-object v4, p0, Lorg/simalliance/openmobileapi/SEService$2;->this$0:Lorg/simalliance/openmobileapi/SEService;

    const/4 v5, 0x0

    #setter for: Lorg/simalliance/openmobileapi/SEService;->mSmartcardService:Lorg/simalliance/openmobileapi/service/ISmartcardService;
    invoke-static {v4, v5}, Lorg/simalliance/openmobileapi/SEService;->access$002(Lorg/simalliance/openmobileapi/SEService;Lorg/simalliance/openmobileapi/service/ISmartcardService;)Lorg/simalliance/openmobileapi/service/ISmartcardService;

    .line 148
    const-string v4, "SEService"

    const-string v5, "Service onServiceDisconnected"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-void

    .line 146
    .end local v0           #arr$:[Lorg/simalliance/openmobileapi/Reader;
    .end local v1           #i$:I
    .end local v2           #len$:I
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 143
    .restart local v0       #arr$:[Lorg/simalliance/openmobileapi/Reader;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #reader:Lorg/simalliance/openmobileapi/Reader;
    :catch_0
    move-exception v4

    goto :goto_1
.end method
