.class public Landroid/encrypt/HEX;
.super Ljava/lang/Object;
.source "HEX.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 15
    .parameter "stData"

    .prologue
    const/16 v14, 0x41

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v9, 0x0

    .line 48
    const/4 v4, 0x0

    .line 49
    .local v4, l_btData:[B
    const/4 v5, 0x0

    .line 50
    .local v5, l_btTmp:[B
    const/4 v8, 0x0

    .line 57
    .local v8, l_stData:Ljava/lang/String;
    if-nez p0, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-object v9

    .line 61
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 63
    .local v7, l_iLen:I
    rem-int/lit8 v10, v7, 0x2

    if-nez v10, :cond_0

    .line 67
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    .line 69
    const/4 v0, 0x0

    .local v0, ii:I
    :goto_1
    if-ge v0, v7, :cond_4

    .line 70
    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 72
    .local v6, l_cTmp:C
    const/16 v10, 0x30

    if-gt v10, v6, :cond_2

    const/16 v10, 0x39

    if-le v6, v10, :cond_3

    :cond_2
    if-gt v14, v6, :cond_0

    const/16 v10, 0x46

    if-gt v6, v10, :cond_0

    .line 69
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 77
    .end local v6           #l_cTmp:C
    :cond_4
    div-int/lit8 v7, v7, 0x2

    .line 79
    new-array v4, v7, [B

    .line 81
    new-array v5, v13, [B

    .line 83
    const/4 v0, 0x0

    const/4 v1, 0x0

    .local v1, jj:I
    const/4 v3, 0x0

    .local v3, kk:I
    move v2, v1

    .end local v1           #jj:I
    .local v2, jj:I
    :goto_2
    if-ge v0, v7, :cond_7

    .line 84
    add-int/lit8 v1, v2, 0x1

    .end local v2           #jj:I
    .restart local v1       #jj:I
    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v5, v11

    .line 85
    add-int/lit8 v2, v1, 0x1

    .end local v1           #jj:I
    .restart local v2       #jj:I
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v5, v12

    .line 87
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v13, :cond_6

    .line 88
    aget-byte v9, v5, v3

    if-gt v14, v9, :cond_5

    aget-byte v9, v5, v3

    const/16 v10, 0x46

    if-gt v9, v10, :cond_5

    .line 89
    aget-byte v9, v5, v3

    add-int/lit8 v9, v9, -0x37

    int-to-byte v9, v9

    aput-byte v9, v5, v3

    .line 87
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 91
    :cond_5
    aget-byte v9, v5, v3

    add-int/lit8 v9, v9, -0x30

    int-to-byte v9, v9

    aput-byte v9, v5, v3

    goto :goto_4

    .line 95
    :cond_6
    aget-byte v9, v5, v11

    shl-int/lit8 v9, v9, 0x4

    aget-byte v10, v5, v12

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v4, v0

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    move-object v9, v4

    .line 98
    goto :goto_0
.end method

.method public static encode([BI)Ljava/lang/String;
    .locals 5
    .parameter "btData"
    .parameter "iLen"

    .prologue
    .line 17
    const/4 v2, 0x0

    .line 18
    .local v2, l_stTmp:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 21
    .local v1, l_stHex:Ljava/lang/StringBuffer;
    if-nez p0, :cond_0

    .line 22
    const/4 v3, 0x0

    .line 39
    :goto_0
    return-object v3

    .line 25
    :cond_0
    if-lez p1, :cond_1

    array-length v3, p0

    if-le p1, v3, :cond_2

    .line 26
    :cond_1
    array-length p1, p0

    .line 29
    :cond_2
    const/4 v0, 0x0

    .local v0, ii:I
    :goto_1
    if-ge v0, p1, :cond_4

    .line 30
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 32
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 36
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 39
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
