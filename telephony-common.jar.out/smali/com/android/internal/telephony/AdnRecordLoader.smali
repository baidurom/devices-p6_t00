.class public Lcom/android/internal/telephony/AdnRecordLoader;
.super Landroid/os/Handler;
.source "AdnRecordLoader.java"


# static fields
.field static final EVENT_ADN_LOAD_ALL_DONE:I = 0x3

.field static final EVENT_ADN_LOAD_DONE:I = 0x1

.field static final EVENT_EF_LINEAR_RECORD_SIZE_DONE:I = 0x4

.field static final EVENT_EF_PBR_AAS_LINEAR_RECORD_SIZE_DONE:I = 0xb

.field static final EVENT_EF_PBR_ANR_LINEAR_RECORD_SIZE_DONE:I = 0x8

.field static final EVENT_EF_PBR_EMAIL_LINEAR_RECORD_SIZE_DONE:I = 0x6

.field static final EVENT_EF_PBR_GAS_LINEAR_RECORD_SIZE_DONE:I = 0xd

.field static final EVENT_EF_PBR_GRP_LINEAR_RECORD_SIZE_DONE:I = 0xc

.field static final EVENT_EF_PBR_IAP_LINEAR_RECORD_SIZE_DONE:I = 0x7

.field static final EVENT_EF_PBR_SNE_LINEAR_RECORD_SIZE_DONE:I = 0x9

.field static final EVENT_EXT_RECORD_LOAD_DONE:I = 0x2

.field static final EVENT_UPDATE_AAS_RECORD_DONE:I = 0xe

.field static final EVENT_UPDATE_ANR_RECORD_DONE:I = 0xa

.field static final EVENT_UPDATE_GAS_RECORD_DONE:I = 0x11

.field static final EVENT_UPDATE_GRP_RECORD_DONE:I = 0x10

.field static final EVENT_UPDATE_RECORD_DONE:I = 0x5

.field static final EVENT_UPDATE_SNE_RECORD_DONE:I = 0xf

.field static final LOG_TAG:Ljava/lang/String; = "RIL_AdnRecordLoader"


# instance fields
.field adnNum:I

.field adns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field anrNums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field anrefids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field ef:I

.field emailEF:I

.field emailEfids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field emailNum:I

.field emailNumInIap:I

.field emailNums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field emailTagInIap:I

.field emailTagInIaps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field extensionEF:I

.field fileCount:I

.field iapEF:I

