.class public Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
.super Landroid/os/Handler;
.source "UsimPhoneBookManager.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;,
        Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_AAS_LOAD_DONE:I = 0x7

.field private static final EVENT_ADN_RECORD_COUNT:I = 0x6

.field private static final EVENT_ANR_LOAD_DONE:I = 0xb

.field private static final EVENT_EMAIL_LOAD_DONE:I = 0x4

.field private static final EVENT_GAS_LOAD_DONE:I = 0xa

.field protected static final EVENT_GET_SIZE_DONE:I = 0x5

.field private static final EVENT_GRP_LOAD_DONE:I = 0x9

.field private static final EVENT_IAP_LOAD_DONE:I = 0x3

.field private static final EVENT_PBR_LOAD_DONE:I = 0x1

.field private static final EVENT_SNE_LOAD_DONE:I = 0x8

.field private static final EVENT_USIM_ADN_LOAD_DONE:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "GSM"

.field public static final USIM_EFAAS_TAG:I = 0xc7

.field public static final USIM_EFADN_TAG:I = 0xc0

.field public static final USIM_EFANR_TAG:I = 0xc4

.field public static final USIM_EFCCP1_TAG:I = 0xcb

.field public static final USIM_EFEMAIL_TAG:I = 0xca

.field public static final USIM_EFEXT1_TAG:I = 0xc2

.field public static final USIM_EFGRP_TAG:I = 0xc6

.field public static final USIM_EFGSD_TAG:I = 0xc8

.field public static final USIM_EFIAP_TAG:I = 0xc1

.field public static final USIM_EFPBC_TAG:I = 0xc5

.field public static final USIM_EFSNE_TAG:I = 0xc3

.field public static final USIM_EFUID_TAG:I = 0xc9

.field public static final USIM_SUBJCET_ANR:I = 0x1

.field public static final USIM_SUBJCET_EMAIL:I = 0x0

.field public static final USIM_TYPE1_TAG:I = 0xa8

.field public static final USIM_TYPE2_TAG:I = 0xa9

.field public static final USIM_TYPE3_TAG:I = 0xaa


# instance fields
.field public ishaveAnr:Z

.field public ishaveEmail:Z

.field private mAdnCache:Lcom/android/internal/telephony/AdnRecordCache;

.field private mAdnRecordLog:Z

.field public mAdnRecordSizeArray:[I

.field private mAnrFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mAnrInfoFromPBR:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;",
            ">;"
        }
    .end annotation
.end field

.field private mAnrNum:I

.field private mAnrPresentInIap:Z

.field private mAnrRecordSizeArray:[I

.field private mCurAnrRecordsSize:I

.field private mCurEmailRecordsSize:I

.field private mDoneAdnCount:I

.field private mEmailFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mEmailInfoFromPBR:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;",
            ">;"
        }
    .end annotation
.end field

.field private mEmailPresentInIap:Z

