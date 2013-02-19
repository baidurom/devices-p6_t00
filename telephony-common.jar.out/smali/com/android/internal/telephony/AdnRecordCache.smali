.class public final Lcom/android/internal/telephony/AdnRecordCache;
.super Landroid/os/Handler;
.source "AdnRecordCache.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# static fields
.field static final EVENT_LOAD_ALL_ADN_LIKE_DONE:I = 0x1

.field static final EVENT_UPDATE_ADN_DONE:I = 0x2

.field static final EVENT_UPDATE_USIM_ADN_DONE:I = 0x3

.field static LOG_TAG:Ljava/lang/String;

.field public static s_efid:I

.field public static s_index:I


# instance fields
.field adnLikeFiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field adnLikeWaiters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFh:Lcom/android/internal/telephony/IccFileHandler;

.field public mInsertId:I

.field protected final mLock:Ljava/lang/Object;

.field private mPhoneBookRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

.field public updateOthers:Z

.field userWriteResponse:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "AdnRecordCache"

    sput-object v0, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/IccFileHandler;)V
    .locals 2
    .parameter "fh"

    .prologue
    .line 90
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 56
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    .line 60
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    .line 64
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mInsertId:I

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mLock:Ljava/lang/Object;

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->updateOthers:Z

    .line 91
    iput-object p1, p0, Lcom/android/internal/telephony/AdnRecordCache;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    .line 92
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordCache;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v1, p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;-><init>(Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/AdnRecordCache;)V

    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    .line 93
    return-void
.end method

.method private clearUserWriters()V
    .locals 4

    .prologue
    .line 126
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 127
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 128
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    const-string v3, "AdnCace reset"

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 131
    return-void
.end method

.method private clearWaiters()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 116
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 117
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 118
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 119
    .local v3, waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    new-instance v0, Landroid/os/AsyncResult;

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "AdnCache reset"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v6, v6, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 120
    .local v0, ar:Landroid/os/AsyncResult;
    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/AdnRecordCache;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v3           #waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 123
    return-void
.end method

