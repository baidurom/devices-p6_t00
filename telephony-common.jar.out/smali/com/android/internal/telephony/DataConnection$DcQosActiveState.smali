.class Lcom/android/internal/telephony/DataConnection$DcQosActiveState;
.super Lcom/android/internal/util/State;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcQosActiveState"
.end annotation


# instance fields
.field private qosSpec:Lcom/android/internal/telephony/QosSpec;

.field final synthetic this$0:Lcom/android/internal/telephony/DataConnection;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/DataConnection;)V
    .locals 1
    .parameter

    .prologue
    .line 1322
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 1323
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->qosSpec:Lcom/android/internal/telephony/QosSpec;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1322
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;-><init>(Lcom/android/internal/telephony/DataConnection;)V

    return-void
.end method

.method private getAsyncException(Landroid/os/Message;)Ljava/lang/String;
    .locals 5
    .parameter "msg"

    .prologue
    .line 1459
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1460
    .local v0, ar:Landroid/os/AsyncResult;
    const/4 v1, 0x0

    .line 1462
    .local v1, ex:Ljava/lang/String;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 1463
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in response"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1464
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v2, :cond_1

    const/4 v1, 0x0

    .line 1466
    :cond_0
    :goto_0
    return-object v1

    .line 1464
    :cond_1
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    goto :goto_0
.end method


# virtual methods
.method public enter()V
    .locals 0

    .prologue
    .line 1327
    return-void
.end method