.field private mEmailRecordSizeArray:[I

.field private mEmailTagNumberInIap:I

.field private mEmailsForAdnRec:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFh:Lcom/android/internal/telephony/IccFileHandler;

.field private mIapFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mIapFileRecordArray:[Ljava/lang/Object;

.field private mIapRecordSizeArray:[I

.field private mIsPbrPresent:Ljava/lang/Boolean;

.field private mLock:Ljava/lang/Object;

.field public mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

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

.field private mRefreshCache:Z

.field private mTempAnrFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field protected mTotalSize:[I

.field notAnrInPbrItem:Z

.field protected recordSize:[I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/IccFileHandler;)V
    .locals 4
    .parameter "fh"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 188
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    .line 76
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    .line 77
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    .line 81
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 83
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordLog:Z

    .line 116
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mDoneAdnCount:I

    .line 123
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->notAnrInPbrItem:Z

    .line 128
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurEmailRecordsSize:I

    .line 131
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailInfoFromPBR:Ljava/util/LinkedList;

    .line 137
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurAnrRecordsSize:I

    .line 139
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrNum:I

    .line 141
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrInfoFromPBR:Ljava/util/LinkedList;

    .line 142
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInIap:Z

    .line 144
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mTotalSize:[I

    .line 145
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->recordSize:[I

    .line 189
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 191
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 196
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 197
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/AdnRecordCache;)V
    .locals 4
    .parameter "fh"
    .parameter "cache"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 169
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    .line 76
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    .line 77
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    .line 81
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 83
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordLog:Z

    .line 116
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mDoneAdnCount:I

    .line 123
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->notAnrInPbrItem:Z

    .line 128
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurEmailRecordsSize:I

    .line 131
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailInfoFromPBR:Ljava/util/LinkedList;

    .line 137
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurAnrRecordsSize:I

    .line 139
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrNum:I

    .line 141
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrInfoFromPBR:Ljava/util/LinkedList;

    .line 142
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInIap:Z

    .line 144
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mTotalSize:[I

    .line 145
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->recordSize:[I

    .line 170
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 172
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 175
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 176
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/AdnRecordCache;

    .line 179
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->ishaveEmail:Z

    .line 180
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->ishaveAnr:Z

    .line 181
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mTotalSize:[I

    .line 182
    invoke-virtual {p2}, Lcom/android/internal/telephony/AdnRecordCache;->getLock()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    .line 184
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrNum:I

    return p1
.end method

.method static synthetic access$008(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrNum:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrInfoFromPBR:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailInfoFromPBR:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    return p1
.end method

.method static synthetic access$702(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInIap:Z

    return p1
.end method

.method private createPbrFile(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 774
    .local p1, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    if-nez p1, :cond_0

    .line 775
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 776
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 780
    :goto_0
    return-void

    .line 779
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;-><init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    goto :goto_0
.end method

.method private getSubjectA9UsedCount(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;)I
    .locals 8
    .parameter "subject"

    .prologue
    const/4 v5, 0x0

    .line 2198
    const/4 v4, 0x0

    .line 2199
    .local v4, usedCount:I
    const/4 v0, 0x0

    .line 2201
    .local v0, a9FileCount:I
    const-string v6, "getSubjectA9UsedCount(): enter."

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2203
    if-eqz p1, :cond_0

    iget v6, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->type:I

    const/16 v7, 0xa9

    if-eq v6, v7, :cond_1

    .line 2230
    :cond_0
    :goto_0
    return v5

    .line 2208
    :cond_1
    iget-object v6, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->recordNumInIap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v0

    .line 2210
    if-eqz v0, :cond_0

    .line 2215
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 2217
    iget-object v5, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->usedSet:[Ljava/lang/Object;

    aget-object v3, v5, v1

    check-cast v3, Ljava/util/Set;

    .line 2219
    .local v3, setTmp:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, j:I
    :goto_2
    const/16 v5, 0xff

    if-ge v2, v5, :cond_3

    .line 2221
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2223
    add-int/lit8 v4, v4, 0x1

    .line 2219
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2215
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2228
    .end local v2           #j:I
    .end local v3           #setTmp:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSubjectA9UsedCount(): usedCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move v5, v4

    .line 2230
    goto :goto_0
.end method

.method private getSubjectIndex(II)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;
    .locals 3
    .parameter "type"
    .parameter "num"

    .prologue
    .line 1022
    const/4 v1, 0x0

    .line 1023
    .local v1, lst:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;>;"
    const/4 v0, 0x0

    .line 1024
    .local v0, index:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;
    packed-switch p1, :pswitch_data_0

    .line 1039
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1040
    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #index:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;
    check-cast v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;

    .restart local v0       #index:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;
    move-object v2, v0

    .line 1045
    :goto_1
    return-object v2

    .line 1028
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailInfoFromPBR:Ljava/util/LinkedList;

    .line 1029
    goto :goto_0

    .line 1033
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrInfoFromPBR:Ljava/util/LinkedList;

    .line 1034
    goto :goto_0

    .line 1045
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 1024
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getType1Anr(ILcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;I)Ljava/lang/String;
    .locals 9
    .parameter "num"
    .parameter "anrInfo"
    .parameter "adnNum"

    .prologue
    const/4 v8, 0x2

    .line 1769
    const/4 v4, 0x0

    .line 1770
    .local v4, efid:I
    const-string v0, ""

    .line 1777
    .local v0, anr:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getType1Anr, num "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "adnNum "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1778
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    iget-object v6, p2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    array-length v6, v6

    if-ge v5, v6, :cond_3

    .line 1780
    iget-object v6, p2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v4, v6, v5

    .line 1781
    iget-object v6, p2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->record:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1783
    .local v1, anrFileRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    if-nez v1, :cond_0

    .line 1778
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1788
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getType1Anr, size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1790
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge p3, v6, :cond_1

    .line 1792
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 1793
    .local v3, anrRec:[B
    aget-byte v6, v3, v8

    and-int/lit16 v6, v6, 0xff

    invoke-static {v3, v8, v6}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 1800
    .end local v3           #anrRec:[B
    .local v2, anrI:Ljava/lang/String;
    :goto_2
    if-nez v5, :cond_2

    .line 1802
    move-object v0, v2

    goto :goto_1

    .line 1796
    .end local v2           #anrI:Ljava/lang/String;
    :cond_1
    const-string v2, ""

    .restart local v2       #anrI:Ljava/lang/String;
    goto :goto_2

    .line 1805
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1809
    .end local v1           #anrFileRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    .end local v2           #anrI:Ljava/lang/String;
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getType1Anr anr:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1810
    return-object v0
.end method

.method private getType1Email(ILcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;I)[Ljava/lang/String;
    .locals 6
    .parameter "num"
    .parameter "emailInfo"
    .parameter "emailNum"

    .prologue
    const/4 v5, 0x0

    .line 1740
    const/4 v0, 0x0

    .line 1741
    .local v0, efid:I
    iget-object v3, p2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    array-length v3, v3

    new-array v1, v3, [Ljava/lang/String;

    .line 1743
    .local v1, emails:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 1745
    iget-object v3, p2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v0, v3, v2

    .line 1746
    iget-object v3, p2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->record:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    .line 1748
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 1743
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1753
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1754
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getType1Email,emails[0] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1756
    :cond_1
    aget-object v3, v1, v5

    if-eqz v3, :cond_2

    aget-object v3, v1, v5

    const-string v4, ""

    if-ne v3, v4, :cond_3

    .line 1758
    :cond_2
    const-string v3, "getType1Email,emails[0]==null"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1759
    const/4 v1, 0x0

    .line 1761
    .end local v1           #emails:[Ljava/lang/String;
    :cond_3
    return-object v1
.end method

.method private getType2Anr(ILcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;[BI)Ljava/lang/String;
    .locals 11
    .parameter "num"
    .parameter "anrInfo"
    .parameter "record"
    .parameter "adnNum"

    .prologue
    .line 1674
    const/4 v5, 0x0

    .line 1675
    .local v5, efid:I
    const-string v0, ""

    .line 1681
    .local v0, anr:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " getType2Anr  >> anrInfo.recordNumInIap.size() "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->recordNumInIap:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "adnNum  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1683
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    iget-object v9, p2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->recordNumInIap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    if-ge v6, v9, :cond_5

    .line 1685
    iget-object v9, p2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v5, v9, v6

    .line 1686
    iget-object v9, p2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->recordNumInIap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1688
    .local v4, anrTagNumberInIap:I
    iget-object v9, p2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->record:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1690
    .local v1, anrFileRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    if-nez v1, :cond_0

    .line 1683
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1695
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " getType2Anr anrTagNumberInIap"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1697
    aget-byte v9, p3, v4

    and-int/lit16 v7, v9, 0xff

    .line 1698
    .local v7, recNum:I
    const/16 v9, 0xff

    if-ne v7, v9, :cond_1

    const/4 v7, -0x1

    .line 1699
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " getType2Anr iap recNum == "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1701
    const/4 v9, -0x1

    if-eq v7, v9, :cond_3

    .line 1703
    add-int/lit8 v9, v7, -0x1

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 1704
    .local v3, anrRec:[B
    const/4 v9, 0x2

    const/4 v10, 0x2

    aget-byte v10, v3, v10

    and-int/lit16 v10, v10, 0xff

    invoke-static {v3, v9, v10}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 1706
    .local v2, anrI:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getAnrInIap anr:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1709
    if-nez v6, :cond_2

    .line 1711
    move-object v0, v2

    .line 1717
    :goto_2
    iget-object v9, p2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->usedSet:[Ljava/lang/Object;

    aget-object v8, v9, v6

    check-cast v8, Ljava/util/Set;

    .line 1718
    .local v8, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1719
    iget-object v9, p2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->usedSet:[Ljava/lang/Object;

    aput-object v8, v9, v6

    .line 1720
    const/4 v9, 0x1

    invoke-direct {p0, v9, p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->setSubjectIndex(IILcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;)V

    goto :goto_1

    .line 1714
    .end local v8           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1723
    .end local v2           #anrI:Ljava/lang/String;
    .end local v3           #anrRec:[B
    :cond_3
    if-eqz v6, :cond_4

    .line 1725
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1727
    :cond_4
    const/4 v9, -0x1

    invoke-virtual {p0, p1, p4, v9, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->setIapFileRecord(IIBI)V

    goto/16 :goto_1

    .line 1731
    .end local v1           #anrFileRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    .end local v4           #anrTagNumberInIap:I
    .end local v7           #recNum:I
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getType2Anr  >>>>>>>>>>>> anr "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1732
    return-object v0
.end method

.method private getType2Email(ILcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;[BI)[Ljava/lang/String;
    .locals 9
    .parameter "num"
    .parameter "emailInfo"
    .parameter "record"
    .parameter "emailNum"

    .prologue
    const/4 v8, 0x0

    const/4 v6, -0x1

    .line 1596
    const/4 v0, 0x0

    .line 1597
    .local v0, efid:I
    iget-object v5, p2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->recordNumInIap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    new-array v1, v5, [Ljava/lang/String;

    .line 1599
    .local v1, emails:[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " getType2Email >>  emailInfo.recordNumInIap.size() "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->recordNumInIap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "num = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " emailNum "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1601
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v5, p2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->recordNumInIap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 1603
    iget-object v5, p2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v0, v5, v2

    .line 1606
    iget-object v5, p2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->recordNumInIap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    .line 1608
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " getType2Email mEmailTagNumberInIap "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1610
    iget-object v5, p2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->record:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    .line 1612
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-nez v5, :cond_0

    .line 1601
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1617
    :cond_0
    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v5, p3, v5

    and-int/lit16 v3, v5, 0xff

    .line 1619
    .local v3, recNum:I
    const/16 v5, 0xff

    if-ne v3, v5, :cond_1

    move v3, v6

    .line 1620
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getType2Email  iap recNum == "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1622
    if-eq v3, v6, :cond_2

    .line 1625
    add-int/lit8 v5, v3, -0x1

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    .line 1626
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getType2Email,emails[0] "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v7, v1, v2

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1630
    :cond_2
    iget-object v5, p2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->usedSet:[Ljava/lang/Object;

    aget-object v4, v5, v2

    check-cast v4, Ljava/util/Set;

    .line 1632
    .local v4, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1633
    iget-object v5, p2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->usedSet:[Ljava/lang/Object;

    aput-object v4, v5, v2

    .line 1634
    invoke-direct {p0, v8, p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->setSubjectIndex(IILcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;)V

    goto :goto_1

    .line 1638
    .end local v3           #recNum:I
    .end local v4           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_3
    aget-object v5, v1, v8

    if-eqz v5, :cond_4

    aget-object v5, v1, v8

    const-string v7, ""

    if-ne v5, v7, :cond_5

    .line 1640
    :cond_4
    const-string v5, "getType2Email,emails[0]==null"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1641
    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    invoke-virtual {p0, p1, p4, v6, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->setIapFileRecord(IIBI)V

    .line 1642
    const/4 v1, 0x0

    .line 1645
    .end local v1           #emails:[Ljava/lang/String;
    :cond_5
    return-object v1
.end method

.method private handleReadFileResult(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;)V
    .locals 5
    .parameter "records"

    .prologue
    .line 1472
    const-string v3, "handleReadFileResult  "

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1474
    const/4 v1, 0x0

    .line 1475
    .local v1, i:I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1477
    .local v0, efs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    if-nez v3, :cond_1

    .line 1478
    :cond_0
    const-string v3, "handleReadFileResult records == null ||records.efids == null "

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1504
    :goto_0
    return-void

    .line 1482
    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 1484
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v3, v3, v1

    if-eqz v3, :cond_3

    .line 1486
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1482
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1489
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleReadFileResult err efid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1490
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->recordNumInIap:Ljava/util/Map;

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->recordNumInIap:Ljava/util/Map;

    iget-object v4, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1492
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->recordNumInIap:Ljava/util/Map;

    iget-object v4, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1497
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleReadFileResult  efs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1498
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v2, v3, [I

    .line 1499
    .local v2, validEf:[I
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 1501
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    .line 1499
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1503
    :cond_5
    iput-object v2, p1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    goto/16 :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 2734
    const-string v0, "GSM"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2735
    return-void
.end method

.method private readAdnFileAndWait(I)V
    .locals 6
    .parameter "recNum"

    .prologue
    const/16 v5, 0xc2

    .line 724
    invoke-static {}, Lcom/android/internal/telephony/gsm/SIMRecords;->getEmailAnrSupport()Z

    move-result v3

    if-nez v3, :cond_2

    .line 726
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v3, :cond_1

    .line 728
    const-string v3, "GSM"

    const-string v4, "mPbrFile is null in readAdnFileAndWait"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :cond_0
    :goto_0
    return-void

    .line 731
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v3, :cond_4

    .line 733
    const-string v3, "GSM"

    const-string v4, "mPbrFile.mFileIds is null in readAdnFileAndWait"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 739
    :cond_2
    const-string v3, "UsimPhoneBookManager"

    const-string v4, "readAdnFileAndWait"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 741
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v3, :cond_3

    .line 742
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait()V

    .line 744
    :cond_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 745
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v3, :cond_4

    .line 747
    const-string v3, "GSM"

    const-string v4, "Error: Pbr file is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 744
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 754
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 755
    .local v2, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 758
    const/4 v1, 0x0

    .line 760
    .local v1, extEf:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 761
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 764
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/AdnRecordCache;

    const/16 v3, 0xc0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v3, v1, v5}, Lcom/android/internal/telephony/AdnRecordCache;->requestLoadAllAdnLike(IILandroid/os/Message;)V

    .line 767
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 768
    :catch_0
    move-exception v0

    .line 769
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "GSM"

    const-string v4, "Interrupted Exception in readAdnFileAndWait"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private readAdnFileSizeAndWait(I)[I
    .locals 6
    .parameter "recNum"

    .prologue
    const/4 v2, 0x0

    .line 1422
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1423
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v4, :cond_0

    .line 1424
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait()V

    .line 1426
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1427
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v3, :cond_2

    .line 1428
    const-string v3, "GSM"

    const-string v4, "Error: Pbr file is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    :cond_1
    :goto_0
    return-object v2

    .line 1426
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1433
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 1434
    .local v1, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const-string v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "recNum"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1439
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v2, 0xc0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 1443
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1448
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->recordSize:[I

    goto :goto_0

    .line 1444
    :catch_0
    move-exception v0

    .line 1445
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "GSM"

    const-string v3, "Interrupted Exception in readAdnFileAndWait"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private readAnrFileAndWait(I)V
    .locals 10
    .parameter "recNum"

    .prologue
    const/4 v9, 0x1

    .line 1508
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readAnrFileAndWait recNum "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1509
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1511
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v6, :cond_0

    .line 1513
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait()V

    .line 1515
    :cond_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1517
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v6, :cond_2

    .line 1519
    const-string v6, "GSM"

    const-string v7, "Error: Pbr file is empty"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    :cond_1
    :goto_0
    return-void

    .line 1515
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 1523
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readAnrFileAndWait recNum is   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1525
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 1527
    .local v2, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v2, :cond_3

    .line 1529
    const-string v6, "readAnrFileAndWait  fileIds == null"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1533
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readAnrFileAndWait  mAnrInfoFromPBR !=null fileIds.size()   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1535
    const/16 v6, 0xc4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1537
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->ishaveAnr:Z

    .line 1539
    invoke-direct {p0, v9, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getSubjectIndex(II)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;

    move-result-object v5

    .line 1541
    .local v5, records:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;
    if-nez v5, :cond_4

    .line 1543
    const-string v6, "readAnrFileAndWait  records == null "

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1547
    :cond_4
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->record:Ljava/util/Map;

    .line 1549
    iget-object v6, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    if-eqz v6, :cond_5

    iget-object v6, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    array-length v6, v6

    if-nez v6, :cond_6

    .line 1551
    :cond_5
    const-string v6, "readAnrFileAndWait  records.efids == null || records.efids.length == 0"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1555
    :cond_6
    iget-object v6, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    array-length v0, v6

    .line 1556
    .local v0, anrFileCount:I
    const/4 v4, 0x0

    .line 1557
    .local v4, isFail:Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readAnrFileAndWait anrFileCount"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1560
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_8

    .line 1562
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    iget-object v7, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v7, v7, v3

    const/16 v8, 0xb

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 1566
    :try_start_2
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1572
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "load ANR times ...... "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1574
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    if-nez v6, :cond_7

    .line 1576
    const-string v6, "GSM"

    const-string v7, "Error: ANR file is empty"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    iget-object v6, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    const/4 v7, 0x0

    aput v7, v6, v3

    .line 1578
    const/4 v4, 0x1

    .line 1560
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1567
    :catch_0
    move-exception v1

    .line 1569
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v6, "GSM"

    const-string v7, "Interrupted Exception in readEmailFileAndWait"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1582
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_7
    iget-object v6, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->record:Ljava/util/Map;

    iget-object v7, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v7, v7, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1583
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    goto :goto_3

    .line 1586
    :cond_8
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->handleReadFileResult(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;)V

    .line 1588
    invoke-direct {p0, v9, p1, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->setSubjectIndex(IILcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;)V

    .line 1589
    invoke-direct {p0, v9, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->setSubjectUsedNum(II)V

    goto/16 :goto_0
.end method

.method private readEmailFileAndWait(I)V
    .locals 8
    .parameter "recNum"

    .prologue
    const/16 v6, 0xca

    const/4 v7, 0x0

    .line 453
    invoke-static {}, Lcom/android/internal/telephony/gsm/SIMRecords;->getEmailAnrSupport()Z

    move-result v4

    if-nez v4, :cond_2

    .line 456
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v4, :cond_1

    .line 458
    const-string v4, "GSM"

    const-string v5, "mPbrFile is null in readEmailFileAndWait"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v4, :cond_4

    .line 463
    const-string v4, "GSM"

    const-string v5, "mPbrFile.mFileIds is null in readEmailFileAndWait"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 469
    :cond_2
    const-string v4, "readEmailFileAndWait"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 470
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 471
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v4, :cond_3

    .line 473
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait()V

    .line 475
    :cond_3
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v4, :cond_4

    .line 479
    const-string v4, "GSM"

    const-string v5, "Error: Pbr file is empty"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 475
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 486
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 487
    .local v2, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    .line 489
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 492
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->ishaveEmail:Z

    .line 495
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 502
    .local v1, efid:I
    invoke-direct {p0, v7, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getSubjectIndex(II)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;

    move-result-object v3

    .line 506
    .local v3, records:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;
    invoke-static {}, Lcom/android/internal/telephony/gsm/SIMRecords;->getEmailAnrSupport()Z

    move-result v4

    if-eqz v4, :cond_5

    if-nez v3, :cond_5

    .line 508
    const-string v4, "readEmailFileAndWait  records == null "

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 514
    :cond_5
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v4, :cond_7

    .line 519
    invoke-static {}, Lcom/android/internal/telephony/gsm/SIMRecords;->getEmailAnrSupport()Z

    move-result v4

    if-nez v4, :cond_6

    .line 522
    const/16 v4, 0xc1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readIapFileAndWait(I)V

    .line 526
    :cond_6
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    if-nez v4, :cond_7

    .line 527
    const-string v4, "GSM"

    const-string v5, "Error: IAP file is empty"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    invoke-static {}, Lcom/android/internal/telephony/gsm/SIMRecords;->getEmailAnrSupport()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 535
    const/4 v3, 0x0

    .line 536
    invoke-direct {p0, v7, p1, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->setSubjectIndex(IILcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;)V

    goto/16 :goto_0

    .line 545
    :cond_7
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 548
    :try_start_2
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 553
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-nez v4, :cond_8

    .line 555
    const-string v4, "GSM"

    const-string v5, "Error: Email file is empty"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    invoke-static {}, Lcom/android/internal/telephony/gsm/SIMRecords;->getEmailAnrSupport()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 560
    const/4 v3, 0x0

    .line 561
    invoke-direct {p0, v7, p1, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->setSubjectIndex(IILcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;)V

    goto/16 :goto_0

    .line 549
    :catch_0
    move-exception v0

    .line 550
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v4, "GSM"

    const-string v5, "Interrupted Exception in readEmailFileAndWait"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 571
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_8
    invoke-static {}, Lcom/android/internal/telephony/gsm/SIMRecords;->getEmailAnrSupport()Z

    move-result v4

    if-nez v4, :cond_9

    .line 573
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecord()V

    goto/16 :goto_0

    .line 576
    :cond_9
    if-eqz v3, :cond_0

    .line 577
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->record:Ljava/util/Map;

    .line 578
    iget-object v4, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->record:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    invoke-direct {p0, v7, p1, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->setSubjectIndex(IILcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;)V

    .line 580
    invoke-direct {p0, v7, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->setSubjectUsedNum(II)V

    goto/16 :goto_0
.end method

.method private readEmailRecord(I)Ljava/lang/String;
    .locals 6
    .parameter "recNum"

    .prologue
    .line 705
    const/4 v3, 0x0

    .line 707
    .local v3, emailRec:[B
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [B

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 713
    const/4 v4, 0x0

    array-length v5, v3

    add-int/lit8 v5, v5, -0x2

    invoke-static {v3, v4, v5}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 714
    :goto_0
    return-object v2

    .line 708
    :catch_0
    move-exception v1

    .line 709
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private readIapFile(I)V
    .locals 3
    .parameter "recNum"

    .prologue
    .line 2026
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readIapFile recNum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2028
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2030
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v1, :cond_0

    .line 2032
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait()V

    .line 2034
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2036
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v1, :cond_2

    .line 2038
    const-string v1, "GSM"

    const-string v2, "Error: Pbr file is empty"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2054
    :cond_1
    :goto_0
    return-void

    .line 2034
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 2043
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 2045
    .local v0, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_1

    .line 2050
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInIap:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v1, :cond_1

    .line 2052
    :cond_3
    const/16 v1, 0xc1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readIapFileAndWait(I)V

    goto :goto_0
.end method

.method private readIapFileAndWait(I)V
    .locals 3
    .parameter "efid"

    .prologue
    .line 591
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 593
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    :goto_0
    return-void

    .line 594
    :catch_0
    move-exception v0

    .line 595
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "GSM"

    const-string v2, "Interrupted Exception in readIapFileAndWait"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readPbrFileAndWait()V
    .locals 4

    .prologue
    .line 438
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v2, 0x4f30

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 440
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    :goto_0
    return-void

    .line 441
    :catch_0
    move-exception v0

    .line 442
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "GSM"

    const-string v2, "Interrupted Exception in readAdnFileAndWait"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private refreshCache()V
    .locals 3

    .prologue
    .line 424
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 431
    :cond_0
    return-void

    .line 425
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 427
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 428
    .local v1, numRecs:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 429
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAdnFileAndWait(I)V

    .line 428
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setAnrIapFileRecord(IIBI)V
    .locals 4
    .parameter "num"
    .parameter "index"
    .parameter "value"
    .parameter "numInIap"

    .prologue
    .line 1844
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAnrIapFileRecord >> num:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " numInIap:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1847
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecordArray:[Ljava/lang/Object;

    aget-object v1, v2, p1

    check-cast v1, Ljava/util/ArrayList;

    .line 1848
    .local v1, tmpIapFileRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 1849
    .local v0, record:[B
    aput-byte p3, v0, p4

    .line 1850
    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1851
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecordArray:[Ljava/lang/Object;

    aput-object v1, v2, p1

    .line 1852
    return-void
.end method

.method private setEmailandAnr(I[Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "adnNum"
    .parameter "emails"
    .parameter "anr"

    .prologue
    .line 1815
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    .line 1817
    .local v0, rec:Lcom/android/internal/telephony/AdnRecord;
    if-nez v0, :cond_1

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 1819
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/AdnRecord;

    .end local v0           #rec:Lcom/android/internal/telephony/AdnRecord;
    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1823
    .restart local v0       #rec:Lcom/android/internal/telephony/AdnRecord;
    :cond_1
    if-eqz v0, :cond_2

    .line 1824
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEmailandAnr,rec name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "num "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " adnNum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1828
    :cond_2
    if-eqz p2, :cond_3

    .line 1830
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 1831
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEmailandAnr AdnRecord  emails"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1834
    :cond_3
    if-eqz p3, :cond_4

    .line 1836
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEmailandAnr AdnRecord  anr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1837
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/AdnRecord;->setAnr(Ljava/lang/String;)V

    .line 1839
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1840
    return-void
.end method

.method private setSubjectIndex(IILcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;)V
    .locals 2
    .parameter "type"
    .parameter "num"
    .parameter "subjectIndex"

    .prologue
    .line 1104
    const/4 v0, 0x0

    .line 1106
    .local v0, index:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;
    packed-switch p1, :pswitch_data_0

    .line 1129
    :cond_0
    :goto_0
    return-void

    .line 1109
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailInfoFromPBR:Ljava/util/LinkedList;

    if-eqz v1, :cond_0

    .line 1114
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailInfoFromPBR:Ljava/util/LinkedList;

    invoke-virtual {v1, p2, p3}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1118
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrInfoFromPBR:Ljava/util/LinkedList;

    if-eqz v1, :cond_0

    .line 1122
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrInfoFromPBR:Ljava/util/LinkedList;

    invoke-virtual {v1, p2, p3}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1106
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setSubjectUsedNum(II)V
    .locals 5
    .parameter "type"
    .parameter "num"

    .prologue
    .line 1650
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getSubjectIndex(II)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;

    move-result-object v1

    .line 1652
    .local v1, index:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " setSubjectUsedNum num "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1654
    if-nez v1, :cond_0

    .line 1669
    :goto_0
    return-void

    .line 1659
    :cond_0
    iget-object v3, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    array-length v2, v3

    .line 1660
    .local v2, size:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " setSubjectUsedNum size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1662
    new-array v3, v2, [Ljava/lang/Object;

    iput-object v3, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->usedSet:[Ljava/lang/Object;

    .line 1664
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 1666
    iget-object v3, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->usedSet:[Ljava/lang/Object;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    aput-object v4, v3, v0

    .line 1664
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1668
    :cond_1
    invoke-direct {p0, p1, p2, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->setSubjectIndex(IILcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;)V

    goto :goto_0
.end method

.method private updateAdnRecord(I)V
    .locals 17
    .parameter "num"

    .prologue
    .line 1876
    const/4 v7, 0x0

    .line 1877
    .local v7, emailInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;
    const/4 v8, 0x0

    .line 1878
    .local v8, emailType:I
    const/4 v9, 0x0

    .line 1879
    .local v9, emails:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 1880
    .local v3, anrInfo:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;
    const/4 v4, 0x0

    .line 1881
    .local v4, anrType:I
    const/4 v2, 0x0

    .line 1882
    .local v2, anr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 1884
    .local v12, numAdnRecs:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSizeArray:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    aput v16, v15, p1

    .line 1886
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "updateAdnRecord mAdnRecordSizeArray[num] : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "num "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1888
    const/4 v13, 0x0

    .line 1889
    .local v13, numIapRec:I
    const/4 v6, 0x0

    .line 1891
    .local v6, efid:I
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getSubjectIndex(II)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;

    move-result-object v7

    .line 1893
    if-eqz v7, :cond_0

    .line 1895
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "updateAdnRecord emailInfo.type : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v7, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->type:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "size "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v7, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->recordNumInIap:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1896
    iget v15, v7, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->type:I

    const/16 v16, 0xa9

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    iget-object v15, v7, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->recordNumInIap:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map;->size()I

    move-result v15

    if-lez v15, :cond_4

    .line 1898
    const/16 v8, 0xa9

    .line 1905
    :cond_0
    :goto_0
    const/4 v15, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getSubjectIndex(II)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;

    move-result-object v3

    .line 1907
    if-eqz v3, :cond_1

    .line 1909
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "updateAdnRecord anrInfo.type : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->type:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "size "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->recordNumInIap:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1911
    iget v15, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->type:I

    const/16 v16, 0xa9

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    iget-object v15, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->recordNumInIap:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map;->size()I

    move-result v15

    if-lez v15, :cond_5

    .line 1913
    const/16 v4, 0xa9

    .line 1920
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    if-eqz v15, :cond_b

    .line 1929
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 1931
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "updateAdnRecord mIapFileRecord[num] : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1932
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "updateAdnRecord,emailType = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "anrType"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1934
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecordArray:[Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    aput-object v16, v15, p1

    .line 1935
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapRecordSizeArray:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    aput v16, v15, p1

    .line 1937
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "updateAdnRecord,numIapRec  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1939
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mDoneAdnCount:I

    add-int/2addr v13, v15

    .line 1941
    if-le v12, v13, :cond_6

    .line 1943
    :goto_2
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "updateAdnRecord,numIapRec  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1944
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "updateAdnRecord,numAdnRecs  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1945
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "updateAdnRecord,mDoneAdnCount  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mDoneAdnCount:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1947
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mDoneAdnCount:I

    .local v10, i:I
    :goto_3
    if-ge v10, v13, :cond_7

    .line 1949
    const/4 v14, 0x0

    .line 1953
    .local v14, record:[B
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mDoneAdnCount:I

    move/from16 v16, v0

    sub-int v16, v10, v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #record:[B
    check-cast v14, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1960
    .restart local v14       #record:[B
    const/16 v15, 0xa9

    if-ne v8, v15, :cond_2

    if-eqz v7, :cond_2

    .line 1962
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mDoneAdnCount:I

    sub-int v15, v10, v15

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v7, v14, v15}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getType2Email(ILcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;[BI)[Ljava/lang/String;

    move-result-object v9

    .line 1963
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v9, v15}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->setEmailandAnr(I[Ljava/lang/String;Ljava/lang/String;)V

    .line 1966
    :cond_2
    const/16 v15, 0xa9

    if-ne v4, v15, :cond_3

    if-eqz v3, :cond_3

    .line 1968
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mDoneAdnCount:I

    sub-int v15, v10, v15

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v3, v14, v15}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getType2Anr(ILcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;[BI)Ljava/lang/String;

    move-result-object v2

    .line 1969
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v15, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->setEmailandAnr(I[Ljava/lang/String;Ljava/lang/String;)V

    .line 1947
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1899
    .end local v10           #i:I
    .end local v14           #record:[B
    :cond_4
    iget v15, v7, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->type:I

    const/16 v16, 0xa8

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 1901
    const/16 v8, 0xa8

    goto/16 :goto_0

    .line 1914
    :cond_5
    iget v15, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->type:I

    const/16 v16, 0xa8

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 1916
    const/16 v4, 0xa8

    goto/16 :goto_1

    :cond_6
    move v13, v12

    .line 1941
    goto/16 :goto_2

    .line 1954
    .restart local v10       #i:I
    :catch_0
    move-exception v5

    .line 1956
    .local v5, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v15, "GSM"

    const-string v16, "Error: Improper ICC card: No IAP record for ADN, continuing"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    .end local v5           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_7
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mDoneAdnCount:I

    sub-int v11, v13, v15

    .line 1974
    .local v11, minAdnAndIap:I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "updateAdnRecord(): A9 minAdnAndIap = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1975
    const/16 v15, 0xa9

    if-ne v8, v15, :cond_8

    .line 1977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSizeArray:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurEmailRecordsSize:I

    if-le v11, v15, :cond_e

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurEmailRecordsSize:I

    :goto_4
    aput v15, v16, p1

    .line 1978
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "updateAdnRecord(): A9 mEmailRecordSizeArray["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurEmailRecordsSize:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1981
    :cond_8
    const/16 v15, 0xa9

    if-ne v4, v15, :cond_a

    .line 1983
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrRecordSizeArray:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurAnrRecordsSize:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v11, v0, :cond_9

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurAnrRecordsSize:I

    .end local v11           #minAdnAndIap:I
    :cond_9
    aput v11, v15, p1

    .line 1984
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "updateAdnRecord(): A9 mAnrRecordSizeArray["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurAnrRecordsSize:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1986
    :cond_a
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    .line 1991
    .end local v10           #i:I
    :cond_b
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mDoneAdnCount:I

    .restart local v10       #i:I
    :goto_5
    if-ge v10, v12, :cond_f

    .line 1993
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->ishaveEmail:Z

    if-eqz v15, :cond_c

    const/16 v15, 0xa8

    if-ne v8, v15, :cond_c

    if-eqz v7, :cond_c

    .line 1995
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mDoneAdnCount:I

    sub-int v15, v10, v15

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v7, v15}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getType1Email(ILcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;I)[Ljava/lang/String;

    move-result-object v9

    .line 1996
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v9, v15}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->setEmailandAnr(I[Ljava/lang/String;Ljava/lang/String;)V

    .line 1999
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->ishaveAnr:Z

    if-eqz v15, :cond_d

    const/16 v15, 0xa8

    if-ne v4, v15, :cond_d

    if-eqz v3, :cond_d

    .line 2001
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mDoneAdnCount:I

    sub-int v15, v10, v15

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v3, v15}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getType1Anr(ILcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;I)Ljava/lang/String;

    move-result-object v2

    .line 2002
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v15, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->setEmailandAnr(I[Ljava/lang/String;Ljava/lang/String;)V

    .line 1991
    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .restart local v11       #minAdnAndIap:I
    :cond_e
    move v15, v11

    .line 1977
    goto/16 :goto_4

    .line 2006
    .end local v11           #minAdnAndIap:I
    :cond_f
    const/16 v15, 0xa8

    if-ne v8, v15, :cond_10

    .line 2008
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSizeArray:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurEmailRecordsSize:I

    move/from16 v16, v0

    aput v16, v15, p1

    .line 2009
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "updateAdnRecord(): A8 mEmailRecordSizeArray["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurEmailRecordsSize:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2012
    :cond_10
    const/16 v15, 0xa8

    if-ne v4, v15, :cond_11

    .line 2014
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrRecordSizeArray:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurAnrRecordsSize:I

    move/from16 v16, v0

    aput v16, v15, p1

    .line 2015
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "updateAdnRecord(): A8 mAnrRecordSizeArray["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurAnrRecordsSize:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2018
    :cond_11
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurEmailRecordsSize:I

    .line 2019
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurAnrRecordsSize:I

    .line 2021
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mDoneAdnCount:I

    add-int/2addr v15, v12

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mDoneAdnCount:I

    .line 2022
    return-void
.end method

.method private updatePhoneAdnRecord()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 600
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-nez v9, :cond_1

    .line 660
    :cond_0
    :goto_0
    return-void

    .line 601
    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 602
    .local v5, numAdnRecs:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    if-eqz v9, :cond_3

    .line 608
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v5, :cond_3

    .line 609
    const/4 v8, 0x0

    .line 611
    .local v8, record:[B
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #record:[B
    check-cast v8, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    .restart local v8       #record:[B
    iget v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v7, v8, v9

    .line 618
    .local v7, recNum:I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_2

    .line 619
    const/4 v9, 0x1

    new-array v2, v9, [Ljava/lang/String;

    .line 621
    .local v2, emails:[Ljava/lang/String;
    add-int/lit8 v9, v7, -0x1

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v11

    .line 622
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/AdnRecord;

    .line 623
    .local v6, rec:Lcom/android/internal/telephony/AdnRecord;
    if-eqz v6, :cond_5

    .line 624
    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 629
    :goto_2
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v3, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 608
    .end local v2           #emails:[Ljava/lang/String;
    .end local v6           #rec:Lcom/android/internal/telephony/AdnRecord;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 612
    .end local v7           #recNum:I
    .end local v8           #record:[B
    :catch_0
    move-exception v0

    .line 613
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v9, "GSM"

    const-string v10, "Error: Improper ICC card: No IAP record for ADN, continuing"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v3           #i:I
    :cond_3
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 641
    .local v4, len:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    if-nez v9, :cond_4

    .line 642
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->parseType1EmailFile(I)V

    .line 644
    :cond_4
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_3
    if-ge v3, v5, :cond_0

    .line 645
    const/4 v1, 0x0

    .line 647
    .local v1, emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_1
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast v1, Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 651
    .restart local v1       #emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v1, :cond_6

    .line 644
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 627
    .end local v1           #emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #len:I
    .restart local v2       #emails:[Ljava/lang/String;
    .restart local v6       #rec:Lcom/android/internal/telephony/AdnRecord;
    .restart local v7       #recNum:I
    .restart local v8       #record:[B
    :cond_5
    new-instance v6, Lcom/android/internal/telephony/AdnRecord;

    .end local v6           #rec:Lcom/android/internal/telephony/AdnRecord;
    const-string v9, ""

    const-string v10, ""

    invoke-direct {v6, v9, v10, v2}, Lcom/android/internal/telephony/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .restart local v6       #rec:Lcom/android/internal/telephony/AdnRecord;
    goto :goto_2

    .line 648
    .end local v2           #emails:[Ljava/lang/String;
    .end local v6           #rec:Lcom/android/internal/telephony/AdnRecord;
    .end local v7           #recNum:I
    .end local v8           #record:[B
    .restart local v4       #len:I
    :catch_1
    move-exception v0

    .line 649
    .restart local v0       #e:Ljava/lang/IndexOutOfBoundsException;
    goto :goto_0

    .line 653
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v1       #emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/AdnRecord;

    .line 655
    .restart local v6       #rec:Lcom/android/internal/telephony/AdnRecord;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v2, v9, [Ljava/lang/String;

    .line 656
    .restart local v2       #emails:[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v9, v11, v2, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 657
    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 658
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v3, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method


# virtual methods
.method public findADNEfid(I)I
    .locals 5
    .parameter "index"

    .prologue
    const/16 v4, 0xc0

    const/4 v1, -0x1

    .line 1237
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1239
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v3, :cond_0

    .line 1241
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait()V

    .line 1243
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1245
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_2

    .line 1246
    const-string v2, "GSM"

    const-string v3, "Error: Pbr file is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    :cond_1
    :goto_0
    return v1

    .line 1243
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1250
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1252
    .local v0, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v0, :cond_3

    .line 1253
    const-string v2, "GSM"

    const-string v3, "Error: fileIds is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1258
    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1260
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public findEFAnrInfo(I)I
    .locals 5
    .parameter "index"

    .prologue
    const/16 v4, 0xc4

    const/4 v1, -0x1

    .line 1327
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1328
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v3, :cond_0

    .line 1329
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait()V

    .line 1331
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1332
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 1333
    const-string v2, "GSM"

    const-string v3, "Error: Pbr file is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    :goto_0
    return v1

    .line 1331
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1336
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1337
    .local v0, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v0, :cond_2

    .line 1338
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findEFAnrInfo  fileIds == null  index :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1341
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1342
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 1345
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findEFEmailInfo(I)I
    .locals 5
    .parameter "index"

    .prologue
    const/16 v4, 0xca

    const/4 v1, -0x1

    .line 1301
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1302
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v3, :cond_0

    .line 1303
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait()V

    .line 1305
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1306
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 1307
    const-string v2, "GSM"

    const-string v3, "Error: Pbr file is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    :goto_0
    return v1

    .line 1305
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1310
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1311
    .local v0, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v0, :cond_2

    .line 1312
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findEFEmailInfo  fileIds == null  index :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1315
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1317
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 1320
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findEFIapInfo(I)I
    .locals 5
    .parameter "index"

    .prologue
    const/16 v4, 0xc1

    const/4 v1, -0x1

    .line 1352
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1353
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v3, :cond_0

    .line 1354
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait()V

    .line 1356
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1357
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_2

    .line 1358
    const-string v2, "GSM"

    const-string v3, "Error: Pbr file is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    :cond_1
    :goto_0
    return v1

    .line 1356
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1361
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1362
    .local v0, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v0, :cond_3

    .line 1363
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findEFIapInfo  fileIds == null  index :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1366
    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1367
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public findExtensionEFInfo(I)I
    .locals 5
    .parameter "index"

    .prologue
    const/16 v4, 0xc2

    const/4 v1, -0x1

    .line 1270
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1271
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v3, :cond_0

    .line 1272
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait()V

    .line 1274
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1275
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 1276
    const-string v2, "GSM"

    const-string v3, "Error: Pbr file is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    :goto_0
    return v1

    .line 1274
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1279
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1281
    .local v0, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v0, :cond_2

    .line 1282
    const-string v2, "GSM"

    const-string v3, "Error: fileIds is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1286
    :cond_2
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findExtensionEFInfo fileIds "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1290
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 1293
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAdnRecordSizeArray()[I
    .locals 1

    .prologue
    .line 1230
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSizeArray:[I

    return-object v0
.end method

.method public getAdnRecordsFreeSize()I
    .locals 6

    .prologue
    .line 2261
    const/4 v3, 0x0

    .line 2262
    .local v3, totalRecs:I
    const/4 v0, 0x0

    .line 2263
    .local v0, freeRecs:I
    const/4 v2, 0x0

    .line 2265
    .local v2, rec:Lcom/android/internal/telephony/AdnRecord;
    const-string v4, "getAdnRecordsFreeSize(): enter."

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2267
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAdnRecordsTotalSize()I

    move-result v3

    .line 2269
    if-eqz v3, :cond_1

    .line 2271
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 2273
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #rec:Lcom/android/internal/telephony/AdnRecord;
    check-cast v2, Lcom/android/internal/telephony/AdnRecord;

    .line 2275
    .restart local v2       #rec:Lcom/android/internal/telephony/AdnRecord;
    invoke-virtual {v2}, Lcom/android/internal/telephony/AdnRecord;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2277
    add-int/lit8 v0, v0, 0x1

    .line 2271
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2283
    .end local v1           #i:I
    :cond_1
    const-string v4, "getAdnRecordsFreeSize(): error. "

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2286
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAdnRecordsFreeSize(): freeRecs = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2288
    return v0
.end method

.method public getAdnRecordsSize()[I
    .locals 8

    .prologue
    const/4 v3, 0x3

    .line 1374
    new-array v2, v3, [I

    .line 1376
    .local v2, size:[I
    const-string v3, "UsimPhoneBookManager"

    const-string v4, "getEFLinearRecordSize"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mTotalSize:[I

    if-eqz v3, :cond_0

    .line 1382
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mTotalSize:[I

    .line 1418
    :goto_0
    return-object v3

    .line 1385
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1387
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v3, :cond_1

    .line 1389
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait()V

    .line 1393
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    monitor-exit v4

    goto :goto_0

    .line 1417
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1395
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 1397
    .local v1, numRecs:I
    const-string v3, "UsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadEfFilesFromUsim"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_5

    .line 1402
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAdnFileSizeAndWait(I)[I

    move-result-object v2

    .line 1404
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mTotalSize:[I

    if-nez v3, :cond_3

    .line 1406
    const/4 v3, 0x3

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mTotalSize:[I

    .line 1409
    :cond_3
    if-eqz v2, :cond_4

    .line 1411
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mTotalSize:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    aget v6, v2, v6

    aput v6, v3, v5

    .line 1412
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mTotalSize:[I

    const/4 v5, 0x1

    aget v6, v3, v5

    const/4 v7, 0x1

    aget v7, v2, v7

    add-int/2addr v6, v7

    aput v6, v3, v5

    .line 1413
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mTotalSize:[I

    const/4 v5, 0x2

    aget v6, v3, v5

    const/4 v7, 0x2

    aget v7, v2, v7

    add-int/2addr v6, v7

    aput v6, v3, v5

    .line 1399
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1417
    :cond_5
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1418
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mTotalSize:[I

    goto :goto_0
.end method

.method public getAdnRecordsSizeAndWait(I)V
    .locals 8
    .parameter "recNum"

    .prologue
    const/4 v7, 0x0

    .line 305
    const/4 v1, -0x1

    .line 307
    .local v1, efid:I
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 308
    .local v2, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 310
    :cond_0
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAdnRecordsSizeAndWait field is empty for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->recordSize:[I

    const/4 v5, 0x1

    aput v7, v4, v5

    .line 312
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->recordSize:[I

    const/4 v5, 0x2

    aput v7, v4, v5

    .line 332
    :goto_0
    return-void

    .line 318
    :cond_1
    const/16 v4, 0xc0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 320
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAdnRecordsSize: efid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 326
    .local v3, response:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-virtual {v4, v1, v3}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 328
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v4, "GSM"

    const-string v5, "Interrupted Exception in getAdnRecordsSizeAndWait"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized getAdnRecordsSizeFromEF()[I
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 248
    monitor-enter p0

    const/4 v4, 0x3

    :try_start_0
    new-array v2, v4, [I

    .line 249
    .local v2, temRecordSize:[I
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    .line 251
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v3

    .line 294
    .end local v2           #temRecordSize:[I
    :goto_0
    monitor-exit p0

    return-object v2

    .line 257
    .restart local v2       #temRecordSize:[I
    :cond_0
    :try_start_2
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v5, :cond_1

    .line 258
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait()V

    .line 261
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v5, :cond_2

    .line 262
    monitor-exit v4

    move-object v2, v3

    goto :goto_0

    .line 265
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 267
    .local v1, numRecs:I
    const/4 v3, 0x0

    const/4 v5, 0x0

    aput v5, v2, v3

    .line 268
    const/4 v3, 0x1

    const/4 v5, 0x0

    aput v5, v2, v3

    .line 269
    const/4 v3, 0x2

    const/4 v5, 0x0

    aput v5, v2, v3

    .line 270
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 276
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAdnRecordsSizeAndWait(I)V

    .line 278
    const-string v3, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAdnRecordsSizeFromEF: recordSize[2]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->recordSize:[I

    const/4 v7, 0x2

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->recordSize:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    aput v5, v2, v3

    .line 284
    const/4 v3, 0x1

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->recordSize:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    const/4 v6, 0x1

    aget v6, v2, v6

    add-int/2addr v5, v6

    aput v5, v2, v3

    .line 286
    const/4 v3, 0x2

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->recordSize:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    const/4 v6, 0x2

    aget v6, v2, v6

    add-int/2addr v5, v6

    aput v5, v2, v3

    .line 270
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 288
    :cond_3
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 290
    :try_start_3
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAdnRecordsSizeFromEF USIM recordSize[0]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAdnRecordsSizeFromEF USIM recordSize[1]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAdnRecordsSizeFromEF USIM recordSize[2]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    aget v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 248
    .end local v0           #i:I
    .end local v1           #numRecs:I
    .end local v2           #temRecordSize:[I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 288
    .restart local v2       #temRecordSize:[I
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public getAdnRecordsTotalSize()I
    .locals 3

    .prologue
    .line 2293
    const/4 v0, 0x0

    .line 2294
    .local v0, totalRecs:I
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2297
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAdnRecordsTotalSize(): totalRecs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2304
    :goto_0
    return v0

    .line 2301
    :cond_0
    const-string v1, "getAdnRecordsTotalSize(): mPhoneBookRecords is empty."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAnrTagNumberInIap(I)[[I
    .locals 6
    .parameter "num"

    .prologue
    .line 1090
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrInfoFromPBR:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    array-length v3, v3

    const/4 v4, 0x2

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    .line 1091
    .local v2, result:[[I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrInfoFromPBR:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;

    iget-object v0, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->recordNumInIap:Ljava/util/Map;

    .line 1092
    .local v0, anrTagMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrInfoFromPBR:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 1093
    aget-object v4, v2, v1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrInfoFromPBR:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v3, v3, v1

    aput v3, v4, v5

    .line 1094
    aget-object v4, v2, v1

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrInfoFromPBR:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v4, v5

    .line 1092
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1097
    :cond_0
    return-object v2
.end method

.method public getAnrTotalSize()I
    .locals 5

    .prologue
    .line 2235
    const/4 v0, 0x0

    .line 2236
    .local v0, anrEfidCount:I
    const/4 v1, 0x0

    .line 2238
    .local v1, anrTotalSize:I
    const-string v3, "getAnrTotalSize(): enter."

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2240
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrRecordSizeArray:[I

    if-eqz v3, :cond_0

    .line 2242
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrRecordSizeArray:[I

    array-length v0, v3

    .line 2244
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 2246
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrRecordSizeArray:[I

    aget v3, v3, v2

    add-int/2addr v1, v3

    .line 2244
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2250
    .end local v2           #i:I
    :cond_0
    const-string v3, "getAnrTotalSize(): error."

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2251
    const/4 v3, -0x1

    .line 2256
    :goto_1
    return v3

    .line 2254
    .restart local v2       #i:I
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAnrTotalSize(): anrTotalSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move v3, v1

    .line 2256
    goto :goto_1
.end method

.method public getAnrUsedSize()I
    .locals 8

    .prologue
    .line 2142
    const/4 v4, 0x0

    .line 2143
    .local v4, pbrItemCount:I
    const/4 v1, 0x0

    .line 2144
    .local v1, anrUsedSize:I
    const/4 v0, 0x0

    .line 2145
    .local v0, adnRecordIndex:I
    const/4 v5, 0x0

    .line 2147
    .local v5, subjectTmp:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;
    const-string v6, "getAnrUsedSize(): enter."

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2149
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v4

    .line 2151
    if-nez v4, :cond_0

    .line 2153
    const-string v6, "getAnrUsedSize(): error."

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2155
    const/4 v6, -0x1

    .line 2193
    :goto_0
    return v6

    .line 2158
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_6

    .line 2160
    if-nez v2, :cond_2

    .line 2162
    const/4 v0, 0x0

    .line 2168
    :goto_2
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrInfoFromPBR:Ljava/util/LinkedList;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrInfoFromPBR:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 2170
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrInfoFromPBR:Ljava/util/LinkedList;

    invoke-virtual {v6, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #subjectTmp:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;
    check-cast v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;

    .line 2172
    .restart local v5       #subjectTmp:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;
    iget v6, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->type:I

    const/16 v7, 0xa8

    if-ne v6, v7, :cond_3

    .line 2174
    move v3, v0

    .local v3, j:I
    :goto_3
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSizeArray:[I

    aget v6, v6, v2

    if-ge v3, v6, :cond_4

    .line 2176
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/AdnRecord;

    invoke-virtual {v6}, Lcom/android/internal/telephony/AdnRecord;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 2178
    add-int/lit8 v1, v1, 0x1

    .line 2174
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2165
    .end local v3           #j:I
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSizeArray:[I

    add-int/lit8 v7, v2, -0x1

    aget v0, v6, v7

    goto :goto_2

    .line 2181
    :cond_3
    iget v6, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->type:I

    const/16 v7, 0xa9

    if-ne v6, v7, :cond_5

    .line 2183
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getSubjectA9UsedCount(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;)I

    move-result v6

    add-int/2addr v1, v6

    .line 2158
    :cond_4
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2186
    :cond_5
    add-int/lit8 v1, v1, 0x0

    goto :goto_4

    .line 2191
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAnrUsedSize(): anrUsedSize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move v6, v1

    .line 2193
    goto :goto_0
.end method

.method public getEFidInPBR(II)I
    .locals 4
    .parameter "recNum"
    .parameter "tag"

    .prologue
    .line 2353
    const/4 v0, 0x0

    .line 2356
    .local v0, efid:I
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 2357
    .local v1, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v1, :cond_0

    .line 2358
    const/4 v2, 0x0

    .line 2365
    :goto_0
    return v2

    .line 2361
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2362
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2364
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEFidInPBR, efid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", recNum = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", tag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move v2, v0

    .line 2365
    goto :goto_0
.end method

.method public getEfFilesFromUsim()[I
    .locals 7

    .prologue
    .line 1453
    const/4 v0, 0x0

    .line 1455
    .local v0, efids:[I
    const/4 v3, 0x0

    .line 1457
    .local v3, len:I
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v3

    .line 1458
    const-string v4, "UsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getEfFilesFromUsim"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    new-array v0, v3, [I

    .line 1461
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 1462
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 1463
    .local v1, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/16 v4, 0xc0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v0, v2

    .line 1464
    const-string v4, "UsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getEfFilesFromUsim"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1467
    .end local v1           #fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_0
    return-object v0
.end method

.method public getEmailRecordSizeArray()[I
    .locals 1

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSizeArray:[I

    return-object v0
.end method

.method public getEmailTotalSize()I
    .locals 5

    .prologue
    .line 2115
    const/4 v0, 0x0

    .line 2116
    .local v0, emailEfidCount:I
    const/4 v1, 0x0

    .line 2118
    .local v1, emailTotalSize:I
    const-string v3, "getEmailTotalSize(): enter."

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2120
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSizeArray:[I

    if-eqz v3, :cond_0

    .line 2122
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSizeArray:[I

    array-length v0, v3

    .line 2124
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 2126
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSizeArray:[I

    aget v3, v3, v2

    add-int/2addr v1, v3

    .line 2124
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2130
    .end local v2           #i:I
    :cond_0
    const-string v3, "getEmailTotalSize(): error."

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2132
    const/4 v3, -0x1

    .line 2137
    :goto_1
    return v3

    .line 2135
    .restart local v2       #i:I
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEmailTotalSize(): emailTotalSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move v3, v1

    .line 2137
    goto :goto_1
.end method

.method public getEmailUseSize()I
    .locals 8

    .prologue
    .line 2058
    const/4 v4, 0x0

    .line 2059
    .local v4, pbrItemCount:I
    const/4 v1, 0x0

    .line 2060
    .local v1, emailUsedSize:I
    const/4 v0, 0x0

    .line 2061
    .local v0, adnRecordIndex:I
    const/4 v5, 0x0

    .line 2063
    .local v5, subjectTmp:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;
    const-string v6, "getEmailUseSize(): enter."

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2065
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v4

    .line 2067
    if-nez v4, :cond_0

    .line 2069
    const-string v6, "getEmailUseSize(): error."

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2071
    const/4 v6, -0x1

    .line 2110
    :goto_0
    return v6

    .line 2074
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_6

    .line 2076
    if-nez v2, :cond_2

    .line 2078
    const/4 v0, 0x0

    .line 2084
    :goto_2
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailInfoFromPBR:Ljava/util/LinkedList;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailInfoFromPBR:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 2086
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailInfoFromPBR:Ljava/util/LinkedList;

    invoke-virtual {v6, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #subjectTmp:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;
    check-cast v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;

    .line 2088
    .restart local v5       #subjectTmp:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;
    iget v6, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->type:I

    const/16 v7, 0xa8

    if-ne v6, v7, :cond_3

    .line 2090
    move v3, v0

    .local v3, j:I
    :goto_3
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSizeArray:[I

    aget v6, v6, v2

    if-ge v3, v6, :cond_4

    .line 2092
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/AdnRecord;

    invoke-virtual {v6}, Lcom/android/internal/telephony/AdnRecord;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 2094
    add-int/lit8 v1, v1, 0x1

    .line 2090
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 2081
    .end local v3           #j:I
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSizeArray:[I

    add-int/lit8 v7, v2, -0x1

    aget v0, v6, v7

    goto :goto_2

    .line 2097
    :cond_3
    iget v6, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->type:I

    const/16 v7, 0xa9

    if-ne v6, v7, :cond_5

    .line 2099
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getSubjectA9UsedCount(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;)I

    move-result v6

    add-int/2addr v1, v6

    .line 2074
    :cond_4
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2103
    :cond_5
    add-int/lit8 v1, v1, 0x0

    goto :goto_4

    .line 2108
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getEmailUseSize(): emailUsedSize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move v6, v1

    .line 2110
    goto :goto_0
.end method

.method public getIapFileRecord(I)Ljava/util/ArrayList;
    .locals 2
    .parameter "recNum"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 988
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->findEFIapInfo(I)I

    move-result v0

    .line 991
    .local v0, efid:I
    if-gez v0, :cond_0

    .line 992
    const/4 v1, 0x0

    .line 995
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecordArray:[Ljava/lang/Object;

    aget-object v1, v1, p1

    check-cast v1, Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getIapRecordSizeArray()[I
    .locals 1

    .prologue
    .line 1219
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapRecordSizeArray:[I

    return-object v0
.end method

.method public getNewSubjectNumber(IIIIIZ)I
    .locals 9
    .parameter "type"
    .parameter "num"
    .parameter "efid"
    .parameter "index"
    .parameter "adnNum"
    .parameter "isInIap"

    .prologue
    .line 1134
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getNewSubjectNumber  adnNum "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "isInIap"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getSubjectIndex(II)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;

    move-result-object v2

    .line 1137
    .local v2, idx:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;
    const/4 v3, -0x1

    .line 1139
    .local v3, newSubjectNum:I
    if-nez v2, :cond_1

    .line 1141
    const/4 p5, -0x1

    .line 1187
    .end local p5
    :cond_0
    :goto_0
    return p5

    .line 1144
    .restart local p5
    :cond_1
    iget-object v6, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->record:Ljava/util/Map;

    if-eqz v6, :cond_2

    iget-object v6, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->record:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1146
    :cond_2
    const-string v6, "getNewSubjectNumber idx.record == null || !idx.record.containsKey(efid)  "

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1147
    const/4 p5, -0x1

    goto :goto_0

    .line 1150
    :cond_3
    iget-object v6, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->record:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1152
    .local v0, count:I
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getNewSubjectNumber  count "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "adnNum "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    if-eqz p6, :cond_6

    .line 1156
    iget-object v6, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->usedSet:[Ljava/lang/Object;

    aget-object v4, v6, p4

    check-cast v4, Ljava/util/Set;

    .line 1158
    .local v4, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 1160
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 1162
    .local v5, subjectNum:Ljava/lang/Integer;
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getNewSubjectNumber  subjectNum (0)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1166
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1168
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getNewSubjectNumber  subjectNum(1) "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1171
    iget-object v6, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->usedSet:[Ljava/lang/Object;

    aput-object v4, v6, p4

    .line 1172
    invoke-direct {p0, p1, p2, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->setSubjectIndex(IILcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;)V

    .end local v5           #subjectNum:Ljava/lang/Integer;
    :cond_4
    move p5, v3

    .line 1187
    goto/16 :goto_0

    .line 1158
    .restart local v5       #subjectNum:Ljava/lang/Integer;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1179
    .end local v1           #i:I
    .end local v4           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v5           #subjectNum:Ljava/lang/Integer;
    :cond_6
    if-le p5, v0, :cond_0

    move p5, v3

    .line 1181
    goto/16 :goto_0
.end method

.method public getNumRecs()I
    .locals 3

    .prologue
    .line 975
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 976
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v0, :cond_0

    .line 977
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait()V

    .line 979
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v0, :cond_1

    .line 980
    const-string v0, "GSM"

    const-string v2, "Error: Pbr file is empty"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    const/4 v0, 0x0

    monitor-exit v1

    .line 984
    :goto_0
    return v0

    .line 983
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 984
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    goto :goto_0

    .line 983
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getPbrFile()Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;
    .locals 1

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    return-object v0
.end method

.method public getPbrFileSize()I
    .locals 3

    .prologue
    .line 2336
    const/4 v0, 0x0

    .line 2338
    .local v0, size:I
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 2339
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 2341
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPbrFileSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2342
    return v0
.end method

.method public getPhoneBookRecordsSize()I
    .locals 4

    .prologue
    .line 2310
    const/4 v0, 0x0

    .line 2312
    .local v0, recordsSize:I
    const-string v2, "getPhoneBookRecordsSize(): enter."

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2314
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 2316
    const-string v2, "getPhoneBookRecordsSize(): mPhoneBookRecords is null."

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move v1, v0

    .line 2327
    .end local v0           #recordsSize:I
    .local v1, recordsSize:I
    :goto_0
    return v1

    .line 2320
    .end local v1           #recordsSize:I
    .restart local v0       #recordsSize:I
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2322
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2325
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPhoneBookRecordsSize(): recordsSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move v1, v0

    .line 2327
    .end local v0           #recordsSize:I
    .restart local v1       #recordsSize:I
    goto :goto_0
.end method

.method public getPhonebookRecords()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 226
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubjectEfids(II)[I
    .locals 5
    .parameter "type"
    .parameter "num"

    .prologue
    .line 1050
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getSubjectIndex(II)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;

    move-result-object v0

    .line 1052
    .local v0, index:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;
    if-nez v0, :cond_1

    .line 1054
    const/4 v1, 0x0

    .line 1063
    :cond_0
    :goto_0
    return-object v1

    .line 1057
    :cond_1
    iget-object v1, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    .line 1058
    .local v1, result:[I
    if-eqz v1, :cond_0

    .line 1059
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSubjectEfids  length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSubjectTagNumberInIap(II)[[I
    .locals 7
    .parameter "type"
    .parameter "num"

    .prologue
    .line 1069
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getSubjectIndex(II)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;

    move-result-object v2

    .line 1071
    .local v2, index:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;
    if-nez v2, :cond_0

    .line 1073
    const/4 v4, 0x0

    check-cast v4, [[I

    .line 1083
    :goto_0
    return-object v4

    .line 1076
    :cond_0
    iget-object v4, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    array-length v4, v4

    const/4 v5, 0x2

    filled-new-array {v4, v5}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    .line 1077
    .local v3, result:[[I
    iget-object v0, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->recordNumInIap:Ljava/util/Map;

    .line 1078
    .local v0, anrTagMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 1079
    aget-object v4, v3, v1

    const/4 v5, 0x0

    iget-object v6, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v6, v6, v1

    aput v6, v4, v5

    .line 1080
    aget-object v5, v3, v1

    const/4 v6, 0x1

    iget-object v4, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v5, v6

    .line 1078
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object v4, v3

    .line 1083
    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 786
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 968
    :goto_0
    :pswitch_0
    return-void

    .line 788
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 789
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 790
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->createPbrFile(Ljava/util/ArrayList;)V

    .line 792
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 793
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 794
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 797
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_2
    const-string v2, "Loading USIM ADN records done"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 798
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 802
    .restart local v0       #ar:Landroid/os/AsyncResult;
    invoke-static {}, Lcom/android/internal/telephony/gsm/SIMRecords;->getEmailAnrSupport()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 805
    const/4 v1, 0x0

    .line 806
    .local v1, size:I
    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 808
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 810
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_USIM_ADN_LOAD_DONE size"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 815
    .end local v1           #size:I
    :cond_2
    if-eqz v0, :cond_3

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3

    .line 816
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 818
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 819
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 820
    monitor-exit v3

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 823
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_3
    const-string v2, "Loading USIM IAP records done"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 824
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 825
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_5

    .line 829
    invoke-static {}, Lcom/android/internal/telephony/gsm/SIMRecords;->getEmailAnrSupport()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 832
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    if-nez v2, :cond_4

    .line 834
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    .line 838
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 841
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_IAP_LOAD_DONE size"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 849
    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 850
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 851
    monitor-exit v3

    goto/16 :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v2

    .line 844
    :cond_6
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    goto :goto_1

    .line 857
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_4
    const-string v2, "Loading USIM ANR records done"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 859
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 861
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_9

    .line 863
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    if-nez v2, :cond_7

    .line 865
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    .line 868
    :cond_7
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mTempAnrFileRecord:Ljava/util/ArrayList;

    if-nez v2, :cond_8

    .line 870
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mTempAnrFileRecord:Ljava/util/ArrayList;

    .line 873
    :cond_8
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 874
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mTempAnrFileRecord:Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 875
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurAnrRecordsSize:I

    .line 876
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurAnrRecordsSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurAnrRecordsSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 877
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAnrFileRecord.size() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 880
    :cond_9
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 882
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 883
    monitor-exit v3

    goto/16 :goto_0

    :catchall_3
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v2

    .line 889
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_5
    const-string v2, "Loading USIM Email records done"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 890
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 891
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_b

    .line 895
    invoke-static {}, Lcom/android/internal/telephony/gsm/SIMRecords;->getEmailAnrSupport()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 898
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-nez v2, :cond_a

    .line 900
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    .line 902
    :cond_a
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 904
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurEmailRecordsSize:I

    .line 905
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurEmailRecordsSize =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mCurEmailRecordsSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 906
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEmailFileRecord.size() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 914
    :cond_b
    :goto_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 915
    :try_start_4
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 916
    monitor-exit v3

    goto/16 :goto_0

    :catchall_4
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v2

    .line 909
    :cond_c
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    goto :goto_2

    .line 921
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_6
    const-string v2, "GSM"

    const-string v3, "Loading EVENT_ADN_RECORD_COUNT"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 925
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 927
    :try_start_5
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_d

    .line 929
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->recordSize:[I

    .line 934
    const-string v2, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_ADN_RECORD_COUNT Size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->recordSize:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " total "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->recordSize:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " #record "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->recordSize:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    :cond_d
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 940
    monitor-exit v3

    goto/16 :goto_0

    :catchall_5
    move-exception v2

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v2

    .line 945
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 946
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 948
    :try_start_6
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->recordSize:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v2, v4

    .line 949
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->recordSize:[I

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v2, v4

    .line 950
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->recordSize:[I

    const/4 v4, 0x2

    const/4 v5, 0x0

    aput v5, v2, v4

    .line 952
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_e

    .line 953
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->recordSize:[I

    .line 959
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GET_RECORD_SIZE Size "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->recordSize:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " total "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->recordSize:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " #record "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->recordSize:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 962
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 964
    :cond_e
    monitor-exit v3

    goto/16 :goto_0

    :catchall_6
    move-exception v2

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw v2

    .line 786
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public invalidateCache()V
    .locals 1

    .prologue
    .line 434
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 435
    return-void
.end method

.method public isSubjectRecordInIap(II)Z
    .locals 4
    .parameter "type"
    .parameter "num"

    .prologue
    const/4 v1, 0x0

    .line 1856
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getSubjectIndex(II)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;

    move-result-object v0

    .line 1858
    .local v0, index:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;
    if-nez v0, :cond_1

    .line 1871
    :cond_0
    :goto_0
    return v1

    .line 1863
    :cond_1
    iget v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->type:I

    const/16 v3, 0xa9

    if-ne v2, v3, :cond_2

    iget-object v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->recordNumInIap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 1865
    const/4 v1, 0x1

    goto :goto_0

    .line 1866
    :cond_2
    iget v2, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->type:I

    const/16 v3, 0xa8

    if-ne v2, v3, :cond_0

    goto :goto_0
.end method

.method public loadEfFilesFromUsim()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 336
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 337
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 338
    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    if-eqz v5, :cond_0

    .line 339
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 340
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->refreshCache()V

    .line 342
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    monitor-exit v6

    .line 420
    :goto_0
    return-object v5

    .line 345
    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_2

    monitor-exit v6

    goto :goto_0

    .line 409
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 348
    :cond_2
    :try_start_1
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrInfoFromPBR:Ljava/util/LinkedList;

    .line 349
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailInfoFromPBR:Ljava/util/LinkedList;

    .line 354
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v7, :cond_3

    .line 355
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait()V

    .line 358
    :cond_3
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v7, :cond_4

    monitor-exit v6

    goto :goto_0

    .line 360
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v4

    .line 362
    .local v4, numRecs:I
    const-string v5, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadEfFilesFromUsim get numRecs = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    new-array v5, v4, [Ljava/lang/Object;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecordArray:[Ljava/lang/Object;

    .line 366
    new-array v5, v4, [I

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordSizeArray:[I

    .line 367
    new-array v5, v4, [I

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailRecordSizeArray:[I

    .line 368
    new-array v5, v4, [I

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapRecordSizeArray:[I

    .line 369
    new-array v5, v4, [I

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrRecordSizeArray:[I

    .line 371
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mDoneAdnCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 374
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_6

    .line 377
    :try_start_2
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAdnFileAndWait(I)V

    .line 381
    invoke-static {}, Lcom/android/internal/telephony/gsm/SIMRecords;->getEmailAnrSupport()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 386
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readIapFile(I)V

    .line 388
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailFileAndWait(I)V

    .line 390
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAnrFileAndWait(I)V

    .line 391
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateAdnRecord(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 374
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 402
    :catch_0
    move-exception v1

    .line 403
    .local v1, e:Ljava/lang/NullPointerException;
    :try_start_3
    const-string v5, "GSM"

    const-string v7, "we get mPbrFile = null in the loop"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    .end local v1           #e:Ljava/lang/NullPointerException;
    :cond_6
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 410
    const-string v5, "GSM"

    const-string v6, "loadEfFilesFromUsim(): back"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordLog:Z

    if-eqz v5, :cond_7

    .line 413
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnRecordLog:Z

    .line 414
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    .line 415
    .local v0, adnRecord:Lcom/android/internal/telephony/AdnRecord;
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EFID=  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecord;->getEfid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,AlphaTag = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,getNumber"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 420
    .end local v0           #adnRecord:Lcom/android/internal/telephony/AdnRecord;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_7
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    goto/16 :goto_0
.end method

.method parseType1EmailFile(I)V
    .locals 8
    .parameter "numRecs"

    .prologue
    .line 663
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    .line 664
    const/4 v3, 0x0

    .line 665
    .local v3, emailRec:[B
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, p1, :cond_1

    .line 667
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #emailRec:[B
    check-cast v3, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 675
    .restart local v3       #emailRec:[B
    const/4 v0, -0x1

    .line 677
    .local v0, adnRecNum:I
    invoke-static {}, Lcom/android/internal/telephony/gsm/SIMRecords;->getEmailAnrSupport()Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v0, v4, 0x1

    .line 683
    :goto_1
    const/4 v6, -0x1

    if-ne v0, v6, :cond_3

    .line 665
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 668
    .end local v0           #adnRecNum:I
    .end local v3           #emailRec:[B
    :catch_0
    move-exception v1

    .line 669
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v6, "GSM"

    const-string v7, "Error: Improper ICC card: No email record for ADN, continuing"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_1
    return-void

    .line 677
    .restart local v0       #adnRecNum:I
    .restart local v3       #emailRec:[B
    :cond_2
    array-length v6, v3

    add-int/lit8 v6, v6, -0x1

    aget-byte v0, v3, v6

    goto :goto_1

    .line 687
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(I)Ljava/lang/String;

    move-result-object v2

    .line 689
    .local v2, email:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 694
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    add-int/lit8 v7, v0, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 695
    .local v5, val:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v5, :cond_4

    .line 696
    new-instance v5, Ljava/util/ArrayList;

    .end local v5           #val:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 698
    .restart local v5       #val:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    add-int/lit8 v7, v0, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public removeSubjectNumFromSet(IIIII)V
    .locals 7
    .parameter "type"
    .parameter "num"
    .parameter "efid"
    .parameter "index"
    .parameter "anrNum"

    .prologue
    .line 1193
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p5}, Ljava/lang/Integer;-><init>(I)V

    .line 1194
    .local v1, delNum:Ljava/lang/Integer;
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getSubjectIndex(II)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;

    move-result-object v3

    .line 1196
    .local v3, subject:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;
    if-nez v3, :cond_0

    .line 1210
    :goto_0
    return-void

    .line 1201
    :cond_0
    iget-object v4, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->record:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1203
    .local v0, count:I
    iget-object v4, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->usedSet:[Ljava/lang/Object;

    aget-object v2, v4, p4

    check-cast v2, Ljava/util/Set;

    .line 1204
    .local v2, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1206
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeSubjectNumFromSet  delnum(1) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    iget-object v4, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;->usedSet:[Ljava/lang/Object;

    aput-object v2, v4, p4

    .line 1209
    invoke-direct {p0, p1, p2, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->setSubjectIndex(IILcom/android/internal/telephony/gsm/UsimPhoneBookManager$SubjectIndexOfAdn;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 201
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 202
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    .line 203
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    .line 204
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 205
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 206
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 209
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    .line 210
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->ishaveEmail:Z

    .line 211
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->ishaveAnr:Z

    .line 212
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrInfoFromPBR:Ljava/util/LinkedList;

    .line 213
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailInfoFromPBR:Ljava/util/LinkedList;

    .line 214
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mTotalSize:[I

    .line 217
    return-void
.end method

.method public setIapFileRecord(IIBI)V
    .locals 4
    .parameter "recNum"
    .parameter "index"
    .parameter "value"
    .parameter "numInIap"

    .prologue
    .line 1006
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setIapFileRecord >>  recNum: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " numInIap: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1008
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecordArray:[Ljava/lang/Object;

    aget-object v1, v2, p1

    check-cast v1, Ljava/util/ArrayList;

    .line 1010
    .local v1, tmpIapFileRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 1012
    .local v0, record:[B
    aput-byte p3, v0, p4

    .line 1014
    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1016
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecordArray:[Ljava/lang/Object;

    aput-object v1, v2, p1

    .line 1018
    return-void
.end method

.method public setIccFileHandler(Lcom/android/internal/telephony/IccFileHandler;)V
    .locals 0
    .parameter "fh"

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    .line 234
    return-void
.end method

.method public setPhoneBookRecords(ILcom/android/internal/telephony/AdnRecord;)V
    .locals 1
    .parameter "index"
    .parameter "adn"

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1226
    return-void
.end method
