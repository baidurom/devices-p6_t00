.class public final Landroid/telephony/SmsManager;
.super Ljava/lang/Object;
.source "SmsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SmsManager$1;,
        Landroid/telephony/SmsManager$SmsManagerEx;
    }
.end annotation


# static fields
.field public static final RESULT_ERROR_FDN_CHECK_FAILURE:I = 0x6

.field public static final RESULT_ERROR_GENERIC_FAILURE:I = 0x1

.field public static final RESULT_ERROR_LIMIT_EXCEEDED:I = 0x5

.field public static final RESULT_ERROR_NO_SERVICE:I = 0x4

.field public static final RESULT_ERROR_NULL_PDU:I = 0x3

.field public static final RESULT_ERROR_RADIO_OFF:I = 0x2

.field public static final STATUS_ON_ICC_FREE:I = 0x0

.field public static final STATUS_ON_ICC_READ:I = 0x1

.field public static final STATUS_ON_ICC_SENT:I = 0x5

.field public static final STATUS_ON_ICC_UNREAD:I = 0x3

.field public static final STATUS_ON_ICC_UNSENT:I = 0x7

.field static final TAG:Ljava/lang/String; = "SmsManager"

.field private static final sInstance:Landroid/telephony/SmsManager;


# instance fields
.field private mSmsManagerEx:Landroid/telephony/SmsManager$SmsManagerEx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Landroid/telephony/SmsManager;

    invoke-direct {v0}, Landroid/telephony/SmsManager;-><init>()V

    sput-object v0, Landroid/telephony/SmsManager;->sInstance:Landroid/telephony/SmsManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 868
    new-instance v0, Landroid/telephony/SmsManager$SmsManagerEx;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telephony/SmsManager$SmsManagerEx;-><init>(Landroid/telephony/SmsManager;Landroid/telephony/SmsManager$1;)V

    iput-object v0, p0, Landroid/telephony/SmsManager;->mSmsManagerEx:Landroid/telephony/SmsManager$SmsManagerEx;

    .line 325
    return-void
.end method

