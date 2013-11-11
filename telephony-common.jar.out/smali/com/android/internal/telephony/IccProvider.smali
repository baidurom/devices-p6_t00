.class public Lcom/android/internal/telephony/IccProvider;
.super Landroid/content/ContentProvider;
.source "IccProvider.java"


# static fields
.field protected static final ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String; = null

.field protected static final ADDRESS_BOOK_COLUMN_NAMES_USIM:[Ljava/lang/String; = null

.field private static final ADN:I = 0x1

.field private static final DBG:Z = false

.field private static final FDN:I = 0x2

.field private static final SDN:I = 0x3

.field protected static final STR_ANR:Ljava/lang/String; = "anrs"

.field protected static final STR_EFID:Ljava/lang/String; = "efid"

.field protected static final STR_EMAILS:Ljava/lang/String; = "emails"

.field protected static final STR_INDEX:Ljava/lang/String; = "index"

.field protected static final STR_NUMBER:Ljava/lang/String; = "number"

.field protected static final STR_PIN2:Ljava/lang/String; = "pin2"

.field protected static final STR_TAG:Ljava/lang/String; = "tag"

.field private static final TAG:Ljava/lang/String; = "IccProvider"

.field private static final URL_MATCHER:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 54
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v6

    const-string v1, "number"

    aput-object v1, v0, v3

    const-string v1, "emails"

    aput-object v1, v0, v4

    const-string v1, "efid"
    
    const/4 v5, 0x4

    aput-object v1, v0, v5

    const-string v1, "index"
    
    const/4 v7, 0x5

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    .line 64
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v6

    const-string v1, "number"

    aput-object v1, v0, v3

    const-string v1, "emails"

    aput-object v1, v0, v4

    const-string v1, "efid"
    
    const/4 v5, 0x5

    aput-object v1, v0, v5

    const-string v1, "index"
    
    const/4 v7, 0x6

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "anrs"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES_USIM:[Ljava/lang/String;

    .line 94
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    .line 98
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 99
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "fdn"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 100
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "sdn"
    
    const/4 v5, 0x3

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 101
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "efType"
    .parameter "name"
    .parameter "number"
    .parameter "emails"
    .parameter "pin2"

    .prologue
    .line 703
    const/4 v7, 0x0

    .line 711
    .local v7, success:Z
    :try_start_0
    const-string v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 713
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 714
    const-string v2, ""

    const-string v3, ""

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 723
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    return v7

    .line 719
    :catch_0
    move-exception v1

    goto :goto_0

    .line 717
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .parameter "efType"
    .parameter "name"
    .parameter "number"
    .parameter "emails"
    .parameter "anr"
    .parameter "pin2"

    .prologue
    .line 945
    const/4 v11, 0x0

    .line 953
    .local v11, success:Z
    :try_start_0
    const-string v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 955
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 958
    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x0

    const-string v5, ""

    move v1, p1

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearchForEmailAnr(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 968
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    return v11

    .line 964
    :catch_0
    move-exception v1

    goto :goto_0

    .line 962
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "efType"
    .parameter "name"
    .parameter "number"
    .parameter "emails"
    .parameter "pin2"

    .prologue
    .line 827
    const/4 v7, 0x0

    .line 830
    .local v7, success:Z
    :try_start_0   
    const-string v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 832
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 833
    const-string v4, ""

    const-string v5, ""

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 842
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    return v7

    .line 838
    :catch_0
    move-exception v1

    goto :goto_0

    .line 836
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .parameter "efType"
    .parameter "name"
    .parameter "number"
    .parameter "emails"
    .parameter "anr"
    .parameter "pin2"

    .prologue
    .line 1070
    const/4 v11, 0x0

    .line 1073
    .local v11, success:Z
    :try_start_0   
    const-string v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 1075
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 1077
    const-string v6, ""

    const-string v7, ""

    const/4 v8, 0x0

    const-string v9, ""

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v10, p6

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearchForEmailAnr(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 1087
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    return v11

    .line 1083
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1081
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private deleteIccRecordFromEfByIndex(IILjava/lang/String;)Z
    .locals 9
    .parameter "efType"
    .parameter "index"
    .parameter "pin2"

    .prologue
    .line 1096
    const/4 v8, 0x0

    .line 1100
    .local v8, success:Z
    :try_start_0
    const-string v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 1102
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 1104
    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x0

    const-string v5, ""

    move v1, p1

    move v6, p2

    move-object v7, p3

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfByIndexForEmailAnr(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 1116
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    return v8

    .line 1109
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1107
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private deleteIccRecordFromEfByIndex(II[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "efType"
    .parameter "index"
    .parameter "emails"
    .parameter "pin2"

    .prologue
    .line 803
    const/4 v6, 0x0

    .line 806
    .local v6, success:Z
    :try_start_0    
    const-string v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 808
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 809
    const-string v2, ""

    const-string v3, ""

    move v1, p1

    move v4, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 818
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    return v6

    .line 814
    :catch_0
    move-exception v1

    goto :goto_0

    .line 812
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private loadFromEf(I)Landroid/database/MatrixCursor;
    .locals 7
    .parameter "efType"

    .prologue
    .line 611
    const/4 v1, 0x0

    .line 613
    .local v1, adnRecords:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/AdnRecord;>;"
    :try_start_0
    const-string v5, "simphonebook"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v4

    .line 615
    .local v4, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v4, :cond_0

    .line 616
    invoke-interface {v4, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsInEf(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 624
    .end local v4           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 626
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 630
    .local v0, N:I
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-static {}, Lcom/android/internal/telephony/gsm/SIMRecords;->getEmailAnrSupport()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES_USIM:[Ljava/lang/String;

    :goto_1
    invoke-direct {v2, v5, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 634
    .local v2, cursor:Landroid/database/MatrixCursor;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v0, :cond_3

    .line 635
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/AdnRecord;

    invoke-virtual {p0, v5, v2, v3}, Lcom/android/internal/telephony/IccProvider;->loadRecord(Lcom/android/internal/telephony/AdnRecord;Landroid/database/MatrixCursor;I)V

    .line 634
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 630
    .end local v2           #cursor:Landroid/database/MatrixCursor;
    .end local v3           #i:I
    :cond_1
    sget-object v5, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    goto :goto_1

    .line 640
    .end local v0           #N:I
    :cond_2
    const-string v5, "IccProvider"

    const-string v6, "Cannot load ADN records"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-static {}, Lcom/android/internal/telephony/gsm/SIMRecords;->getEmailAnrSupport()Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES_USIM:[Ljava/lang/String;

    :goto_3
    invoke-direct {v2, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    :cond_3
    return-object v2

    :cond_4
    sget-object v5, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    goto :goto_3

    .line 620
    :catch_0
    move-exception v5

    goto :goto_0

    .line 618
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method private loadFromEf(ILcom/android/internal/telephony/AdnRecord;)Landroid/database/MatrixCursor;
    .locals 7
    .parameter "efType"
    .parameter "searchAdn"

    .prologue
    .line 652
    const/4 v1, 0x0

    .line 656
    .local v1, adnRecords:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/AdnRecord;>;"
    :try_start_0
    const-string v5, "simphonebook"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v4

    .line 658
    .local v4, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v4, :cond_0

    .line 659
    invoke-interface {v4, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsInEf(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 667
    .end local v4           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    if-eqz v1, :cond_4

    .line 669
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 673
    .local v0, N:I
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-static {}, Lcom/android/internal/telephony/gsm/SIMRecords;->getEmailAnrSupport()Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES_USIM:[Ljava/lang/String;

    :goto_1
    invoke-direct {v2, v5, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 677
    .local v2, cursor:Landroid/database/MatrixCursor;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v0, :cond_1

    .line 678
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/AdnRecord;

    invoke-virtual {p2, v5}, Lcom/android/internal/telephony/AdnRecord;->equalAdn(Lcom/android/internal/telephony/AdnRecord;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 679
    const-string v5, "IccProvider"

    const-string v6, "have one by efid and index"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/AdnRecord;

    invoke-virtual {p0, v5, v2, v3}, Lcom/android/internal/telephony/IccProvider;->loadRecord(Lcom/android/internal/telephony/AdnRecord;Landroid/database/MatrixCursor;I)V

    .line 691
    .end local v0           #N:I
    .end local v2           #cursor:Landroid/database/MatrixCursor;
    .end local v3           #i:I
    :cond_1
    :goto_3
    return-object v2

    .line 673
    .restart local v0       #N:I
    :cond_2
    sget-object v5, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    goto :goto_1

    .line 677
    .restart local v2       #cursor:Landroid/database/MatrixCursor;
    .restart local v3       #i:I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 688
    .end local v0           #N:I
    .end local v2           #cursor:Landroid/database/MatrixCursor;
    .end local v3           #i:I
    :cond_4
    const-string v5, "IccProvider"

    const-string v6, "Cannot load ADN records"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-static {}, Lcom/android/internal/telephony/gsm/SIMRecords;->getEmailAnrSupport()Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES_USIM:[Ljava/lang/String;

    :goto_4
    invoke-direct {v2, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    sget-object v5, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    goto :goto_4

    .line 663
    :catch_0
    move-exception v5

    goto :goto_0

    .line 661
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method private updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "efType"
    .parameter "oldName"
    .parameter "oldNumber"
    .parameter "newName"
    .parameter "newNumber"
    .parameter "pin2"

    .prologue
    .line 732
    const/4 v7, 0x0

    .line 735
    .local v7, success:Z
    :try_start_0
    const-string v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 737
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 738
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 747
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    return v7

    .line 743
    :catch_0
    move-exception v1

    goto :goto_0

    .line 741
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .parameter "efType"
    .parameter "oldName"
    .parameter "oldNumber"
    .parameter "oldEmailList"
    .parameter "oldAnr"
    .parameter "newName"
    .parameter "newNumber"
    .parameter "newEmailList"
    .parameter "newAnr"
    .parameter "pin2"

    .prologue
    .line 984
    const/4 v11, 0x0

    .line 987
    .local v11, success:Z
    :try_start_0
    const-string v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 989
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    .line 992
    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearchForEmailAnr(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 1003
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    return v11

    .line 999
    :catch_0
    move-exception v1

    goto :goto_0

    .line 997
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private updateIccRecordInEfByIndex(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "efType"
    .parameter "index"
    .parameter "newName"
    .parameter "newNumber"
    .parameter "pin2"

    .prologue
    .line 769
    const/4 v6, 0x0

    .line 772
    .local v6, success:Z
    :try_start_0
    const-string v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 774
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p3

    move-object v3, p4

    move v4, p2

    move-object v5, p5

    .line 775
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 784
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    return v6

    .line 780
    :catch_0
    move-exception v1

    goto :goto_0

    .line 778
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private updateIccRecordInEfByIndex(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 9
    .parameter "efType"
    .parameter "newName"
    .parameter "newNumber"
    .parameter "newEmailList"
    .parameter "newAnr"
    .parameter "index"
    .parameter "pin2"

    .prologue
    .line 1040
    const/4 v8, 0x0

    .line 1043
    .local v8, success:Z
    :try_start_0
    const-string v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 1045
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p7

    .line 1047
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfByIndexForEmailAnr(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 1057
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    return v8

    .line 1053
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1051
    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 27
    .parameter "url"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 329
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "delete  isCMCC "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/telephony/gsm/SIMRecords;->getEmailAnrSupport()Z

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 335
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v17
    
    .line 336
    .local v17, match:I
    packed-switch v17, :pswitch_data_0

    .line 346
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot insert into URL: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 338
    :pswitch_0
    const/16 v3, 0x6f3a
    
    move/from16 v26, v3

    .line 351
    .local v3, efType:I
    :goto_0
    const/4 v4, 0x0

    .line 352
    .local v4, tag:Ljava/lang/String;
    const/4 v5, 0x0

    .line 353
    .local v5, number:Ljava/lang/String;
    const/4 v6, 0x0

    .line 354
    .local v6, emails:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 356
    .local v7, pin2:Ljava/lang/String;
    const/16 v21, 0x0

    .line 357
    .local v21, sEfid:Ljava/lang/String;
    const/16 v22, 0x0

    .line 358
    .local v22, sIndex:Ljava/lang/String;
    const/4 v15, 0x0

    .line 359
    .local v15, index:I
    const/16 v23, 0x0

    .line 362
    .local v23, success:Z
    const/4 v13, 0x0

    .line 363
    .local v13, anr:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    .line 368
    const-string v2, "AND"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 369
    .local v24, tokens:[Ljava/lang/String;
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v18, v0

    .line 371
    .local v18, n:I
    :cond_0
    :goto_1
    add-int/lit8 v18, v18, -0x1

    if-ltz v18, :cond_9

    .line 372
    aget-object v20, v24, v18

    .line 375
    .local v20, param:Ljava/lang/String;
    const-string v2, "="

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 377
    .local v19, pair:[Ljava/lang/String;
    move-object/from16 v0, v19

    array-length v2, v0

    const/4 v8, 0x2

    if-eq v2, v8, :cond_1

    .line 378
    const-string v2, "IccProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "resolve: bad whereClause parameter: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 342
    .end local v3           #efType:I
    .end local v4           #tag:Ljava/lang/String;
    .end local v5           #number:Ljava/lang/String;
    .end local v6           #emails:[Ljava/lang/String;
    .end local v7           #pin2:Ljava/lang/String;
    .end local v13           #anr:Ljava/lang/String;
    .end local v15           #index:I
    .end local v18           #n:I
    .end local v19           #pair:[Ljava/lang/String;
    .end local v20           #param:Ljava/lang/String;
    .end local v21           #sEfid:Ljava/lang/String;
    .end local v22           #sIndex:Ljava/lang/String;
    .end local v23           #success:Z
    .end local v24           #tokens:[Ljava/lang/String;
    :pswitch_1
    const/16 v3, 0x6f3b
    
    move/from16 v26, v3

    .line 343
    .restart local v3       #efType:I
    goto :goto_0

    .line 382
    .restart local v4       #tag:Ljava/lang/String;
    .restart local v5       #number:Ljava/lang/String;
    .restart local v6       #emails:[Ljava/lang/String;
    .restart local v7       #pin2:Ljava/lang/String;
    .restart local v13       #anr:Ljava/lang/String;
    .restart local v15       #index:I
    .restart local v18       #n:I
    .restart local v19       #pair:[Ljava/lang/String;
    .restart local v20       #param:Ljava/lang/String;
    .restart local v21       #sEfid:Ljava/lang/String;
    .restart local v22       #sIndex:Ljava/lang/String;
    .restart local v23       #success:Z
    .restart local v24       #tokens:[Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    aget-object v2, v19, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    .line 383
    .local v16, key:Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v19, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    .line 385
    .local v25, val:Ljava/lang/String;
    const-string v2, "tag"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 386
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 387
    :cond_2
    const-string v2, "number"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 388
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 389
    :cond_3
    const-string v2, "emails"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 395
    invoke-static {}, Lcom/android/internal/telephony/gsm/SIMRecords;->getEmailAnrSupport()Z

    move-result v2

    if-nez v2, :cond_4

    .line 397
    const/4 v6, 0x0

    goto :goto_1

    .line 400
    :cond_4
    if-eqz v6, :cond_0

    .line 401
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v2

    goto/16 :goto_1

    .line 409
    :cond_5
    const-string v2, "pin2"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 410
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 412
    :cond_6
    const-string v2, "efid"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 413
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1

    .line 414
    :cond_7
    const-string v2, "index"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 415
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_1

    .line 418
    :cond_8
    invoke-static {}, Lcom/android/internal/telephony/gsm/SIMRecords;->getEmailAnrSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "anrs"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 420
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_1

    .line 433
    .end local v16           #key:Ljava/lang/String;
    .end local v19           #pair:[Ljava/lang/String;
    .end local v20           #param:Ljava/lang/String;
    .end local v25           #val:Ljava/lang/String;
    :cond_9
    const/16 v2, 0x6f3b

    if-ne v3, v2, :cond_a

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 434
    const/4 v2, 0x0

    .line 481
    :goto_2
    return v2

    .line 438
    :cond_a
    if-eqz v21, :cond_b

    const-string v2, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_b
    if-eqz v22, :cond_c

    const-string v2, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 444
    :cond_c
    invoke-static {}, Lcom/android/internal/telephony/gsm/SIMRecords;->getEmailAnrSupport()Z

    move-result v2

    if-nez v2, :cond_e
    
    move-object/from16 v2, p0
    
    .line 446
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/IccProvider;->deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v23

    .line 477
    :cond_d
    :goto_3
    if-nez v23, :cond_11

    .line 478
    const/4 v2, 0x0

    goto :goto_2

    :cond_e
    move-object/from16 v8, p0

    move v9, v3

    move-object v10, v4

    move-object v11, v5

    move-object v12, v6

    move-object v14, v7
    
    .line 448
    invoke-direct/range {v8 .. v14}, Lcom/android/internal/telephony/IccProvider;->deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v23

    goto :goto_3

    .line 453
    :cond_f  
    if-eqz v21, :cond_12
    
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3
    
    goto :goto_4
    
    :cond_12
    move/from16 v3, v26
        
    .line 454
    :goto_4
    if-eqz v22, :cond_13
    
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v15
    
    goto :goto_5
    
    :cond_13
    const/4 v0, 0x0
    
    move/from16 v15, v0
    
    :goto_5
    add-int/lit8 v15, v15, 0x1

    .line 455
    if-lez v15, :cond_d

    .line 460
    invoke-static {}, Lcom/android/internal/telephony/gsm/SIMRecords;->getEmailAnrSupport()Z

    move-result v2

    if-nez v2, :cond_10
    
    .line 462
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15, v6, v7}, Lcom/android/internal/telephony/IccProvider;->deleteIccRecordFromEfByIndex(II[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v23

    goto :goto_3

    .line 464
    :cond_10   
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15, v7}, Lcom/android/internal/telephony/IccProvider;->deleteIccRecordFromEfByIndex(IILjava/lang/String;)Z

    move-result v23

    goto :goto_3

    .line 481
    :cond_11
    const/4 v2, 0x1

    goto :goto_2

    .line 336
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 197
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 204
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/sim-contact"

    return-object v0

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 19
    .parameter "url"
    .parameter "initialValues"

    .prologue
    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "insert  isCMCC "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/telephony/gsm/SIMRecords;->getEmailAnrSupport()Z

    move-result v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 215
    const/4 v7, 0x0

    .line 219
    .local v7, pin2:Ljava/lang/String;
    sget-object v1, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v16

    .line 220
    .local v16, match:I
    packed-switch v16, :pswitch_data_0

    .line 231
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot insert into URL: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 222
    :pswitch_0
    const/16 v2, 0x6f3a

    .line 235
    .local v2, efType:I
    :goto_0
    const-string v1, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 237
    .local v3, tag:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 238
    const-string v3, ""

    .line 241
    :cond_0
    const-string v1, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 243
    .local v4, number:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 244
    const-string v4, ""

    .line 249
    :cond_1
    const/16 v18, 0x0

    .line 252
    .local v18, success:Z
    invoke-static {}, Lcom/android/internal/telephony/gsm/SIMRecords;->getEmailAnrSupport()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 255
    const-string v1, "emails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 256
    .local v15, mEmail:Ljava/lang/String;
    const/4 v5, 0x0

    .line 257
    .local v5, emails:[Ljava/lang/String;
    if-eqz v15, :cond_2

    .line 258
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    .line 259
    const/4 v1, 0x0

    aput-object v15, v5, v1

    .line 261
    :cond_2
    const-string v1, "anrs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, anrs:Ljava/lang/String;
    move-object/from16 v1, p0

    .line 266
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/IccProvider;->addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v18

    .line 273
    .end local v5           #emails:[Ljava/lang/String;
    .end local v6           #anrs:Ljava/lang/String;
    .end local v15           #mEmail:Ljava/lang/String;
    :goto_1
    if-nez v18, :cond_4

    .line 274
    const/16 v17, 0x0

    .line 307
    :goto_2
    return-object v17

    .line 226
    .end local v2           #efType:I
    .end local v3           #tag:Ljava/lang/String;
    .end local v4           #number:Ljava/lang/String;
    .end local v18           #success:Z
    :pswitch_1
    const/16 v2, 0x6f3b

    .line 227
    .restart local v2       #efType:I
    const-string v1, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 228
    goto :goto_0

    .line 269
    .restart local v3       #tag:Ljava/lang/String;
    .restart local v4       #number:Ljava/lang/String;
    .restart local v18       #success:Z
    :cond_3
    const/4 v12, 0x0

    move-object/from16 v8, p0

    move v9, v2

    move-object v10, v3

    move-object v11, v4

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/telephony/IccProvider;->addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v18

    goto :goto_1

    .line 277
    :cond_4
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v1, "content://icc/"

    invoke-direct {v14, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 278
    .local v14, buf:Ljava/lang/StringBuilder;
    packed-switch v16, :pswitch_data_1

    .line 294
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v8, Lcom/android/internal/telephony/AdnRecordCache;->s_efid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "/"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    sget v1, Lcom/android/internal/telephony/AdnRecordCache;->s_index:I
    
    add-int/lit8 v1, v1, -0x1
      
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 307
    .local v17, resultUri:Landroid/net/Uri;
    goto :goto_2

    .line 280
    .end local v17           #resultUri:Landroid/net/Uri;
    :pswitch_2
    const-string v1, "adn/"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 284
    :pswitch_3
    const-string v1, "fdn/"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 220
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 278
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected loadRecord(Lcom/android/internal/telephony/AdnRecord;Landroid/database/MatrixCursor;I)V
    .locals 15
    .parameter "record"
    .parameter "cursor"
    .parameter "id"

    .prologue
    .line 853
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_5

    .line 858
    invoke-static {}, Lcom/android/internal/telephony/gsm/SIMRecords;->getEmailAnrSupport()Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v13, 0x7

    :goto_0
    new-array v4, v13, [Ljava/lang/Object;

    .line 862
    .local v4, contact:[Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v1

    .line 863
    .local v1, alphaTag:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v12

    .line 865
    .local v12, number:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->getEfid()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 866
    .local v5, efid:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->getRecordNumber()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 870
    .local v10, index:Ljava/lang/String;
    const/4 v13, 0x0

    aput-object v1, v4, v13

    .line 871
    const/4 v13, 0x1

    aput-object v12, v4, v13

    .line 873
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v8

    .line 874
    .local v8, emails:[Ljava/lang/String;
    if-eqz v8, :cond_4

    .line 875
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 876
    .local v7, emailString:Ljava/lang/StringBuilder;
    move-object v3, v8

    .local v3, arr$:[Ljava/lang/String;
    array-length v11, v3

    .local v11, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_1
    if-ge v9, v11, :cond_3

    aget-object v6, v3, v9

    .line 881
    .local v6, email:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/gsm/SIMRecords;->getEmailAnrSupport()Z

    move-result v13

    if-eqz v13, :cond_0

    if-nez v6, :cond_0

    .line 883
    const-string v6, ""

    .line 889
    :cond_0
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    invoke-static {}, Lcom/android/internal/telephony/gsm/SIMRecords;->getEmailAnrSupport()Z

    move-result v13

    if-nez v13, :cond_1

    .line 895
    const-string v13, ","

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 858
    .end local v1           #alphaTag:Ljava/lang/String;
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v4           #contact:[Ljava/lang/Object;
    .end local v5           #efid:Ljava/lang/String;
    .end local v6           #email:Ljava/lang/String;
    .end local v7           #emailString:Ljava/lang/StringBuilder;
    .end local v8           #emails:[Ljava/lang/String;
    .end local v9           #i$:I
    .end local v10           #index:Ljava/lang/String;
    .end local v11           #len$:I
    .end local v12           #number:Ljava/lang/String;
    :cond_2
    const/4 v13, 0x6

    goto :goto_0

    .line 900
    .restart local v1       #alphaTag:Ljava/lang/String;
    .restart local v3       #arr$:[Ljava/lang/String;
    .restart local v4       #contact:[Ljava/lang/Object;
    .restart local v5       #efid:Ljava/lang/String;
    .restart local v7       #emailString:Ljava/lang/StringBuilder;
    .restart local v8       #emails:[Ljava/lang/String;
    .restart local v9       #i$:I
    .restart local v10       #index:Ljava/lang/String;
    .restart local v11       #len$:I
    .restart local v12       #number:Ljava/lang/String;
    :cond_3
    const/4 v13, 0x2

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v4, v13

    .line 905
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v7           #emailString:Ljava/lang/StringBuilder;
    .end local v9           #i$:I
    .end local v11           #len$:I
    :cond_4
    const/4 v13, 0x4

    aput-object v5, v4, v13

    .line 906
    const/4 v13, 0x5

    aput-object v10, v4, v13

    .line 909
    invoke-static {}, Lcom/android/internal/telephony/gsm/SIMRecords;->getEmailAnrSupport()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 911
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v2

    .line 913
    .local v2, anrs:Ljava/lang/String;
    const/4 v13, 0x4

    aput-object v2, v4, v13

    .line 914
    const/4 v13, 0x3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v4, v13

    .line 923
    .end local v2           #anrs:Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 925
    .end local v1           #alphaTag:Ljava/lang/String;
    .end local v4           #contact:[Ljava/lang/Object;
    .end local v5           #efid:Ljava/lang/String;
    .end local v8           #emails:[Ljava/lang/String;
    .end local v10           #index:Ljava/lang/String;
    .end local v12           #number:Ljava/lang/String;
    :cond_5
    return-void

    .line 916
    .restart local v1       #alphaTag:Ljava/lang/String;
    .restart local v4       #contact:[Ljava/lang/Object;
    .restart local v5       #efid:Ljava/lang/String;
    .restart local v8       #emails:[Ljava/lang/String;
    .restart local v10       #index:Ljava/lang/String;
    .restart local v12       #number:Ljava/lang/String;
    :cond_6
    const/4 v13, 0x3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v4, v13

    goto :goto_2
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    const-string v0, "IccProvider"
         
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
        
    .line 933
    return-void
.end method

.method protected normalizeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "inVal"

    .prologue
    const/16 v3, 0x27

    .line 311
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 313
    .local v0, len:I
    if-nez v0, :cond_0

    .line 323
    .end local p1
    :goto_0
    return-object p1

    .line 317
    .restart local p1
    :cond_0
    move-object v1, p1

    .line 319
    .local v1, retVal:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    .line 320
    const/4 v2, 0x1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object p1, v1

    .line 323
    goto :goto_0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 21
    .parameter "url"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    .line 114
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "query  isCMCC "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Lcom/android/internal/telephony/gsm/SIMRecords;->getEmailAnrSupport()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 120
    const/4 v5, 0x0

    .line 121
    .local v5, isQuerybyindex:Z
    new-instance v14, Lcom/android/internal/telephony/AdnRecord;

    const-string v18, ""

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v14, v0, v1}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .local v14, searchAdn:Lcom/android/internal/telephony/AdnRecord;
    const/4 v2, 0x0

    .line 123
    .local v2, efid:I
    const/4 v4, 0x0

    .line 124
    .local v4, index:I
    if-eqz p3, :cond_9

    .line 125
    const-string v15, ""

    .line 126
    .local v15, tag:Ljava/lang/String;
    const-string v8, ""

    .line 127
    .local v8, number:Ljava/lang/String;
    const/4 v3, 0x0

    .line 128
    .local v3, emails:[Ljava/lang/String;
    const/4 v11, 0x0

    .line 129
    .local v11, pin2:Ljava/lang/String;
    const/4 v12, 0x0

    .line 130
    .local v12, sEfid:Ljava/lang/String;
    const/4 v13, 0x0

    .line 132
    .local v13, sIndex:Ljava/lang/String;
    const-string v18, "AND"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 133
    .local v16, tokens:[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v7, v0

    .line 135
    .local v7, n:I
    :cond_0
    :goto_0
    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_7

    .line 136
    aget-object v10, v16, v7

    .line 139
    .local v10, param:Ljava/lang/String;
    const-string v18, "="

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 141
    .local v9, pair:[Ljava/lang/String;
    array-length v0, v9

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 142
    const-string v18, "IccProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "resolve: bad whereClause parameter: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 146
    :cond_1
    const/16 v18, 0x0

    aget-object v18, v9, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 147
    .local v6, key:Ljava/lang/String;
    const/16 v18, 0x1

    aget-object v18, v9, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    .line 149
    .local v17, val:Ljava/lang/String;
    const-string v18, "tag"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 150
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto :goto_0

    .line 151
    :cond_2
    const-string v18, "number"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 152
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 153
    :cond_3
    const-string v18, "emails"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 155
    const/4 v3, 0x0

    goto :goto_0

    .line 156
    :cond_4
    const-string v18, "pin2"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 157
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    .line 158
    :cond_5
    const-string v18, "efid"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 159
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 160
    :cond_6
    const-string v18, "index"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 161
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0

    .line 165
    .end local v6           #key:Ljava/lang/String;
    .end local v9           #pair:[Ljava/lang/String;
    .end local v10           #param:Ljava/lang/String;
    .end local v17           #val:Ljava/lang/String;
    :cond_7
    if-eqz v12, :cond_8

    if-eqz v13, :cond_8

    .line 166
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 167
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 168
    const/4 v5, 0x1

    .line 170
    :cond_8
    new-instance v14, Lcom/android/internal/telephony/AdnRecord;

    .end local v14           #searchAdn:Lcom/android/internal/telephony/AdnRecord;
    invoke-direct {v14, v2, v4, v15, v8}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 171
    .restart local v14       #searchAdn:Lcom/android/internal/telephony/AdnRecord;
    const-string v18, "SimProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "query tag="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ",number = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " ,efid = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " ,index = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .end local v3           #emails:[Ljava/lang/String;
    .end local v7           #n:I
    .end local v8           #number:Ljava/lang/String;
    .end local v11           #pin2:Ljava/lang/String;
    .end local v12           #sEfid:Ljava/lang/String;
    .end local v13           #sIndex:Ljava/lang/String;
    .end local v15           #tag:Ljava/lang/String;
    .end local v16           #tokens:[Ljava/lang/String;
    :cond_9
    sget-object v18, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v18

    packed-switch v18, :pswitch_data_0

    .line 190
    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unknown URL "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 178
    :pswitch_0
    if-eqz v5, :cond_a

    .line 179
    const/16 v18, 0x6f3a

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v14}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(ILcom/android/internal/telephony/AdnRecord;)Landroid/database/MatrixCursor;

    move-result-object v18

    .line 187
    :goto_1
    return-object v18

    .line 181
    :cond_a
    const/16 v18, 0x6f3a

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(I)Landroid/database/MatrixCursor;

    move-result-object v18

    goto :goto_1

    .line 184
    :pswitch_1
    const/16 v18, 0x6f3b

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(I)Landroid/database/MatrixCursor;

    move-result-object v18

    goto :goto_1

    .line 187
    :pswitch_2
    const/16 v18, 0x6f49

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(I)Landroid/database/MatrixCursor;

    move-result-object v18

    goto :goto_1

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 37
    .parameter "url"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 487
    const/4 v7, 0x0

    .line 491
    .local v7, pin2:Ljava/lang/String;
    sget-object v1, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v31

    .line 492
    .local v31, match:I
    packed-switch v31, :pswitch_data_0

    .line 503
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot insert into URL: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 494
    :pswitch_0
    const/16 v2, 0x6f3a
    
    move/from16 v36, v2

    .line 507
    .local v2, efType:I
    :goto_0
    const-string v1, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 508
    .local v3, tag:Ljava/lang/String;
    const-string v1, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 509
    .local v4, number:Ljava/lang/String;
    const/4 v12, 0x0

    .line 510
    .local v12, emails:[Ljava/lang/String;
    const-string v1, "newTag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 512
    .local v5, newTag:Ljava/lang/String;
    if-nez v5, :cond_0

    .line 513
    const-string v5, ""

    .line 516
    :cond_0
    const-string v1, "newNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 518
    .local v6, newNumber:Ljava/lang/String;
    if-nez v6, :cond_1

    .line 519
    const-string v6, ""

    .line 522
    :cond_1
    const/16 v33, 0x0

    .line 524
    .local v33, newEmails:[Ljava/lang/String;
    const-string v1, "efid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 525
    .local v29, Efid:Ljava/lang/String;
    const-string v1, "index"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 526
    .local v34, sIndex:Ljava/lang/String;
    const/16 v20, 0x0

    .line 527
    .local v20, index:I
    const/16 v35, 0x0

    .line 530
    .local v35, success:Z
    const/4 v13, 0x0

    .line 532
    .local v13, anr:Ljava/lang/String;
    const/16 v30, 0x0

    .line 534
    .local v30, mEmail:Ljava/lang/String;
    const/16 v16, 0x0

    .line 535
    .local v16, newemails:[Ljava/lang/String;
    const/16 v32, 0x0

    .line 537
    .local v32, nEmail:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v12, v1, [Ljava/lang/String;

    .line 538
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 539
    const/16 v17, 0x0

    .line 542
    .local v17, newanr:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/gsm/SIMRecords;->getEmailAnrSupport()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 544
    const-string v1, "anrs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 545
    const-string v1, "newEmails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 546
    const-string v1, "emails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 547
    const-string v1, "newAnrs"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 551
    :cond_2
    if-nez v30, :cond_3

    .line 552
    const-string v30, ""

    .line 555
    :cond_3
    const/4 v1, 0x0

    aput-object v30, v12, v1

    .line 556
    const/4 v1, 0x0

    aput-object v32, v16, v1

    .line 561
    if-eqz v29, :cond_4

    const-string v1, ""

    move-object/from16 v0, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_4
    if-eqz v34, :cond_5

    const-string v1, ""

    move-object/from16 v0, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 567
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/gsm/SIMRecords;->getEmailAnrSupport()Z

    move-result v1

    if-nez v1, :cond_7

    move-object/from16 v1, p0

    .line 569
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/IccProvider;->updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v35

    .line 601
    :cond_6
    :goto_1
    if-nez v35, :cond_a

    .line 602
    const/4 v1, 0x0

    .line 605
    :goto_2
    return v1

    .line 498
    .end local v2           #efType:I
    .end local v3           #tag:Ljava/lang/String;
    .end local v4           #number:Ljava/lang/String;
    .end local v5           #newTag:Ljava/lang/String;
    .end local v6           #newNumber:Ljava/lang/String;
    .end local v12           #emails:[Ljava/lang/String;
    .end local v13           #anr:Ljava/lang/String;
    .end local v16           #newemails:[Ljava/lang/String;
    .end local v17           #newanr:Ljava/lang/String;
    .end local v20           #index:I
    .end local v29           #Efid:Ljava/lang/String;
    .end local v30           #mEmail:Ljava/lang/String;
    .end local v32           #nEmail:Ljava/lang/String;
    .end local v33           #newEmails:[Ljava/lang/String;
    .end local v34           #sIndex:Ljava/lang/String;
    .end local v35           #success:Z
    :pswitch_1
    const/16 v2, 0x6f3b
    
    move/from16 v36, v2

    .line 499
    .restart local v2       #efType:I
    const-string v1, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 500
    goto/16 :goto_0

    .restart local v3       #tag:Ljava/lang/String;
    .restart local v4       #number:Ljava/lang/String;
    .restart local v5       #newTag:Ljava/lang/String;
    .restart local v6       #newNumber:Ljava/lang/String;
    .restart local v12       #emails:[Ljava/lang/String;
    .restart local v13       #anr:Ljava/lang/String;
    .restart local v16       #newemails:[Ljava/lang/String;
    .restart local v17       #newanr:Ljava/lang/String;
    .restart local v20       #index:I
    .restart local v29       #Efid:Ljava/lang/String;
    .restart local v30       #mEmail:Ljava/lang/String;
    .restart local v32       #nEmail:Ljava/lang/String;
    .restart local v33       #newEmails:[Ljava/lang/String;
    .restart local v34       #sIndex:Ljava/lang/String;
    .restart local v35       #success:Z
    :cond_7
    move-object/from16 v8, p0

    move v9, v2

    move-object v10, v3

    move-object v11, v4

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v18, v7

    .line 571
    invoke-direct/range {v8 .. v18}, Lcom/android/internal/telephony/IccProvider;->updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v35

    goto :goto_1

    .line 577
    :cond_8
    if-eqz v29, :cond_b
    
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2
    
    goto :goto_3
    
    :cond_b
    move/from16 v2, v36

    .line 578
    :goto_3
    if-nez v34, :cond_c
    
    const/4 v0, 0x0
    
    move/from16 v20, v0
    
    goto :goto_4
      
    :cond_c
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v20
    
    .line 579
    :goto_4
    add-int/lit8 v20, v20, 0x1
    
    if-lez v20, :cond_6

    .line 584
    invoke-static {}, Lcom/android/internal/telephony/gsm/SIMRecords;->getEmailAnrSupport()Z

    move-result v1

    if-nez v1, :cond_9

    move-object/from16 v18, p0

    move/from16 v19, v2

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    .line 586
    invoke-direct/range {v18 .. v23}, Lcom/android/internal/telephony/IccProvider;->updateIccRecordInEfByIndex(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v35

    goto :goto_1

    :cond_9
    move-object/from16 v21, p0

    move/from16 v22, v2

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v25, v16

    move-object/from16 v26, v17

    move/from16 v27, v20
    
    move-object/from16 v28, v7

    .line 588
    invoke-direct/range {v21 .. v28}, Lcom/android/internal/telephony/IccProvider;->updateIccRecordInEfByIndex(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v35

    goto :goto_1

    .line 605
    :cond_a
    const/4 v1, 0x1

    goto :goto_2

    .line 492
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