.method private compareSubject(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;)Z
    .locals 3
    .parameter "type"
    .parameter "oldAdn"
    .parameter "newAdn"

    .prologue
    .line 975
    const/4 v0, 0x1

    .line 976
    .local v0, isEqual:Z
    packed-switch p1, :pswitch_data_0

    .line 992
    :goto_0
    return v0

    .line 980
    :pswitch_0
    iget-object v1, p2, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    iget-object v2, p3, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Lcom/android/internal/telephony/AdnRecord;->stringCompareEmails([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    .line 981
    goto :goto_0

    .line 985
    :pswitch_1
    iget-object v1, p2, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    iget-object v2, p3, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Lcom/android/internal/telephony/AdnRecord;->stringCompareAnr(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 986
    goto :goto_0

    .line 976
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getAnrNumGroup(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "anr"

    .prologue
    .line 960
    const/4 v0, 0x0

    .line 962
    .local v0, pair:[Ljava/lang/String;
    sget-object v1, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAnrNumGroup anr ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 966
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 969
    :cond_0
    return-object v0
.end method

.method private getSubjectString(ILcom/android/internal/telephony/AdnRecord;)[Ljava/lang/String;
    .locals 2
    .parameter "type"
    .parameter "adn"

    .prologue
    .line 998
    const/4 v0, 0x0

    .line 1000
    .local v0, s1:[Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1017
    :goto_0
    return-object v0

    .line 1004
    :pswitch_0
    iget-object v0, p2, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 1005
    goto :goto_0

    .line 1009
    :pswitch_1
    iget-object v1, p2, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/AdnRecordCache;->getAnrNumGroup(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1010
    goto :goto_0

    .line 1000
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getUpdateSubjectFlag(IILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;)[I
    .locals 15
    .parameter "num"
    .parameter "type"
    .parameter "oldAdn"
    .parameter "newAdn"

    .prologue
    .line 1023
    const/4 v4, 0x0

    .line 1024
    .local v4, flag:[I
    const/4 v7, 0x0

    .local v7, oldCount:I
    const/4 v6, 0x0

    .local v6, newCount:I
    const/4 v2, 0x0

    .local v2, count:I
    const/4 v5, 0x0

    .line 1027
    .local v5, i:I
    const/4 v3, 0x0

    .line 1029
    .local v3, efids:[I
    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/AdnRecordCache;->getSubjectString(ILcom/android/internal/telephony/AdnRecord;)[Ljava/lang/String;

    move-result-object v10

    .line 1030
    .local v10, strArr1:[Ljava/lang/String;
    move/from16 v0, p2

    move-object/from16 v1, p4

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/AdnRecordCache;->getSubjectString(ILcom/android/internal/telephony/AdnRecord;)[Ljava/lang/String;

    move-result-object v11

    .line 1032
    .local v11, strArr2:[Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 1034
    array-length v7, v10

    .line 1037
    :cond_0
    if-eqz v11, :cond_1

    .line 1039
    array-length v6, v11

    .line 1042
    :cond_1
    sget-object v12, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getUpdateSubjectFlag oldCount ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " newCount "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    iget-object v12, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move/from16 v0, p2

    move/from16 v1, p1

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getSubjectEfids(II)[I

    move-result-object v3

    .line 1046
    if-nez v3, :cond_2

    .line 1048
    const/4 v12, 0x0

    .line 1092
    :goto_0
    return-object v12

    .line 1051
    :cond_2
    array-length v2, v3

    .line 1053
    new-array v4, v2, [I

    .line 1055
    sget-object v12, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getUpdateSubjectFlag count ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_8

    .line 1059
    if-ge v5, v7, :cond_5

    .line 1061
    aget-object v8, v10, v5

    .line 1063
    .local v8, str1:Ljava/lang/String;
    if-nez v8, :cond_3

    .line 1064
    sget-object v12, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    const-string v13, "getUpdateSubjectFlag str1 is null."

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    const-string v8, ""

    .line 1073
    :cond_3
    :goto_2
    if-ge v5, v6, :cond_6

    .line 1075
    aget-object v9, v11, v5

    .line 1077
    .local v9, str2:Ljava/lang/String;
    if-nez v9, :cond_4

    .line 1078
    sget-object v12, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    const-string v13, "getUpdateSubjectFlag str2 is null."

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    const-string v9, ""

    .line 1087
    :cond_4
    :goto_3
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    const/4 v12, 0x0

    :goto_4
    aput v12, v4, v5

    .line 1089
    sget-object v12, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getUpdateSubjectFlag flag[i] ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget v14, v4, v5

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1070
    .end local v8           #str1:Ljava/lang/String;
    .end local v9           #str2:Ljava/lang/String;
    :cond_5
    const-string v8, ""

    .restart local v8       #str1:Ljava/lang/String;
    goto :goto_2

    .line 1084
    :cond_6
    const-string v9, ""

    .restart local v9       #str2:Ljava/lang/String;
    goto :goto_3

    .line 1087
    :cond_7
    const/4 v12, 0x1

    goto :goto_4

    .end local v8           #str1:Ljava/lang/String;
    .end local v9           #str2:Ljava/lang/String;
    :cond_8
    move-object v12, v4

    .line 1092
    goto :goto_0
.end method

.method private notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V
    .locals 5
    .parameter
    .parameter "ar"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;",
            "Landroid/os/AsyncResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 495
    .local p1, waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    if-nez p1, :cond_1

    .line 505
    :cond_0
    return-void

    .line 499
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, s:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 500
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 502
    .local v2, waiter:Landroid/os/Message;
    iget-object v3, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v4, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 503
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 499
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    .locals 2
    .parameter "response"
    .parameter "errString"

    .prologue
    .line 226
    if-eqz p1, :cond_0

    .line 227
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 228
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 229
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 231
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private updateSubjectOfAdn(IILcom/android/internal/telephony/AdnRecordLoader;IIILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;ILjava/lang/String;)V
    .locals 34
    .parameter "type"
    .parameter "num"
    .parameter "adnRecordLoader"
    .parameter "adnNum"
    .parameter "index"
    .parameter "efid"
    .parameter "oldAdn"
    .parameter "newAdn"
    .parameter "iapEF"
    .parameter "pin2"

    .prologue
    .line 1171
    const/16 v19, 0x0

    check-cast v19, [[I

    .line 1172
    .local v19, anrNumInIap:[[I
    const/16 v29, 0x0

    .line 1173
    .local v29, subjectNum:[I
    const/16 v26, 0x0

    .line 1174
    .local v26, newAnr:Z
    const/16 v33, 0x0

    .line 1175
    .local v33, updateSubjectFlag:[I
    const/16 v32, 0x0

    .line 1181
    .local v32, updateRecordInIap:[I
    sget-object v5, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateSubjectOfAdn num ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "adnNum "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/AdnRecordCache;->compareSubject(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1402
    :cond_0
    :goto_0
    return-void

    .line 1188
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/AdnRecordCache;->getUpdateSubjectFlag(IILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;)[I

    move-result-object v33

    .line 1189
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 1190
    .local v28, subjectEfids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 1191
    .local v30, subjectNums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 1193
    .local v23, inIapNums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v33, :cond_0

    .line 1198
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v5, v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isSubjectRecordInIap(II)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1200
    sget-object v5, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    const-string v6, "updateSubjectOfAdn (1) in iap  "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    const/16 v27, 0x0

    .line 1204
    .local v27, record:[B
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getIapFileRecord(I)Ljava/util/ArrayList;

    move-result-object v25

    .line 1206
    .local v25, mIapFileRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    if-eqz v25, :cond_2

    .line 1208
    add-int/lit8 v5, p5, -0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, [B

    move-object/from16 v27, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1220
    .end local v25           #mIapFileRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v5, v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getSubjectTagNumberInIap(II)[[I

    move-result-object v20

    .line 1222
    .local v20, anrTagMap:[[I
    if-eqz v20, :cond_0

    .line 1227
    move-object/from16 v0, v20

    array-length v5, v0

    new-array v0, v5, [I

    move-object/from16 v32, v0

    .line 1228
    move-object/from16 v0, v20

    array-length v5, v0

    new-array v0, v5, [I

    move-object/from16 v29, v0

    .line 1229
    const/4 v9, 0x0

    .line 1231
    .local v9, i:I
    if-eqz v27, :cond_4

    .line 1233
    const/4 v9, 0x0

    :goto_2
    move-object/from16 v0, v20

    array-length v5, v0

    if-ge v9, v5, :cond_5

    .line 1235
    sget-object v5, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "subjectNumberInIap ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v20, v9

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    aget-object v5, v20, v9

    const/4 v6, 0x1

    aget v5, v5, v6

    aget-byte v5, v27, v5

    and-int/lit16 v5, v5, 0xff

    aput v5, v29, v9

    .line 1238
    sget-object v5, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "subjectNumber ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v29, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    aget v5, v29, v9

    const/16 v6, 0xff

    if-ne v5, v6, :cond_3

    const/4 v5, -0x1

    :goto_3
    aput v5, v29, v9

    .line 1241
    sget-object v5, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "subjectNum[i] ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v29, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1211
    .end local v9           #i:I
    .end local v20           #anrTagMap:[[I
    .restart local v25       #mIapFileRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    :cond_2
    :try_start_1
    sget-object v5, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    const-string v6, "updateSubjectOfAdn mIapFileRecord == null "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1214
    .end local v25           #mIapFileRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    :catch_0
    move-exception v21

    .line 1216
    .local v21, e:Ljava/lang/IndexOutOfBoundsException;
    sget-object v5, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Error: Improper ICC card: No IAP record for ADN, continuing"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1239
    .end local v21           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v9       #i:I
    .restart local v20       #anrTagMap:[[I
    :cond_3
    aget v5, v29, v9

    goto :goto_3

    .line 1245
    :cond_4
    const/4 v9, 0x0

    :goto_4
    move-object/from16 v0, v20

    array-length v5, v0

    if-ge v9, v5, :cond_5

    .line 1247
    const/4 v5, -0x1

    aput v5, v29, v9

    .line 1248
    sget-object v5, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "subjectNum[i] ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v29, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    const/4 v5, 0x1

    aput v5, v32, v9

    .line 1245
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 1255
    :cond_5
    const/16 v24, 0x0

    .line 1257
    .local v24, isFull:Z
    const/4 v9, 0x0

    :goto_5
    move-object/from16 v0, v20

    array-length v5, v0

    if-ge v9, v5, :cond_7

    .line 1259
    aget v5, v29, v9

    const/4 v6, -0x1

    if-ne v5, v6, :cond_6

    aget v5, v33, v9

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    .line 1261
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    aget-object v6, v20, v9

    const/4 v7, 0x0

    aget v8, v6, v7

    const/4 v11, 0x1

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v10, p5

    invoke-virtual/range {v5 .. v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getNewSubjectNumber(IIIIIZ)I

    move-result v5

    aput v5, v29, v9

    .line 1264
    aget v5, v29, v9

    const/4 v6, -0x1

    if-ne v5, v6, :cond_6

    .line 1266
    const/16 v24, 0x1

    .line 1272
    :cond_6
    sget-object v5, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateSubjectOfAdn subjectNum"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v29, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 1275
    :cond_7
    const/4 v9, 0x0

    :goto_6
    move-object/from16 v0, v20

    array-length v5, v0

    if-ge v9, v5, :cond_c

    .line 1277
    aget v5, v29, v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v9, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1278
    aget-object v5, v20, v9

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v9, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1279
    sget-object v5, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateSubjectOfAdn   updateSubjectFlag  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v33, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "subjectNum[i] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v29, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    aget v5, v33, v9

    const/4 v6, 0x1

    if-ne v5, v6, :cond_a

    aget v5, v29, v9

    const/4 v6, -0x1

    if-eq v5, v6, :cond_a

    .line 1285
    aget-object v5, v20, v9

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v9, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1293
    :goto_7
    aget v5, v33, v9

    const/4 v6, 0x1

    if-ne v5, v6, :cond_9

    move-object/from16 v10, p0

    move/from16 v11, p2

    move/from16 v12, p1

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    move v15, v9

    .line 1295
    invoke-virtual/range {v10 .. v15}, Lcom/android/internal/telephony/AdnRecordCache;->isCleanRecord(IILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1297
    sget-object v5, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " clean anrTagMap[i][0]     "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v20, v9

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    aget-object v6, v20, v9

    const/4 v7, 0x0

    aget v8, v6, v7

    aget v10, v29, v9

    move/from16 v6, p1

    move/from16 v7, p2

    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->removeSubjectNumFromSet(IIIII)V

    .line 1303
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    add-int/lit8 v6, p5, -0x1

    const/4 v7, -0x1

    aget-object v8, v20, v9

    const/4 v10, 0x1

    aget v8, v8, v10

    move/from16 v0, p2

    invoke-virtual {v5, v0, v6, v7, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->setIapFileRecord(IIBI)V

    .line 1305
    aget-object v5, v20, v9

    const/4 v6, 0x1

    aget v5, v5, v6

    const/4 v6, -0x1

    aput-byte v6, v27, v5

    .line 1322
    :cond_8
    :goto_8
    aget-object v5, v20, v9

    const/4 v6, 0x0

    aget v5, v5, v6

    if-lez v5, :cond_9

    .line 1323
    sget-object v5, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "begin to update IAP ---IAP id  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "iapEF "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p9

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    new-instance p3, Lcom/android/internal/telephony/AdnRecordLoader;

    .end local p3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/AdnRecordCache;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v0, p3

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    .line 1326
    .restart local p3
    const/16 v16, 0x0

    move-object/from16 v10, p3

    move-object/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p5

    move-object/from16 v14, v27

    move-object/from16 v15, p10

    invoke-virtual/range {v10 .. v16}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEFIapToUsim(Lcom/android/internal/telephony/AdnRecord;II[BLjava/lang/String;Landroid/os/Message;)V

    .line 1275
    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_6

    .line 1289
    :cond_a
    aget-object v5, v20, v9

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v9, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_7

    .line 1308
    :cond_b
    sget-object v5, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  anrTagMap[i][0]     "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v20, v9

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    add-int/lit8 v6, p5, -0x1

    aget v7, v29, v9

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aget-object v8, v20, v9

    const/4 v10, 0x1

    aget v8, v8, v10

    move/from16 v0, p2

    invoke-virtual {v5, v0, v6, v7, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->setIapFileRecord(IIBI)V

    .line 1316
    if-eqz v27, :cond_8

    .line 1317
    aget-object v5, v20, v9

    const/4 v6, 0x1

    aget v5, v5, v6

    aget v6, v29, v9

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v27, v5

    goto/16 :goto_8

    .line 1334
    :cond_c
    sget-object v5, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateSubjectOfAdn updateSubjectOfAdn efids is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    new-instance p3, Lcom/android/internal/telephony/AdnRecordLoader;

    .end local p3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/AdnRecordCache;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v0, p3

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    .line 1339
    .restart local p3
    if-nez p1, :cond_d

    .line 1341
    const/16 v18, 0x0

    move-object/from16 v10, p3

    move-object/from16 v11, p8

    move-object/from16 v12, v28

    move-object/from16 v13, v30

    move/from16 v14, p6

    move/from16 v15, p5

    move-object/from16 v16, v23

    move-object/from16 v17, p10

    invoke-virtual/range {v10 .. v18}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEFEmailToUsim(Lcom/android/internal/telephony/AdnRecord;Ljava/util/ArrayList;Ljava/util/ArrayList;IILjava/util/ArrayList;Ljava/lang/String;Landroid/os/Message;)V

    .line 1345
    :cond_d
    const/4 v5, 0x1

    move/from16 v0, p1

    if-ne v0, v5, :cond_0

    .line 1346
    const/16 v17, 0x0

    move-object/from16 v10, p3

    move-object/from16 v11, p8

    move-object/from16 v12, v28

    move/from16 v13, p6

    move/from16 v14, p5

    move-object/from16 v15, v30

    move-object/from16 v16, p10

    invoke-virtual/range {v10 .. v17}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEFAnrToUsim(Lcom/android/internal/telephony/AdnRecord;Ljava/util/ArrayList;IILjava/util/ArrayList;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1352
    .end local v9           #i:I
    .end local v20           #anrTagMap:[[I
    .end local v24           #isFull:Z
    .end local v27           #record:[B
    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    iget-boolean v5, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->ishaveAnr:Z

    if-nez v5, :cond_f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    iget-boolean v5, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->ishaveEmail:Z

    if-eqz v5, :cond_0

    .line 1353
    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v5, v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getSubjectEfids(II)[I

    move-result-object v22

    .line 1354
    .local v22, efidsArr:[I
    if-eqz v22, :cond_0

    .line 1357
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 1358
    .local v31, toUpefids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v5, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateSubjectOfAdn updateSubjectOfAdn efidsArr.length is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_9
    move-object/from16 v0, v22

    array-length v5, v0

    if-ge v9, v5, :cond_12

    .line 1362
    aget v5, v33, v9

    const/4 v6, 0x1

    if-ne v5, v6, :cond_11

    .line 1363
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    aget v13, v22, v9

    const/4 v14, 0x0

    const/16 v16, 0x0

    move/from16 v11, p1

    move/from16 v12, p2

    move/from16 v15, p5

    invoke-virtual/range {v10 .. v16}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getNewSubjectNumber(IIIIIZ)I

    move-result v5

    move/from16 v0, p5

    if-ne v5, v0, :cond_10

    .line 1365
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v9, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1366
    aget v5, v22, v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v9, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1360
    :goto_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 1368
    :cond_10
    aget v5, v22, v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v9, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1369
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v9, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1370
    sget-object v5, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    const-string v6, "updateSubjectOfAdn fail to get  new subject "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 1376
    :cond_11
    aget v5, v22, v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v9, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1377
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v9, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1378
    sget-object v5, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    const-string v6, "updateSubjectOfAdn don\'t need to update subject "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 1384
    :cond_12
    sget-object v5, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateSubjectOfAdn  subjectEfids is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "toUpefids  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 1388
    new-instance p3, Lcom/android/internal/telephony/AdnRecordLoader;

    .end local p3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/AdnRecordCache;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v0, p3

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    .line 1389
    .restart local p3
    if-nez p1, :cond_13

    .line 1391
    const/16 v18, 0x0

    move-object/from16 v10, p3

    move-object/from16 v11, p8

    move-object/from16 v12, v31

    move-object/from16 v13, v30

    move/from16 v14, p6

    move/from16 v15, p5

    move-object/from16 v16, v23

    move-object/from16 v17, p10

    invoke-virtual/range {v10 .. v18}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEFEmailToUsim(Lcom/android/internal/telephony/AdnRecord;Ljava/util/ArrayList;Ljava/util/ArrayList;IILjava/util/ArrayList;Ljava/lang/String;Landroid/os/Message;)V

    .line 1395
    :cond_13
    const/4 v5, 0x1

    move/from16 v0, p1

    if-ne v0, v5, :cond_0

    .line 1396
    const/16 v17, 0x0

    move-object/from16 v10, p3

    move-object/from16 v11, p8

    move-object/from16 v12, v31

    move/from16 v13, p6

    move/from16 v14, p5

    move-object/from16 v15, v30

    move-object/from16 v16, p10

    invoke-virtual/range {v10 .. v17}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEFAnrToUsim(Lcom/android/internal/telephony/AdnRecord;Ljava/util/ArrayList;IILjava/util/ArrayList;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0
.end method


# virtual methods
.method extensionEfForEf(I)I
    .locals 3
    .parameter "efid"

    .prologue
    const/16 v1, 0x6f4a

    const/4 v2, 0x0

    .line 150
    const/4 v0, -0x1

    .line 153
    .local v0, extensionEFid:I
    sparse-switch p1, :sswitch_data_0

    .line 167
    invoke-static {}, Lcom/android/internal/telephony/gsm/SIMRecords;->getEmailAnrSupport()Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/AdnRecordCache;->getUsimExtensionEfForAdnEf(I)I

    move-result v0

    move v1, v0

    .line 172
    :goto_0
    :sswitch_0
    return v1

    .line 154
    :sswitch_1
    const/16 v1, 0x6fc8

    goto :goto_0

    .line 156
    :sswitch_2
    const/16 v1, 0x6f4c

    goto :goto_0

    .line 157
    :sswitch_3
    const/16 v1, 0x6f4b

    goto :goto_0

    :sswitch_4
    move v1, v2

    .line 159
    goto :goto_0

    :cond_0
    move v1, v2

    .line 172
    goto :goto_0

    .line 153
    :sswitch_data_0
    .sparse-switch
        0x4f30 -> :sswitch_4
        0x6f3a -> :sswitch_0
        0x6f3b -> :sswitch_3
        0x6f40 -> :sswitch_0
        0x6f49 -> :sswitch_2
        0x6fc7 -> :sswitch_1
    .end sparse-switch
.end method

.method public getAdnIndex(ILcom/android/internal/telephony/AdnRecord;)I
    .locals 7
    .parameter "efid"
    .parameter "oldAdn"

    .prologue
    .line 1408
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 1409
    .local v3, oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    const-string v4, "AdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAdnIndex efid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    if-nez v3, :cond_1

    .line 1412
    const/4 v1, -0x1

    .line 1424
    :cond_0
    :goto_0
    return v1

    .line 1414
    :cond_1
    const-string v4, "AdnRecordCache"

    const-string v5, "updateAdnBySearch (2)"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    const/4 v1, -0x1

    .line 1416
    .local v1, index:I
    const/4 v0, 0x1

    .line 1417
    .local v0, count:I
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/AdnRecord;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1418
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/AdnRecord;

    invoke-virtual {p2, v4}, Lcom/android/internal/telephony/AdnRecord;->isEqual(Lcom/android/internal/telephony/AdnRecord;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1419
    move v1, v0

    .line 1420
    goto :goto_0

    .line 1422
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getAdnLikeSize()I
    .locals 1

    .prologue
    .line 944
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public getLock()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 954
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getRecordsFreeSizeByIdInadnlist(I)I
    .locals 7
    .parameter "efid"

    .prologue
    .line 1473
    const/4 v0, 0x0

    .line 1477
    .local v0, RecordsFreeSize:I
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1479
    .local v1, adnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    const-string v4, "AdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRecordsFreeSizeByIdInadnlist efid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    if-nez v1, :cond_1

    .line 1483
    const/4 v0, 0x0

    .line 1498
    :cond_0
    return v0

    .line 1486
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 1488
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/AdnRecord;

    .line 1490
    .local v3, rec:Lcom/android/internal/telephony/AdnRecord;
    invoke-virtual {v3}, Lcom/android/internal/telephony/AdnRecord;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1492
    add-int/lit8 v0, v0, 0x1

    .line 1486
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getRecordsIfLoaded(I)Ljava/util/ArrayList;
    .locals 1
    .parameter "efid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRecordsSize()[I
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x5

    .line 1517
    const/16 v2, 0x9

    new-array v1, v2, [I

    .line 1519
    .local v1, recordSize:[I
    sget-object v2, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    const-string v3, "getRecordsSize(): enter."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 1524
    aput v9, v1, v0

    .line 1522
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1527
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 1529
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccFileHandler;->getCard()Lcom/android/internal/telephony/UiccCard;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1531
    sget-object v2, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    const-string v3, "getRecordsSize(): usim card branch."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    if-nez v2, :cond_1

    .line 1585
    :goto_1
    return-object v1

    .line 1540
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAdnRecordsTotalSize()I

    move-result v2

    aput v2, v1, v8

    .line 1541
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAdnRecordsFreeSize()I

    move-result v2

    aput v2, v1, v7

    .line 1545
    invoke-static {}, Lcom/android/internal/telephony/gsm/SIMRecords;->getEmailAnrSupport()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1547
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmailTotalSize()I

    move-result v2

    aput v2, v1, v5

    .line 1549
    aget v2, v1, v5

    if-eq v2, v9, :cond_2

    aget v2, v1, v5

    if-eqz v2, :cond_2

    .line 1551
    const/4 v2, 0x4

    aget v3, v1, v5

    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmailUseSize()I

    move-result v4

    sub-int/2addr v3, v4

    aput v3, v1, v2

    .line 1552
    const/4 v2, 0x3

    aput v7, v1, v2

    .line 1556
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAnrTotalSize()I

    move-result v2

    aput v2, v1, v6

    .line 1558
    aget v2, v1, v6

    if-eq v2, v9, :cond_3

    aget v2, v1, v6

    if-eqz v2, :cond_3

    .line 1560
    const/4 v2, 0x7

    aget v3, v1, v6

    iget-object v4, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAnrUsedSize()I

    move-result v4

    sub-int/2addr v3, v4

    aput v3, v1, v2

    .line 1561
    const/4 v2, 0x6

    aput v8, v1, v2

    .line 1575
    :cond_3
    :goto_2
    sget-object v2, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRecordsSize(): recordSize[0] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    sget-object v2, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRecordsSize(): recordSize[1] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    sget-object v2, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRecordsSize(): recordSize[2] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    sget-object v2, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRecordsSize(): recordSize[3] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    sget-object v2, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRecordsSize(): recordSize[4] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    sget-object v2, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRecordsSize(): recordSize[5] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    sget-object v2, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRecordsSize(): recordSize[6] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x6

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    sget-object v2, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRecordsSize(): recordSize[7] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x7

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    sget-object v2, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRecordsSize(): recordSize[8] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1568
    :cond_4
    sget-object v2, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    const-string v3, "getRecordsSize(): sim card branch."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    const/16 v2, 0x6f3a

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/AdnRecordCache;->getRecordsFreeSizeByIdInadnlist(I)I

    move-result v2

    aput v2, v1, v7

    .line 1572
    const/16 v2, 0x6f3a

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/AdnRecordCache;->getRecordsSizeByIdInadnlist(I)I

    move-result v2

    aput v2, v1, v8

    goto/16 :goto_2
.end method

.method public getRecordsSizeByIdInadnlist(I)I
    .locals 5
    .parameter "efid"

    .prologue
    .line 1455
    const/4 v0, 0x0

    .line 1457
    .local v0, RecordsSize:I
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1459
    .local v1, adnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    const-string v2, "AdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRecordsSizeByidInadnlist efid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    if-nez v1, :cond_0

    .line 1463
    const/4 v0, 0x0

    .line 1469
    :goto_0
    return v0

    .line 1466
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getRecordsSizeIfLoaded(I)I
    .locals 6
    .parameter "efid"

    .prologue
    .line 1430
    const/4 v1, 0x0

    .line 1434
    .local v1, recordsSize:I
    const-string v3, "AdnRecordCache"

    const-string v4, "getRecordsSizeIfLoaded enter."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1438
    .local v0, adnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    if-nez v0, :cond_0

    .line 1440
    const-string v3, "AdnRecordCache"

    const-string v4, "getRecordsSizeIfLoaded adnList is null."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 1449
    .end local v1           #recordsSize:I
    .local v2, recordsSize:I
    :goto_0
    return v2

    .line 1444
    .end local v2           #recordsSize:I
    .restart local v1       #recordsSize:I
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1447
    const-string v3, "AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRecordsSizeIfLoaded recordsSize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 1449
    .end local v1           #recordsSize:I
    .restart local v2       #recordsSize:I
    goto :goto_0
.end method

.method getUsimExtensionEfForAdnEf(I)I
    .locals 9
    .parameter "AdnEfid"

    .prologue
    const/4 v6, -0x1

    .line 190
    const/4 v5, 0x0

    .line 192
    .local v5, pbrSize:I
    const/16 v0, 0xc0

    .line 193
    .local v0, Adntag:I
    const/16 v1, 0xc2

    .line 195
    .local v1, Ext1tag:I
    iget-object v7, p0, Lcom/android/internal/telephony/AdnRecordCache;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-virtual {v7}, Lcom/android/internal/telephony/IccFileHandler;->getCard()Lcom/android/internal/telephony/UiccCard;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 197
    iget-object v7, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrFileSize()I

    move-result v5

    .line 198
    if-gtz v5, :cond_1

    move v3, v6

    .line 220
    :cond_0
    :goto_0
    return v3

    .line 203
    :cond_1
    const/4 v4, 0x0

    .local v4, loop:I
    :goto_1
    if-ge v4, v5, :cond_3

    .line 205
    iget-object v7, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v7, v4, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEFidInPBR(II)I

    move-result v2

    .line 207
    .local v2, efid:I
    if-ne p1, v2, :cond_2

    .line 209
    iget-object v7, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v7, v4, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEFidInPBR(II)I

    move-result v3

    .line 211
    .local v3, extensionEF:I
    if-gez v3, :cond_0

    move v3, v6

    .line 212
    goto :goto_0

    .line 203
    .end local v3           #extensionEF:I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v2           #efid:I
    .end local v4           #loop:I
    :cond_3
    move v3, v6

    .line 220
    goto :goto_0
.end method

.method public getUsimMgrFromAdnCache()Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    return-object v0
.end method

.method public getUsimPhoneBookManager()Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
    .locals 1

    .prologue
    .line 949
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .parameter "msg"

    .prologue
    .line 520
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    packed-switch v15, :pswitch_data_0

    .line 708
    :cond_0
    :goto_0
    return-void

    .line 523
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 524
    .local v4, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 527
    .local v5, efid:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    .line 528
    .local v14, waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->delete(I)V

    .line 530
    iget-object v15, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v15, :cond_1

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    move-object/from16 v16, v0

    iget-object v15, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v15, Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 533
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v4}, Lcom/android/internal/telephony/AdnRecordCache;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 536
    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v5           #efid:I
    .end local v14           #waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 537
    .restart local v4       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 539
    .restart local v5       #efid:I
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    .line 540
    .local v7, index:I
    iget-object v15, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v15, Lcom/android/internal/telephony/AdnRecord;

    move-object v1, v15

    check-cast v1, Lcom/android/internal/telephony/AdnRecord;

    .line 541
    .local v1, adn:Lcom/android/internal/telephony/AdnRecord;
    sget-object v15, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "EVENT_UPDATE_ADN_DONE efid = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    sget-object v15, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "EVENT_UPDATE_ADN_DONE index = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    invoke-static {}, Lcom/android/internal/telephony/gsm/SIMRecords;->getEmailAnrSupport()Z

    move-result v15

    if-nez v15, :cond_8

    .line 552
    if-eqz v1, :cond_2

    .line 553
    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/AdnRecord;->setEfid(I)V

    .line 554
    invoke-virtual {v1, v7}, Lcom/android/internal/telephony/AdnRecord;->setRecordNumber(I)V

    .line 562
    :cond_2
    sput v5, Lcom/android/internal/telephony/AdnRecordCache;->s_efid:I

    .line 563
    sput v7, Lcom/android/internal/telephony/AdnRecordCache;->s_index:I

    .line 565
    iget-object v15, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v15, :cond_4

    .line 566
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_6

    .line 567
    const/4 v15, 0x1

    if-lt v7, v15, :cond_3

    .line 568
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    add-int/lit8 v16, v7, -0x1

    move/from16 v0, v16

    invoke-virtual {v15, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 570
    :cond_3
    const-string v15, "ADN RECORD"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "index is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v15}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->invalidateCache()V

    .line 580
    :cond_4
    const/16 v15, 0x6f3a

    if-eq v5, v15, :cond_5

    .line 582
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v15}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPhonebookRecords()Ljava/util/ArrayList;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/telephony/AdnRecordCache;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 583
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/AdnRecordCache;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-eqz v15, :cond_5

    .line 584
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/AdnRecordCache;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 585
    .local v13, size:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    if-ge v6, v13, :cond_5

    .line 586
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/AdnRecordCache;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/AdnRecord;

    .line 587
    .local v11, record:Lcom/android/internal/telephony/AdnRecord;
    if-eqz v1, :cond_7

    invoke-virtual {v11, v1}, Lcom/android/internal/telephony/AdnRecord;->equalAdn(Lcom/android/internal/telephony/AdnRecord;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 588
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/AdnRecordCache;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v15, v6, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 596
    .end local v6           #i:I
    .end local v11           #record:Lcom/android/internal/telephony/AdnRecord;
    .end local v13           #size:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Message;

    .line 597
    .local v12, response:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->delete(I)V

    .line 600
    if-eqz v12, :cond_0

    .line 601
    const/4 v15, 0x0

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v12, v15, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 602
    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 572
    .end local v12           #response:Landroid/os/Message;
    :cond_6
    const-string v15, "ADN RECORD"

    const-string v16, "adnLikeFiles.get is null"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 585
    .restart local v6       #i:I
    .restart local v11       #record:Lcom/android/internal/telephony/AdnRecord;
    .restart local v13       #size:I
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 607
    .end local v6           #i:I
    .end local v11           #record:Lcom/android/internal/telephony/AdnRecord;
    .end local v13           #size:I
    :cond_8
    iget-object v15, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v15, :cond_9

    .line 608
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    add-int/lit8 v16, v7, -0x1

    move/from16 v0, v16

    invoke-virtual {v15, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 609
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v15}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->invalidateCache()V

    .line 613
    :cond_9
    sput v5, Lcom/android/internal/telephony/AdnRecordCache;->s_efid:I

    .line 614
    sput v7, Lcom/android/internal/telephony/AdnRecordCache;->s_index:I

    .line 615
    if-eqz v1, :cond_a

    .line 616
    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/AdnRecord;->setEfid(I)V

    .line 617
    invoke-virtual {v1, v7}, Lcom/android/internal/telephony/AdnRecord;->setRecordNumber(I)V

    .line 620
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Message;

    .line 622
    .restart local v12       #response:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->delete(I)V

    .line 624
    if-eqz v12, :cond_0

    .line 625
    const/4 v15, 0x0

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v12, v15, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 626
    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 636
    .end local v1           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v5           #efid:I
    .end local v7           #index:I
    .end local v12           #response:Landroid/os/Message;
    :pswitch_2
    sget-object v15, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    const-string v16, "EVENT_UPDATE_USIM_ADN_DONE"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 639
    .restart local v4       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 640
    .restart local v5       #efid:I
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    .line 641
    .restart local v7       #index:I
    iget-object v15, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v15, Lcom/android/internal/telephony/AdnRecord;

    move-object v1, v15

    check-cast v1, Lcom/android/internal/telephony/AdnRecord;

    .line 646
    .restart local v1       #adn:Lcom/android/internal/telephony/AdnRecord;
    const/4 v10, -0x1

    .line 648
    .local v10, recNum:I
    const/4 v9, 0x0

    .local v9, num:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v15}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getNumRecs()I

    move-result v15

    if-ge v9, v15, :cond_c

    .line 651
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v15, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->findADNEfid(I)I

    move-result v2

    .line 653
    .local v2, adnEF:I
    if-ne v5, v2, :cond_b

    .line 655
    move v10, v9

    .line 648
    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 660
    .end local v2           #adnEF:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v15}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAdnRecordSizeArray()[I

    move-result-object v8

    .line 662
    .local v8, mAdnRecordSizeArray:[I
    const/4 v3, 0x0

    .line 664
    .local v3, adnRecNum:I
    const/4 v15, -0x1

    if-eq v10, v15, :cond_0

    .line 667
    if-nez v10, :cond_e

    .line 669
    add-int/lit8 v3, v7, -0x1

    .line 676
    :goto_4
    iget-object v15, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v15, :cond_f

    .line 679
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v15, v3, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->setPhoneBookRecords(ILcom/android/internal/telephony/AdnRecord;)V

    .line 680
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    add-int/lit8 v16, v7, -0x1

    move/from16 v0, v16

    invoke-virtual {v15, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 681
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/internal/telephony/AdnRecordCache;->updateOthers:Z

    .line 688
    :goto_5
    sput v5, Lcom/android/internal/telephony/AdnRecordCache;->s_efid:I

    .line 689
    sput v7, Lcom/android/internal/telephony/AdnRecordCache;->s_index:I

    .line 690
    sget-object v15, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "EVENT_UPDATE_USIM_ADN_DONE efid = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    sget-object v15, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "EVENT_UPDATE_USIM_ADN_DONE index = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    if-eqz v1, :cond_d

    .line 693
    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/AdnRecord;->setEfid(I)V

    .line 694
    invoke-virtual {v1, v7}, Lcom/android/internal/telephony/AdnRecord;->setRecordNumber(I)V

    .line 697
    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Message;

    .line 698
    .restart local v12       #response:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v15, v5}, Landroid/util/SparseArray;->delete(I)V

    .line 699
    const/4 v15, 0x0

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v12, v15, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 700
    invoke-virtual {v12}, Landroid/os/Message;->sendToTarget()V

    .line 702
    sget-object v15, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    const-string v16, "EVENT_UPDATE_USIM_ADN_DONE finish"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 673
    .end local v12           #response:Landroid/os/Message;
    :cond_e
    add-int/lit8 v15, v10, -0x1

    aget v15, v8, v15

    add-int/2addr v15, v7

    add-int/lit8 v3, v15, -0x1

    goto/16 :goto_4

    .line 684
    :cond_f
    sget-object v15, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    const-string v16, " fail to Update Usim Adn"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 520
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method isCleanRecord(IILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;I)Z
    .locals 13
    .parameter "num"
    .parameter "type"
    .parameter "oldAdn"
    .parameter "newAdn"
    .parameter "index"

    .prologue
    .line 1097
    const/4 v5, 0x0

    .local v5, oldCount:I
    const/4 v4, 0x0

    .local v4, newCount:I
    const/4 v1, 0x0

    .local v1, count:I
    const/4 v3, 0x0

    .line 1100
    .local v3, i:I
    const/4 v2, 0x0

    .line 1102
    .local v2, efids:[I
    move-object/from16 v0, p3

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/AdnRecordCache;->getSubjectString(ILcom/android/internal/telephony/AdnRecord;)[Ljava/lang/String;

    move-result-object v8

    .line 1103
    .local v8, strArr1:[Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/AdnRecordCache;->getSubjectString(ILcom/android/internal/telephony/AdnRecord;)[Ljava/lang/String;

    move-result-object v9

    .line 1105
    .local v9, strArr2:[Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 1107
    array-length v5, v8

    .line 1110
    :cond_0
    if-eqz v9, :cond_1

    .line 1112
    array-length v4, v9

    .line 1115
    :cond_1
    sget-object v10, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isCleanRecord oldCount ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " newCount "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    iget-object v10, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v10, p2, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getSubjectEfids(II)[I

    move-result-object v2

    .line 1119
    if-nez v2, :cond_2

    .line 1121
    const/4 v10, 0x0

    .line 1164
    :goto_0
    return v10

    .line 1124
    :cond_2
    array-length v1, v2

    .line 1126
    sget-object v10, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isCleanRecord count ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_8

    .line 1130
    if-ge v3, v5, :cond_5

    .line 1132
    aget-object v6, v8, v3

    .line 1134
    .local v6, str1:Ljava/lang/String;
    if-nez v6, :cond_3

    .line 1135
    sget-object v10, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    const-string v11, "isCleanRecord str1 is null."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    const-string v6, ""

    .line 1144
    :cond_3
    :goto_2
    if-ge v3, v4, :cond_6

    .line 1146
    aget-object v7, v9, v3

    .line 1148
    .local v7, str2:Ljava/lang/String;
    if-nez v7, :cond_4

    .line 1149
    sget-object v10, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    const-string v11, "isCleanRecord str2 is null."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    const-string v7, ""

    .line 1158
    :cond_4
    :goto_3
    move/from16 v0, p5

    if-ne v0, v3, :cond_7

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1160
    const/4 v10, 0x1

    goto :goto_0

    .line 1141
    .end local v6           #str1:Ljava/lang/String;
    .end local v7           #str2:Ljava/lang/String;
    :cond_5
    const-string v6, ""

    .restart local v6       #str1:Ljava/lang/String;
    goto :goto_2

    .line 1155
    :cond_6
    const-string v7, ""

    .restart local v7       #str2:Ljava/lang/String;
    goto :goto_3

    .line 1128
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1164
    .end local v6           #str1:Ljava/lang/String;
    .end local v7           #str2:Ljava/lang/String;
    :cond_8
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public requestLoadAllAdnLike(IILandroid/os/Message;)V
    .locals 6
    .parameter "efid"
    .parameter "extensionEf"
    .parameter "response"

    .prologue
    .line 438
    const/16 v2, 0x4f30

    if-ne p1, v2, :cond_1

    .line 439
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v0

    .line 445
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    :goto_0
    if-eqz v0, :cond_2

    .line 446
    if-eqz p3, :cond_0

    .line 447
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iput-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 448
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 488
    :cond_0
    :goto_1
    return-void

    .line 441
    .end local v0           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v0

    .restart local v0       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    goto :goto_0

    .line 456
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 458
    .local v1, waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    if-eqz v1, :cond_3

    .line 462
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 468
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 469
    .restart local v1       #waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 474
    if-gez p2, :cond_4

    .line 477
    if-eqz p3, :cond_0

    .line 478
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF is not known ADN-like EF:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 480
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 486
    :cond_4
    new-instance v2, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v3, p0, Lcom/android/internal/telephony/AdnRecordCache;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p1, v4}, Lcom/android/internal/telephony/AdnRecordCache;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/internal/telephony/AdnRecordLoader;->loadAllFromEF(IILandroid/os/Message;)V

    goto :goto_1
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 108
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->reset()V

    .line 110
    invoke-direct {p0}, Lcom/android/internal/telephony/AdnRecordCache;->clearWaiters()V

    .line 111
    invoke-direct {p0}, Lcom/android/internal/telephony/AdnRecordCache;->clearUserWriters()V

    .line 113
    return-void
.end method

.method public updateAdnByIndex(ILcom/android/internal/telephony/AdnRecord;ILjava/lang/String;Landroid/os/Message;)V
    .locals 8
    .parameter "efid"
    .parameter "adn"
    .parameter "recordIndex"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 246
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/AdnRecordCache;->extensionEfForEf(I)I

    move-result v3

    .line 247
    .local v3, extensionEF:I
    if-gez v3, :cond_0

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EF is not known ADN-like EF:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p5, v0}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 263
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Message;

    .line 253
    .local v7, pendingResponse:Landroid/os/Message;
    if-eqz v7, :cond_1

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Have pending update for EF:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p5, v0}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 260
    new-instance v0, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordCache;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1, p1, p3, p2}, Lcom/android/internal/telephony/AdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object v1, p2

    move v2, p1

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public updateAdnBySearch(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V
    .locals 13
    .parameter "efid"
    .parameter "oldAdn"
    .parameter "newAdn"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 283
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/AdnRecordCache;->extensionEfForEf(I)I

    move-result v4

    .line 285
    .local v4, extensionEF:I
    if-gez v4, :cond_0

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EF is not known ADN-like EF:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 343
    :goto_0
    return-void

    .line 292
    :cond_0
    const/16 v1, 0x4f30

    if-ne p1, v1, :cond_1

    .line 293
    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v11

    .line 298
    .local v11, oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    :goto_1
    if-nez v11, :cond_2

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adn list not exist for EF:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 295
    .end local v11           #oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v11

    .restart local v11       #oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    goto :goto_1

    .line 303
    :cond_2
    const/4 v5, -0x1

    .line 304
    .local v5, index:I
    const/4 v8, 0x1

    .line 305
    .local v8, count:I
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/AdnRecord;>;"
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 306
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/AdnRecord;

    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/AdnRecord;->isEqual(Lcom/android/internal/telephony/AdnRecord;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 307
    move v5, v8

    .line 313
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAdnBySearch index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/4 v1, -0x1

    if-ne v5, v1, :cond_5

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adn record don\'t exist for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 310
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 320
    :cond_5
    const/16 v1, 0x4f30

    if-ne p1, v1, :cond_6

    .line 321
    add-int/lit8 v1, v5, -0x1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/AdnRecord;

    .line 322
    .local v9, foundAdn:Lcom/android/internal/telephony/AdnRecord;
    iget p1, v9, Lcom/android/internal/telephony/AdnRecord;->efid:I

    .line 323
    iget v4, v9, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 324
    iget v5, v9, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 326
    move-object/from16 v0, p3

    iput p1, v0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    .line 327
    move-object/from16 v0, p3

    iput v4, v0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 328
    move-object/from16 v0, p3

    iput v5, v0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 331
    .end local v9           #foundAdn:Lcom/android/internal/telephony/AdnRecord;
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Message;

    .line 333
    .local v12, pendingResponse:Landroid/os/Message;
    if-eqz v12, :cond_7

    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Have pending update for EF:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 338
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v0, p5

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 340
    new-instance v1, Lcom/android/internal/telephony/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecordCache;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/4 v2, 0x2

    move-object/from16 v0, p3

    invoke-virtual {p0, v2, p1, v5, v0}, Lcom/android/internal/telephony/AdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    move-object/from16 v2, p3

    move v3, p1

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0
.end method

.method public updateAdnBySearchForUsim(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V
    .locals 18
    .parameter "efid"
    .parameter "oldAdn"
    .parameter "newAdn"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 360
    const/4 v6, -0x1

    .line 361
    .local v6, extensionEF:I
    const/16 v16, 0x0

    .line 363
    .local v16, pbrSize:I
    const/16 v10, 0xc0

    .line 364
    .local v10, Adntag:I
    const/16 v11, 0xc2

    .line 365
    .local v11, Ext1tag:I
    const/4 v7, -0x1

    .line 367
    .local v7, index:I
    const/16 v3, 0x4f30

    move/from16 v0, p1

    if-ne v3, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    if-nez v3, :cond_1

    .line 369
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mUsimPhoneBookManager is null/EF id is not pbr:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 426
    :goto_0
    return-void

    .line 374
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrFileSize()I

    move-result v16

    .line 375
    if-gtz v16, :cond_2

    .line 376
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pbrSize:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 380
    :cond_2
    const/4 v14, 0x0

    .local v14, loop:I
    :goto_1
    move/from16 v0, v16

    if-ge v14, v0, :cond_7

    const/4 v3, -0x1

    if-ne v3, v7, :cond_7

    .line 382
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v3, v14, v10}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEFidInPBR(II)I

    move-result p1

    .line 384
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v3, v14, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEFidInPBR(II)I

    move-result v6

    .line 386
    if-gez v6, :cond_3

    .line 387
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF is not known ADN-like EF:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 392
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v15

    .line 394
    .local v15, oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    if-nez v15, :cond_5

    .line 380
    :cond_4
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 399
    :cond_5
    const/4 v12, 0x1

    .line 400
    .local v12, count:I
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/AdnRecord;>;"
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 401
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/AdnRecord;->isEqual(Lcom/android/internal/telephony/AdnRecord;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 402
    move v7, v12

    .line 403
    goto :goto_2

    .line 405
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 409
    .end local v12           #count:I
    .end local v13           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/AdnRecord;>;"
    .end local v15           #oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    :cond_7
    const/4 v3, -0x1

    if-ne v3, v7, :cond_8

    .line 410
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adn record don\'t exist for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 414
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/Message;

    .line 416
    .local v17, pendingResponse:Landroid/os/Message;
    if-eqz v17, :cond_9

    .line 417
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Have pending update for EF:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 421
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 423
    new-instance v3, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/AdnRecordCache;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    const/4 v4, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v4, v1, v7, v2}, Lcom/android/internal/telephony/AdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    move-object/from16 v4, p3

    move/from16 v5, p1

    move-object/from16 v8, p4

    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0
.end method

.method public declared-synchronized updateUSIMAdnByIndex(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;ILjava/lang/String;Landroid/os/Message;)V
    .locals 27
    .parameter "aimEfid"
    .parameter "newAdn"
    .parameter "oldAdn"
    .parameter "recordIndex"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 825
    monitor-enter p0

    const/4 v15, 0x0

    .line 826
    .local v15, extensionEF:I
    const/4 v7, -0x1

    .line 827
    .local v7, index:I
    const/16 v19, 0x0

    .line 828
    .local v19, emailEF:I
    const/4 v11, 0x0

    .line 829
    .local v11, iapEF:I
    const/4 v8, 0x0

    .line 830
    .local v8, efid:I
    const/4 v4, 0x0

    .line 832
    .local v4, recNum:I
    const/16 v22, 0x0

    .line 834
    .local v22, iapRecNum:I
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateUSIMAdnByIndex aimEfid "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    sget-object v2, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateUSIMAdnByIndex recordIndex "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    const/16 v23, 0x0

    .local v23, num:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getNumRecs()I

    move-result v2

    move/from16 v0, v23

    if-ge v0, v2, :cond_5

    .line 839
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->findADNEfid(I)I

    move-result v8

    .line 840
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->findExtensionEFInfo(I)I

    move-result v15

    .line 842
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->findEFIapInfo(I)I

    move-result v11

    .line 844
    sget-object v2, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "efid : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "extensionEF :"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " iapEF:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    if-ltz v8, :cond_0

    if-gez v15, :cond_1

    .line 848
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EF is not known ADN-like EF:efid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",extensionEF="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 940
    :goto_1
    monitor-exit p0

    return-void

    .line 852
    :cond_1
    move/from16 v0, p1

    if-eq v8, v0, :cond_3

    .line 854
    :try_start_1
    sget-object v2, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    const-string v3, "updateUSIMAdnByIndex efid != aimEfid."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    :cond_2
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_0

    .line 858
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    const-string v3, "updateUSIMAdnByIndex (1)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    sget-object v2, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateUSIMAdnByIndex efid is "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v25

    .line 866
    .local v25, oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    if-nez v25, :cond_4

    .line 868
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adn list not exist for EF:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 825
    .end local v23           #num:I
    .end local v25           #oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 872
    .restart local v23       #num:I
    .restart local v25       #oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    :cond_4
    :try_start_2
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    move/from16 v0, p4

    if-ge v2, v0, :cond_6

    .line 874
    sget-object v2, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    const-string v3, "updateUSIMAdnByIndex oldAdnList.size() < recordIndex."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    .end local v25           #oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    :cond_5
    :goto_2
    const/4 v2, -0x1

    if-ne v7, v2, :cond_a

    .line 913
    const-string v2, "Adn record don\'t exist for oldAdn"

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_1

    .line 878
    .restart local v25       #oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    :cond_6
    sget-object v2, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    const-string v3, "updateUSIMAdnByIndex (2)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    const/16 v20, 0x0

    .line 882
    .local v20, find_index:Z
    const/16 v21, 0x0

    .local v21, i:I
    :goto_3
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v21

    if-ge v0, v2, :cond_7

    .line 884
    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/internal/telephony/AdnRecord;

    .line 886
    .local v24, oldAdnIndex:Lcom/android/internal/telephony/AdnRecord;
    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/AdnRecord;->getRecordNumber()I

    move-result v2

    move/from16 v0, p4

    if-ne v0, v2, :cond_9

    .line 888
    const/16 v20, 0x1

    .line 889
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/AdnRecordCache;->mInsertId:I

    .line 890
    move/from16 v7, p4

    .line 891
    move-object/from16 p3, v24

    .line 896
    .end local v24           #oldAdnIndex:Lcom/android/internal/telephony/AdnRecord;
    :cond_7
    if-eqz v20, :cond_2

    .line 898
    move/from16 v4, v23

    .line 900
    if-lez v23, :cond_8

    .line 902
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/AdnRecordCache;->mInsertId:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSizeArray:[I

    add-int/lit8 v6, v23, -0x1

    aget v3, v3, v6

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/AdnRecordCache;->mInsertId:I

    .line 905
    :cond_8
    sget-object v2, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    const-string v3, "updateUSIMAdnByIndex (3)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    sget-object v2, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mInsertId"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/AdnRecordCache;->mInsertId:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 882
    .restart local v24       #oldAdnIndex:Lcom/android/internal/telephony/AdnRecord;
    :cond_9
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 917
    .end local v20           #find_index:Z
    .end local v21           #i:I
    .end local v24           #oldAdnIndex:Lcom/android/internal/telephony/AdnRecord;
    .end local v25           #oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/os/Message;

    .line 919
    .local v26, pendingResponse:Landroid/os/Message;
    if-eqz v26, :cond_b

    .line 921
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Have pending update for EF:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 925
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v0, p6

    invoke-virtual {v2, v8, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 926
    new-instance v5, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/AdnRecordCache;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v5, v2}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    .line 928
    .local v5, adnRecordLoader:Lcom/android/internal/telephony/AdnRecordLoader;
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/AdnRecordCache;->mInsertId:I

    move-object/from16 v2, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p2

    move-object/from16 v12, p5

    invoke-direct/range {v2 .. v12}, Lcom/android/internal/telephony/AdnRecordCache;->updateSubjectOfAdn(IILcom/android/internal/telephony/AdnRecordLoader;IIILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;ILjava/lang/String;)V

    .line 931
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/AdnRecordCache;->mInsertId:I

    move-object/from16 v2, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p2

    move-object/from16 v12, p5

    invoke-direct/range {v2 .. v12}, Lcom/android/internal/telephony/AdnRecordCache;->updateSubjectOfAdn(IILcom/android/internal/telephony/AdnRecordLoader;IIILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;ILjava/lang/String;)V

    .line 934
    const/4 v2, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v8, v7, v1}, Lcom/android/internal/telephony/AdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    move-object v12, v5

    move-object/from16 v13, p2

    move v14, v8

    move/from16 v16, v7

    move-object/from16 v17, p5

    invoke-virtual/range {v12 .. v18}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEFAdnToUsim(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    .line 938
    sget-object v2, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    const-string v3, "updateUSIMAdnByIndex  finish"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method public declared-synchronized updateUSIMAdnBySearch(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V
    .locals 28
    .parameter "efid"
    .parameter "oldAdn"
    .parameter "newAdn"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 714
    monitor-enter p0

    const/16 v16, 0x0

    .line 715
    .local v16, extensionEF:I
    const/4 v8, -0x1

    .line 716
    .local v8, index:I
    const/16 v21, 0x0

    .line 717
    .local v21, emailEF:I
    const/4 v12, 0x0

    .line 719
    .local v12, iapEF:I
    const/4 v5, 0x0

    .line 721
    .local v5, recNum:I
    const/16 v23, 0x0

    .line 723
    .local v23, iapRecNum:I
    :try_start_0
    sget-object v3, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateUSIMAdnBySearch efid "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    const/16 v25, 0x0

    .local v25, num:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getNumRecs()I

    move-result v3

    move/from16 v0, v25

    if-ge v0, v3, :cond_5

    .line 727
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->findADNEfid(I)I

    move-result p1

    .line 728
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->findExtensionEFInfo(I)I

    move-result v16

    .line 730
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->findEFIapInfo(I)I

    move-result v12

    .line 732
    sget-object v3, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "efid : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "extensionEF :"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " iapEF:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    if-ltz p1, :cond_0

    if-gez v16, :cond_1

    .line 736
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF is not known ADN-like EF:efid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",extensionEF="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 819
    :goto_1
    monitor-exit p0

    return-void

    .line 740
    :cond_1
    :try_start_1
    sget-object v3, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    const-string v4, "updateUSIMAdnBySearch (1)"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    sget-object v3, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "efid is "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v26

    .line 748
    .local v26, oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    if-nez v26, :cond_2

    .line 750
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adn list not exist for EF:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 714
    .end local v25           #num:I
    .end local v26           #oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 754
    .restart local v25       #num:I
    .restart local v26       #oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    :cond_2
    :try_start_2
    sget-object v3, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    const-string v4, "updateUSIMAdnBySearch (2)"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    const/16 v20, 0x1

    .line 757
    .local v20, count:I
    const/16 v22, 0x0

    .line 759
    .local v22, find_index:Z
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/AdnRecord;>;"
    :goto_2
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 761
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/AdnRecord;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/AdnRecord;->isEqual(Lcom/android/internal/telephony/AdnRecord;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 763
    sget-object v3, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "we got the index "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    const/16 v22, 0x1

    .line 765
    move/from16 v8, v20

    .line 767
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/telephony/AdnRecordCache;->mInsertId:I

    .line 775
    :cond_3
    if-eqz v22, :cond_7

    .line 776
    move/from16 v5, v25

    .line 778
    if-lez v25, :cond_4

    .line 780
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/AdnRecordCache;->mInsertId:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSizeArray:[I

    add-int/lit8 v7, v25, -0x1

    aget v4, v4, v7

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/AdnRecordCache;->mInsertId:I

    .line 783
    :cond_4
    sget-object v3, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    const-string v4, "updateUSIMAdnBySearch (3)"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    sget-object v3, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mInsertId"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/AdnRecordCache;->mInsertId:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    .end local v20           #count:I
    .end local v22           #find_index:Z
    .end local v24           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/AdnRecord;>;"
    .end local v26           #oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    :cond_5
    const/4 v3, -0x1

    if-ne v8, v3, :cond_8

    .line 792
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adn record don\'t exist for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 772
    .restart local v20       #count:I
    .restart local v22       #find_index:Z
    .restart local v24       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/AdnRecord;>;"
    .restart local v26       #oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    :cond_6
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_2

    .line 725
    :cond_7
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_0

    .line 796
    .end local v20           #count:I
    .end local v22           #find_index:Z
    .end local v24           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/AdnRecord;>;"
    .end local v26           #oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/os/Message;

    .line 798
    .local v27, pendingResponse:Landroid/os/Message;
    if-eqz v27, :cond_9

    .line 800
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Have pending update for EF:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 804
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 805
    new-instance v6, Lcom/android/internal/telephony/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/AdnRecordCache;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v6, v3}, Lcom/android/internal/telephony/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    .line 807
    .local v6, adnRecordLoader:Lcom/android/internal/telephony/AdnRecordLoader;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/AdnRecordCache;->mInsertId:I

    move-object/from16 v3, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v13, p4

    invoke-direct/range {v3 .. v13}, Lcom/android/internal/telephony/AdnRecordCache;->updateSubjectOfAdn(IILcom/android/internal/telephony/AdnRecordLoader;IIILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;ILjava/lang/String;)V

    .line 810
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/AdnRecordCache;->mInsertId:I

    move-object/from16 v3, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v13, p4

    invoke-direct/range {v3 .. v13}, Lcom/android/internal/telephony/AdnRecordCache;->updateSubjectOfAdn(IILcom/android/internal/telephony/AdnRecordLoader;IIILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;ILjava/lang/String;)V

    .line 813
    const/4 v3, 0x3

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v3, v1, v8, v2}, Lcom/android/internal/telephony/AdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v19

    move-object v13, v6

    move-object/from16 v14, p3

    move/from16 v15, p1

    move/from16 v17, v8

    move-object/from16 v18, p4

    invoke-virtual/range {v13 .. v19}, Lcom/android/internal/telephony/AdnRecordLoader;->updateEFAdnToUsim(Lcom/android/internal/telephony/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    .line 817
    sget-object v3, Lcom/android/internal/telephony/AdnRecordCache;->LOG_TAG:Ljava/lang/String;

    const-string v4, "updateUSIMAdnBySearch  finish"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method