.field iapRec:[B

.field private mFh:Lcom/android/internal/telephony/IccFileHandler;

.field pendingExtLoads:I

.field pin2:Ljava/lang/String;

.field recordNumber:I

.field result:Ljava/lang/Object;

.field userResponse:Landroid/os/Message;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccFileHandler;)V
    .locals 1
    .parameter "fh"

    .prologue
    .line 99
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 100
    iput-object p1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    .line 101
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .parameter "msg"

    .prologue
    .line 173
    :try_start_0
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v1, :pswitch_data_0

    .line 486
    :cond_0
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    if-nez v1, :cond_1

    .line 487
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->result:Ljava/lang/Object;

    iput-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 490
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 491
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 493
    :cond_1
    :goto_1
    return-void

    .line 175
    :pswitch_1
    :try_start_1
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v8, v0

    .line 176
    .local v8, ar:Landroid/os/AsyncResult;
    iget-object v1, v8, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/AdnRecord;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    move-object v7, v0

    .line 178
    .local v7, adn:Lcom/android/internal/telephony/AdnRecord;
    iget-object v1, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    .line 179
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "get EF record size failed"

    iget-object v3, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 474
    .end local v7           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v8           #ar:Landroid/os/AsyncResult;
    :catch_0
    move-exception v10

    .line 475
    .local v10, exc:Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v1, :cond_1

    .line 476
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 478
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 481
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    goto :goto_1

    .line 183
    .end local v10           #exc:Ljava/lang/RuntimeException;
    .restart local v7       #adn:Lcom/android/internal/telephony/AdnRecord;
    .restart local v8       #ar:Landroid/os/AsyncResult;
    :cond_2
    :try_start_2
    iget-object v1, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    move-object v12, v0

    .line 189
    .local v12, recordSize:[I
    array-length v1, v12

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    const/4 v2, 0x2

    aget v2, v12, v2

    if-le v1, v2, :cond_4

    .line 190
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "get wrong EF record size format"

    iget-object v3, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 194
    :cond_4
    const/4 v1, 0x0

    aget v1, v12, v1

    invoke-virtual {v7, v1}, Lcom/android/internal/telephony/AdnRecord;->buildAdnString(I)[B

    move-result-object v4

    .line 196
    .local v4, data:[B
    if-nez v4, :cond_5

    .line 197
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "wrong ADN format"

    iget-object v3, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 201
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    const/4 v6, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 204
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    goto/16 :goto_0

    .line 210
    .end local v4           #data:[B
    .end local v7           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v8           #ar:Landroid/os/AsyncResult;
    .end local v12           #recordSize:[I
    :pswitch_2
    const-string v1, "RIL_AdnRecordLoader"

    const-string v2, "EVENT_UPDATE_RECORD_DONE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v8, v0

    .line 215
    .restart local v8       #ar:Landroid/os/AsyncResult;
    iget-object v1, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/IccIoResult;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/IccIoResult;

    move-object v13, v0

    .line 216
    .local v13, ret:Lcom/android/internal/telephony/IccIoResult;
    if-eqz v13, :cond_6

    invoke-virtual {v13}, Lcom/android/internal/telephony/IccIoResult;->success()Z

    move-result v1

    if-nez v1, :cond_6

    .line 217
    const-string v1, "RIL_AdnRecordLoader"

    const-string v2, "get a error when EVENT_UPDATE_RECORD_DONE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "update EF adn record failed"

    iget-object v3, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 222
    :cond_6
    iget-object v1, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_7

    .line 223
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "update EF adn record failed"

    iget-object v3, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 226
    :cond_7
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    .line 227
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 230
    .end local v8           #ar:Landroid/os/AsyncResult;
    .end local v13           #ret:Lcom/android/internal/telephony/IccIoResult;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v8, v0

    .line 231
    .restart local v8       #ar:Landroid/os/AsyncResult;
    iget-object v1, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    move-object v4, v0

    .line 233
    .restart local v4       #data:[B
    iget-object v1, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_8

    .line 234
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "load failed"

    iget-object v3, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 244
    :cond_8
    new-instance v7, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    invoke-direct {v7, v1, v2, v4}, Lcom/android/internal/telephony/AdnRecord;-><init>(II[B)V

    .line 245
    .restart local v7       #adn:Lcom/android/internal/telephony/AdnRecord;
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/internal/telephony/AdnRecordLoader;->result:Ljava/lang/Object;

    .line 247
    invoke-virtual {v7}, Lcom/android/internal/telephony/AdnRecord;->hasExtendedRecord()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    .line 254
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    iget v3, v7, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto/16 :goto_0

    .line 261
    .end local v4           #data:[B
    .end local v7           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v8           #ar:Landroid/os/AsyncResult;
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v8, v0

    .line 262
    .restart local v8       #ar:Landroid/os/AsyncResult;
    iget-object v1, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    move-object v4, v0

    .line 263
    .restart local v4       #data:[B
    iget-object v1, v8, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/AdnRecord;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    move-object v7, v0

    .line 267
    .restart local v7       #adn:Lcom/android/internal/telephony/AdnRecord;
    iget-object v1, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_9

    .line 272
    :cond_9
    const-string v1, "RIL_AdnRecordLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ADN extension EF: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v7, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-virtual {v7, v4}, Lcom/android/internal/telephony/AdnRecord;->appendExtRecord([B)V

    .line 279
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    goto/16 :goto_0

    .line 285
    .end local v4           #data:[B
    .end local v7           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v8           #ar:Landroid/os/AsyncResult;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v8, v0

    .line 286
    .restart local v8       #ar:Landroid/os/AsyncResult;
    iget-object v1, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    move-object v9, v0

    .line 288
    .local v9, datas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    iget-object v1, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_a

    .line 289
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "load failed"

    iget-object v3, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 292
    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->adns:Ljava/util/ArrayList;

    .line 293
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->adns:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->result:Ljava/lang/Object;

    .line 294
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    .line 296
    const/4 v11, 0x0

    .local v11, i:I
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v14

    .local v14, s:I
    :goto_2
    if-ge v11, v14, :cond_0

    .line 297
    new-instance v7, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    add-int/lit8 v3, v11, 0x1

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-direct {v7, v2, v3, v1}, Lcom/android/internal/telephony/AdnRecord;-><init>(II[B)V

    .line 298
    .restart local v7       #adn:Lcom/android/internal/telephony/AdnRecord;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->adns:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    invoke-virtual {v7}, Lcom/android/internal/telephony/AdnRecord;->hasExtendedRecord()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 305
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    .line 307
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    iget v3, v7, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 296
    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 317
    .end local v7           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v8           #ar:Landroid/os/AsyncResult;
    .end local v9           #datas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    .end local v11           #i:I
    .end local v14           #s:I
    :pswitch_6
    const-string v1, "RIL_AdnRecordLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_EF_PBR_EMAIL_LINEAR_RECORD_SIZE_DONE emailNum :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->emailNums:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v8, v0

    .line 320
    .restart local v8       #ar:Landroid/os/AsyncResult;
    iget-object v1, v8, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/AdnRecord;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    move-object v7, v0

    .line 322
    .restart local v7       #adn:Lcom/android/internal/telephony/AdnRecord;
    iget-object v1, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_c

    .line 324
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "get EF record size failed"

    iget-object v3, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 327
    :cond_c
    iget-object v1, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    move-object v12, v0

    .line 334
    .restart local v12       #recordSize:[I
    const-string v1, "RIL_AdnRecordLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_EF_PBR_EMAIL_LINEAR_RECORD_SIZE_DONE(1) : adnNum "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->adnNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget v3, v12, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    array-length v1, v12

    const/4 v2, 0x3

    if-eq v1, v2, :cond_d

    .line 338
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "get wrong EF record size format"

    iget-object v3, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 341
    :cond_d
    const-string v1, "RIL_AdnRecordLoader"

    const-string v2, "EVENT_EF_PBR_EMAIL_LINEAR_RECORD_SIZE_DONE (2) :"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->fileCount:I

    .line 345
    const/4 v11, 0x0

    .restart local v11       #i:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->emailEfids:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v15

    .local v15, size:I
    :goto_3
    if-ge v11, v15, :cond_10

    .line 347
    const-string v1, "RIL_AdnRecordLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "efids.get("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->emailEfids:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const/4 v1, 0x0

    aget v1, v12, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->adnNum:I

    invoke-virtual {v7, v1, v11, v2, v3}, Lcom/android/internal/telephony/AdnRecord;->buildEmailString(IIII)[B

    move-result-object v4

    .line 351
    .restart local v4       #data:[B
    if-nez v4, :cond_e

    .line 353
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "wrong ADN format"

    iget-object v3, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 356
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->emailEfids:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->emailEfids:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_f

    .line 358
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->fileCount:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->fileCount:I

    .line 359
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->emailEfids:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->emailNums:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    const/4 v6, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 345
    :cond_f
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    .line 364
    .end local v4           #data:[B
    :cond_10
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    goto/16 :goto_0

    .line 370
    .end local v7           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v8           #ar:Landroid/os/AsyncResult;
    .end local v11           #i:I
    .end local v12           #recordSize:[I
    .end local v15           #size:I
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v8, v0

    .line 371
    .restart local v8       #ar:Landroid/os/AsyncResult;
    iget-object v1, v8, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/AdnRecord;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    move-object v7, v0

    .line 372
    .restart local v7       #adn:Lcom/android/internal/telephony/AdnRecord;
    const-string v1, "RIL_AdnRecordLoader"

    const-string v2, "EVENT_EF_PBR_ANR_LINEAR_RECORD_SIZE_DONE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v1, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_11

    .line 376
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "get EF record size failed"

    iget-object v3, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 378
    :cond_11
    iget-object v1, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    move-object v12, v0

    .line 380
    .restart local v12       #recordSize:[I
    const-string v1, "RIL_AdnRecordLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_EF_PBR_ANR_LINEAR_RECORD_SIZE_DONE(1) : adnNum "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->adnNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget v3, v12, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    array-length v1, v12

    const/4 v2, 0x3

    if-eq v1, v2, :cond_12

    .line 384
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "get wrong EF record size format"

    iget-object v3, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 387
    :cond_12
    const-string v1, "RIL_AdnRecordLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "anrefids = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->anrefids:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const-string v1, "RIL_AdnRecordLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "anrefids.size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->anrefids:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   ADNefid == ef:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->fileCount:I

    .line 392
    const/4 v11, 0x0

    .restart local v11       #i:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->anrefids:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v15

    .restart local v15       #size:I
    :goto_4
    if-ge v11, v15, :cond_14

    .line 394
    const-string v1, "RIL_AdnRecordLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "efids.get("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->anrefids:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const/4 v1, 0x0

    aget v1, v12, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->adnNum:I

    invoke-virtual {v7, v1, v11, v2, v3}, Lcom/android/internal/telephony/AdnRecord;->buildAnrString(IIII)[B

    move-result-object v4

    .line 398
    .restart local v4       #data:[B
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->anrefids:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->anrefids:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_13

    .line 400
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->fileCount:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->fileCount:I

    .line 402
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->anrefids:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->anrNums:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    const/16 v6, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 392
    :cond_13
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4

    .line 406
    .end local v4           #data:[B
    :cond_14
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    goto/16 :goto_0

    .line 411
    .end local v7           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v8           #ar:Landroid/os/AsyncResult;
    .end local v11           #i:I
    .end local v12           #recordSize:[I
    .end local v15           #size:I
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v8, v0

    .line 412
    .restart local v8       #ar:Landroid/os/AsyncResult;
    iget-object v1, v8, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/AdnRecord;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    move-object v7, v0

    .line 414
    .restart local v7       #adn:Lcom/android/internal/telephony/AdnRecord;
    iget-object v1, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_15

    .line 416
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "get EF record size failed"

    iget-object v3, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 419
    :cond_15
    iget-object v1, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    move-object v12, v0

    .line 425
    .restart local v12       #recordSize:[I
    array-length v1, v12

    const/4 v2, 0x3

    if-ne v1, v2, :cond_16

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->adnNum:I

    const/4 v2, 0x2

    aget v2, v12, v2

    if-le v1, v2, :cond_17

    .line 427
    :cond_16
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "get wrong EF record size format"

    iget-object v3, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 430
    :cond_17
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->iapRec:[B

    if-eqz v1, :cond_18

    .line 432
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/AdnRecordLoader;->iapRec:[B

    .line 438
    .restart local v4       #data:[B
    :goto_5
    if-nez v4, :cond_19

    .line 440
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "worong ADN format"

    iget-object v3, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 435
    .end local v4           #data:[B
    :cond_18
    const/4 v1, 0x0

    aget v1, v12, v1

    const/16 v2, 0xff

    invoke-virtual {v7, v1, v2}, Lcom/android/internal/telephony/AdnRecord;->buildIapString(II)[B

    move-result-object v4

    .restart local v4       #data:[B
    goto :goto_5

    .line 443
    :cond_19
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordLoader;->iapEF:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->adnNum:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    const/4 v6, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 445
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    goto/16 :goto_0

    .line 451
    .end local v4           #data:[B
    .end local v7           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v8           #ar:Landroid/os/AsyncResult;
    .end local v12           #recordSize:[I
    :pswitch_9
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v8, v0

    .line 453
    .restart local v8       #ar:Landroid/os/AsyncResult;
    iget-object v1, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1a

    .line 455
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "update EF adn record failed"

    iget-object v3, v8, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 458
    :cond_1a
    const-string v1, "RIL_AdnRecordLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_UPDATE_ANR_RECORD_DONE, message is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "fileCount "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/AdnRecordLoader;->fileCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->pendingExtLoads:I

    .line 461
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->result:Ljava/lang/Object;

    .line 462
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->fileCount:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->fileCount:I

    .line 464
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/AdnRecordLoader;->fileCount:I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v1, :cond_1

    goto/16 :goto_0

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public loadAllFromEF(IILandroid/os/Message;)V
    .locals 2
    .parameter "ef"
    .parameter "extensionEF"
    .parameter "response"

    .prologue
    .line 129
    iput p1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    .line 130
    iput p2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    .line 131
    iput-object p3, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 133
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 137
    return-void
.end method

.method public loadFromEF(IIILandroid/os/Message;)V
    .locals 2
    .parameter "ef"
    .parameter "extensionEF"
    .parameter "recordNumber"
    .parameter "response"

    .prologue
    .line 110
    iput p1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    .line 111
    iput p2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    .line 112
    iput p3, p0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    .line 113
    iput-object p4, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, p3, v1}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 119
    return-void
.end method

.method public updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "adn"
    .parameter "ef"
    .parameter "extensionEF"
    .parameter "recordNumber"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 154
    iput p2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    .line 155
    iput p3, p0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    .line 156
    iput p4, p0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    .line 157
    iput-object p6, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 158
    iput-object p5, p0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 162
    return-void
.end method

.method public updateEFAdnToUsim(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "adn"
    .parameter "ef"
    .parameter "extensionEF"
    .parameter "recordNumber"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 504
    iput p2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    .line 505
    iput p3, p0, Lcom/android/internal/telephony/AdnRecordLoader;->extensionEF:I

    .line 506
    iput p4, p0, Lcom/android/internal/telephony/AdnRecordLoader;->recordNumber:I

    .line 507
    iput-object p6, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 508
    iput-object p5, p0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    .line 509
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 511
    return-void
.end method

.method public updateEFAnrToUsim(Lcom/android/internal/telephony/AdnRecord;Ljava/util/ArrayList;IILjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "adn"
    .parameter
    .parameter "efid"
    .parameter "adnNum"
    .parameter "pin2"
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/AdnRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;II",
            "Ljava/lang/String;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .prologue
    .line 550
    .local p2, anrefids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iput-object p2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->anrefids:Ljava/util/ArrayList;

    .line 551
    iput p3, p0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    .line 552
    iput p4, p0, Lcom/android/internal/telephony/AdnRecordLoader;->adnNum:I

    .line 553
    iput-object p6, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 554
    iput-object p5, p0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    .line 555
    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x8

    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 558
    return-void
.end method

.method public updateEFAnrToUsim(Lcom/android/internal/telephony/AdnRecord;Ljava/util/ArrayList;IILjava/util/ArrayList;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "adn"
    .parameter
    .parameter "efid"
    .parameter "adnNum"
    .parameter
    .parameter "pin2"
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/AdnRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;II",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .prologue
    .line 562
    .local p2, anrefids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p5, anrNums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iput-object p2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->anrefids:Ljava/util/ArrayList;

    .line 563
    iput p3, p0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    .line 564
    iput p4, p0, Lcom/android/internal/telephony/AdnRecordLoader;->adnNum:I

    .line 565
    iput-object p7, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 566
    iput-object p6, p0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    .line 567
    iput-object p5, p0, Lcom/android/internal/telephony/AdnRecordLoader;->anrNums:Ljava/util/ArrayList;

    .line 568
    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x8

    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 570
    return-void
.end method

.method public updateEFEmailToUsim(Lcom/android/internal/telephony/AdnRecord;IIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "adn"
    .parameter "emailEF"
    .parameter "emailNum"
    .parameter "efid"
    .parameter "adnNum"
    .parameter "emailTagInIap"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 517
    iput p2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->emailEF:I

    .line 518
    iput p3, p0, Lcom/android/internal/telephony/AdnRecordLoader;->emailNum:I

    .line 519
    iput p4, p0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    .line 520
    iput p5, p0, Lcom/android/internal/telephony/AdnRecordLoader;->adnNum:I

    .line 521
    iput p6, p0, Lcom/android/internal/telephony/AdnRecordLoader;->emailTagInIap:I

    .line 522
    iput-object p8, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 523
    iput-object p7, p0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    .line 524
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v1, 0x6

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 527
    return-void
.end method

.method public updateEFEmailToUsim(Lcom/android/internal/telephony/AdnRecord;Ljava/util/ArrayList;Ljava/util/ArrayList;IILjava/util/ArrayList;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "adn"
    .parameter
    .parameter
    .parameter "efid"
    .parameter "adnNum"
    .parameter
    .parameter "pin2"
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/AdnRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;II",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .prologue
    .line 532
    .local p2, emailEfids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p3, emailNums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p6, emailTagInIaps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v0, "RIL_AdnRecordLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " updateEFEmailToUsim  emailEfids "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "emailNums "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "emailTagInIaps "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iput-object p2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->emailEfids:Ljava/util/ArrayList;

    .line 535
    iput-object p3, p0, Lcom/android/internal/telephony/AdnRecordLoader;->emailNums:Ljava/util/ArrayList;

    .line 536
    iput p4, p0, Lcom/android/internal/telephony/AdnRecordLoader;->ef:I

    .line 537
    iput p5, p0, Lcom/android/internal/telephony/AdnRecordLoader;->adnNum:I

    .line 539
    iput-object p6, p0, Lcom/android/internal/telephony/AdnRecordLoader;->emailTagInIaps:Ljava/util/ArrayList;

    .line 540
    iput-object p8, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 541
    iput-object p7, p0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    .line 543
    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x6

    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 546
    return-void
.end method

.method public updateEFIapToUsim(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "adn"
    .parameter "iapEF"
    .parameter "adnNum"
    .parameter "emailNumInIap"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 574
    iput p2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->iapEF:I

    .line 575
    iput p3, p0, Lcom/android/internal/telephony/AdnRecordLoader;->adnNum:I

    .line 576
    iput p4, p0, Lcom/android/internal/telephony/AdnRecordLoader;->emailNumInIap:I

    .line 577
    iput-object p6, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 578
    iput-object p5, p0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    .line 579
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v1, 0x7

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 582
    return-void
.end method

.method public updateEFIapToUsim(Lcom/android/internal/telephony/AdnRecord;II[BLjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "adn"
    .parameter "iapEF"
    .parameter "adnNum"
    .parameter "record"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 586
    const-string v0, "AdnRecordLoader "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateEFIapToUsim  iapEF "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iput p2, p0, Lcom/android/internal/telephony/AdnRecordLoader;->iapEF:I

    .line 588
    iput p3, p0, Lcom/android/internal/telephony/AdnRecordLoader;->adnNum:I

    .line 589
    iput-object p4, p0, Lcom/android/internal/telephony/AdnRecordLoader;->iapRec:[B

    .line 590
    iput-object p6, p0, Lcom/android/internal/telephony/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 591
    iput-object p5, p0, Lcom/android/internal/telephony/AdnRecordLoader;->pin2:Ljava/lang/String;

    .line 592
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v1, 0x7

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/AdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 595
    return-void
.end method
