.class Lcom/android/server/PPPOEStateMachine$ConnectingState;
.super Lcom/android/internal/util/State;
.source "PPPOEStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PPPOEStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PPPOEStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/server/PPPOEStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/server/PPPOEStateMachine$ConnectingState;->this$0:Lcom/android/server/PPPOEStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PPPOEStateMachine;Lcom/android/server/PPPOEStateMachine$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 257
    invoke-direct {p0, p1}, Lcom/android/server/PPPOEStateMachine$ConnectingState;-><init>(Lcom/android/server/PPPOEStateMachine;)V

    return-void
.end method

.method private updateConfig()Z
    .locals 20

    .prologue
    .line 324
    const-string v17, "network_management"

    invoke-static/range {v17 .. v17}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v11

    .line 327
    .local v11, netService:Landroid/os/INetworkManagementService;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PPPOEStateMachine$ConnectingState;->this$0:Lcom/android/server/PPPOEStateMachine;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/PPPOEStateMachine;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/server/PPPOEStateMachine;->access$1200(Lcom/android/server/PPPOEStateMachine;)Landroid/content/Context;

    move-result-object v17

    const-string v18, "connectivity"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 331
    .local v2, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v12

    .line 332
    .local v12, prop:Landroid/net/LinkProperties;
    if-eqz v12, :cond_2

    .line 333
    invoke-virtual {v12}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/RouteInfo;

    .line 334
    .local v14, routeInfo:Landroid/net/RouteInfo;
    invoke-virtual {v14}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PPPOEStateMachine$ConnectingState;->this$0:Lcom/android/server/PPPOEStateMachine;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    #setter for: Lcom/android/server/PPPOEStateMachine;->mDefRoute:Landroid/net/RouteInfo;
    invoke-static {v0, v14}, Lcom/android/server/PPPOEStateMachine;->access$2602(Lcom/android/server/PPPOEStateMachine;Landroid/net/RouteInfo;)Landroid/net/RouteInfo;

    .line 339
    .end local v14           #routeInfo:Landroid/net/RouteInfo;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PPPOEStateMachine$ConnectingState;->this$0:Lcom/android/server/PPPOEStateMachine;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/PPPOEStateMachine;->mDefRoute:Landroid/net/RouteInfo;
    invoke-static/range {v17 .. v17}, Lcom/android/server/PPPOEStateMachine;->access$2600(Lcom/android/server/PPPOEStateMachine;)Landroid/net/RouteInfo;

    move-result-object v17

    if-eqz v17, :cond_2

    .line 341
    const-string v17, "PPPOEStateMachine"

    const-string v18, "Remove default route"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :try_start_0
    invoke-virtual {v12}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PPPOEStateMachine$ConnectingState;->this$0:Lcom/android/server/PPPOEStateMachine;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/PPPOEStateMachine;->mDefRoute:Landroid/net/RouteInfo;
    invoke-static/range {v18 .. v18}, Lcom/android/server/PPPOEStateMachine;->access$2600(Lcom/android/server/PPPOEStateMachine;)Landroid/net/RouteInfo;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v11, v0, v1}, Landroid/os/INetworkManagementService;->removeRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    .end local v8           #i$:Ljava/util/Iterator;
    :cond_2
    const-string v17, "ppp.interface"

    const-string v18, "ppp0"

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 354
    .local v9, interfaceName:Ljava/lang/String;
    const-string v17, "ppp.InetAddress"

    const-string v18, "0.0.0.0"

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 355
    .local v16, strInetAddressString:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    .line 358
    .local v3, destAddr:Ljava/net/InetAddress;
    const-string v17, "ppp.gateway"

    const-string v18, "0.0.0.0"

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 359
    .local v15, strGateway:Ljava/lang/String;
    invoke-static {v15}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    .line 361
    .local v7, gatewayAddr:Ljava/net/InetAddress;
    new-instance v10, Landroid/net/LinkAddress;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-direct {v10, v3, v0}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 362
    .local v10, linkAddress:Landroid/net/LinkAddress;
    new-instance v13, Landroid/net/RouteInfo;

    invoke-direct {v13, v10, v7}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;)V

    .line 365
    .local v13, route:Landroid/net/RouteInfo;
    :try_start_1
    invoke-interface {v11, v9, v13}, Landroid/os/INetworkManagementService;->addRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 372
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "net."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ".dns1"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 373
    .local v4, dns1:Ljava/lang/String;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_3

    .line 374
    const-string v17, "net.dns1"

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :cond_3
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "net."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ".dns2"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 378
    .local v5, dns2:Ljava/lang/String;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_4

    .line 379
    const-string v17, "net.dns2"

    move-object/from16 v0, v17

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    :cond_4
    const-string v17, "PPPOEStateMachine"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "set net.dns1 :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " net.dns2: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const/16 v17, 0x1

    .end local v3           #destAddr:Ljava/net/InetAddress;
    .end local v4           #dns1:Ljava/lang/String;
    .end local v5           #dns2:Ljava/lang/String;
    .end local v7           #gatewayAddr:Ljava/net/InetAddress;
    .end local v9           #interfaceName:Ljava/lang/String;
    .end local v10           #linkAddress:Landroid/net/LinkAddress;
    .end local v13           #route:Landroid/net/RouteInfo;
    .end local v15           #strGateway:Ljava/lang/String;
    .end local v16           #strInetAddressString:Ljava/lang/String;
    :goto_0
    return v17

    .line 345
    .restart local v8       #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v6

    .line 346
    .local v6, e:Ljava/lang/Exception;
    const-string v17, "PPPOEStateMachine"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Failed to remove route "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PPPOEStateMachine$ConnectingState;->this$0:Lcom/android/server/PPPOEStateMachine;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/PPPOEStateMachine;->mDefRoute:Landroid/net/RouteInfo;
    invoke-static/range {v19 .. v19}, Lcom/android/server/PPPOEStateMachine;->access$2600(Lcom/android/server/PPPOEStateMachine;)Landroid/net/RouteInfo;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 347
    const/16 v17, 0x0

    goto :goto_0

    .line 366
    .end local v6           #e:Ljava/lang/Exception;
    .end local v8           #i$:Ljava/util/Iterator;
    .restart local v3       #destAddr:Ljava/net/InetAddress;
    .restart local v7       #gatewayAddr:Ljava/net/InetAddress;
    .restart local v9       #interfaceName:Ljava/lang/String;
    .restart local v10       #linkAddress:Landroid/net/LinkAddress;
    .restart local v13       #route:Landroid/net/RouteInfo;
    .restart local v15       #strGateway:Ljava/lang/String;
    .restart local v16       #strInetAddressString:Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 367
    .restart local v6       #e:Ljava/lang/Exception;
    const-string v17, "PPPOEStateMachine"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Failed to add route "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 368
    const/16 v17, 0x0

    goto :goto_0
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 260
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 261
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/PPPOEStateMachine$ConnectingState;->this$0:Lcom/android/server/PPPOEStateMachine;

    #calls: Lcom/android/server/PPPOEStateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v1}, Lcom/android/server/PPPOEStateMachine;->access$1600(Lcom/android/server/PPPOEStateMachine;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 263
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/PPPOEStateMachine$ConnectingState$1;

    invoke-direct {v2, p0, v0}, Lcom/android/server/PPPOEStateMachine$ConnectingState$1;-><init>(Lcom/android/server/PPPOEStateMachine$ConnectingState;Landroid/os/Message;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 286
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    .line 290
    const/4 v2, 0x1

    .line 291
    .local v2, result:Z
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 313
    const/4 v2, 0x0

    .line 316
    :cond_0
    :goto_0
    return v2

    .line 293
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 294
    .local v1, raw:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/NativeDaemonEvent;->unescapeArgs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, cooked:[Ljava/lang/String;
    const-string v3, "8"

    aget-object v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 297
    invoke-direct {p0}, Lcom/android/server/PPPOEStateMachine$ConnectingState;->updateConfig()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 298
    iget-object v3, p0, Lcom/android/server/PPPOEStateMachine$ConnectingState;->this$0:Lcom/android/server/PPPOEStateMachine;

    iget-object v4, p0, Lcom/android/server/PPPOEStateMachine$ConnectingState;->this$0:Lcom/android/server/PPPOEStateMachine;

    #getter for: Lcom/android/server/PPPOEStateMachine;->mConnectedState:Lcom/android/server/PPPOEStateMachine$ConnectedState;
    invoke-static {v4}, Lcom/android/server/PPPOEStateMachine;->access$2100(Lcom/android/server/PPPOEStateMachine;)Lcom/android/server/PPPOEStateMachine$ConnectedState;

    move-result-object v4

    #calls: Lcom/android/server/PPPOEStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/android/server/PPPOEStateMachine;->access$2200(Lcom/android/server/PPPOEStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 300
    :cond_1
    iget-object v3, p0, Lcom/android/server/PPPOEStateMachine$ConnectingState;->this$0:Lcom/android/server/PPPOEStateMachine;

    #getter for: Lcom/android/server/PPPOEStateMachine;->mStartFailedState:Lcom/android/server/PPPOEStateMachine$StartFailedState;
    invoke-static {v3}, Lcom/android/server/PPPOEStateMachine;->access$1900(Lcom/android/server/PPPOEStateMachine;)Lcom/android/server/PPPOEStateMachine$StartFailedState;

    move-result-object v3

    const-string v4, "FAILURE_INTERNAL_ERROR"

    invoke-virtual {v3, v4}, Lcom/android/server/PPPOEStateMachine$StartFailedState;->setErrorCode(Ljava/lang/String;)V

    .line 301
    iget-object v3, p0, Lcom/android/server/PPPOEStateMachine$ConnectingState;->this$0:Lcom/android/server/PPPOEStateMachine;

    iget-object v4, p0, Lcom/android/server/PPPOEStateMachine$ConnectingState;->this$0:Lcom/android/server/PPPOEStateMachine;

    #getter for: Lcom/android/server/PPPOEStateMachine;->mStartFailedState:Lcom/android/server/PPPOEStateMachine$StartFailedState;
    invoke-static {v4}, Lcom/android/server/PPPOEStateMachine;->access$1900(Lcom/android/server/PPPOEStateMachine;)Lcom/android/server/PPPOEStateMachine$StartFailedState;

    move-result-object v4

    #calls: Lcom/android/server/PPPOEStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/android/server/PPPOEStateMachine;->access$2300(Lcom/android/server/PPPOEStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 303
    :cond_2
    const-string v3, "10"

    aget-object v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 304
    iget-object v3, p0, Lcom/android/server/PPPOEStateMachine$ConnectingState;->this$0:Lcom/android/server/PPPOEStateMachine;

    #getter for: Lcom/android/server/PPPOEStateMachine;->mStartFailedState:Lcom/android/server/PPPOEStateMachine$StartFailedState;
    invoke-static {v3}, Lcom/android/server/PPPOEStateMachine;->access$1900(Lcom/android/server/PPPOEStateMachine;)Lcom/android/server/PPPOEStateMachine$StartFailedState;

    move-result-object v3

    const-string v4, "FAILURE_INTERNAL_ERROR"

    invoke-virtual {v3, v4}, Lcom/android/server/PPPOEStateMachine$StartFailedState;->setErrorCode(Ljava/lang/String;)V

    .line 305
    iget-object v3, p0, Lcom/android/server/PPPOEStateMachine$ConnectingState;->this$0:Lcom/android/server/PPPOEStateMachine;

    iget-object v4, p0, Lcom/android/server/PPPOEStateMachine$ConnectingState;->this$0:Lcom/android/server/PPPOEStateMachine;

    #getter for: Lcom/android/server/PPPOEStateMachine;->mStartFailedState:Lcom/android/server/PPPOEStateMachine$StartFailedState;
    invoke-static {v4}, Lcom/android/server/PPPOEStateMachine;->access$1900(Lcom/android/server/PPPOEStateMachine;)Lcom/android/server/PPPOEStateMachine$StartFailedState;

    move-result-object v4

    #calls: Lcom/android/server/PPPOEStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/android/server/PPPOEStateMachine;->access$2400(Lcom/android/server/PPPOEStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 306
    :cond_3
    sget-object v3, Lcom/android/server/PPPOEStateMachine;->stateCode:Ljava/util/Set;

    aget-object v4, v0, v5

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 307
    iget-object v3, p0, Lcom/android/server/PPPOEStateMachine$ConnectingState;->this$0:Lcom/android/server/PPPOEStateMachine;

    #getter for: Lcom/android/server/PPPOEStateMachine;->mStartFailedState:Lcom/android/server/PPPOEStateMachine$StartFailedState;
    invoke-static {v3}, Lcom/android/server/PPPOEStateMachine;->access$1900(Lcom/android/server/PPPOEStateMachine;)Lcom/android/server/PPPOEStateMachine$StartFailedState;

    move-result-object v3

    aget-object v4, v0, v5

    invoke-virtual {v3, v4}, Lcom/android/server/PPPOEStateMachine$StartFailedState;->setErrorCode(Ljava/lang/String;)V

    .line 308
    iget-object v3, p0, Lcom/android/server/PPPOEStateMachine$ConnectingState;->this$0:Lcom/android/server/PPPOEStateMachine;

    iget-object v4, p0, Lcom/android/server/PPPOEStateMachine$ConnectingState;->this$0:Lcom/android/server/PPPOEStateMachine;

    #getter for: Lcom/android/server/PPPOEStateMachine;->mStartFailedState:Lcom/android/server/PPPOEStateMachine$StartFailedState;
    invoke-static {v4}, Lcom/android/server/PPPOEStateMachine;->access$1900(Lcom/android/server/PPPOEStateMachine;)Lcom/android/server/PPPOEStateMachine$StartFailedState;

    move-result-object v4

    #calls: Lcom/android/server/PPPOEStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Lcom/android/server/PPPOEStateMachine;->access$2500(Lcom/android/server/PPPOEStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 291
    :pswitch_data_0
    .packed-switch 0x25003
        :pswitch_0
    .end packed-switch
.end method