.method private static createMessageListFromRawRecords(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 777
    .local p0, records:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 778
    .local v3, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    if-eqz p0, :cond_1

    .line 779
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 781
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 782
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SmsRawData;

    .line 784
    .local v1, data:Lcom/android/internal/telephony/SmsRawData;
    if-eqz v1, :cond_0

    .line 785
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/SmsMessage;->createFromEfRecord(I[B)Landroid/telephony/SmsMessage;

    move-result-object v4

    .line 786
    .local v4, sms:Landroid/telephony/SmsMessage;
    if-eqz v4, :cond_0

    .line 787
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    .end local v4           #sms:Landroid/telephony/SmsMessage;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 792
    .end local v0           #count:I
    .end local v1           #data:Lcom/android/internal/telephony/SmsRawData;
    .end local v2           #i:I
    :cond_1
    return-object v3
.end method

.method public static getAllMessagesFromIcc()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 467
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 468
    invoke-static {}, Landroid/telephony/MSimSmsManager;->getDefault()Landroid/telephony/MSimSmsManager;

    move-result-object v2

    invoke-static {}, Landroid/telephony/MSimSmsManager;->getDefault()Landroid/telephony/MSimSmsManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimSmsManager;->getPreferredSmsSubscription()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/MSimSmsManager;->getAllMessagesFromIcc(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 482
    .local v1, records:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :goto_0
    return-object v2

    .line 471
    .end local v1           #records:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :cond_0
    const/4 v1, 0x0

    .line 474
    .restart local v1       #records:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 475
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_1

    .line 476
    invoke-interface {v0}, Lcom/android/internal/telephony/ISms;->getAllMessagesFromIccEf()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 482
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_1
    :goto_1
    invoke-static {v1}, Landroid/telephony/SmsManager;->createMessageListFromRawRecords(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0

    .line 478
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static getDefault()Landroid/telephony/SmsManager;
    .locals 1

    .prologue
    .line 320
    sget-object v0, Landroid/telephony/SmsManager;->sInstance:Landroid/telephony/SmsManager;

    return-object v0
.end method


# virtual methods
.method public copyMessageToIcc([B[BI)Z
    .locals 4
    .parameter "smsc"
    .parameter "pdu"
    .parameter "status"

    .prologue
    .line 343
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 344
    invoke-static {}, Landroid/telephony/MSimSmsManager;->getDefault()Landroid/telephony/MSimSmsManager;

    move-result-object v2

    invoke-static {}, Landroid/telephony/MSimSmsManager;->getDefault()Landroid/telephony/MSimSmsManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimSmsManager;->getPreferredSmsSubscription()I

    move-result v3

    invoke-virtual {v2, p1, p2, p3, v3}, Landroid/telephony/MSimSmsManager;->copyMessageToIcc([B[BII)Z

    move-result v1

    .line 361
    :cond_0
    :goto_0
    return v1

    .line 347
    :cond_1
    const/4 v1, 0x0

    .line 349
    .local v1, success:Z
    if-nez p2, :cond_2

    .line 350
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "pdu is NULL"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 353
    :cond_2
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 354
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 355
    invoke-interface {v0, p3, p2, p1}, Lcom/android/internal/telephony/ISms;->copyMessageToIccEf(I[B[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 357
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public deleteMessageFromIcc(I)Z
    .locals 5
    .parameter "messageIndex"

    .prologue
    .line 400
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 401
    invoke-static {}, Landroid/telephony/MSimSmsManager;->getDefault()Landroid/telephony/MSimSmsManager;

    move-result-object v3

    invoke-static {}, Landroid/telephony/MSimSmsManager;->getDefault()Landroid/telephony/MSimSmsManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/MSimSmsManager;->getPreferredSmsSubscription()I

    move-result v4

    invoke-virtual {v3, p1, v4}, Landroid/telephony/MSimSmsManager;->deleteMessageFromIcc(II)Z

    move-result v2

    .line 419
    :cond_0
    :goto_0
    return v2

    .line 404
    :cond_1
    const/4 v2, 0x0

    .line 406
    .local v2, success:Z
    iget-object v3, p0, Landroid/telephony/SmsManager;->mSmsManagerEx:Landroid/telephony/SmsManager$SmsManagerEx;

    #calls: Landroid/telephony/SmsManager$SmsManagerEx;->getNewbyte()[B
    invoke-static {v3}, Landroid/telephony/SmsManager$SmsManagerEx;->access$000(Landroid/telephony/SmsManager$SmsManagerEx;)[B

    move-result-object v1

    .line 408
    .local v1, pdu:[B
    const/4 v3, -0x1

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 411
    :try_start_0
    const-string v3, "isms"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 412
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 413
    const/4 v3, 0x0

    invoke-interface {v0, p1, v3, v1}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEf(II[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 415
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public disableCdmaBroadcast(I)Z
    .locals 4
    .parameter "messageIdentifier"

    .prologue
    .line 681
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 682
    invoke-static {}, Landroid/telephony/MSimSmsManager;->getDefault()Landroid/telephony/MSimSmsManager;

    move-result-object v2

    invoke-static {}, Landroid/telephony/MSimSmsManager;->getDefault()Landroid/telephony/MSimSmsManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimSmsManager;->getPreferredSmsSubscription()I

    move-result v3

    invoke-virtual {v2, p1, v3}, Landroid/telephony/MSimSmsManager;->disableCdmaBroadcast(II)Z

    move-result v1

    .line 696
    :cond_0
    :goto_0
    return v1

    .line 685
    :cond_1
    const/4 v1, 0x0

    .line 688
    .local v1, success:Z
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 689
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 690
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->disableCdmaBroadcast(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 692
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public disableCdmaBroadcastRange(II)Z
    .locals 4
    .parameter "startMessageId"
    .parameter "endMessageId"

    .prologue
    .line 751
    const/4 v1, 0x0

    .line 753
    .local v1, success:Z
    if-ge p2, p1, :cond_0

    .line 754
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "endMessageId < startMessageId"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 757
    :cond_0
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 758
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_1

    .line 759
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ISms;->disableCdmaBroadcastRange(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 765
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_1
    :goto_0
    return v1

    .line 761
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public disableCellBroadcast(I)Z
    .locals 4
    .parameter "messageIdentifier"

    .prologue
    .line 537
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 538
    invoke-static {}, Landroid/telephony/MSimSmsManager;->getDefault()Landroid/telephony/MSimSmsManager;

    move-result-object v2

    invoke-static {}, Landroid/telephony/MSimSmsManager;->getDefault()Landroid/telephony/MSimSmsManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimSmsManager;->getPreferredSmsSubscription()I

    move-result v3

    invoke-virtual {v2, p1, v3}, Landroid/telephony/MSimSmsManager;->disableCellBroadcast(II)Z

    move-result v1

    .line 552
    :cond_0
    :goto_0
    return v1

    .line 541
    :cond_1
    const/4 v1, 0x0

    .line 544
    .local v1, success:Z
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 545
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 546
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->disableCellBroadcast(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 548
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public disableCellBroadcastRange(II)Z
    .locals 4
    .parameter "startMessageId"
    .parameter "endMessageId"

    .prologue
    .line 614
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 615
    invoke-static {}, Landroid/telephony/MSimSmsManager;->getDefault()Landroid/telephony/MSimSmsManager;

    move-result-object v2

    invoke-static {}, Landroid/telephony/MSimSmsManager;->getDefault()Landroid/telephony/MSimSmsManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimSmsManager;->getPreferredSmsSubscription()I

    move-result v3

    invoke-virtual {v2, p1, p2, v3}, Landroid/telephony/MSimSmsManager;->enableCellBroadcastRange(III)Z

    move-result v1

    .line 632
    :cond_0
    :goto_0
    return v1

    .line 618
    :cond_1
    const/4 v1, 0x0

    .line 620
    .local v1, success:Z
    if-ge p2, p1, :cond_2

    .line 621
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "endMessageId < startMessageId"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 624
    :cond_2
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 625
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 626
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ISms;->disableCellBroadcastRange(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 628
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    if-nez p1, :cond_0

    .line 130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "text is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    invoke-static {p1}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public enableCdmaBroadcast(I)Z
    .locals 4
    .parameter "messageIdentifier"

    .prologue
    .line 650
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 651
    invoke-static {}, Landroid/telephony/MSimSmsManager;->getDefault()Landroid/telephony/MSimSmsManager;

    move-result-object v2

    invoke-static {}, Landroid/telephony/MSimSmsManager;->getDefault()Landroid/telephony/MSimSmsManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimSmsManager;->getPreferredSmsSubscription()I

    move-result v3

    invoke-virtual {v2, p1, v3}, Landroid/telephony/MSimSmsManager;->enableCdmaBroadcast(II)Z

    move-result v1

    .line 665
    :cond_0
    :goto_0
    return v1

    .line 654
    :cond_1
    const/4 v1, 0x0

    .line 657
    .local v1, success:Z
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 658
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 659
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->enableCdmaBroadcast(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 661
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public enableCdmaBroadcastRange(II)Z
    .locals 4
    .parameter "startMessageId"
    .parameter "endMessageId"

    .prologue
    .line 718
    const/4 v1, 0x0

    .line 720
    .local v1, success:Z
    if-ge p2, p1, :cond_0

    .line 721
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "endMessageId < startMessageId"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 724
    :cond_0
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 725
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_1

    .line 726
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ISms;->enableCdmaBroadcastRange(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 732
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_1
    :goto_0
    return v1

    .line 728
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public enableCellBroadcast(I)Z
    .locals 4
    .parameter "messageIdentifier"

    .prologue
    .line 502
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 503
    invoke-static {}, Landroid/telephony/MSimSmsManager;->getDefault()Landroid/telephony/MSimSmsManager;

    move-result-object v2

    invoke-static {}, Landroid/telephony/MSimSmsManager;->getDefault()Landroid/telephony/MSimSmsManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimSmsManager;->getPreferredSmsSubscription()I

    move-result v3

    invoke-virtual {v2, p1, v3}, Landroid/telephony/MSimSmsManager;->enableCellBroadcast(II)Z

    move-result v1

    .line 517
    :cond_0
    :goto_0
    return v1

    .line 506
    :cond_1
    const/4 v1, 0x0

    .line 509
    .local v1, success:Z
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 510
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 511
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->enableCellBroadcast(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 513
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public enableCellBroadcastRange(II)Z
    .locals 4
    .parameter "startMessageId"
    .parameter "endMessageId"

    .prologue
    .line 574
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 575
    invoke-static {}, Landroid/telephony/MSimSmsManager;->getDefault()Landroid/telephony/MSimSmsManager;

    move-result-object v2

    invoke-static {}, Landroid/telephony/MSimSmsManager;->getDefault()Landroid/telephony/MSimSmsManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimSmsManager;->getPreferredSmsSubscription()I

    move-result v3

    invoke-virtual {v2, p1, p2, v3}, Landroid/telephony/MSimSmsManager;->enableCellBroadcastRange(III)Z

    move-result v1

    .line 592
    :cond_0
    :goto_0
    return v1

    .line 578
    :cond_1
    const/4 v1, 0x0

    .line 580
    .local v1, success:Z
    if-ge p2, p1, :cond_2

    .line 581
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "endMessageId < startMessageId"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 584
    :cond_2
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 585
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 586
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ISms;->enableCellBroadcastRange(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 588
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getSimCapacity()Ljava/lang/String;
    .locals 4

    .prologue
    .line 371
    const/4 v2, 0x0

    .line 372
    .local v2, success:Z
    const-string v1, "0:0"

    .line 375
    .local v1, simCapacity:Ljava/lang/String;
    :try_start_0
    const-string v3, "isms"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 376
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 377
    invoke-interface {v0}, Lcom/android/internal/telephony/ISms;->getSimCapacity()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 383
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-object v1

    .line 379
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public getSmscAddr()Ljava/lang/String;
    .locals 3

    .prologue
    .line 798
    const/4 v1, 0x0

    .line 801
    .local v1, smscAddr:Ljava/lang/String;
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 803
    .local v0, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 805
    invoke-interface {v0}, Lcom/android/internal/telephony/ISms;->getSmscAddr()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 813
    .end local v0           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-object v1

    .line 808
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "destinationPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 239
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 243
    :cond_0
    if-eqz p4, :cond_1

    array-length v1, p4

    if-nez v1, :cond_2

    .line 244
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message data"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 248
    :cond_2
    :try_start_0
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 249
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_3

    .line 250
    const v1, 0xffff

    and-int v3, p3, v1

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/ISms;->sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_3
    :goto_0
    return-void

    .line 253
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendMultipartDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLjava/util/List;Ljava/util/List;)V
    .locals 7
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "destinationPort"
    .parameter "data"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "S[B",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 293
    .local p5, sentIntents:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p6, deliveryIntents:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    const-string v1, "SmsManager"

    const-string v2, "SmsManager sendMultipartDataMessage begin .."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 298
    :cond_0
    if-eqz p4, :cond_1

    array-length v1, p4

    if-nez v1, :cond_2

    .line 299
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message data"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 303
    :cond_2
    :try_start_0
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 304
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_3

    .line 305
    const v1, 0xffff

    and-int v3, p3, v1

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/ISms;->sendMultipartData(Ljava/lang/String;Ljava/lang/String;I[BLjava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_3
    :goto_0
    return-void

    .line 308
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 171
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    invoke-static {}, Landroid/telephony/MSimSmsManager;->getDefault()Landroid/telephony/MSimSmsManager;

    move-result-object v0

    invoke-static {}, Landroid/telephony/MSimSmsManager;->getDefault()Landroid/telephony/MSimSmsManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/MSimSmsManager;->getPreferredSmsSubscription()I

    move-result v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/telephony/MSimSmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 179
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v3, :cond_4

    .line 182
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message body"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    :cond_4
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v3, :cond_5

    .line 187
    :try_start_0
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 188
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 189
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ISms;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 192
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 196
    :cond_5
    const/4 v5, 0x0

    .line 197
    .local v5, sentIntent:Landroid/app/PendingIntent;
    const/4 v6, 0x0

    .line 198
    .local v6, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_6

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 199
    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #sentIntent:Landroid/app/PendingIntent;
    check-cast v5, Landroid/app/PendingIntent;

    .line 201
    .restart local v5       #sentIntent:Landroid/app/PendingIntent;
    :cond_6
    if-eqz p5, :cond_7

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 202
    invoke-virtual {p5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v6, Landroid/app/PendingIntent;

    .line 204
    .restart local v6       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_7
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 91
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    invoke-static {}, Landroid/telephony/MSimSmsManager;->getDefault()Landroid/telephony/MSimSmsManager;

    move-result-object v0

    invoke-static {}, Landroid/telephony/MSimSmsManager;->getDefault()Landroid/telephony/MSimSmsManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/MSimSmsManager;->getPreferredSmsSubscription()I

    move-result v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/telephony/MSimSmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 99
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 109
    :cond_3
    :try_start_0
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 110
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 111
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ISms;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setSmscAddr(Ljava/lang/String;)Z
    .locals 3
    .parameter "smscAddr"

    .prologue
    .line 818
    const/4 v0, 0x0

    .line 821
    .local v0, ret:Z
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 823
    .local v1, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 825
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ISms;->setSmscAddr(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 833
    .end local v1           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v0

    .line 828
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public updateMessageOnIcc(II[B)Z
    .locals 4
    .parameter "messageIndex"
    .parameter "newStatus"
    .parameter "pdu"

    .prologue
    .line 438
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 439
    invoke-static {}, Landroid/telephony/MSimSmsManager;->getDefault()Landroid/telephony/MSimSmsManager;

    move-result-object v2

    invoke-static {}, Landroid/telephony/MSimSmsManager;->getDefault()Landroid/telephony/MSimSmsManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimSmsManager;->getPreferredSmsSubscription()I

    move-result v3

    invoke-virtual {v2, p1, p2, p3, v3}, Landroid/telephony/MSimSmsManager;->updateMessageOnIcc(II[BI)Z

    move-result v1

    .line 453
    :cond_0
    :goto_0
    return v1

    .line 442
    :cond_1
    const/4 v1, 0x0

    .line 445
    .local v1, success:Z
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 446
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 447
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEf(II[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 449
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v2

    goto :goto_0
.end method