.method public exit()V
    .locals 0

    .prologue
    .line 1332
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .parameter "msg"

    .prologue
    .line 1336
    const/4 v4, 0x0

    .line 1340
    .local v4, retVal:Z
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 1452
    const/4 v4, 0x0

    .line 1455
    :goto_0
    return v4

    .line 1342
    :sswitch_0
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v7, "DcQosActiveState msg.what=EVENT_QOS_ENABLE"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1344
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/QosSpec;

    iput-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->qosSpec:Lcom/android/internal/telephony/QosSpec;

    .line 1345
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v7, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->qosSpec:Lcom/android/internal/telephony/QosSpec;

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/DataConnection;->onQosSetup(Lcom/android/internal/telephony/QosSpec;)V

    .line 1346
    const/4 v4, 0x1

    .line 1347
    goto :goto_0

    .line 1349
    :sswitch_1
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v7, "DcQosActiveState msg.what=EVENT_QOS_DISABLE"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1351
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 1352
    .local v2, qosId:I
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/DataConnection;->onQosRelease(I)V

    .line 1353
    const/4 v4, 0x1

    .line 1354
    goto :goto_0

    .line 1356
    .end local v2           #qosId:I
    :sswitch_2
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v7, "DcQosActiveState msg.what=EVENT_QOS_SUSPEND"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1358
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 1359
    .restart local v2       #qosId:I
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/DataConnection;->onQosSuspend(I)V

    .line 1360
    const/4 v4, 0x1

    .line 1361
    goto :goto_0

    .line 1363
    .end local v2           #qosId:I
    :sswitch_3
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v7, "DcQosActiveState msg.what=EVENT_QOS_RESUME"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1365
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 1366
    .restart local v2       #qosId:I
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/DataConnection;->onQosResume(I)V

    .line 1367
    const/4 v4, 0x1

    .line 1368
    goto :goto_0

    .line 1370
    .end local v2           #qosId:I
    :sswitch_4
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v7, "DcQosActiveState msg.what=EVENT_QOS_GET_STATUS"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1372
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 1373
    .restart local v2       #qosId:I
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/DataConnection;->onQosGetStatus(I)V

    .line 1374
    const/4 v4, 0x1

    .line 1375
    goto :goto_0

    .line 1377
    .end local v2           #qosId:I
    :sswitch_5
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v7, "DcQosActiveState msg.what=EVENT_QOS_IND"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1378
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {v7, v6}, Lcom/android/internal/telephony/DataConnection;->onQosStateChangedInd(Landroid/os/AsyncResult;)V

    .line 1380
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v6, v6, Lcom/android/internal/telephony/DataConnection;->mQosFlowIds:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 1381
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v7, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mActiveState:Lcom/android/internal/telephony/DataConnection$DcActiveState;
    invoke-static {v7}, Lcom/android/internal/telephony/DataConnection;->access$1600(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcActiveState;

    move-result-object v7

    #calls: Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v6, v7}, Lcom/android/internal/telephony/DataConnection;->access$3600(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V

    .line 1383
    :cond_0
    const/4 v4, 0x1

    .line 1384
    goto :goto_0

    .line 1387
    :sswitch_6
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v7, "DcQosActiveState msg.what=EVENT_QOS_ENABLE_DONE"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1389
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->getAsyncException(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    .line 1390
    .local v1, error:Ljava/lang/String;
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1392
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    move-object v3, v6

    check-cast v3, [Ljava/lang/String;

    .line 1393
    .local v3, responses:[Ljava/lang/String;
    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1394
    .local v5, userData:I
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v6, v5, v3, v1}, Lcom/android/internal/telephony/DataConnection;->onQosSetupDone(I[Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    const/4 v4, 0x1

    .line 1396
    goto/16 :goto_0

    .line 1399
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #error:Ljava/lang/String;
    .end local v3           #responses:[Ljava/lang/String;
    .end local v5           #userData:I
    :sswitch_7
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v7, "DcQosActiveState msg.what=EVENT_QOS_DISABLE_DONE"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1401
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->getAsyncException(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    .line 1403
    .restart local v1       #error:Ljava/lang/String;
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    iget-object v6, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1404
    .restart local v2       #qosId:I
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v6, v2, v1}, Lcom/android/internal/telephony/DataConnection;->onQosReleaseDone(ILjava/lang/String;)V

    .line 1405
    const/4 v4, 0x1

    .line 1406
    goto/16 :goto_0

    .line 1409
    .end local v1           #error:Ljava/lang/String;
    .end local v2           #qosId:I
    :sswitch_8
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v7, "DcQosActiveState msg.what=EVENT_QOS_SUSPEND_DONE"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1411
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->getAsyncException(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    .line 1413
    .restart local v1       #error:Ljava/lang/String;
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    iget-object v6, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1414
    .restart local v2       #qosId:I
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v6, v2, v1}, Lcom/android/internal/telephony/DataConnection;->onQosSuspendDone(ILjava/lang/String;)V

    .line 1415
    const/4 v4, 0x1

    .line 1416
    goto/16 :goto_0

    .line 1419
    .end local v1           #error:Ljava/lang/String;
    .end local v2           #qosId:I
    :sswitch_9
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v7, "DcQosActiveState msg.what=EVENT_QOS_RESUME_DONE"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1421
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->getAsyncException(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    .line 1423
    .restart local v1       #error:Ljava/lang/String;
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    iget-object v6, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1424
    .restart local v2       #qosId:I
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v6, v2, v1}, Lcom/android/internal/telephony/DataConnection;->onQosResumeDone(ILjava/lang/String;)V

    .line 1425
    const/4 v4, 0x1

    .line 1426
    goto/16 :goto_0

    .line 1429
    .end local v1           #error:Ljava/lang/String;
    .end local v2           #qosId:I
    :sswitch_a
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v7, "DcQosActiveState msg.what=EVENT_QOS_GET_STATUS_DONE"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1431
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->getAsyncException(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    .line 1432
    .restart local v1       #error:Ljava/lang/String;
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    iget-object v6, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1433
    .restart local v2       #qosId:I
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {v7, v2, v6, v1}, Lcom/android/internal/telephony/DataConnection;->onQosGetStatusDone(ILandroid/os/AsyncResult;Ljava/lang/String;)V

    .line 1435
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v6, v6, Lcom/android/internal/telephony/DataConnection;->mQosFlowIds:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 1436
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v7, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mActiveState:Lcom/android/internal/telephony/DataConnection$DcActiveState;
    invoke-static {v7}, Lcom/android/internal/telephony/DataConnection;->access$1600(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcActiveState;

    move-result-object v7

    #calls: Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v6, v7}, Lcom/android/internal/telephony/DataConnection;->access$3700(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V

    .line 1438
    :cond_1
    const/4 v4, 0x1

    .line 1439
    goto/16 :goto_0

    .line 1442
    .end local v1           #error:Ljava/lang/String;
    .end local v2           #qosId:I
    :sswitch_b
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v7, "DcQosActiveState msg.what=EVENT_DISCONNECT"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1444
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #calls: Lcom/android/internal/telephony/DataConnection;->tearDownQos()V
    invoke-static {v6}, Lcom/android/internal/telephony/DataConnection;->access$3800(Lcom/android/internal/telephony/DataConnection;)V

    .line 1445
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #calls: Lcom/android/internal/telephony/DataConnection;->deferMessage(Landroid/os/Message;)V
    invoke-static {v6, p1}, Lcom/android/internal/telephony/DataConnection;->access$3900(Lcom/android/internal/telephony/DataConnection;Landroid/os/Message;)V

    .line 1446
    const/4 v4, 0x1

    .line 1447
    goto/16 :goto_0

    .line 1340
    :sswitch_data_0
    .sparse-switch
        0x40004 -> :sswitch_b
        0x4001e -> :sswitch_0
        0x4001f -> :sswitch_6
        0x40020 -> :sswitch_1
        0x40021 -> :sswitch_7
        0x40024 -> :sswitch_2
        0x40025 -> :sswitch_8
        0x40026 -> :sswitch_3
        0x40027 -> :sswitch_9
        0x40028 -> :sswitch_4
        0x40029 -> :sswitch_a
        0x4002a -> :sswitch_5
    .end sparse-switch
.end method
