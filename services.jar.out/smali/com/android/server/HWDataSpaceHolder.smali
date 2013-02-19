.class public Lcom/android/server/HWDataSpaceHolder;
.super Ljava/lang/Object;
.source "HWDataSpaceHolder.java"


# static fields
.field private static final DATA_SPACE_PATH:Ljava/lang/String; = "/data"

.field private static final DEBUG_LOG:Z = true

.field private static final DEFAULT_RELASE_SIZE:I = 0x20

.field private static final FILL_BUFF_SIZE:I = 0x40000

.field private static final K_SIZE:I = 0x400

.field private static final PLACE_FILE_NAME:Ljava/lang/String; = "/data/.hwplace"

.field private static final PLACE_FILE_SIZE:I = 0xa00000

.field private static final PROP_REALSE_COUNT:Ljava/lang/String; = "sys.hwsholder.count"

.field private static final PROP_REALSE_SIZE:Ljava/lang/String; = "ro.config.hwsholder.releasesize"

.field private static final RELEASE_FACTOR:[I = null

.field private static final SPACE_DRAIN_THRESHOLD:I = 0xa000

.field private static final SPACE_FILL_THRESHOLD:I = 0x1e00000

.field private static final TAG:Ljava/lang/String; = "HWDataSpaceHolder"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/HWDataSpaceHolder;->RELEASE_FACTOR:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static PrintLog(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 150
    const-string v0, "HWDataSpaceHolder"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void
.end method

.method public static activePlaceFile()V
    .locals 8

    .prologue
    .line 31
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/HWDataSpaceHolder;->PrintLog(Ljava/lang/String;)V

    .line 32
    const-string v5, "/data"

    invoke-static {v5}, Lcom/android/server/HWDataSpaceHolder;->getAvaibleSize(Ljava/lang/String;)J

    move-result-wide v3

    .line 33
    .local v3, spaceSize:J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "spaceSize: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/HWDataSpaceHolder;->PrintLog(Ljava/lang/String;)V

    .line 34
    const-wide/32 v5, 0x1e00000

    cmp-long v5, v3, v5

    if-lez v5, :cond_2

    .line 35
    const-string v5, "available space is rich!"

    invoke-static {v5}, Lcom/android/server/HWDataSpaceHolder;->PrintLog(Ljava/lang/String;)V

    .line 36
    const/high16 v5, 0xa0

    const-string v6, "/data/.hwplace"

    invoke-static {v6}, Lcom/android/server/HWDataSpaceHolder;->getFileSize(Ljava/lang/String;)I

    move-result v6

    sub-int v1, v5, v6

    .line 37
    .local v1, fillSize:I
    if-lez v1, :cond_1

    .line 38
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fill place file, size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/HWDataSpaceHolder;->PrintLog(Ljava/lang/String;)V

    .line 39
    const-string v5, "/data/.hwplace"

    const/4 v6, 0x1

    invoke-static {v5, v1, v6}, Lcom/android/server/HWDataSpaceHolder;->fillFile(Ljava/lang/String;IZ)V

    .line 43
    :goto_0
    const-string v5, "sys.hwsholder.count"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .end local v1           #fillSize:I
    :cond_0
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stop time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/HWDataSpaceHolder;->PrintLog(Ljava/lang/String;)V

    .line 71
    :goto_2
    return-void

    .line 41
    .restart local v1       #fillSize:I
    :cond_1
    const-string v5, "place file is full!"

    invoke-static {v5}, Lcom/android/server/HWDataSpaceHolder;->PrintLog(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    .end local v1           #fillSize:I
    :catch_0
    move-exception v5

    goto :goto_2

    .line 44
    :cond_2
    const-wide/32 v5, 0xa000

    cmp-long v5, v3, v5

    if-gez v5, :cond_5

    .line 45
    const-string v5, "available space is low"

    invoke-static {v5}, Lcom/android/server/HWDataSpaceHolder;->PrintLog(Ljava/lang/String;)V

    .line 46
    const-string v5, "/data/.hwplace"

    invoke-static {v5}, Lcom/android/server/HWDataSpaceHolder;->getFileSize(Ljava/lang/String;)I

    move-result v0

    .line 47
    .local v0, fileSize:I
    if-lez v0, :cond_4

    .line 49
    invoke-static {}, Lcom/android/server/HWDataSpaceHolder;->getReleaseSize()I

    move-result v2

    .line 50
    .local v2, realseSize:I
    if-lez v2, :cond_0

    .line 51
    sub-int v1, v0, v2

    .line 52
    .restart local v1       #fillSize:I
    if-lez v1, :cond_3

    .line 53
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "release space size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/HWDataSpaceHolder;->PrintLog(Ljava/lang/String;)V

    .line 54
    const-string v5, "/data/.hwplace"

    const/4 v6, 0x0

    invoke-static {v5, v1, v6}, Lcom/android/server/HWDataSpaceHolder;->fillFile(Ljava/lang/String;IZ)V

    goto :goto_1

    .line 56
    :cond_3
    const-string v5, "/data/.hwplace"

    invoke-static {v5}, Lcom/android/server/HWDataSpaceHolder;->deleteFile(Ljava/lang/String;)V

    .line 57
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "release space size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/HWDataSpaceHolder;->PrintLog(Ljava/lang/String;)V

    goto :goto_1

    .line 61
    .end local v1           #fillSize:I
    .end local v2           #realseSize:I
    :cond_4
    const-string v5, "release space, but no place file"

    invoke-static {v5}, Lcom/android/server/HWDataSpaceHolder;->PrintLog(Ljava/lang/String;)V

    goto :goto_1

    .line 64
    .end local v0           #fileSize:I
    :cond_5
    const-string v5, "sys.hwsholder.count"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v5, "do nothing"

    invoke-static {v5}, Lcom/android/server/HWDataSpaceHolder;->PrintLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1
.end method

.method private static deleteFile(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 124
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    const-string v1, "delete file failed!"

    invoke-static {v1}, Lcom/android/server/HWDataSpaceHolder;->PrintLog(Ljava/lang/String;)V

    .line 130
    :cond_0
    return-void
.end method

.method private static fillFile(Ljava/lang/String;IZ)V
    .locals 9
    .parameter "fileName"
    .parameter "size"
    .parameter "isAppend"

    .prologue
    const/high16 v8, 0x4

    .line 89
    if-lez p1, :cond_0

    const/high16 v7, 0xa0

    if-le p1, v7, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    new-array v0, v8, [B

    .line 94
    .local v0, buff:[B
    const/4 v3, 0x0

    .line 95
    .local v3, fos:Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    .local v2, file:Ljava/io/File;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 98
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v7

    if-nez v7, :cond_2

    .line 99
    const-string v7, "create file failed!"

    invoke-static {v7}, Lcom/android/server/HWDataSpaceHolder;->PrintLog(Ljava/lang/String;)V

    .line 103
    :cond_2
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .local v4, fos:Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 105
    .local v5, tmpSize:I
    const/4 v6, 0x0

    .line 106
    .local v6, writeSize:I
    :goto_1
    if-ge v5, p1, :cond_3

    .line 107
    const/high16 v7, 0x4

    sub-int v8, p1, v5

    :try_start_1
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 108
    const/4 v7, 0x0

    invoke-virtual {v4, v0, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 109
    add-int/2addr v5, v6

    goto :goto_1

    .line 114
    :cond_3
    if-eqz v4, :cond_4

    .line 116
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_4
    :goto_2
    move-object v3, v4

    .line 120
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 111
    .end local v5           #tmpSize:I
    .end local v6           #writeSize:I
    :catch_0
    move-exception v1

    .line 112
    .local v1, e:Ljava/lang/Exception;
    :goto_3
    :try_start_3
    const-string v7, "HWDataSpaceHolder"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 114
    if-eqz v3, :cond_0

    .line 116
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 117
    :catch_1
    move-exception v7

    goto :goto_0

    .line 114
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v3, :cond_5

    .line 116
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 114
    :cond_5
    :goto_5
    throw v7

    .line 117
    :catch_2
    move-exception v8

    goto :goto_5

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    .restart local v5       #tmpSize:I
    .restart local v6       #writeSize:I
    :catch_3
    move-exception v7

    goto :goto_2

    .line 114
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 111
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_3
.end method

.method private static getAvaibleSize(Ljava/lang/String;)J
    .locals 7
    .parameter "path"

    .prologue
    .line 83
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 84
    .local v2, statFs:Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v5, v5

    mul-long v0, v3, v5

    .line 85
    .local v0, size:J
    return-wide v0
.end method

.method private static getFileSize(Ljava/lang/String;)I
    .locals 3
    .parameter "path"

    .prologue
    .line 74
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v1, v1

    .line 79
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getReleaseSize()I
    .locals 4

    .prologue
    .line 133
    const-string v2, "ro.config.hwsholder.releasesize"

    const/16 v3, 0x20

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 134
    .local v0, baseSize:I
    if-gtz v0, :cond_0

    .line 135
    const v2, 0x8000

    .line 145
    :goto_0
    return v2

    .line 138
    :cond_0
    const-string v2, "sys.hwsholder.count"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 139
    .local v1, count:I
    if-ltz v1, :cond_1

    sget-object v2, Lcom/android/server/HWDataSpaceHolder;->RELEASE_FACTOR:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 140
    const-string v2, "sys.hwsholder.count"

    add-int/lit8 v3, v1, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    mul-int/lit16 v2, v0, 0x400

    sget-object v3, Lcom/android/server/HWDataSpaceHolder;->RELEASE_FACTOR:[I

    aget v3, v3, v1

    mul-int/2addr v2, v3

    goto :goto_0

    .line 144
    :cond_1
    const-string v2, "sys.hwsholder.count"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    mul-int/lit16 v2, v0, 0x400

    goto :goto_0
.end method
