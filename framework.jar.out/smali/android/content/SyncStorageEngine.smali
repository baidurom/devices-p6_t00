.class public Landroid/content/SyncStorageEngine;
.super Landroid/os/Handler;
.source "SyncStorageEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/SyncStorageEngine$OnSyncRequestListener;,
        Landroid/content/SyncStorageEngine$DayStats;,
        Landroid/content/SyncStorageEngine$SyncHistoryItem;,
        Landroid/content/SyncStorageEngine$AuthorityInfo;,
        Landroid/content/SyncStorageEngine$AccountInfo;,
        Landroid/content/SyncStorageEngine$PendingOperation;
    }
.end annotation


# static fields
.field private static final ACCOUNTS_VERSION:I = 0x2

.field private static final DEBUG:Z = false

.field private static final DEBUG_FILE:Z = false

.field private static final DEFAULT_POLL_FREQUENCY_SECONDS:J = 0x15180L

.field public static final EVENTS:[Ljava/lang/String; = null

.field public static final EVENT_START:I = 0x0

.field public static final EVENT_STOP:I = 0x1

.field public static final MAX_HISTORY:I = 0x64

.field public static final MESG_CANCELED:Ljava/lang/String; = "canceled"

.field public static final MESG_SUCCESS:Ljava/lang/String; = "success"

.field static final MILLIS_IN_4WEEKS:J = 0x90321000L

.field private static final MSG_WRITE_STATISTICS:I = 0x2

.field private static final MSG_WRITE_STATUS:I = 0x1

.field public static final NOT_IN_BACKOFF_MODE:J = -0x1L

.field private static final PENDING_FINISH_TO_WRITE:I = 0x4

.field public static final PENDING_OPERATION_VERSION:I = 0x2

.field public static final SOURCES:[Ljava/lang/String; = null

.field public static final SOURCE_LOCAL:I = 0x1

.field public static final SOURCE_PERIODIC:I = 0x4

.field public static final SOURCE_POLL:I = 0x2

.field public static final SOURCE_SERVER:I = 0x0

.field public static final SOURCE_USER:I = 0x3

.field public static final STATISTICS_FILE_END:I = 0x0

.field public static final STATISTICS_FILE_ITEM:I = 0x65

.field public static final STATISTICS_FILE_ITEM_OLD:I = 0x64

.field public static final STATUS_FILE_END:I = 0x0

.field public static final STATUS_FILE_ITEM:I = 0x64

.field public static final SYNC_CONNECTION_SETTING_CHANGED_INTENT:Landroid/content/Intent; = null

.field private static final SYNC_ENABLED_DEFAULT:Z = false

.field private static final TAG:Ljava/lang/String; = "SyncManager"

.field private static final WRITE_STATISTICS_DELAY:J = 0x1b7740L

.field private static final WRITE_STATUS_DELAY:J = 0x927c0L

.field private static final XML_ATTR_ENABLED:Ljava/lang/String; = "enabled"

.field private static final XML_ATTR_LISTEN_FOR_TICKLES:Ljava/lang/String; = "listen-for-tickles"

.field private static final XML_ATTR_NEXT_AUTHORITY_ID:Ljava/lang/String; = "nextAuthorityId"

.field private static final XML_ATTR_SYNC_RANDOM_OFFSET:Ljava/lang/String; = "offsetInSeconds"

.field private static final XML_ATTR_USER:Ljava/lang/String; = "user"

.field private static final XML_TAG_LISTEN_FOR_TICKLES:Ljava/lang/String; = "listenForTickles"

.field private static sAuthorityRenames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sSyncStorageEngine:Landroid/content/SyncStorageEngine;


# instance fields
.field private final mAccountInfoFile:Landroid/util/AtomicFile;

.field private final mAccounts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/accounts/AccountAndUser;",
            "Landroid/content/SyncStorageEngine$AccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mAuthorities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/SyncStorageEngine$AuthorityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mCal:Ljava/util/Calendar;

.field private final mChangeListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/content/ISyncStatusObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mCurrentSyncs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/SyncInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

.field private mDefaultMasterSyncAutomatically:Z

.field private mMasterSyncAutomatically:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mNextAuthorityId:I

.field private mNextHistoryId:I

.field private mNumPendingFinished:I

.field private final mPendingFile:Landroid/util/AtomicFile;

.field private final mPendingOperations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/SyncStorageEngine$PendingOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatisticsFile:Landroid/util/AtomicFile;

.field private final mStatusFile:Landroid/util/AtomicFile;

.field private final mSyncHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/SyncStorageEngine$SyncHistoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncRandomOffset:I

.field private mSyncRequestListener:Landroid/content/SyncStorageEngine$OnSyncRequestListener;

.field private final mSyncStatus:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/SyncStatusInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mYear:I

.field private mYearInDays:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 90
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "START"

    aput-object v1, v0, v2

    const-string v1, "STOP"

    aput-object v1, v0, v3

    sput-object v0, Landroid/content/SyncStorageEngine;->EVENTS:[Ljava/lang/String;

    .line 111
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.sync.SYNC_CONN_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/content/SyncStorageEngine;->SYNC_CONNECTION_SETTING_CHANGED_INTENT:Landroid/content/Intent;

    .line 116
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SERVER"

    aput-object v1, v0, v2

    const-string v1, "LOCAL"

    aput-object v1, v0, v3

    const-string v1, "POLL"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "USER"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "PERIODIC"

    aput-object v2, v0, v1

    sput-object v0, Landroid/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    .line 143
    sget-object v0, Landroid/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    const-string v1, "contacts"

    const-string v2, "com.android.contacts"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Landroid/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    const-string v1, "calendar"

    const-string v2, "com.android.calendar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const/4 v0, 0x0

    sput-object v0, Landroid/content/SyncStorageEngine;->sSyncStorageEngine:Landroid/content/SyncStorageEngine;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 5
    .parameter "context"
    .parameter "dataDir"

    .prologue
    const/4 v3, 0x0

    .line 346
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 276
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 279
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    .line 282
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    .line 285
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Landroid/content/SyncStorageEngine;->mCurrentSyncs:Landroid/util/SparseArray;

    .line 288
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    .line 291
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    .line 294
    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v2, p0, Landroid/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    .line 297
    iput v3, p0, Landroid/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 300
    const/16 v2, 0x1c

    new-array v2, v2, [Landroid/content/SyncStorageEngine$DayStats;

    iput-object v2, p0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    .line 338
    iput v3, p0, Landroid/content/SyncStorageEngine;->mNumPendingFinished:I

    .line 340
    iput v3, p0, Landroid/content/SyncStorageEngine;->mNextHistoryId:I

    .line 341
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Landroid/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    .line 347
    iput-object p1, p0, Landroid/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    .line 348
    sput-object p0, Landroid/content/SyncStorageEngine;->sSyncStorageEngine:Landroid/content/SyncStorageEngine;

    .line 350
    const-string v2, "GMT+0"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Landroid/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    .line 352
    iget-object v2, p0, Landroid/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110044

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Landroid/content/SyncStorageEngine;->mDefaultMasterSyncAutomatically:Z

    .line 355
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 356
    .local v1, systemDir:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "sync"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 357
    .local v0, syncDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 358
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    const-string v4, "accounts.xml"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Landroid/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    .line 359
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "status.bin"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Landroid/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    .line 360
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "pending.bin"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Landroid/content/SyncStorageEngine;->mPendingFile:Landroid/util/AtomicFile;

    .line 361
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "stats.bin"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Landroid/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    .line 363
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->readAccountInfoLocked()V

    .line 364
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->readStatusLocked()V

    .line 365
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->readPendingOperationsLocked()V

    .line 366
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->readStatisticsLocked()V

    .line 367
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->readAndDeleteLegacyAccountInfoLocked()V

    .line 368
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 369
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeStatusLocked()V

    .line 370
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writePendingOperationsLocked()V

    .line 371
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeStatisticsLocked()V

    .line 372
    return-void
.end method

.method private appendPendingOperationLocked(Landroid/content/SyncStorageEngine$PendingOperation;)V
    .locals 6
    .parameter "op"

    .prologue
    .line 2167
    const/4 v2, 0x0

    .line 2169
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mPendingFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->openAppend()Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2177
    :try_start_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 2178
    .local v3, out:Landroid/os/Parcel;
    invoke-direct {p0, p1, v3}, Landroid/content/SyncStorageEngine;->writePendingOperationLocked(Landroid/content/SyncStorageEngine$PendingOperation;Landroid/os/Parcel;)V

    .line 2179
    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 2180
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2185
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2189
    .end local v3           #out:Landroid/os/Parcel;
    :goto_0
    return-void

    .line 2170
    :catch_0
    move-exception v0

    .line 2172
    .local v0, e:Ljava/io/IOException;
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writePendingOperationsLocked()V

    goto :goto_0

    .line 2181
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 2182
    .local v1, e1:Ljava/io/IOException;
    :try_start_3
    const-string v4, "SyncManager"

    const-string v5, "Error writing pending operations"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2185
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 2186
    .end local v1           #e1:Ljava/io/IOException;
    :catch_2
    move-exception v4

    goto :goto_0

    .line 2184
    :catchall_0
    move-exception v4

    .line 2185
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 2184
    :goto_1
    throw v4

    .line 2186
    :catch_3
    move-exception v5

    goto :goto_1
.end method

.method public static equals(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 6
    .parameter "b1"
    .parameter "b2"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1088
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 1102
    :cond_0
    :goto_0
    return v2

    .line 1091
    :cond_1
    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 1092
    goto :goto_0

    .line 1094
    :cond_2
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1095
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1098
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    .end local v1           #key:Ljava/lang/String;
    :cond_4
    move v2, v3

    .line 1102
    goto :goto_0
.end method

.method private static flattenBundle(Landroid/os/Bundle;)[B
    .locals 3
    .parameter "bundle"

    .prologue
    .line 2192
    const/4 v0, 0x0

    .line 2193
    .local v0, flatData:[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2195
    .local v1, parcel:Landroid/os/Parcel;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2196
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2198
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2200
    return-object v0

    .line 2198
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method private getAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Ljava/lang/String;)Landroid/content/SyncStorageEngine$AuthorityInfo;
    .locals 5
    .parameter "accountName"
    .parameter "userId"
    .parameter "authorityName"
    .parameter "tag"

    .prologue
    const/4 v3, 0x0

    .line 1366
    new-instance v1, Landroid/accounts/AccountAndUser;

    invoke-direct {v1, p1, p2}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    .line 1367
    .local v1, au:Landroid/accounts/AccountAndUser;
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncStorageEngine$AccountInfo;

    .line 1368
    .local v0, accountInfo:Landroid/content/SyncStorageEngine$AccountInfo;
    if-nez v0, :cond_2

    .line 1369
    if-eqz p4, :cond_0

    :cond_0
    move-object v2, v3

    .line 1386
    :cond_1
    :goto_0
    return-object v2

    .line 1376
    :cond_2
    iget-object v4, v0, Landroid/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v4, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 1377
    .local v2, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-nez v2, :cond_1

    .line 1378
    if-eqz p4, :cond_3

    :cond_3
    move-object v2, v3

    .line 1383
    goto :goto_0
.end method

.method private getCurrentDayLocked()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1345
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1346
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1347
    .local v0, dayOfYear:I
    iget v1, p0, Landroid/content/SyncStorageEngine;->mYear:I

    iget-object v2, p0, Landroid/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1348
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Landroid/content/SyncStorageEngine;->mYear:I

    .line 1349
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 1350
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    iget v2, p0, Landroid/content/SyncStorageEngine;->mYear:I

    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 1351
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    div-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Landroid/content/SyncStorageEngine;->mYearInDays:I

    .line 1353
    :cond_0
    iget v1, p0, Landroid/content/SyncStorageEngine;->mYearInDays:I

    add-int/2addr v1, v0

    return v1
.end method

.method static getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 1
    .parameter "c"
    .parameter "name"

    .prologue
    .line 1860
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method static getLongColumn(Landroid/database/Cursor;Ljava/lang/String;)J
    .locals 2
    .parameter "c"
    .parameter "name"

    .prologue
    .line 1864
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private getOrCreateAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;IZ)Landroid/content/SyncStorageEngine$AuthorityInfo;
    .locals 4
    .parameter "accountName"
    .parameter "userId"
    .parameter "authorityName"
    .parameter "ident"
    .parameter "doWrite"

    .prologue
    .line 1391
    new-instance v1, Landroid/accounts/AccountAndUser;

    invoke-direct {v1, p1, p2}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    .line 1392
    .local v1, au:Landroid/accounts/AccountAndUser;
    iget-object v3, p0, Landroid/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncStorageEngine$AccountInfo;

    .line 1393
    .local v0, account:Landroid/content/SyncStorageEngine$AccountInfo;
    if-nez v0, :cond_0

    .line 1394
    new-instance v0, Landroid/content/SyncStorageEngine$AccountInfo;

    .end local v0           #account:Landroid/content/SyncStorageEngine$AccountInfo;
    invoke-direct {v0, v1}, Landroid/content/SyncStorageEngine$AccountInfo;-><init>(Landroid/accounts/AccountAndUser;)V

    .line 1395
    .restart local v0       #account:Landroid/content/SyncStorageEngine$AccountInfo;
    iget-object v3, p0, Landroid/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1397
    :cond_0
    iget-object v3, v0, Landroid/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v3, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 1398
    .local v2, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-nez v2, :cond_2

    .line 1399
    if-gez p4, :cond_1

    .line 1400
    iget p4, p0, Landroid/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1401
    iget v3, p0, Landroid/content/SyncStorageEngine;->mNextAuthorityId:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1402
    const/4 p5, 0x1

    .line 1409
    :cond_1
    new-instance v2, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .end local v2           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    invoke-direct {v2, p1, p2, p3, p4}, Landroid/content/SyncStorageEngine$AuthorityInfo;-><init>(Landroid/accounts/Account;ILjava/lang/String;I)V

    .line 1410
    .restart local v2       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    iget-object v3, v0, Landroid/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v3, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1411
    iget-object v3, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v3, p4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1412
    if-eqz p5, :cond_2

    .line 1413
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 1417
    :cond_2
    return-object v2
.end method

.method private getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;
    .locals 2
    .parameter "authorityId"

    .prologue
    .line 1441
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncStatusInfo;

    .line 1442
    .local v0, status:Landroid/content/SyncStatusInfo;
    if-nez v0, :cond_0

    .line 1443
    new-instance v0, Landroid/content/SyncStatusInfo;

    .end local v0           #status:Landroid/content/SyncStatusInfo;
    invoke-direct {v0, p1}, Landroid/content/SyncStatusInfo;-><init>(I)V

    .line 1444
    .restart local v0       #status:Landroid/content/SyncStatusInfo;
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1446
    :cond_0
    return-object v0
.end method

.method public static getSingleton()Landroid/content/SyncStorageEngine;
    .locals 2

    .prologue
    .line 389
    sget-object v0, Landroid/content/SyncStorageEngine;->sSyncStorageEngine:Landroid/content/SyncStorageEngine;

    if-nez v0, :cond_0

    .line 390
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_0
    sget-object v0, Landroid/content/SyncStorageEngine;->sSyncStorageEngine:Landroid/content/SyncStorageEngine;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 379
    sget-object v1, Landroid/content/SyncStorageEngine;->sSyncStorageEngine:Landroid/content/SyncStorageEngine;

    if-eqz v1, :cond_0

    .line 386
    :goto_0
    return-void

    .line 384
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getSecureDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 385
    .local v0, dataDir:Ljava/io/File;
    new-instance v1, Landroid/content/SyncStorageEngine;

    invoke-direct {v1, p0, v0}, Landroid/content/SyncStorageEngine;-><init>(Landroid/content/Context;Ljava/io/File;)V

    sput-object v1, Landroid/content/SyncStorageEngine;->sSyncStorageEngine:Landroid/content/SyncStorageEngine;

    goto :goto_0
.end method

.method private maybeMigrateSettingsForRenamedAuthorities()Z
    .locals 14

    .prologue
    const/4 v5, 0x0

    .line 1595
    const/4 v13, 0x0

    .line 1597
    .local v13, writeNeeded:Z
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1598
    .local v7, authoritiesToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/SyncStorageEngine$AuthorityInfo;>;"
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 1599
    .local v6, N:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-ge v10, v6, :cond_2

    .line 1600
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 1602
    .local v8, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    sget-object v0, Landroid/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    iget-object v1, v8, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1603
    .local v3, newAuthorityName:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 1599
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1609
    :cond_1
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1613
    iget-boolean v0, v8, Landroid/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-eqz v0, :cond_0

    .line 1618
    iget-object v0, v8, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    iget v1, v8, Landroid/content/SyncStorageEngine$AuthorityInfo;->userId:I

    const-string v2, "cleanup"

    invoke-direct {p0, v0, v1, v3, v2}, Landroid/content/SyncStorageEngine;->getAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Ljava/lang/String;)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1623
    iget-object v1, v8, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    iget v2, v8, Landroid/content/SyncStorageEngine$AuthorityInfo;->userId:I

    const/4 v4, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;IZ)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v12

    .line 1625
    .local v12, newAuthority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    const/4 v0, 0x1

    iput-boolean v0, v12, Landroid/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 1626
    const/4 v13, 0x1

    goto :goto_1

    .line 1629
    .end local v3           #newAuthorityName:Ljava/lang/String;
    .end local v8           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v12           #newAuthority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :cond_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 1630
    .local v9, authorityInfo:Landroid/content/SyncStorageEngine$AuthorityInfo;
    iget-object v0, v9, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    iget v1, v9, Landroid/content/SyncStorageEngine$AuthorityInfo;->userId:I

    iget-object v2, v9, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v5}, Landroid/content/SyncStorageEngine;->removeAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Z)V

    .line 1632
    const/4 v13, 0x1

    goto :goto_2

    .line 1635
    .end local v9           #authorityInfo:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :cond_3
    return v13
.end method

.method public static newTestInstance(Landroid/content/Context;)Landroid/content/SyncStorageEngine;
    .locals 2
    .parameter "context"

    .prologue
    .line 375
    new-instance v0, Landroid/content/SyncStorageEngine;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/SyncStorageEngine;-><init>(Landroid/content/Context;Ljava/io/File;)V

    return-object v0
.end method

.method private parseAuthority(Lorg/xmlpull/v1/XmlPullParser;I)Landroid/content/SyncStorageEngine$AuthorityInfo;
    .locals 13
    .parameter "parser"
    .parameter "version"

    .prologue
    .line 1654
    const/4 v8, 0x0

    .line 1655
    .local v8, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    const/4 v4, -0x1

    .line 1657
    .local v4, id:I
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "id"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 1664
    :goto_0
    if-ltz v4, :cond_3

    .line 1665
    const/4 v0, 0x0

    const-string v1, "authority"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1666
    .local v3, authorityName:Ljava/lang/String;
    const/4 v0, 0x0

    const-string v1, "enabled"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1667
    .local v10, enabled:Ljava/lang/String;
    const/4 v0, 0x0

    const-string/jumbo v1, "syncable"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1668
    .local v11, syncable:Ljava/lang/String;
    const/4 v0, 0x0

    const-string v1, "account"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1669
    .local v6, accountName:Ljava/lang/String;
    const/4 v0, 0x0

    const-string/jumbo v1, "type"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1670
    .local v7, accountType:Ljava/lang/String;
    const/4 v0, 0x0

    const-string/jumbo v1, "user"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1671
    .local v12, user:Ljava/lang/String;
    if-nez v12, :cond_4

    const/4 v2, 0x0

    .line 1672
    .local v2, userId:I
    :goto_1
    if-nez v7, :cond_0

    .line 1673
    const-string v7, "com.google"

    .line 1674
    const-string/jumbo v11, "unknown"

    .line 1676
    :cond_0
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    check-cast v8, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 1682
    .restart local v8       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-nez v8, :cond_1

    .line 1684
    new-instance v1, Landroid/accounts/Account;

    invoke-direct {v1, v6, v7}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;IZ)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v8

    .line 1691
    if-lez p2, :cond_1

    .line 1692
    iget-object v0, v8, Landroid/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1695
    :cond_1
    if-eqz v8, :cond_9

    .line 1696
    if-eqz v10, :cond_2

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, v8, Landroid/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 1697
    const-string/jumbo v0, "unknown"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1698
    const/4 v0, -0x1

    iput v0, v8, Landroid/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    .line 1711
    .end local v2           #userId:I
    .end local v3           #authorityName:Ljava/lang/String;
    .end local v6           #accountName:Ljava/lang/String;
    .end local v7           #accountType:Ljava/lang/String;
    .end local v10           #enabled:Ljava/lang/String;
    .end local v11           #syncable:Ljava/lang/String;
    .end local v12           #user:Ljava/lang/String;
    :cond_3
    :goto_3
    return-object v8

    .line 1659
    :catch_0
    move-exception v9

    .line 1660
    .local v9, e:Ljava/lang/NumberFormatException;
    const-string v0, "SyncManager"

    const-string v1, "error parsing the id of the authority"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1661
    .end local v9           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v9

    .line 1662
    .local v9, e:Ljava/lang/NullPointerException;
    const-string v0, "SyncManager"

    const-string/jumbo v1, "the id of the authority is null"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1671
    .end local v9           #e:Ljava/lang/NullPointerException;
    .restart local v3       #authorityName:Ljava/lang/String;
    .restart local v6       #accountName:Ljava/lang/String;
    .restart local v7       #accountType:Ljava/lang/String;
    .restart local v10       #enabled:Ljava/lang/String;
    .restart local v11       #syncable:Ljava/lang/String;
    .restart local v12       #user:Ljava/lang/String;
    :cond_4
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    .line 1696
    .restart local v2       #userId:I
    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    .line 1700
    :cond_6
    if-eqz v11, :cond_7

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    const/4 v0, 0x1

    :goto_4
    iput v0, v8, Landroid/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    goto :goto_4

    .line 1704
    :cond_9
    const-string v0, "SyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure adding authority: account="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " auth="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " enabled="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " syncable="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private parseExtra(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/Pair;)V
    .locals 8
    .parameter "parser"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/util/Pair",
            "<",
            "Landroid/os/Bundle;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, periodicSync:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    const/4 v7, 0x0

    .line 1734
    iget-object v1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 1735
    .local v1, extras:Landroid/os/Bundle;
    const-string/jumbo v6, "name"

    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1736
    .local v2, name:Ljava/lang/String;
    const-string/jumbo v6, "type"

    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1737
    .local v3, type:Ljava/lang/String;
    const-string/jumbo v6, "value1"

    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1738
    .local v4, value1:Ljava/lang/String;
    const-string/jumbo v6, "value2"

    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1741
    .local v5, value2:Ljava/lang/String;
    :try_start_0
    const-string v6, "long"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1742
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1761
    :cond_0
    :goto_0
    return-void

    .line 1743
    :cond_1
    const-string v6, "integer"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1744
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1756
    :catch_0
    move-exception v0

    .line 1757
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v6, "SyncManager"

    const-string v7, "error parsing bundle value"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1745
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_2
    :try_start_1
    const-string v6, "double"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1746
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1758
    :catch_1
    move-exception v0

    .line 1759
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v6, "SyncManager"

    const-string v7, "error parsing bundle value"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1747
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_3
    :try_start_2
    const-string v6, "float"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1748
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    .line 1749
    :cond_4
    const-string v6, "boolean"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1750
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1751
    :cond_5
    const-string/jumbo v6, "string"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1752
    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1753
    :cond_6
    const-string v6, "account"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1754
    new-instance v6, Landroid/accounts/Account;

    invoke-direct {v6, v4, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method private parseListenForTickles(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .parameter "parser"

    .prologue
    const/4 v7, 0x0

    .line 1639
    const-string/jumbo v5, "user"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1640
    .local v3, user:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1642
    .local v4, userId:I
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 1648
    :goto_0
    const-string v5, "enabled"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1649
    .local v1, enabled:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 1650
    .local v2, listen:Z
    :goto_1
    iget-object v5, p0, Landroid/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1651
    return-void

    .line 1643
    .end local v1           #enabled:Ljava/lang/String;
    .end local v2           #listen:Z
    :catch_0
    move-exception v0

    .line 1644
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v5, "SyncManager"

    const-string v6, "error parsing the user for listen-for-tickles"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1645
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 1646
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v5, "SyncManager"

    const-string/jumbo v6, "the user in listen-for-tickles is null"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1649
    .end local v0           #e:Ljava/lang/NullPointerException;
    .restart local v1       #enabled:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private parsePeriodicSync(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/SyncStorageEngine$AuthorityInfo;)Landroid/util/Pair;
    .locals 8
    .parameter "parser"
    .parameter "authority"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/content/SyncStorageEngine$AuthorityInfo;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Landroid/os/Bundle;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1715
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1716
    .local v1, extras:Landroid/os/Bundle;
    const-string/jumbo v6, "period"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1719
    .local v4, periodValue:Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v2

    .line 1727
    .local v2, period:J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    .line 1728
    .local v5, periodicSync:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    iget-object v6, p2, Landroid/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1730
    .end local v2           #period:J
    .end local v5           #periodicSync:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    :goto_0
    return-object v5

    .line 1720
    :catch_0
    move-exception v0

    .line 1721
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v6, "SyncManager"

    const-string v7, "error parsing the period of a periodic sync"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1723
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 1724
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v6, "SyncManager"

    const-string/jumbo v7, "the period of a periodic sync is null"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private readAccountInfoLocked()V
    .locals 21

    .prologue
    .line 1491
    const/4 v7, -0x1

    .line 1492
    .local v7, highestAuthorityId:I
    const/4 v6, 0x0

    .line 1494
    .local v6, fis:Ljava/io/FileInputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v6

    .line 1496
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v12

    .line 1497
    .local v12, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-interface {v12, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1498
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    .line 1499
    .local v5, eventType:I
    :cond_0
    const/16 v18, 0x2

    move/from16 v0, v18

    if-eq v5, v0, :cond_1

    .line 1500
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 1502
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_0

    .line 1503
    const-string v18, "SyncManager"

    const-string v19, "Warning: do not find START_TAG till end of the file."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    :cond_1
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 1509
    .local v15, tagName:Ljava/lang/String;
    const-string v18, "accounts"

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 1510
    const/16 v18, 0x0

    const-string v19, "listen-for-tickles"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1511
    .local v9, listen:Ljava/lang/String;
    const/16 v18, 0x0

    const-string/jumbo v19, "version"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1514
    .local v17, versionString:Ljava/lang/String;
    if-nez v17, :cond_9

    const/16 v16, 0x0

    .line 1518
    .local v16, version:I
    :goto_0
    const/16 v18, 0x0

    const-string/jumbo v19, "nextAuthorityId"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v10

    .line 1520
    .local v10, nextIdString:Ljava/lang/String;
    if-nez v10, :cond_a

    const/4 v8, 0x0

    .line 1521
    .local v8, id:I
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/SyncStorageEngine;->mNextAuthorityId:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/SyncStorageEngine;->mNextAuthorityId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 1525
    .end local v8           #id:I
    :goto_2
    const/16 v18, 0x0

    :try_start_2
    const-string/jumbo v19, "offsetInSeconds"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v11

    .line 1527
    .local v11, offsetString:Ljava/lang/String;
    if-nez v11, :cond_b

    const/16 v18, 0x0

    :goto_3
    :try_start_3
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/SyncStorageEngine;->mSyncRandomOffset:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 1531
    :goto_4
    :try_start_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/SyncStorageEngine;->mSyncRandomOffset:I

    move/from16 v18, v0

    if-nez v18, :cond_2

    .line 1532
    new-instance v14, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-direct {v14, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 1533
    .local v14, random:Ljava/util/Random;
    const v18, 0x15180

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/SyncStorageEngine;->mSyncRandomOffset:I

    .line 1535
    .end local v14           #random:Ljava/util/Random;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    if-eqz v9, :cond_3

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_c

    :cond_3
    const/16 v18, 0x1

    :goto_5
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1536
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 1537
    const/4 v3, 0x0

    .line 1538
    .local v3, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    const/4 v13, 0x0

    .line 1540
    .local v13, periodicSync:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    :cond_4
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v5, v0, :cond_5

    .line 1541
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 1542
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    .line 1543
    const-string v18, "authority"

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 1544
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v12, v1}, Landroid/content/SyncStorageEngine;->parseAuthority(Lorg/xmlpull/v1/XmlPullParser;I)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v3

    .line 1545
    const/4 v13, 0x0

    .line 1546
    iget v0, v3, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v0, v7, :cond_5

    .line 1547
    iget v7, v3, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    .line 1562
    :cond_5
    :goto_6
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    move-result v5

    .line 1563
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_4

    .line 1578
    .end local v3           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v9           #listen:Ljava/lang/String;
    .end local v10           #nextIdString:Ljava/lang/String;
    .end local v11           #offsetString:Ljava/lang/String;
    .end local v13           #periodicSync:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    .end local v16           #version:I
    .end local v17           #versionString:Ljava/lang/String;
    :cond_6
    add-int/lit8 v18, v7, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/SyncStorageEngine;->mNextAuthorityId:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1579
    if-eqz v6, :cond_7

    .line 1581
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    .line 1587
    :cond_7
    :goto_7
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncStorageEngine;->maybeMigrateSettingsForRenamedAuthorities()Z

    .line 1588
    .end local v5           #eventType:I
    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v15           #tagName:Ljava/lang/String;
    :cond_8
    :goto_8
    return-void

    .line 1514
    .restart local v5       #eventType:I
    .restart local v9       #listen:Ljava/lang/String;
    .restart local v12       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v15       #tagName:Ljava/lang/String;
    .restart local v17       #versionString:Ljava/lang/String;
    :cond_9
    :try_start_6
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move-result v16

    goto/16 :goto_0

    .line 1515
    :catch_0
    move-exception v4

    .line 1516
    .local v4, e:Ljava/lang/NumberFormatException;
    const/16 v16, 0x0

    .restart local v16       #version:I
    goto/16 :goto_0

    .line 1520
    .end local v4           #e:Ljava/lang/NumberFormatException;
    .restart local v10       #nextIdString:Ljava/lang/String;
    :cond_a
    :try_start_7
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    move-result v8

    goto/16 :goto_1

    .line 1527
    .restart local v11       #offsetString:Ljava/lang/String;
    :cond_b
    :try_start_8
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    move-result v18

    goto/16 :goto_3

    .line 1528
    :catch_1
    move-exception v4

    .line 1529
    .restart local v4       #e:Ljava/lang/NumberFormatException;
    const/16 v18, 0x0

    :try_start_9
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/SyncStorageEngine;->mSyncRandomOffset:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_4

    .line 1565
    .end local v4           #e:Ljava/lang/NumberFormatException;
    .end local v5           #eventType:I
    .end local v9           #listen:Ljava/lang/String;
    .end local v10           #nextIdString:Ljava/lang/String;
    .end local v11           #offsetString:Ljava/lang/String;
    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v15           #tagName:Ljava/lang/String;
    .end local v16           #version:I
    .end local v17           #versionString:Ljava/lang/String;
    :catch_2
    move-exception v4

    .line 1566
    .local v4, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_a
    const-string v18, "SyncManager"

    const-string v19, "Error reading accounts"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1578
    add-int/lit8 v18, v7, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/SyncStorageEngine;->mNextAuthorityId:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1579
    if-eqz v6, :cond_8

    .line 1581
    :try_start_b
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_8

    .line 1582
    .end local v4           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v18

    goto :goto_8

    .line 1535
    .restart local v5       #eventType:I
    .restart local v9       #listen:Ljava/lang/String;
    .restart local v10       #nextIdString:Ljava/lang/String;
    .restart local v11       #offsetString:Ljava/lang/String;
    .restart local v12       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v15       #tagName:Ljava/lang/String;
    .restart local v16       #version:I
    .restart local v17       #versionString:Ljava/lang/String;
    :cond_c
    const/16 v18, 0x0

    goto/16 :goto_5

    .line 1549
    .restart local v3       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .restart local v13       #periodicSync:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    :cond_d
    :try_start_c
    const-string v18, "listenForTickles"

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 1550
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/content/SyncStorageEngine;->parseListenForTickles(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_6

    .line 1568
    .end local v3           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v5           #eventType:I
    .end local v9           #listen:Ljava/lang/String;
    .end local v10           #nextIdString:Ljava/lang/String;
    .end local v11           #offsetString:Ljava/lang/String;
    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v13           #periodicSync:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    .end local v15           #tagName:Ljava/lang/String;
    .end local v16           #version:I
    .end local v17           #versionString:Ljava/lang/String;
    :catch_4
    move-exception v4

    .line 1569
    .local v4, e:Ljava/io/IOException;
    if-nez v6, :cond_10

    :try_start_d
    const-string v18, "SyncManager"

    const-string v19, "No initial accounts"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 1578
    :goto_9
    add-int/lit8 v18, v7, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/SyncStorageEngine;->mNextAuthorityId:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1579
    if-eqz v6, :cond_8

    .line 1581
    :try_start_e
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    goto :goto_8

    .line 1552
    .end local v4           #e:Ljava/io/IOException;
    .restart local v3       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .restart local v5       #eventType:I
    .restart local v9       #listen:Ljava/lang/String;
    .restart local v10       #nextIdString:Ljava/lang/String;
    .restart local v11       #offsetString:Ljava/lang/String;
    .restart local v12       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13       #periodicSync:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    .restart local v15       #tagName:Ljava/lang/String;
    .restart local v16       #version:I
    .restart local v17       #versionString:Ljava/lang/String;
    :cond_e
    :try_start_f
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    .line 1553
    const-string/jumbo v18, "periodicSync"

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    if-eqz v3, :cond_5

    .line 1554
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v3}, Landroid/content/SyncStorageEngine;->parsePeriodicSync(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/SyncStorageEngine$AuthorityInfo;)Landroid/util/Pair;

    move-result-object v13

    goto/16 :goto_6

    .line 1556
    :cond_f
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v18

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    if-eqz v13, :cond_5

    .line 1557
    const-string v18, "extra"

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 1558
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Landroid/content/SyncStorageEngine;->parseExtra(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/Pair;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5

    goto/16 :goto_6

    .line 1573
    .end local v3           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v5           #eventType:I
    .end local v9           #listen:Ljava/lang/String;
    .end local v10           #nextIdString:Ljava/lang/String;
    .end local v11           #offsetString:Ljava/lang/String;
    .end local v12           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v13           #periodicSync:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    .end local v15           #tagName:Ljava/lang/String;
    .end local v16           #version:I
    .end local v17           #versionString:Ljava/lang/String;
    :catch_5
    move-exception v4

    .line 1574
    .local v4, e:Ljava/lang/Exception;
    :try_start_10
    const-string v18, "SyncManager"

    const-string v19, "Error reading accounts"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 1578
    add-int/lit8 v18, v7, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/SyncStorageEngine;->mNextAuthorityId:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1579
    if-eqz v6, :cond_8

    .line 1581
    :try_start_11
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_3

    goto/16 :goto_8

    .line 1570
    .local v4, e:Ljava/io/IOException;
    :cond_10
    :try_start_12
    const-string v18, "SyncManager"

    const-string v19, "Error reading accounts"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_9

    .line 1578
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v18

    add-int/lit8 v19, v7, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/SyncStorageEngine;->mNextAuthorityId:I

    move/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1579
    if-eqz v6, :cond_11

    .line 1581
    :try_start_13
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_6

    .line 1578
    :cond_11
    :goto_a
    throw v18

    .line 1582
    :catch_6
    move-exception v19

    goto :goto_a

    .restart local v5       #eventType:I
    .restart local v12       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v15       #tagName:Ljava/lang/String;
    :catch_7
    move-exception v18

    goto/16 :goto_7

    .line 1522
    .restart local v9       #listen:Ljava/lang/String;
    .restart local v10       #nextIdString:Ljava/lang/String;
    .restart local v16       #version:I
    .restart local v17       #versionString:Ljava/lang/String;
    :catch_8
    move-exception v18

    goto/16 :goto_2
.end method

.method private readAndDeleteLegacyAccountInfoLocked()V
    .locals 29

    .prologue
    .line 1874
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "syncmanager.db"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v19

    .line 1875
    .local v19, file:Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1991
    :cond_0
    :goto_0
    return-void

    .line 1878
    :cond_1
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v25

    .line 1879
    .local v25, path:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1881
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    move-object/from16 v0, v25

    invoke-static {v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1886
    :goto_1
    if-eqz v2, :cond_0

    .line 1887
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3

    const/16 v4, 0xb

    if-lt v3, v4, :cond_8

    const/16 v21, 0x1

    .line 1891
    .local v21, hasType:Z
    :goto_2
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1892
    .local v1, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v3, "stats, status"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1893
    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    .line 1894
    .local v23, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "_id"

    const-string/jumbo v4, "status._id as _id"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1895
    const-string v3, "account"

    const-string/jumbo v4, "stats.account as account"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1896
    if-eqz v21, :cond_2

    .line 1897
    const-string v3, "account_type"

    const-string/jumbo v4, "stats.account_type as account_type"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1899
    :cond_2
    const-string v3, "authority"

    const-string/jumbo v4, "stats.authority as authority"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1900
    const-string/jumbo v3, "totalElapsedTime"

    const-string/jumbo v4, "totalElapsedTime"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1901
    const-string/jumbo v3, "numSyncs"

    const-string/jumbo v4, "numSyncs"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1902
    const-string/jumbo v3, "numSourceLocal"

    const-string/jumbo v4, "numSourceLocal"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1903
    const-string/jumbo v3, "numSourcePoll"

    const-string/jumbo v4, "numSourcePoll"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1904
    const-string/jumbo v3, "numSourceServer"

    const-string/jumbo v4, "numSourceServer"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1905
    const-string/jumbo v3, "numSourceUser"

    const-string/jumbo v4, "numSourceUser"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1906
    const-string v3, "lastSuccessSource"

    const-string v4, "lastSuccessSource"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1907
    const-string v3, "lastSuccessTime"

    const-string v4, "lastSuccessTime"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1908
    const-string v3, "lastFailureSource"

    const-string v4, "lastFailureSource"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1909
    const-string v3, "lastFailureTime"

    const-string v4, "lastFailureTime"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1910
    const-string v3, "lastFailureMesg"

    const-string v4, "lastFailureMesg"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1911
    const-string/jumbo v3, "pending"

    const-string/jumbo v4, "pending"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1912
    move-object/from16 v0, v23

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1913
    const-string/jumbo v3, "stats._id = status.stats_id"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1914
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 1915
    .local v18, c:Landroid/database/Cursor;
    :cond_3
    :goto_3
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1916
    const-string v3, "account"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1917
    .local v15, accountName:Ljava/lang/String;
    if-eqz v21, :cond_9

    const-string v3, "account_type"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1919
    .local v16, accountType:Ljava/lang/String;
    :goto_4
    if-nez v16, :cond_4

    .line 1920
    const-string v16, "com.google"

    .line 1922
    :cond_4
    const-string v3, "authority"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1923
    .local v6, authorityName:Ljava/lang/String;
    new-instance v4, Landroid/accounts/Account;

    move-object/from16 v0, v16

    invoke-direct {v4, v15, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Landroid/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;IZ)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v17

    .line 1926
    .local v17, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v17, :cond_3

    .line 1927
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v22

    .line 1928
    .local v22, i:I
    const/16 v20, 0x0

    .line 1929
    .local v20, found:Z
    const/16 v27, 0x0

    .line 1930
    .local v27, st:Landroid/content/SyncStatusInfo;
    :cond_5
    if-lez v22, :cond_6

    .line 1931
    add-int/lit8 v22, v22, -0x1

    .line 1932
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v27

    .end local v27           #st:Landroid/content/SyncStatusInfo;
    check-cast v27, Landroid/content/SyncStatusInfo;

    .line 1933
    .restart local v27       #st:Landroid/content/SyncStatusInfo;
    move-object/from16 v0, v27

    iget v3, v0, Landroid/content/SyncStatusInfo;->authorityId:I

    move-object/from16 v0, v17

    iget v4, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    if-ne v3, v4, :cond_5

    .line 1934
    const/16 v20, 0x1

    .line 1938
    :cond_6
    if-nez v20, :cond_7

    .line 1939
    new-instance v27, Landroid/content/SyncStatusInfo;

    .end local v27           #st:Landroid/content/SyncStatusInfo;
    move-object/from16 v0, v17

    iget v3, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    move-object/from16 v0, v27

    invoke-direct {v0, v3}, Landroid/content/SyncStatusInfo;-><init>(I)V

    .line 1940
    .restart local v27       #st:Landroid/content/SyncStatusInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    move-object/from16 v0, v17

    iget v4, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    move-object/from16 v0, v27

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1942
    :cond_7
    const-string/jumbo v3, "totalElapsedTime"

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Landroid/content/SyncStorageEngine;->getLongColumn(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v3

    move-object/from16 v0, v27

    iput-wide v3, v0, Landroid/content/SyncStatusInfo;->totalElapsedTime:J

    .line 1943
    const-string/jumbo v3, "numSyncs"

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Landroid/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v27

    iput v3, v0, Landroid/content/SyncStatusInfo;->numSyncs:I

    .line 1944
    const-string/jumbo v3, "numSourceLocal"

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Landroid/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v27

    iput v3, v0, Landroid/content/SyncStatusInfo;->numSourceLocal:I

    .line 1945
    const-string/jumbo v3, "numSourcePoll"

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Landroid/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v27

    iput v3, v0, Landroid/content/SyncStatusInfo;->numSourcePoll:I

    .line 1946
    const-string/jumbo v3, "numSourceServer"

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Landroid/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v27

    iput v3, v0, Landroid/content/SyncStatusInfo;->numSourceServer:I

    .line 1947
    const-string/jumbo v3, "numSourceUser"

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Landroid/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v27

    iput v3, v0, Landroid/content/SyncStatusInfo;->numSourceUser:I

    .line 1948
    const/4 v3, 0x0

    move-object/from16 v0, v27

    iput v3, v0, Landroid/content/SyncStatusInfo;->numSourcePeriodic:I

    .line 1949
    const-string v3, "lastSuccessSource"

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Landroid/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v27

    iput v3, v0, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    .line 1950
    const-string v3, "lastSuccessTime"

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Landroid/content/SyncStorageEngine;->getLongColumn(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v3

    move-object/from16 v0, v27

    iput-wide v3, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    .line 1951
    const-string v3, "lastFailureSource"

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Landroid/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v27

    iput v3, v0, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    .line 1952
    const-string v3, "lastFailureTime"

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Landroid/content/SyncStorageEngine;->getLongColumn(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v3

    move-object/from16 v0, v27

    iput-wide v3, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    .line 1953
    const-string v3, "lastFailureMesg"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    iput-object v3, v0, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    .line 1954
    const-string/jumbo v3, "pending"

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Landroid/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x1

    :goto_5
    move-object/from16 v0, v27

    iput-boolean v3, v0, Landroid/content/SyncStatusInfo;->pending:Z

    goto/16 :goto_3

    .line 1887
    .end local v1           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v6           #authorityName:Ljava/lang/String;
    .end local v15           #accountName:Ljava/lang/String;
    .end local v16           #accountType:Ljava/lang/String;
    .end local v17           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v18           #c:Landroid/database/Cursor;
    .end local v20           #found:Z
    .end local v21           #hasType:Z
    .end local v22           #i:I
    .end local v23           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v27           #st:Landroid/content/SyncStatusInfo;
    :cond_8
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 1917
    .restart local v1       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v15       #accountName:Ljava/lang/String;
    .restart local v18       #c:Landroid/database/Cursor;
    .restart local v21       #hasType:Z
    .restart local v23       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_9
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 1954
    .restart local v6       #authorityName:Ljava/lang/String;
    .restart local v16       #accountType:Ljava/lang/String;
    .restart local v17       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .restart local v20       #found:Z
    .restart local v22       #i:I
    .restart local v27       #st:Landroid/content/SyncStatusInfo;
    :cond_a
    const/4 v3, 0x0

    goto :goto_5

    .line 1958
    .end local v6           #authorityName:Ljava/lang/String;
    .end local v15           #accountName:Ljava/lang/String;
    .end local v16           #accountType:Ljava/lang/String;
    .end local v17           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v20           #found:Z
    .end local v22           #i:I
    .end local v27           #st:Landroid/content/SyncStatusInfo;
    :cond_b
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 1961
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    .end local v1           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1962
    .restart local v1       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v3, "settings"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1963
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v7, v1

    move-object v8, v2

    invoke-virtual/range {v7 .. v14}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 1964
    :cond_c
    :goto_6
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1965
    const-string/jumbo v3, "name"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 1966
    .local v24, name:Ljava/lang/String;
    const-string/jumbo v3, "value"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 1967
    .local v28, value:Ljava/lang/String;
    if-eqz v24, :cond_c

    .line 1968
    const-string v3, "listen_for_tickles"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1969
    if-eqz v28, :cond_d

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_d
    const/4 v3, 0x1

    :goto_7
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/SyncStorageEngine;->setMasterSyncAutomatically(ZI)V

    goto :goto_6

    :cond_e
    const/4 v3, 0x0

    goto :goto_7

    .line 1970
    :cond_f
    const-string/jumbo v3, "sync_provider_"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1971
    const-string/jumbo v3, "sync_provider_"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    .line 1973
    .local v26, provider:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v22

    .line 1974
    .restart local v22       #i:I
    :cond_10
    :goto_8
    if-lez v22, :cond_c

    .line 1975
    add-int/lit8 v22, v22, -0x1

    .line 1976
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 1977
    .restart local v17       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1978
    if-eqz v28, :cond_11

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    :cond_11
    const/4 v3, 0x1

    :goto_9
    move-object/from16 v0, v17

    iput-boolean v3, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 1979
    const/4 v3, 0x1

    move-object/from16 v0, v17

    iput v3, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    goto :goto_8

    .line 1978
    :cond_12
    const/4 v3, 0x0

    goto :goto_9

    .line 1985
    .end local v17           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v22           #i:I
    .end local v24           #name:Ljava/lang/String;
    .end local v26           #provider:Ljava/lang/String;
    .end local v28           #value:Ljava/lang/String;
    :cond_13
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 1987
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1989
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v25

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    .line 1883
    .end local v1           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v18           #c:Landroid/database/Cursor;
    .end local v21           #hasType:Z
    .end local v23           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    goto/16 :goto_1
.end method

.method private readPendingOperationsLocked()V
    .locals 15

    .prologue
    .line 2068
    :try_start_0
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mPendingFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v10

    .line 2069
    .local v10, data:[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v13

    .line 2070
    .local v13, in:Landroid/os/Parcel;
    const/4 v1, 0x0

    array-length v2, v10

    invoke-virtual {v13, v10, v1, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 2071
    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2072
    invoke-virtual {v13}, Landroid/os/Parcel;->dataSize()I

    move-result v7

    .line 2073
    .local v7, SIZE:I
    :cond_0
    :goto_0
    invoke-virtual {v13}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-ge v1, v7, :cond_1

    .line 2074
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 2075
    .local v14, version:I
    const/4 v1, 0x2

    if-eq v14, v1, :cond_2

    const/4 v1, 0x1

    if-eq v14, v1, :cond_2

    .line 2076
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown pending operation version "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "; dropping all ops"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2115
    .end local v7           #SIZE:I
    .end local v10           #data:[B
    .end local v13           #in:Landroid/os/Parcel;
    .end local v14           #version:I
    :cond_1
    :goto_1
    return-void

    .line 2080
    .restart local v7       #SIZE:I
    .restart local v10       #data:[B
    .restart local v13       #in:Landroid/os/Parcel;
    .restart local v14       #version:I
    :cond_2
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 2081
    .local v9, authorityId:I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2082
    .local v3, syncSource:I
    invoke-virtual {v13}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v12

    .line 2084
    .local v12, flatExtras:[B
    const/4 v1, 0x2

    if-ne v14, v1, :cond_4

    .line 2085
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v6, 0x1

    .line 2089
    .local v6, expedited:Z
    :goto_2
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 2090
    .local v8, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v8, :cond_0

    .line 2092
    if-eqz v12, :cond_5

    .line 2093
    invoke-static {v12}, Landroid/content/SyncStorageEngine;->unflattenBundle([B)Landroid/os/Bundle;

    move-result-object v5

    .line 2099
    .local v5, extras:Landroid/os/Bundle;
    :goto_3
    new-instance v0, Landroid/content/SyncStorageEngine$PendingOperation;

    iget-object v1, v8, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    iget v2, v8, Landroid/content/SyncStorageEngine$AuthorityInfo;->userId:I

    iget-object v4, v8, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Landroid/content/SyncStorageEngine$PendingOperation;-><init>(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;Z)V

    .line 2102
    .local v0, op:Landroid/content/SyncStorageEngine$PendingOperation;
    iput v9, v0, Landroid/content/SyncStorageEngine$PendingOperation;->authorityId:I

    .line 2103
    iput-object v12, v0, Landroid/content/SyncStorageEngine$PendingOperation;->flatExtras:[B

    .line 2109
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2112
    .end local v0           #op:Landroid/content/SyncStorageEngine$PendingOperation;
    .end local v3           #syncSource:I
    .end local v5           #extras:Landroid/os/Bundle;
    .end local v6           #expedited:Z
    .end local v7           #SIZE:I
    .end local v8           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v9           #authorityId:I
    .end local v10           #data:[B
    .end local v12           #flatExtras:[B
    .end local v13           #in:Landroid/os/Parcel;
    .end local v14           #version:I
    :catch_0
    move-exception v11

    .line 2113
    .local v11, e:Ljava/io/IOException;
    const-string v1, "SyncManager"

    const-string v2, "No initial pending operations"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2085
    .end local v11           #e:Ljava/io/IOException;
    .restart local v3       #syncSource:I
    .restart local v7       #SIZE:I
    .restart local v9       #authorityId:I
    .restart local v10       #data:[B
    .restart local v12       #flatExtras:[B
    .restart local v13       #in:Landroid/os/Parcel;
    .restart local v14       #version:I
    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    .line 2087
    :cond_4
    const/4 v6, 0x0

    .restart local v6       #expedited:Z
    goto :goto_2

    .line 2097
    .restart local v8       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :cond_5
    :try_start_1
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v5       #extras:Landroid/os/Bundle;
    goto :goto_3
.end method

.method private readStatisticsLocked()V
    .locals 10

    .prologue
    const/16 v9, 0x64

    .line 2242
    :try_start_0
    iget-object v7, p0, Landroid/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v0

    .line 2243
    .local v0, data:[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 2244
    .local v4, in:Landroid/os/Parcel;
    const/4 v7, 0x0

    array-length v8, v0

    invoke-virtual {v4, v0, v7, v8}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 2245
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2247
    const/4 v5, 0x0

    .line 2248
    .local v5, index:I
    :cond_0
    :goto_0
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, token:I
    if-eqz v6, :cond_4

    .line 2249
    const/16 v7, 0x65

    if-eq v6, v7, :cond_1

    if-ne v6, v9, :cond_3

    .line 2251
    :cond_1
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2252
    .local v1, day:I
    if-ne v6, v9, :cond_2

    .line 2253
    add-int/lit16 v7, v1, -0x7d9

    add-int/lit16 v1, v7, 0x37a5

    .line 2255
    :cond_2
    new-instance v2, Landroid/content/SyncStorageEngine$DayStats;

    invoke-direct {v2, v1}, Landroid/content/SyncStorageEngine$DayStats;-><init>(I)V

    .line 2256
    .local v2, ds:Landroid/content/SyncStorageEngine$DayStats;
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v2, Landroid/content/SyncStorageEngine$DayStats;->successCount:I

    .line 2257
    invoke-virtual {v4}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    iput-wide v7, v2, Landroid/content/SyncStorageEngine$DayStats;->successTime:J

    .line 2258
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v2, Landroid/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 2259
    invoke-virtual {v4}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    iput-wide v7, v2, Landroid/content/SyncStorageEngine$DayStats;->failureTime:J

    .line 2260
    iget-object v7, p0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    array-length v7, v7

    if-ge v5, v7, :cond_0

    .line 2261
    iget-object v7, p0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    aput-object v2, v7, v5

    .line 2262
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2266
    .end local v1           #day:I
    .end local v2           #ds:Landroid/content/SyncStorageEngine$DayStats;
    :cond_3
    const-string v7, "SyncManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown stats token: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2273
    .end local v0           #data:[B
    .end local v4           #in:Landroid/os/Parcel;
    .end local v5           #index:I
    .end local v6           #token:I
    :cond_4
    :goto_1
    return-void

    .line 2270
    :catch_0
    move-exception v3

    .line 2271
    .local v3, e:Ljava/io/IOException;
    const-string v7, "SyncManager"

    const-string v8, "No initial statistics"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private readStatusLocked()V
    .locals 8

    .prologue
    .line 2002
    :try_start_0
    iget-object v5, p0, Landroid/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v0

    .line 2003
    .local v0, data:[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2004
    .local v2, in:Landroid/os/Parcel;
    const/4 v5, 0x0

    array-length v6, v0

    invoke-virtual {v2, v0, v5, v6}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 2005
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2007
    :cond_0
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, token:I
    if-eqz v4, :cond_1

    .line 2008
    const/16 v5, 0x64

    if-ne v4, v5, :cond_2

    .line 2009
    new-instance v3, Landroid/content/SyncStatusInfo;

    invoke-direct {v3, v2}, Landroid/content/SyncStatusInfo;-><init>(Landroid/os/Parcel;)V

    .line 2010
    .local v3, status:Landroid/content/SyncStatusInfo;
    iget-object v5, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v6, v3, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    if-ltz v5, :cond_0

    .line 2011
    const/4 v5, 0x0

    iput-boolean v5, v3, Landroid/content/SyncStatusInfo;->pending:Z

    .line 2014
    iget-object v5, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    iget v6, v3, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v5, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2022
    .end local v0           #data:[B
    .end local v2           #in:Landroid/os/Parcel;
    .end local v3           #status:Landroid/content/SyncStatusInfo;
    .end local v4           #token:I
    :catch_0
    move-exception v1

    .line 2023
    .local v1, e:Ljava/io/IOException;
    const-string v5, "SyncManager"

    const-string v6, "No initial status"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    .end local v1           #e:Ljava/io/IOException;
    :cond_1
    :goto_1
    return-void

    .line 2018
    .restart local v0       #data:[B
    .restart local v2       #in:Landroid/os/Parcel;
    .restart local v4       #token:I
    :cond_2
    :try_start_1
    const-string v5, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown status token: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private removeAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Z)V
    .locals 4
    .parameter "account"
    .parameter "userId"
    .parameter "authorityName"
    .parameter "doWrite"

    .prologue
    .line 1422
    iget-object v2, p0, Landroid/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    new-instance v3, Landroid/accounts/AccountAndUser;

    invoke-direct {v3, p1, p2}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncStorageEngine$AccountInfo;

    .line 1423
    .local v0, accountInfo:Landroid/content/SyncStorageEngine$AccountInfo;
    if-eqz v0, :cond_0

    .line 1424
    iget-object v2, v0, Landroid/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 1425
    .local v1, authorityInfo:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v1, :cond_0

    .line 1426
    iget-object v2, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v3, v1, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 1427
    if-eqz p4, :cond_0

    .line 1428
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 1432
    .end local v1           #authorityInfo:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :cond_0
    return-void
.end method

.method private reportChange(I)V
    .locals 6
    .parameter "which"

    .prologue
    .line 430
    const/4 v2, 0x0

    .line 431
    .local v2, reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    iget-object v5, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v5

    .line 432
    :try_start_0
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .local v0, i:I
    move-object v3, v2

    .line 433
    .end local v2           #reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .local v3, reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 434
    add-int/lit8 v0, v0, -0x1

    .line 435
    :try_start_1
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 436
    .local v1, mask:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/2addr v4, p1

    if-eqz v4, :cond_0

    .line 439
    if-nez v3, :cond_3

    .line 440
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 442
    .end local v3           #reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .restart local v2       #reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    :goto_1
    :try_start_2
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, v2

    .line 443
    .end local v2           #reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .restart local v3       #reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    goto :goto_0

    .line 444
    .end local v1           #mask:Ljava/lang/Integer;
    :cond_1
    :try_start_3
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 445
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 451
    if-eqz v3, :cond_2

    .line 452
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 453
    :goto_2
    if-lez v0, :cond_2

    .line 454
    add-int/lit8 v0, v0, -0x1

    .line 456
    :try_start_4
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ISyncStatusObserver;

    invoke-interface {v4, p1}, Landroid/content/ISyncStatusObserver;->onStatusChanged(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 457
    :catch_0
    move-exception v4

    goto :goto_2

    .line 445
    .end local v0           #i:I
    .end local v3           #reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .restart local v2       #reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    :catchall_0
    move-exception v4

    :goto_3
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v4

    .line 462
    .end local v2           #reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .restart local v0       #i:I
    .restart local v3       #reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    :cond_2
    return-void

    .line 445
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .restart local v2       #reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    goto :goto_3

    .end local v2           #reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .restart local v1       #mask:Ljava/lang/Integer;
    .restart local v3       #reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    :cond_3
    move-object v2, v3

    .end local v3           #reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .restart local v2       #reports:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    goto :goto_1
.end method

.method private requestSync(Landroid/accounts/Account;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .parameter "account"
    .parameter "userId"
    .parameter "authority"
    .parameter "extras"

    .prologue
    .line 2225
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mSyncRequestListener:Landroid/content/SyncStorageEngine$OnSyncRequestListener;

    if-eqz v0, :cond_0

    .line 2227
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mSyncRequestListener:Landroid/content/SyncStorageEngine$OnSyncRequestListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/content/SyncStorageEngine$OnSyncRequestListener;->onSyncRequest(Landroid/accounts/Account;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 2231
    :goto_0
    return-void

    .line 2229
    :cond_0
    invoke-static {p1, p3, p4}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private static unflattenBundle([B)Landroid/os/Bundle;
    .locals 5
    .parameter "flatData"

    .prologue
    .line 2205
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2207
    .local v2, parcel:Landroid/os/Parcel;
    const/4 v3, 0x0

    :try_start_0
    array-length v4, p0

    invoke-virtual {v2, p0, v3, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 2208
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2209
    invoke-virtual {v2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2215
    .local v0, bundle:Landroid/os/Bundle;
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2217
    return-object v0

    .line 2210
    .end local v0           #bundle:Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 2213
    .local v1, e:Ljava/lang/RuntimeException;
    :try_start_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0       #bundle:Landroid/os/Bundle;
    goto :goto_0

    .line 2215
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method private updateOrRemovePeriodicSync(Landroid/accounts/Account;ILjava/lang/String;Landroid/os/Bundle;JZ)V
    .locals 17
    .parameter "account"
    .parameter "userId"
    .parameter "providerName"
    .parameter "extras"
    .parameter "period"
    .parameter "add"

    .prologue
    .line 683
    const-wide/16 v1, 0x0

    cmp-long v1, p5, v1

    if-gtz v1, :cond_0

    .line 684
    const-wide/16 p5, 0x0

    .line 686
    :cond_0
    if-nez p4, :cond_1

    .line 687
    new-instance p4, Landroid/os/Bundle;

    .end local p4
    invoke-direct/range {p4 .. p4}, Landroid/os/Bundle;-><init>()V

    .line 694
    .restart local p4
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 696
    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    :try_start_0
    invoke-direct/range {v1 .. v6}, Landroid/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;IZ)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v9

    .line 698
    .local v9, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-eqz p7, :cond_6

    .line 701
    const/4 v8, 0x0

    .line 702
    .local v8, alreadyPresent:Z
    const/4 v12, 0x0

    .local v12, i:I
    iget-object v1, v9, Landroid/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    .local v7, N:I
    :goto_0
    if-ge v12, v7, :cond_3

    .line 703
    iget-object v1, v9, Landroid/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/Pair;

    .line 704
    .local v15, syncInfo:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    iget-object v11, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Landroid/os/Bundle;

    .line 705
    .local v11, existingExtras:Landroid/os/Bundle;
    move-object/from16 v0, p4

    invoke-static {v11, v0}, Landroid/content/SyncStorageEngine;->equals(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 706
    iget-object v1, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    cmp-long v1, v1, p5

    if-nez v1, :cond_2

    .line 746
    :try_start_1
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 747
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncStorageEngine;->writeStatusLocked()V

    .line 707
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 752
    .end local v7           #N:I
    .end local v8           #alreadyPresent:Z
    .end local v11           #existingExtras:Landroid/os/Bundle;
    .end local v15           #syncInfo:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    :goto_1
    return-void

    .line 709
    .restart local v7       #N:I
    .restart local v8       #alreadyPresent:Z
    .restart local v11       #existingExtras:Landroid/os/Bundle;
    .restart local v15       #syncInfo:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    :cond_2
    :try_start_2
    iget-object v1, v9, Landroid/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v1, v12, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 710
    const/4 v8, 0x1

    .line 716
    .end local v11           #existingExtras:Landroid/os/Bundle;
    .end local v15           #syncInfo:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    :cond_3
    if-nez v8, :cond_4

    .line 717
    iget-object v1, v9, Landroid/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 718
    iget v1, v9, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v14

    .line 719
    .local v14, status:Landroid/content/SyncStatusInfo;
    iget-object v1, v9, Landroid/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const-wide/16 v2, 0x0

    invoke-virtual {v14, v1, v2, v3}, Landroid/content/SyncStatusInfo;->setPeriodicSyncTime(IJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 746
    .end local v7           #N:I
    .end local v8           #alreadyPresent:Z
    .end local v14           #status:Landroid/content/SyncStatusInfo;
    :cond_4
    :try_start_3
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 747
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncStorageEngine;->writeStatusLocked()V

    .line 749
    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 751
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/content/SyncStorageEngine;->reportChange(I)V

    goto :goto_1

    .line 702
    .restart local v7       #N:I
    .restart local v8       #alreadyPresent:Z
    .restart local v11       #existingExtras:Landroid/os/Bundle;
    .restart local v15       #syncInfo:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 723
    .end local v7           #N:I
    .end local v8           #alreadyPresent:Z
    .end local v11           #existingExtras:Landroid/os/Bundle;
    .end local v12           #i:I
    .end local v15           #syncInfo:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    :cond_6
    :try_start_4
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    iget v2, v9, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/SyncStatusInfo;

    .line 724
    .restart local v14       #status:Landroid/content/SyncStatusInfo;
    const/4 v10, 0x0

    .line 725
    .local v10, changed:Z
    iget-object v1, v9, Landroid/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 726
    .local v13, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;>;"
    const/4 v12, 0x0

    .line 727
    .restart local v12       #i:I
    :cond_7
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 728
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/Pair;

    .line 729
    .restart local v15       #syncInfo:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    iget-object v1, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    move-object/from16 v0, p4

    invoke-static {v1, v0}, Landroid/content/SyncStorageEngine;->equals(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 730
    invoke-interface {v13}, Ljava/util/Iterator;->remove()V

    .line 731
    const/4 v10, 0x1

    .line 734
    if-eqz v14, :cond_7

    .line 735
    invoke-virtual {v14, v12}, Landroid/content/SyncStatusInfo;->removePeriodicSyncTime(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 746
    .end local v9           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v10           #changed:Z
    .end local v12           #i:I
    .end local v13           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;>;"
    .end local v14           #status:Landroid/content/SyncStatusInfo;
    .end local v15           #syncInfo:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    :catchall_0
    move-exception v1

    :try_start_5
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 747
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncStorageEngine;->writeStatusLocked()V

    .line 746
    throw v1

    .line 749
    :catchall_1
    move-exception v1

    monitor-exit v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    .line 738
    .restart local v9       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .restart local v10       #changed:Z
    .restart local v12       #i:I
    .restart local v13       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;>;"
    .restart local v14       #status:Landroid/content/SyncStatusInfo;
    .restart local v15       #syncInfo:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 741
    .end local v15           #syncInfo:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    :cond_9
    if-nez v10, :cond_4

    .line 746
    :try_start_6
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 747
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncStorageEngine;->writeStatusLocked()V

    .line 742
    monitor-exit v16
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_1
.end method

.method private writeAccountInfoLocked()V
    .locals 24

    .prologue
    .line 1768
    const/4 v8, 0x0

    .line 1771
    .local v8, fos:Ljava/io/FileOutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v8

    .line 1772
    new-instance v15, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v15}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1773
    .local v15, out:Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v19, "utf-8"

    move-object/from16 v0, v19

    invoke-interface {v15, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1774
    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1775
    const-string v19, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1777
    const/16 v19, 0x0

    const-string v20, "accounts"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1778
    const/16 v19, 0x0

    const-string/jumbo v20, "version"

    const/16 v21, 0x2

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1779
    const/16 v19, 0x0

    const-string/jumbo v20, "nextAuthorityId"

    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/SyncStorageEngine;->mNextAuthorityId:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1780
    const/16 v19, 0x0

    const-string/jumbo v20, "offsetInSeconds"

    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/SyncStorageEngine;->mSyncRandomOffset:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1783
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 1784
    .local v3, M:I
    const/4 v14, 0x0

    .local v14, m:I
    :goto_0
    if-ge v14, v3, :cond_0

    .line 1785
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v17

    .line 1786
    .local v17, userId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    .line 1787
    .local v13, listen:Ljava/lang/Boolean;
    const/16 v19, 0x0

    const-string v20, "listenForTickles"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1788
    const/16 v19, 0x0

    const-string/jumbo v20, "user"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1789
    const/16 v19, 0x0

    const-string v20, "enabled"

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1790
    const/16 v19, 0x0

    const-string v20, "listenForTickles"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1784
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 1793
    .end local v13           #listen:Ljava/lang/Boolean;
    .end local v17           #userId:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 1794
    .local v4, N:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    if-ge v9, v4, :cond_d

    .line 1795
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 1796
    .local v5, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    const/16 v19, 0x0

    const-string v20, "authority"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1797
    const/16 v19, 0x0

    const-string v20, "id"

    iget v0, v5, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1798
    const/16 v19, 0x0

    const-string v20, "account"

    iget-object v0, v5, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1799
    const/16 v19, 0x0

    const-string/jumbo v20, "user"

    iget v0, v5, Landroid/content/SyncStorageEngine$AuthorityInfo;->userId:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1800
    const/16 v19, 0x0

    const-string/jumbo v20, "type"

    iget-object v0, v5, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1801
    const/16 v19, 0x0

    const-string v20, "authority"

    iget-object v0, v5, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1802
    const/16 v19, 0x0

    const-string v20, "enabled"

    iget-boolean v0, v5, Landroid/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1803
    iget v0, v5, Landroid/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    move/from16 v19, v0

    if-gez v19, :cond_3

    .line 1804
    const/16 v19, 0x0

    const-string/jumbo v20, "syncable"

    const-string/jumbo v21, "unknown"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1808
    :goto_2
    iget-object v0, v5, Landroid/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/util/Pair;

    .line 1809
    .local v16, periodicSync:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    const/16 v19, 0x0

    const-string/jumbo v20, "periodicSync"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1810
    const/16 v20, 0x0

    const-string/jumbo v21, "period"

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/Long;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1811
    move-object/from16 v0, v16

    iget-object v7, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Landroid/os/Bundle;

    .line 1812
    .local v7, extras:Landroid/os/Bundle;
    invoke-virtual {v7}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1813
    .local v12, key:Ljava/lang/String;
    const/16 v19, 0x0

    const-string v20, "extra"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1814
    const/16 v19, 0x0

    const-string/jumbo v20, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1815
    invoke-virtual {v7, v12}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    .line 1816
    .local v18, value:Ljava/lang/Object;
    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/Long;

    move/from16 v19, v0

    if-eqz v19, :cond_5

    .line 1817
    const/16 v19, 0x0

    const-string/jumbo v20, "type"

    const-string v21, "long"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1818
    const/16 v19, 0x0

    const-string/jumbo v20, "value1"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1839
    .end local v18           #value:Ljava/lang/Object;
    :cond_1
    :goto_5
    const/16 v19, 0x0

    const-string v20, "extra"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 1851
    .end local v3           #M:I
    .end local v4           #N:I
    .end local v5           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v7           #extras:Landroid/os/Bundle;
    .end local v9           #i:I
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #key:Ljava/lang/String;
    .end local v14           #m:I
    .end local v15           #out:Lorg/xmlpull/v1/XmlSerializer;
    .end local v16           #periodicSync:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    :catch_0
    move-exception v6

    .line 1852
    .local v6, e1:Ljava/io/IOException;
    const-string v19, "SyncManager"

    const-string v20, "Error writing accounts"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1853
    if-eqz v8, :cond_2

    .line 1854
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1857
    .end local v6           #e1:Ljava/io/IOException;
    :cond_2
    :goto_6
    return-void

    .line 1806
    .restart local v3       #M:I
    .restart local v4       #N:I
    .restart local v5       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .restart local v9       #i:I
    .restart local v14       #m:I
    .restart local v15       #out:Lorg/xmlpull/v1/XmlSerializer;
    :cond_3
    const/16 v20, 0x0

    :try_start_1
    const-string/jumbo v21, "syncable"

    iget v0, v5, Landroid/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    move/from16 v19, v0

    if-eqz v19, :cond_4

    const/16 v19, 0x1

    :goto_7
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_2

    :cond_4
    const/16 v19, 0x0

    goto :goto_7

    .line 1819
    .restart local v7       #extras:Landroid/os/Bundle;
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v12       #key:Ljava/lang/String;
    .restart local v16       #periodicSync:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    .restart local v18       #value:Ljava/lang/Object;
    :cond_5
    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 1820
    const/16 v19, 0x0

    const-string/jumbo v20, "type"

    const-string v21, "integer"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1821
    const/16 v19, 0x0

    const-string/jumbo v20, "value1"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_5

    .line 1822
    :cond_6
    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/Boolean;

    move/from16 v19, v0

    if-eqz v19, :cond_7

    .line 1823
    const/16 v19, 0x0

    const-string/jumbo v20, "type"

    const-string v21, "boolean"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1824
    const/16 v19, 0x0

    const-string/jumbo v20, "value1"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_5

    .line 1825
    :cond_7
    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/Float;

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 1826
    const/16 v19, 0x0

    const-string/jumbo v20, "type"

    const-string v21, "float"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1827
    const/16 v19, 0x0

    const-string/jumbo v20, "value1"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_5

    .line 1828
    :cond_8
    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/Double;

    move/from16 v19, v0

    if-eqz v19, :cond_9

    .line 1829
    const/16 v19, 0x0

    const-string/jumbo v20, "type"

    const-string v21, "double"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1830
    const/16 v19, 0x0

    const-string/jumbo v20, "value1"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_5

    .line 1831
    :cond_9
    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v19, v0

    if-eqz v19, :cond_a

    .line 1832
    const/16 v19, 0x0

    const-string/jumbo v20, "type"

    const-string/jumbo v21, "string"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1833
    const/16 v19, 0x0

    const-string/jumbo v20, "value1"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_5

    .line 1834
    :cond_a
    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/accounts/Account;

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 1835
    const/16 v19, 0x0

    const-string/jumbo v20, "type"

    const-string v21, "account"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1836
    const/16 v20, 0x0

    const-string/jumbo v21, "value1"

    move-object/from16 v0, v18

    check-cast v0, Landroid/accounts/Account;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1837
    const/16 v19, 0x0

    const-string/jumbo v20, "value2"

    check-cast v18, Landroid/accounts/Account;

    .end local v18           #value:Ljava/lang/Object;
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_5

    .line 1841
    .end local v12           #key:Ljava/lang/String;
    :cond_b
    const/16 v19, 0x0

    const-string/jumbo v20, "periodicSync"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_3

    .line 1843
    .end local v7           #extras:Landroid/os/Bundle;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v16           #periodicSync:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    :cond_c
    const/16 v19, 0x0

    const-string v20, "authority"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1794
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 1846
    .end local v5           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :cond_d
    const/16 v19, 0x0

    const-string v20, "accounts"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1848
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1850
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_6
.end method

.method private writePendingOperationLocked(Landroid/content/SyncStorageEngine$PendingOperation;Landroid/os/Parcel;)V
    .locals 1
    .parameter "op"
    .parameter "out"

    .prologue
    .line 2118
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2119
    iget v0, p1, Landroid/content/SyncStorageEngine$PendingOperation;->authorityId:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2120
    iget v0, p1, Landroid/content/SyncStorageEngine$PendingOperation;->syncSource:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2121
    iget-object v0, p1, Landroid/content/SyncStorageEngine$PendingOperation;->flatExtras:[B

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/content/SyncStorageEngine$PendingOperation;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 2122
    iget-object v0, p1, Landroid/content/SyncStorageEngine$PendingOperation;->extras:Landroid/os/Bundle;

    invoke-static {v0}, Landroid/content/SyncStorageEngine;->flattenBundle(Landroid/os/Bundle;)[B

    move-result-object v0

    iput-object v0, p1, Landroid/content/SyncStorageEngine$PendingOperation;->flatExtras:[B

    .line 2124
    :cond_0
    iget-object v0, p1, Landroid/content/SyncStorageEngine$PendingOperation;->flatExtras:[B

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2125
    iget-boolean v0, p1, Landroid/content/SyncStorageEngine$PendingOperation;->expedited:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2126
    return-void

    .line 2125
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writePendingOperationsLocked()V
    .locals 8

    .prologue
    .line 2132
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2133
    .local v0, N:I
    const/4 v2, 0x0

    .line 2135
    .local v2, fos:Ljava/io/FileOutputStream;
    if-nez v0, :cond_1

    .line 2137
    :try_start_0
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mPendingFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->truncate()V

    .line 2159
    :cond_0
    :goto_0
    return-void

    .line 2142
    :cond_1
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mPendingFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 2144
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 2145
    .local v5, out:Landroid/os/Parcel;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_2

    .line 2146
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/SyncStorageEngine$PendingOperation;

    .line 2147
    .local v4, op:Landroid/content/SyncStorageEngine$PendingOperation;
    invoke-direct {p0, v4, v5}, Landroid/content/SyncStorageEngine;->writePendingOperationLocked(Landroid/content/SyncStorageEngine$PendingOperation;Landroid/os/Parcel;)V

    .line 2145
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2149
    .end local v4           #op:Landroid/content/SyncStorageEngine$PendingOperation;
    :cond_2
    invoke-virtual {v5}, Landroid/os/Parcel;->marshall()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 2150
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 2152
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mPendingFile:Landroid/util/AtomicFile;

    invoke-virtual {v6, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2153
    .end local v3           #i:I
    .end local v5           #out:Landroid/os/Parcel;
    :catch_0
    move-exception v1

    .line 2154
    .local v1, e1:Ljava/io/IOException;
    const-string v6, "SyncManager"

    const-string v7, "Error writing pending operations"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2155
    if-eqz v2, :cond_0

    .line 2156
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mPendingFile:Landroid/util/AtomicFile;

    invoke-virtual {v6, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_0
.end method

.method private writeStatisticsLocked()V
    .locals 8

    .prologue
    .line 2283
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Landroid/content/SyncStorageEngine;->removeMessages(I)V

    .line 2285
    const/4 v3, 0x0

    .line 2287
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    .line 2288
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 2289
    .local v5, out:Landroid/os/Parcel;
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    array-length v0, v6

    .line 2290
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_0

    .line 2291
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    aget-object v1, v6, v4

    .line 2292
    .local v1, ds:Landroid/content/SyncStorageEngine$DayStats;
    if-nez v1, :cond_2

    .line 2302
    .end local v1           #ds:Landroid/content/SyncStorageEngine$DayStats;
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2303
    invoke-virtual {v5}, Landroid/os/Parcel;->marshall()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 2304
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 2306
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v6, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 2313
    .end local v0           #N:I
    .end local v4           #i:I
    .end local v5           #out:Landroid/os/Parcel;
    :cond_1
    :goto_1
    return-void

    .line 2295
    .restart local v0       #N:I
    .restart local v1       #ds:Landroid/content/SyncStorageEngine$DayStats;
    .restart local v4       #i:I
    .restart local v5       #out:Landroid/os/Parcel;
    :cond_2
    const/16 v6, 0x65

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2296
    iget v6, v1, Landroid/content/SyncStorageEngine$DayStats;->day:I

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2297
    iget v6, v1, Landroid/content/SyncStorageEngine$DayStats;->successCount:I

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2298
    iget-wide v6, v1, Landroid/content/SyncStorageEngine$DayStats;->successTime:J

    invoke-virtual {v5, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 2299
    iget v6, v1, Landroid/content/SyncStorageEngine$DayStats;->failureCount:I

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2300
    iget-wide v6, v1, Landroid/content/SyncStorageEngine$DayStats;->failureTime:J

    invoke-virtual {v5, v6, v7}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2290
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2307
    .end local v0           #N:I
    .end local v1           #ds:Landroid/content/SyncStorageEngine$DayStats;
    .end local v4           #i:I
    .end local v5           #out:Landroid/os/Parcel;
    :catch_0
    move-exception v2

    .line 2308
    .local v2, e1:Ljava/io/IOException;
    const-string v6, "SyncManager"

    const-string v7, "Error writing stats"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2309
    if-eqz v3, :cond_1

    .line 2310
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v6, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_1
.end method

.method private writeStatusLocked()V
    .locals 8

    .prologue
    .line 2035
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Landroid/content/SyncStorageEngine;->removeMessages(I)V

    .line 2037
    const/4 v2, 0x0

    .line 2039
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 2040
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 2041
    .local v4, out:Landroid/os/Parcel;
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2042
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 2043
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/SyncStatusInfo;

    .line 2044
    .local v5, status:Landroid/content/SyncStatusInfo;
    const/16 v6, 0x64

    invoke-virtual {v4, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2045
    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/SyncStatusInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2042
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2047
    .end local v5           #status:Landroid/content/SyncStatusInfo;
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2048
    invoke-virtual {v4}, Landroid/os/Parcel;->marshall()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 2049
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 2051
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v6, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2058
    .end local v0           #N:I
    .end local v3           #i:I
    .end local v4           #out:Landroid/os/Parcel;
    :cond_1
    :goto_1
    return-void

    .line 2052
    :catch_0
    move-exception v1

    .line 2053
    .local v1, e1:Ljava/io/IOException;
    const-string v6, "SyncManager"

    const-string v7, "Error writing status"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2054
    if-eqz v2, :cond_1

    .line 2055
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v6, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_1
.end method


# virtual methods
.method public addActiveSync(Landroid/content/SyncManager$ActiveSyncContext;)Landroid/content/SyncInfo;
    .locals 8
    .parameter "activeSyncContext"

    .prologue
    .line 1004
    iget-object v7, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v7

    .line 1012
    :try_start_0
    iget-object v1, p1, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncOperation;

    iget-object v1, v1, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v2, p1, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncOperation;

    iget v2, v2, Landroid/content/SyncOperation;->userId:I

    iget-object v3, p1, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncOperation;

    iget-object v3, v3, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;IZ)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v6

    .line 1018
    .local v6, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    new-instance v0, Landroid/content/SyncInfo;

    iget v1, v6, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    iget-object v2, v6, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    iget-object v3, v6, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    iget-wide v4, p1, Landroid/content/SyncManager$ActiveSyncContext;->mStartTime:J

    invoke-direct/range {v0 .. v5}, Landroid/content/SyncInfo;-><init>(ILandroid/accounts/Account;Ljava/lang/String;J)V

    .line 1021
    .local v0, syncInfo:Landroid/content/SyncInfo;
    iget v1, v6, Landroid/content/SyncStorageEngine$AuthorityInfo;->userId:I

    invoke-virtual {p0, v1}, Landroid/content/SyncStorageEngine;->getCurrentSyncs(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1022
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1024
    invoke-virtual {p0}, Landroid/content/SyncStorageEngine;->reportActiveChange()V

    .line 1025
    return-object v0

    .line 1022
    .end local v0           #syncInfo:Landroid/content/SyncInfo;
    .end local v6           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public addPeriodicSync(Landroid/accounts/Account;ILjava/lang/String;Landroid/os/Bundle;J)V
    .locals 8
    .parameter "account"
    .parameter "userId"
    .parameter "providerName"
    .parameter "extras"
    .parameter "pollFrequency"

    .prologue
    .line 756
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-direct/range {v0 .. v7}, Landroid/content/SyncStorageEngine;->updateOrRemovePeriodicSync(Landroid/accounts/Account;ILjava/lang/String;Landroid/os/Bundle;JZ)V

    .line 758
    return-void
.end method

.method public addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V
    .locals 3
    .parameter "mask"
    .parameter "callback"

    .prologue
    .line 418
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 419
    :try_start_0
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 420
    monitor-exit v1

    .line 421
    return-void

    .line 420
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearAllBackoffs(Landroid/content/SyncQueue;)V
    .locals 14
    .parameter "syncQueue"

    .prologue
    const-wide/16 v12, -0x1

    .line 620
    const/4 v8, 0x0

    .line 621
    .local v8, changed:Z
    iget-object v11, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v11

    .line 622
    :try_start_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 623
    :try_start_1
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/SyncStorageEngine$AccountInfo;

    .line 624
    .local v6, accountInfo:Landroid/content/SyncStorageEngine$AccountInfo;
    iget-object v0, v6, Landroid/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 625
    .local v7, authorityInfo:Landroid/content/SyncStorageEngine$AuthorityInfo;
    iget-wide v0, v7, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    cmp-long v0, v0, v12

    if-nez v0, :cond_2

    iget-wide v0, v7, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    cmp-long v0, v0, v12

    if-eqz v0, :cond_1

    .line 635
    :cond_2
    const-wide/16 v0, -0x1

    iput-wide v0, v7, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 636
    const-wide/16 v0, -0x1

    iput-wide v0, v7, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    .line 637
    iget-object v0, v6, Landroid/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget-object v1, v0, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget-object v0, v6, Landroid/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget v2, v0, Landroid/accounts/AccountAndUser;->userId:I

    iget-object v3, v7, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    const-wide/16 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/SyncQueue;->onBackoffChanged(Landroid/accounts/Account;ILjava/lang/String;J)V

    .line 639
    const/4 v8, 0x1

    goto :goto_0

    .line 643
    .end local v6           #accountInfo:Landroid/content/SyncStorageEngine$AccountInfo;
    .end local v7           #authorityInfo:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v10           #i$:Ljava/util/Iterator;
    :cond_3
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 644
    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 646
    if-eqz v8, :cond_4

    .line 647
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/content/SyncStorageEngine;->reportChange(I)V

    .line 649
    :cond_4
    return-void

    .line 643
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 644
    :catchall_1
    move-exception v0

    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public clearAndReadState()V
    .locals 2

    .prologue
    .line 1468
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1469
    :try_start_0
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1470
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1471
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1472
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1473
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1475
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->readAccountInfoLocked()V

    .line 1476
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->readStatusLocked()V

    .line 1477
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->readPendingOperationsLocked()V

    .line 1478
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->readStatisticsLocked()V

    .line 1479
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->readAndDeleteLegacyAccountInfoLocked()V

    .line 1480
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 1481
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeStatusLocked()V

    .line 1482
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writePendingOperationsLocked()V

    .line 1483
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeStatisticsLocked()V

    .line 1484
    monitor-exit v1

    .line 1485
    return-void

    .line 1484
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deleteFromPending(Landroid/content/SyncStorageEngine$PendingOperation;)Z
    .locals 12
    .parameter "op"

    .prologue
    .line 875
    const/4 v5, 0x0

    .line 876
    .local v5, res:Z
    iget-object v8, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v8

    .line 884
    :try_start_0
    iget-object v7, p0, Landroid/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 885
    iget-object v7, p0, Landroid/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p0, Landroid/content/SyncStorageEngine;->mNumPendingFinished:I

    const/4 v9, 0x4

    if-lt v7, v9, :cond_4

    .line 887
    :cond_0
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writePendingOperationsLocked()V

    .line 888
    const/4 v7, 0x0

    iput v7, p0, Landroid/content/SyncStorageEngine;->mNumPendingFinished:I

    .line 893
    :goto_0
    iget-object v7, p1, Landroid/content/SyncStorageEngine$PendingOperation;->account:Landroid/accounts/Account;

    iget v9, p1, Landroid/content/SyncStorageEngine$PendingOperation;->userId:I

    iget-object v10, p1, Landroid/content/SyncStorageEngine$PendingOperation;->authority:Ljava/lang/String;

    const-string v11, "deleteFromPending"

    invoke-direct {p0, v7, v9, v10, v11}, Landroid/content/SyncStorageEngine;->getAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Ljava/lang/String;)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v1

    .line 895
    .local v1, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v1, :cond_2

    .line 897
    iget-object v7, p0, Landroid/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 898
    .local v0, N:I
    const/4 v4, 0x0

    .line 899
    .local v4, morePending:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 900
    iget-object v7, p0, Landroid/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncStorageEngine$PendingOperation;

    .line 901
    .local v2, cur:Landroid/content/SyncStorageEngine$PendingOperation;
    iget-object v7, v2, Landroid/content/SyncStorageEngine$PendingOperation;->account:Landroid/accounts/Account;

    iget-object v9, p1, Landroid/content/SyncStorageEngine$PendingOperation;->account:Landroid/accounts/Account;

    invoke-virtual {v7, v9}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, v2, Landroid/content/SyncStorageEngine$PendingOperation;->authority:Ljava/lang/String;

    iget-object v9, p1, Landroid/content/SyncStorageEngine$PendingOperation;->authority:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget v7, v2, Landroid/content/SyncStorageEngine$PendingOperation;->userId:I

    iget v9, p1, Landroid/content/SyncStorageEngine$PendingOperation;->userId:I

    if-ne v7, v9, :cond_5

    .line 904
    const/4 v4, 0x1

    .line 909
    .end local v2           #cur:Landroid/content/SyncStorageEngine$PendingOperation;
    :cond_1
    if-nez v4, :cond_2

    .line 911
    iget v7, v1, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-direct {p0, v7}, Landroid/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v6

    .line 912
    .local v6, status:Landroid/content/SyncStatusInfo;
    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/content/SyncStatusInfo;->pending:Z

    .line 916
    .end local v0           #N:I
    .end local v3           #i:I
    .end local v4           #morePending:Z
    .end local v6           #status:Landroid/content/SyncStatusInfo;
    :cond_2
    const/4 v5, 0x1

    .line 918
    .end local v1           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :cond_3
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 920
    const/4 v7, 0x2

    invoke-direct {p0, v7}, Landroid/content/SyncStorageEngine;->reportChange(I)V

    .line 921
    return v5

    .line 890
    :cond_4
    :try_start_1
    iget v7, p0, Landroid/content/SyncStorageEngine;->mNumPendingFinished:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Landroid/content/SyncStorageEngine;->mNumPendingFinished:I

    goto :goto_0

    .line 918
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 899
    .restart local v0       #N:I
    .restart local v1       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .restart local v2       #cur:Landroid/content/SyncStorageEngine$PendingOperation;
    .restart local v3       #i:I
    .restart local v4       #morePending:Z
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public doDatabaseCleanup([Landroid/accounts/Account;I)V
    .locals 11
    .parameter "accounts"
    .parameter "userId"

    .prologue
    .line 949
    iget-object v9, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v9

    .line 951
    :try_start_0
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    .line 952
    .local v7, removing:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/content/SyncStorageEngine$AuthorityInfo;>;"
    iget-object v8, p0, Landroid/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 953
    .local v1, accIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/SyncStorageEngine$AccountInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 954
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncStorageEngine$AccountInfo;

    .line 955
    .local v0, acc:Landroid/content/SyncStorageEngine$AccountInfo;
    iget-object v8, v0, Landroid/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget-object v8, v8, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    invoke-static {p1, v8}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, v0, Landroid/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget v8, v8, Landroid/accounts/AccountAndUser;->userId:I

    if-ne v8, p2, :cond_0

    .line 961
    iget-object v8, v0, Landroid/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 962
    .local v2, auth:Landroid/content/SyncStorageEngine$AuthorityInfo;
    iget v8, v2, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-virtual {v7, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 995
    .end local v0           #acc:Landroid/content/SyncStorageEngine$AccountInfo;
    .end local v1           #accIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/SyncStorageEngine$AccountInfo;>;"
    .end local v2           #auth:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v7           #removing:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/content/SyncStorageEngine$AuthorityInfo;>;"
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 964
    .restart local v0       #acc:Landroid/content/SyncStorageEngine$AccountInfo;
    .restart local v1       #accIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/SyncStorageEngine$AccountInfo;>;"
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v7       #removing:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/content/SyncStorageEngine$AuthorityInfo;>;"
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 969
    .end local v0           #acc:Landroid/content/SyncStorageEngine$AccountInfo;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_2
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 970
    .local v3, i:I
    if-lez v3, :cond_8

    .line 971
    :cond_3
    if-lez v3, :cond_7

    .line 972
    add-int/lit8 v3, v3, -0x1

    .line 973
    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 974
    .local v5, ident:I
    iget-object v8, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 975
    iget-object v8, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 976
    .local v6, j:I
    :cond_4
    :goto_2
    if-lez v6, :cond_5

    .line 977
    add-int/lit8 v6, v6, -0x1

    .line 978
    iget-object v8, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    if-ne v8, v5, :cond_4

    .line 979
    iget-object v8, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    iget-object v10, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v10, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_2

    .line 982
    :cond_5
    iget-object v8, p0, Landroid/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 983
    :cond_6
    :goto_3
    if-lez v6, :cond_3

    .line 984
    add-int/lit8 v6, v6, -0x1

    .line 985
    iget-object v8, p0, Landroid/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/SyncStorageEngine$SyncHistoryItem;

    iget v8, v8, Landroid/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    if-ne v8, v5, :cond_6

    .line 986
    iget-object v8, p0, Landroid/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 990
    .end local v5           #ident:I
    .end local v6           #j:I
    :cond_7
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 991
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeStatusLocked()V

    .line 992
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writePendingOperationsLocked()V

    .line 993
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeStatisticsLocked()V

    .line 995
    :cond_8
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 996
    return-void
.end method

.method public getAuthorities()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/SyncStorageEngine$AuthorityInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1250
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v4

    .line 1251
    :try_start_0
    iget-object v3, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1252
    .local v0, N:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1253
    .local v2, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/SyncStorageEngine$AuthorityInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1255
    new-instance v5, Landroid/content/SyncStorageEngine$AuthorityInfo;

    iget-object v3, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/SyncStorageEngine$AuthorityInfo;

    invoke-direct {v5, v3}, Landroid/content/SyncStorageEngine$AuthorityInfo;-><init>(Landroid/content/SyncStorageEngine$AuthorityInfo;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1253
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1257
    :cond_0
    monitor-exit v4

    return-object v2

    .line 1258
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/SyncStorageEngine$AuthorityInfo;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getAuthority(I)Landroid/content/SyncStorageEngine$AuthorityInfo;
    .locals 2
    .parameter "authorityId"

    .prologue
    .line 819
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 820
    :try_start_0
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncStorageEngine$AuthorityInfo;

    monitor-exit v1

    return-object v0

    .line 821
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBackoff(Landroid/accounts/Account;ILjava/lang/String;)Landroid/util/Pair;
    .locals 7
    .parameter "account"
    .parameter "userId"
    .parameter "providerName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 564
    iget-object v2, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v2

    .line 565
    :try_start_0
    const-string v1, "getBackoff"

    invoke-direct {p0, p1, p2, p3, v1}, Landroid/content/SyncStorageEngine;->getAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Ljava/lang/String;)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 567
    .local v0, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v0, :cond_0

    iget-wide v3, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-gez v1, :cond_1

    .line 568
    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    .line 570
    :goto_0
    return-object v1

    :cond_1
    iget-wide v3, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v3, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    monitor-exit v2

    goto :goto_0

    .line 571
    .end local v0           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCurrentSyncs(I)Ljava/util/List;
    .locals 3
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1218
    iget-object v2, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1219
    :try_start_0
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mCurrentSyncs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1220
    .local v0, syncs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/SyncInfo;>;"
    if-nez v0, :cond_0

    .line 1221
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #syncs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/SyncInfo;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1222
    .restart local v0       #syncs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/SyncInfo;>;"
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mCurrentSyncs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1224
    :cond_0
    monitor-exit v2

    return-object v0

    .line 1225
    .end local v0           #syncs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/SyncInfo;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDayStatistics()[Landroid/content/SyncStorageEngine$DayStats;
    .locals 6

    .prologue
    .line 1337
    iget-object v2, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1338
    :try_start_0
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    array-length v1, v1

    new-array v0, v1, [Landroid/content/SyncStorageEngine$DayStats;

    .line 1339
    .local v0, ds:[Landroid/content/SyncStorageEngine$DayStats;
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {v1, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1340
    monitor-exit v2

    return-object v0

    .line 1341
    .end local v0           #ds:[Landroid/content/SyncStorageEngine$DayStats;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDelayUntilTime(Landroid/accounts/Account;ILjava/lang/String;)J
    .locals 4
    .parameter "account"
    .parameter "userId"
    .parameter "providerName"

    .prologue
    .line 670
    iget-object v3, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v3

    .line 671
    :try_start_0
    const-string v1, "getDelayUntil"

    invoke-direct {p0, p1, p2, p3, v1}, Landroid/content/SyncStorageEngine;->getAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Ljava/lang/String;)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 673
    .local v0, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-nez v0, :cond_0

    .line 674
    const-wide/16 v1, 0x0

    monitor-exit v3

    .line 676
    :goto_0
    return-wide v1

    :cond_0
    iget-wide v1, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    monitor-exit v3

    goto :goto_0

    .line 677
    .end local v0           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I
    .locals 5
    .parameter "account"
    .parameter "userId"
    .parameter "providerName"

    .prologue
    const/4 v2, -0x1

    .line 512
    iget-object v3, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v3

    .line 513
    if-eqz p1, :cond_1

    .line 514
    :try_start_0
    const-string v4, "getIsSyncable"

    invoke-direct {p0, p1, p2, p3, v4}, Landroid/content/SyncStorageEngine;->getAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Ljava/lang/String;)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 516
    .local v0, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-nez v0, :cond_0

    .line 517
    monitor-exit v3

    .line 530
    .end local v0           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :goto_0
    return v2

    .line 519
    .restart local v0       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :cond_0
    iget v2, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    monitor-exit v3

    goto :goto_0

    .line 531
    .end local v0           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 522
    :cond_1
    :try_start_1
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 523
    .local v1, i:I
    :cond_2
    if-lez v1, :cond_3

    .line 524
    add-int/lit8 v1, v1, -0x1

    .line 525
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 526
    .restart local v0       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    iget-object v4, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 527
    iget v2, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    monitor-exit v3

    goto :goto_0

    .line 530
    .end local v0           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getMasterSyncAutomatically(I)Z
    .locals 3
    .parameter "userId"

    .prologue
    .line 798
    iget-object v2, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v2

    .line 799
    :try_start_0
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 800
    .local v0, auto:Ljava/lang/Boolean;
    if-nez v0, :cond_0

    iget-boolean v1, p0, Landroid/content/SyncStorageEngine;->mDefaultMasterSyncAutomatically:Z

    :goto_0
    monitor-exit v2

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    .line 801
    .end local v0           #auto:Ljava/lang/Boolean;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getOrCreateAuthority(Landroid/accounts/Account;ILjava/lang/String;)Landroid/content/SyncStorageEngine$AuthorityInfo;
    .locals 7
    .parameter "account"
    .parameter "userId"
    .parameter "authority"

    .prologue
    .line 805
    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v6

    .line 806
    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    :try_start_0
    invoke-direct/range {v0 .. v5}, Landroid/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;IZ)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    monitor-exit v6

    return-object v0

    .line 809
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getOrCreateSyncStatus(Landroid/content/SyncStorageEngine$AuthorityInfo;)Landroid/content/SyncStatusInfo;
    .locals 2
    .parameter "authority"

    .prologue
    .line 1435
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1436
    :try_start_0
    iget v0, p1, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-direct {p0, v0}, Landroid/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1437
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPendingOperationCount()I
    .locals 2

    .prologue
    .line 939
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 940
    :try_start_0
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 941
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPendingOperations()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/SyncStorageEngine$PendingOperation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 930
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 931
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 932
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPeriodicSyncs(Landroid/accounts/Account;ILjava/lang/String;)Ljava/util/List;
    .locals 11
    .parameter "account"
    .parameter "userId"
    .parameter "providerName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/PeriodicSync;",
            ">;"
        }
    .end annotation

    .prologue
    .line 767
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 768
    .local v9, syncs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/PeriodicSync;>;"
    iget-object v10, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v10

    .line 769
    :try_start_0
    const-string v0, "getPeriodicSyncs"

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/content/SyncStorageEngine;->getAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Ljava/lang/String;)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v6

    .line 771
    .local v6, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v6, :cond_0

    .line 772
    iget-object v0, v6, Landroid/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    .line 773
    .local v8, item:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    new-instance v0, Landroid/content/PeriodicSync;

    iget-object v3, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    iget-object v1, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v1, p1

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Landroid/content/PeriodicSync;-><init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 777
    .end local v6           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #item:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Bundle;Ljava/lang/Long;>;"
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .restart local v6       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :cond_0
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 778
    return-object v9
.end method

.method public getStatusByAccountAndAuthority(Landroid/accounts/Account;ILjava/lang/String;)Landroid/content/SyncStatusInfo;
    .locals 7
    .parameter "account"
    .parameter "userId"
    .parameter "authority"

    .prologue
    .line 1270
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 1271
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 1273
    :cond_1
    iget-object v5, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v5

    .line 1274
    :try_start_0
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1275
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 1276
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncStatusInfo;

    .line 1277
    .local v2, cur:Landroid/content/SyncStatusInfo;
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v6, v2, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 1279
    .local v1, ainfo:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v1, :cond_2

    iget-object v4, v1, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, v1, Landroid/content/SyncStorageEngine$AuthorityInfo;->userId:I

    if-ne v4, p2, :cond_2

    iget-object v4, v1, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    invoke-virtual {p1, v4}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1282
    monitor-exit v5

    .line 1285
    .end local v1           #ainfo:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v2           #cur:Landroid/content/SyncStatusInfo;
    :goto_1
    return-object v2

    .line 1275
    .restart local v1       #ainfo:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .restart local v2       #cur:Landroid/content/SyncStatusInfo;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1285
    .end local v1           #ainfo:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v2           #cur:Landroid/content/SyncStatusInfo;
    :cond_3
    const/4 v2, 0x0

    monitor-exit v5

    goto :goto_1

    .line 1286
    .end local v0           #N:I
    .end local v3           #i:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;)Z
    .locals 6
    .parameter "account"
    .parameter "userId"
    .parameter "providerName"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 465
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v4

    .line 466
    if-eqz p1, :cond_1

    .line 467
    :try_start_0
    const-string v5, "getSyncAutomatically"

    invoke-direct {p0, p1, p2, p3, v5}, Landroid/content/SyncStorageEngine;->getAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Ljava/lang/String;)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 469
    .local v0, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v0, :cond_0

    iget-boolean v5, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-eqz v5, :cond_0

    :goto_0
    monitor-exit v4

    .line 482
    .end local v0           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :goto_1
    return v2

    .restart local v0       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :cond_0
    move v2, v3

    .line 469
    goto :goto_0

    .line 472
    .end local v0           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :cond_1
    iget-object v5, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 473
    .local v1, i:I
    :cond_2
    if-lez v1, :cond_3

    .line 474
    add-int/lit8 v1, v1, -0x1

    .line 475
    iget-object v5, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 476
    .restart local v0       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    iget-object v5, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->userId:I

    if-ne v5, p2, :cond_2

    iget-boolean v5, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-eqz v5, :cond_2

    .line 479
    monitor-exit v4

    goto :goto_1

    .line 483
    .end local v0           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 482
    .restart local v1       #i:I
    :cond_3
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    goto :goto_1
.end method

.method public getSyncHistory()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/SyncStorageEngine$SyncHistoryItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1321
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v4

    .line 1322
    :try_start_0
    iget-object v3, p0, Landroid/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1323
    .local v0, N:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1324
    .local v2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/SyncStorageEngine$SyncHistoryItem;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1325
    iget-object v3, p0, Landroid/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1324
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1327
    :cond_0
    monitor-exit v4

    return-object v2

    .line 1328
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/SyncStorageEngine$SyncHistoryItem;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getSyncRandomOffset()I
    .locals 1

    .prologue
    .line 414
    iget v0, p0, Landroid/content/SyncStorageEngine;->mSyncRandomOffset:I

    return v0
.end method

.method public getSyncStatus()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/SyncStatusInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1234
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v4

    .line 1235
    :try_start_0
    iget-object v3, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1236
    .local v0, N:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1237
    .local v2, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/SyncStatusInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1238
    iget-object v3, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1237
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1240
    :cond_0
    monitor-exit v4

    return-object v2

    .line 1241
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/SyncStatusInfo;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 402
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 403
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 404
    :try_start_0
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeStatusLocked()V

    .line 405
    monitor-exit v1

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 405
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 406
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 407
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 408
    :try_start_1
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeStatisticsLocked()V

    .line 409
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public insertIntoPending(Landroid/content/SyncStorageEngine$PendingOperation;)Landroid/content/SyncStorageEngine$PendingOperation;
    .locals 10
    .parameter "op"

    .prologue
    .line 844
    iget-object v9, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v9

    .line 853
    :try_start_0
    iget-object v1, p1, Landroid/content/SyncStorageEngine$PendingOperation;->account:Landroid/accounts/Account;

    iget v2, p1, Landroid/content/SyncStorageEngine$PendingOperation;->userId:I

    iget-object v3, p1, Landroid/content/SyncStorageEngine$PendingOperation;->authority:Ljava/lang/String;

    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;IZ)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v6

    .line 857
    .local v6, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-nez v6, :cond_0

    .line 858
    const/4 v7, 0x0

    monitor-exit v9

    .line 871
    :goto_0
    return-object v7

    .line 861
    :cond_0
    new-instance v7, Landroid/content/SyncStorageEngine$PendingOperation;

    invoke-direct {v7, p1}, Landroid/content/SyncStorageEngine$PendingOperation;-><init>(Landroid/content/SyncStorageEngine$PendingOperation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 862
    .end local p1
    .local v7, op:Landroid/content/SyncStorageEngine$PendingOperation;
    :try_start_1
    iget v0, v6, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    iput v0, v7, Landroid/content/SyncStorageEngine$PendingOperation;->authorityId:I

    .line 863
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 864
    invoke-direct {p0, v7}, Landroid/content/SyncStorageEngine;->appendPendingOperationLocked(Landroid/content/SyncStorageEngine$PendingOperation;)V

    .line 866
    iget v0, v6, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-direct {p0, v0}, Landroid/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v8

    .line 867
    .local v8, status:Landroid/content/SyncStatusInfo;
    const/4 v0, 0x1

    iput-boolean v0, v8, Landroid/content/SyncStatusInfo;->pending:Z

    .line 868
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 870
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/content/SyncStorageEngine;->reportChange(I)V

    move-object p1, v7

    .line 871
    .end local v7           #op:Landroid/content/SyncStorageEngine$PendingOperation;
    .restart local p1
    goto :goto_0

    .line 868
    .end local v6           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v8           #status:Landroid/content/SyncStatusInfo;
    :catchall_0
    move-exception v0

    :goto_1
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .end local p1
    .restart local v6       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .restart local v7       #op:Landroid/content/SyncStorageEngine$PendingOperation;
    :catchall_1
    move-exception v0

    move-object p1, v7

    .end local v7           #op:Landroid/content/SyncStorageEngine$PendingOperation;
    .restart local p1
    goto :goto_1
.end method

.method public insertStartSyncEvent(Landroid/accounts/Account;ILjava/lang/String;JIZ)J
    .locals 7
    .parameter "accountName"
    .parameter "userId"
    .parameter "authorityName"
    .parameter "now"
    .parameter "source"
    .parameter "initialization"

    .prologue
    .line 1057
    iget-object v5, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v5

    .line 1062
    :try_start_0
    const-string v4, "insertStartSyncEvent"

    invoke-direct {p0, p1, p2, p3, v4}, Landroid/content/SyncStorageEngine;->getAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Ljava/lang/String;)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 1064
    .local v0, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-nez v0, :cond_0

    .line 1065
    const-wide/16 v1, -0x1

    monitor-exit v5

    .line 1084
    :goto_0
    return-wide v1

    .line 1067
    :cond_0
    new-instance v3, Landroid/content/SyncStorageEngine$SyncHistoryItem;

    invoke-direct {v3}, Landroid/content/SyncStorageEngine$SyncHistoryItem;-><init>()V

    .line 1068
    .local v3, item:Landroid/content/SyncStorageEngine$SyncHistoryItem;
    iput-boolean p7, v3, Landroid/content/SyncStorageEngine$SyncHistoryItem;->initialization:Z

    .line 1069
    iget v4, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->ident:I

    iput v4, v3, Landroid/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    .line 1070
    iget v4, p0, Landroid/content/SyncStorageEngine;->mNextHistoryId:I

    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Landroid/content/SyncStorageEngine;->mNextHistoryId:I

    iput v4, v3, Landroid/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    .line 1071
    iget v4, p0, Landroid/content/SyncStorageEngine;->mNextHistoryId:I

    if-gez v4, :cond_1

    const/4 v4, 0x0

    iput v4, p0, Landroid/content/SyncStorageEngine;->mNextHistoryId:I

    .line 1072
    :cond_1
    iput-wide p4, v3, Landroid/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    .line 1073
    iput p6, v3, Landroid/content/SyncStorageEngine$SyncHistoryItem;->source:I

    .line 1074
    const/4 v4, 0x0

    iput v4, v3, Landroid/content/SyncStorageEngine$SyncHistoryItem;->event:I

    .line 1075
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1076
    :goto_1
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v6, 0x64

    if-le v4, v6, :cond_2

    .line 1077
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 1081
    .end local v0           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v3           #item:Landroid/content/SyncStorageEngine$SyncHistoryItem;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1079
    .restart local v0       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .restart local v3       #item:Landroid/content/SyncStorageEngine$SyncHistoryItem;
    :cond_2
    :try_start_1
    iget v4, v3, Landroid/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    int-to-long v1, v4

    .line 1081
    .local v1, id:J
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1083
    const/16 v4, 0x8

    invoke-direct {p0, v4}, Landroid/content/SyncStorageEngine;->reportChange(I)V

    goto :goto_0
.end method

.method public isSyncActive(Landroid/accounts/Account;ILjava/lang/String;)Z
    .locals 5
    .parameter "account"
    .parameter "userId"
    .parameter "authority"

    .prologue
    .line 829
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v4

    .line 830
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/content/SyncStorageEngine;->getCurrentSyncs(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncInfo;

    .line 831
    .local v2, syncInfo:Landroid/content/SyncInfo;
    iget v3, v2, Landroid/content/SyncInfo;->authorityId:I

    invoke-virtual {p0, v3}, Landroid/content/SyncStorageEngine;->getAuthority(I)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 832
    .local v0, ainfo:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    invoke-virtual {v3, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->userId:I

    if-ne v3, p2, :cond_0

    .line 835
    const/4 v3, 0x1

    monitor-exit v4

    .line 840
    .end local v0           #ainfo:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v2           #syncInfo:Landroid/content/SyncInfo;
    :goto_0
    return v3

    .line 838
    :cond_1
    monitor-exit v4

    .line 840
    const/4 v3, 0x0

    goto :goto_0

    .line 838
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public isSyncPending(Landroid/accounts/Account;ILjava/lang/String;)Z
    .locals 7
    .parameter "account"
    .parameter "userId"
    .parameter "authority"

    .prologue
    .line 1293
    iget-object v5, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v5

    .line 1294
    :try_start_0
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1295
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 1296
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncStatusInfo;

    .line 1297
    .local v2, cur:Landroid/content/SyncStatusInfo;
    iget-object v4, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v6, v2, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 1298
    .local v1, ainfo:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-nez v1, :cond_1

    .line 1295
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1301
    :cond_1
    iget v4, v1, Landroid/content/SyncStorageEngine$AuthorityInfo;->userId:I

    if-ne p2, v4, :cond_0

    .line 1304
    if-eqz p1, :cond_2

    iget-object v4, v1, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    invoke-virtual {v4, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1307
    :cond_2
    iget-object v4, v1, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, v2, Landroid/content/SyncStatusInfo;->pending:Z

    if-eqz v4, :cond_0

    .line 1308
    const/4 v4, 0x1

    monitor-exit v5

    .line 1311
    .end local v1           #ainfo:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v2           #cur:Landroid/content/SyncStatusInfo;
    :goto_1
    return v4

    :cond_3
    const/4 v4, 0x0

    monitor-exit v5

    goto :goto_1

    .line 1312
    .end local v0           #N:I
    .end local v3           #i:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public removeActiveSync(Landroid/content/SyncInfo;I)V
    .locals 2
    .parameter "syncInfo"
    .parameter "userId"

    .prologue
    .line 1032
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1038
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/content/SyncStorageEngine;->getCurrentSyncs(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1039
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1041
    invoke-virtual {p0}, Landroid/content/SyncStorageEngine;->reportActiveChange()V

    .line 1042
    return-void

    .line 1039
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public removeAuthority(Landroid/accounts/Account;ILjava/lang/String;)V
    .locals 2
    .parameter "account"
    .parameter "userId"
    .parameter "authority"

    .prologue
    .line 813
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 814
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/content/SyncStorageEngine;->removeAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Z)V

    .line 815
    monitor-exit v1

    .line 816
    return-void

    .line 815
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removePeriodicSync(Landroid/accounts/Account;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 8
    .parameter "account"
    .parameter "userId"
    .parameter "providerName"
    .parameter "extras"

    .prologue
    .line 762
    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Landroid/content/SyncStorageEngine;->updateOrRemovePeriodicSync(Landroid/accounts/Account;ILjava/lang/String;Landroid/os/Bundle;JZ)V

    .line 764
    return-void
.end method

.method public removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 424
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 425
    :try_start_0
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 426
    monitor-exit v1

    .line 427
    return-void

    .line 426
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reportActiveChange()V
    .locals 1

    .prologue
    .line 1048
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/content/SyncStorageEngine;->reportChange(I)V

    .line 1049
    return-void
.end method

.method public setBackoff(Landroid/accounts/Account;ILjava/lang/String;JJ)V
    .locals 15
    .parameter "account"
    .parameter "userId"
    .parameter "providerName"
    .parameter "nextSyncTime"
    .parameter "nextDelay"

    .prologue
    .line 581
    const/4 v11, 0x0

    .line 582
    .local v11, changed:Z
    iget-object v14, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v14

    .line 583
    if-eqz p1, :cond_0

    if-nez p3, :cond_6

    .line 584
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/SyncStorageEngine$AccountInfo;

    .line 585
    .local v8, accountInfo:Landroid/content/SyncStorageEngine$AccountInfo;
    if-eqz p1, :cond_2

    iget-object v2, v8, Landroid/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget-object v2, v2, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v8, Landroid/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget v2, v2, Landroid/accounts/AccountAndUser;->userId:I

    move/from16 v0, p2

    if-ne v0, v2, :cond_1

    .line 589
    :cond_2
    iget-object v2, v8, Landroid/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/SyncStorageEngine$AuthorityInfo;

    .line 590
    .local v10, authorityInfo:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-eqz p3, :cond_4

    iget-object v2, v10, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 593
    :cond_4
    iget-wide v2, v10, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    cmp-long v2, v2, p4

    if-nez v2, :cond_5

    iget-wide v2, v10, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    cmp-long v2, v2, p6

    if-eqz v2, :cond_3

    .line 595
    :cond_5
    move-wide/from16 v0, p4

    iput-wide v0, v10, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 596
    move-wide/from16 v0, p6

    iput-wide v0, v10, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    .line 597
    const/4 v11, 0x1

    goto :goto_0

    .line 602
    .end local v8           #accountInfo:Landroid/content/SyncStorageEngine$AccountInfo;
    .end local v10           #authorityInfo:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v13           #i$:Ljava/util/Iterator;
    :cond_6
    const/4 v6, -0x1

    const/4 v7, 0x1

    move-object v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v2 .. v7}, Landroid/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;IZ)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v9

    .line 605
    .local v9, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    iget-wide v2, v9, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    cmp-long v2, v2, p4

    if-nez v2, :cond_8

    iget-wide v2, v9, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    cmp-long v2, v2, p6

    if-nez v2, :cond_8

    .line 606
    monitor-exit v14

    .line 617
    .end local v9           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :cond_7
    :goto_1
    return-void

    .line 608
    .restart local v9       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :cond_8
    move-wide/from16 v0, p4

    iput-wide v0, v9, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 609
    move-wide/from16 v0, p6

    iput-wide v0, v9, Landroid/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    .line 610
    const/4 v11, 0x1

    .line 612
    .end local v9           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :cond_9
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 614
    if-eqz v11, :cond_7

    .line 615
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/content/SyncStorageEngine;->reportChange(I)V

    goto :goto_1

    .line 612
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setDelayUntilTime(Landroid/accounts/Account;ILjava/lang/String;J)V
    .locals 9
    .parameter "account"
    .parameter "userId"
    .parameter "providerName"
    .parameter "delayUntil"

    .prologue
    const/4 v8, 0x1

    .line 657
    iget-object v7, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v7

    .line 658
    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    :try_start_0
    invoke-direct/range {v0 .. v5}, Landroid/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;IZ)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v6

    .line 660
    .local v6, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    iget-wide v0, v6, Landroid/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    cmp-long v0, v0, p4

    if-nez v0, :cond_0

    .line 661
    monitor-exit v7

    .line 667
    :goto_0
    return-void

    .line 663
    :cond_0
    iput-wide p4, v6, Landroid/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    .line 664
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 666
    invoke-direct {p0, v8}, Landroid/content/SyncStorageEngine;->reportChange(I)V

    goto :goto_0

    .line 664
    .end local v6           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setIsSyncable(Landroid/accounts/Account;ILjava/lang/String;I)V
    .locals 9
    .parameter "account"
    .parameter "userId"
    .parameter "providerName"
    .parameter "syncable"

    .prologue
    const/4 v8, 0x1

    const/4 v0, -0x1

    .line 535
    if-le p4, v8, :cond_1

    .line 536
    const/4 p4, 0x1

    .line 544
    :cond_0
    :goto_0
    iget-object v7, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v7

    .line 545
    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    :try_start_0
    invoke-direct/range {v0 .. v5}, Landroid/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;IZ)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v6

    .line 547
    .local v6, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    iget v0, v6, Landroid/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    if-ne v0, p4, :cond_2

    .line 551
    monitor-exit v7

    .line 561
    :goto_1
    return-void

    .line 537
    .end local v6           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :cond_1
    if-ge p4, v0, :cond_0

    .line 538
    const/4 p4, -0x1

    goto :goto_0

    .line 553
    .restart local v6       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :cond_2
    iput p4, v6, Landroid/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    .line 554
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 555
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    if-lez p4, :cond_3

    .line 558
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/content/SyncStorageEngine;->requestSync(Landroid/accounts/Account;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 560
    :cond_3
    invoke-direct {p0, v8}, Landroid/content/SyncStorageEngine;->reportChange(I)V

    goto :goto_1

    .line 555
    .end local v6           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setMasterSyncAutomatically(ZI)V
    .locals 5
    .parameter "flag"
    .parameter "userId"

    .prologue
    const/4 v4, 0x0

    .line 782
    iget-object v2, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v2

    .line 783
    :try_start_0
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 784
    .local v0, auto:Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, p1, :cond_0

    .line 785
    monitor-exit v2

    .line 795
    :goto_0
    return-void

    .line 787
    :cond_0
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 788
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 789
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 790
    if-eqz p1, :cond_1

    .line 791
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v4, p2, v4, v1}, Landroid/content/SyncStorageEngine;->requestSync(Landroid/accounts/Account;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 793
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/content/SyncStorageEngine;->reportChange(I)V

    .line 794
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/content/SyncStorageEngine;->SYNC_CONNECTION_SETTING_CHANGED_INTENT:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 789
    .end local v0           #auto:Ljava/lang/Boolean;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected setOnSyncRequestListener(Landroid/content/SyncStorageEngine$OnSyncRequestListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 396
    iget-object v0, p0, Landroid/content/SyncStorageEngine;->mSyncRequestListener:Landroid/content/SyncStorageEngine$OnSyncRequestListener;

    if-nez v0, :cond_0

    .line 397
    iput-object p1, p0, Landroid/content/SyncStorageEngine;->mSyncRequestListener:Landroid/content/SyncStorageEngine$OnSyncRequestListener;

    .line 399
    :cond_0
    return-void
.end method

.method public setSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;Z)V
    .locals 8
    .parameter "account"
    .parameter "userId"
    .parameter "providerName"
    .parameter "sync"

    .prologue
    .line 492
    iget-object v7, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v7

    .line 493
    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    :try_start_0
    invoke-direct/range {v0 .. v5}, Landroid/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;IZ)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v6

    .line 495
    .local v6, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    iget-boolean v0, v6, Landroid/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-ne v0, p4, :cond_0

    .line 499
    monitor-exit v7

    .line 509
    :goto_0
    return-void

    .line 501
    :cond_0
    iput-boolean p4, v6, Landroid/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 502
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 503
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    if-eqz p4, :cond_1

    .line 506
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/content/SyncStorageEngine;->requestSync(Landroid/accounts/Account;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 508
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/content/SyncStorageEngine;->reportChange(I)V

    goto :goto_0

    .line 503
    .end local v6           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public stopSyncEvent(JJLjava/lang/String;JJ)V
    .locals 17
    .parameter "historyId"
    .parameter "elapsedTime"
    .parameter "resultMessage"
    .parameter "downstreamActivity"
    .parameter "upstreamActivity"

    .prologue
    .line 1107
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v12

    .line 1111
    const/4 v5, 0x0

    .line 1112
    .local v5, item:Landroid/content/SyncStorageEngine$SyncHistoryItem;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1113
    .local v4, i:I
    :goto_0
    if-lez v4, :cond_0

    .line 1114
    add-int/lit8 v4, v4, -0x1

    .line 1115
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;

    move-object v5, v0

    .line 1116
    iget v11, v5, Landroid/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    int-to-long v13, v11

    cmp-long v11, v13, p1

    if-nez v11, :cond_1

    .line 1122
    :cond_0
    if-nez v5, :cond_2

    .line 1123
    const-string v11, "SyncManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "stopSyncEvent: no history for id "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, p1

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    monitor-exit v12

    .line 1211
    :goto_1
    return-void

    .line 1119
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1127
    :cond_2
    move-wide/from16 v0, p3

    iput-wide v0, v5, Landroid/content/SyncStorageEngine$SyncHistoryItem;->elapsedTime:J

    .line 1128
    const/4 v11, 0x1

    iput v11, v5, Landroid/content/SyncStorageEngine$SyncHistoryItem;->event:I

    .line 1129
    move-object/from16 v0, p5

    iput-object v0, v5, Landroid/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    .line 1130
    move-wide/from16 v0, p6

    iput-wide v0, v5, Landroid/content/SyncStorageEngine$SyncHistoryItem;->downstreamActivity:J

    .line 1131
    move-wide/from16 v0, p8

    iput-wide v0, v5, Landroid/content/SyncStorageEngine$SyncHistoryItem;->upstreamActivity:J

    .line 1133
    iget v11, v5, Landroid/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v8

    .line 1135
    .local v8, status:Landroid/content/SyncStatusInfo;
    iget v11, v8, Landroid/content/SyncStatusInfo;->numSyncs:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v8, Landroid/content/SyncStatusInfo;->numSyncs:I

    .line 1136
    iget-wide v13, v8, Landroid/content/SyncStatusInfo;->totalElapsedTime:J

    add-long v13, v13, p3

    iput-wide v13, v8, Landroid/content/SyncStatusInfo;->totalElapsedTime:J

    .line 1137
    iget v11, v5, Landroid/content/SyncStorageEngine$SyncHistoryItem;->source:I

    packed-switch v11, :pswitch_data_0

    .line 1155
    :goto_2
    const/4 v9, 0x0

    .line 1156
    .local v9, writeStatisticsNow:Z
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncStorageEngine;->getCurrentDayLocked()I

    move-result v2

    .line 1157
    .local v2, day:I
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    const/4 v13, 0x0

    aget-object v11, v11, v13

    if-nez v11, :cond_9

    .line 1158
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    const/4 v13, 0x0

    new-instance v14, Landroid/content/SyncStorageEngine$DayStats;

    invoke-direct {v14, v2}, Landroid/content/SyncStorageEngine$DayStats;-><init>(I)V

    aput-object v14, v11, v13

    .line 1165
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    const/4 v13, 0x0

    aget-object v3, v11, v13

    .line 1167
    .local v3, ds:Landroid/content/SyncStorageEngine$DayStats;
    iget-wide v13, v5, Landroid/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    add-long v6, v13, p3

    .line 1168
    .local v6, lastSyncTime:J
    const/4 v10, 0x0

    .line 1169
    .local v10, writeStatusNow:Z
    const-string/jumbo v11, "success"

    move-object/from16 v0, p5

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1171
    iget-wide v13, v8, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    const-wide/16 v15, 0x0

    cmp-long v11, v13, v15

    if-eqz v11, :cond_4

    iget-wide v13, v8, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    const-wide/16 v15, 0x0

    cmp-long v11, v13, v15

    if-eqz v11, :cond_5

    .line 1172
    :cond_4
    const/4 v10, 0x1

    .line 1174
    :cond_5
    iput-wide v6, v8, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    .line 1175
    iget v11, v5, Landroid/content/SyncStorageEngine$SyncHistoryItem;->source:I

    iput v11, v8, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    .line 1176
    const-wide/16 v13, 0x0

    iput-wide v13, v8, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    .line 1177
    const/4 v11, -0x1

    iput v11, v8, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    .line 1178
    const/4 v11, 0x0

    iput-object v11, v8, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    .line 1179
    const-wide/16 v13, 0x0

    iput-wide v13, v8, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    .line 1180
    iget v11, v3, Landroid/content/SyncStorageEngine$DayStats;->successCount:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v3, Landroid/content/SyncStorageEngine$DayStats;->successCount:I

    .line 1181
    iget-wide v13, v3, Landroid/content/SyncStorageEngine$DayStats;->successTime:J

    add-long v13, v13, p3

    iput-wide v13, v3, Landroid/content/SyncStorageEngine$DayStats;->successTime:J

    .line 1196
    :cond_6
    :goto_4
    if-eqz v10, :cond_e

    .line 1197
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncStorageEngine;->writeStatusLocked()V

    .line 1202
    :cond_7
    :goto_5
    if-eqz v9, :cond_f

    .line 1203
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncStorageEngine;->writeStatisticsLocked()V

    .line 1208
    :cond_8
    :goto_6
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1210
    const/16 v11, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/content/SyncStorageEngine;->reportChange(I)V

    goto/16 :goto_1

    .line 1139
    .end local v2           #day:I
    .end local v3           #ds:Landroid/content/SyncStorageEngine$DayStats;
    .end local v6           #lastSyncTime:J
    .end local v9           #writeStatisticsNow:Z
    .end local v10           #writeStatusNow:Z
    :pswitch_0
    :try_start_1
    iget v11, v8, Landroid/content/SyncStatusInfo;->numSourceLocal:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v8, Landroid/content/SyncStatusInfo;->numSourceLocal:I

    goto :goto_2

    .line 1208
    .end local v4           #i:I
    .end local v8           #status:Landroid/content/SyncStatusInfo;
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v11

    .line 1142
    .restart local v4       #i:I
    .restart local v8       #status:Landroid/content/SyncStatusInfo;
    :pswitch_1
    :try_start_2
    iget v11, v8, Landroid/content/SyncStatusInfo;->numSourcePoll:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v8, Landroid/content/SyncStatusInfo;->numSourcePoll:I

    goto/16 :goto_2

    .line 1145
    :pswitch_2
    iget v11, v8, Landroid/content/SyncStatusInfo;->numSourceUser:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v8, Landroid/content/SyncStatusInfo;->numSourceUser:I

    goto/16 :goto_2

    .line 1148
    :pswitch_3
    iget v11, v8, Landroid/content/SyncStatusInfo;->numSourceServer:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v8, Landroid/content/SyncStatusInfo;->numSourceServer:I

    goto/16 :goto_2

    .line 1151
    :pswitch_4
    iget v11, v8, Landroid/content/SyncStatusInfo;->numSourcePeriodic:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v8, Landroid/content/SyncStatusInfo;->numSourcePeriodic:I

    goto/16 :goto_2

    .line 1159
    .restart local v2       #day:I
    .restart local v9       #writeStatisticsNow:Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    const/4 v13, 0x0

    aget-object v11, v11, v13

    iget v11, v11, Landroid/content/SyncStorageEngine$DayStats;->day:I

    if-eq v2, v11, :cond_a

    .line 1160
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    invoke-static {v11, v13, v14, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1161
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    const/4 v13, 0x0

    new-instance v14, Landroid/content/SyncStorageEngine$DayStats;

    invoke-direct {v14, v2}, Landroid/content/SyncStorageEngine$DayStats;-><init>(I)V

    aput-object v14, v11, v13

    .line 1162
    const/4 v9, 0x1

    goto/16 :goto_3

    .line 1163
    :cond_a
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/content/SyncStorageEngine;->mDayStats:[Landroid/content/SyncStorageEngine$DayStats;

    const/4 v13, 0x0

    aget-object v11, v11, v13

    if-nez v11, :cond_3

    goto/16 :goto_3

    .line 1182
    .restart local v3       #ds:Landroid/content/SyncStorageEngine$DayStats;
    .restart local v6       #lastSyncTime:J
    .restart local v10       #writeStatusNow:Z
    :cond_b
    const-string v11, "canceled"

    move-object/from16 v0, p5

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 1183
    iget-wide v13, v8, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    const-wide/16 v15, 0x0

    cmp-long v11, v13, v15

    if-nez v11, :cond_c

    .line 1184
    const/4 v10, 0x1

    .line 1186
    :cond_c
    iput-wide v6, v8, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    .line 1187
    iget v11, v5, Landroid/content/SyncStorageEngine$SyncHistoryItem;->source:I

    iput v11, v8, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    .line 1188
    move-object/from16 v0, p5

    iput-object v0, v8, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    .line 1189
    iget-wide v13, v8, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    const-wide/16 v15, 0x0

    cmp-long v11, v13, v15

    if-nez v11, :cond_d

    .line 1190
    iput-wide v6, v8, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    .line 1192
    :cond_d
    iget v11, v3, Landroid/content/SyncStorageEngine$DayStats;->failureCount:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v3, Landroid/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 1193
    iget-wide v13, v3, Landroid/content/SyncStorageEngine$DayStats;->failureTime:J

    add-long v13, v13, p3

    iput-wide v13, v3, Landroid/content/SyncStorageEngine$DayStats;->failureTime:J

    goto/16 :goto_4

    .line 1198
    :cond_e
    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/content/SyncStorageEngine;->hasMessages(I)Z

    move-result v11

    if-nez v11, :cond_7

    .line 1199
    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/content/SyncStorageEngine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    const-wide/32 v13, 0x927c0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13, v14}, Landroid/content/SyncStorageEngine;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_5

    .line 1204
    :cond_f
    const/4 v11, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/content/SyncStorageEngine;->hasMessages(I)Z

    move-result v11

    if-nez v11, :cond_8

    .line 1205
    const/4 v11, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/content/SyncStorageEngine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    const-wide/32 v13, 0x1b7740

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13, v14}, Landroid/content/SyncStorageEngine;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_6

    .line 1137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public writeAllState()V
    .locals 2

    .prologue
    .line 1450
    iget-object v1, p0, Landroid/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1453
    :try_start_0
    iget v0, p0, Landroid/content/SyncStorageEngine;->mNumPendingFinished:I

    if-lez v0, :cond_0

    .line 1455
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writePendingOperationsLocked()V

    .line 1459
    :cond_0
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeStatusLocked()V

    .line 1460
    invoke-direct {p0}, Landroid/content/SyncStorageEngine;->writeStatisticsLocked()V

    .line 1461
    monitor-exit v1

    .line 1462
    return-void

    .line 1461
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
