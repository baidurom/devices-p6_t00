.class public Landroid/encrypt/MD5;
.super Ljava/lang/Object;
.source "MD5.java"


# static fields
.field private static hex:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Landroid/encrypt/MD5;->hex:[C

    return-void

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static byte2str([B)Ljava/lang/String;
    .locals 6
    .parameter "bytes"

    .prologue
    .line 44
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 45
    .local v3, result:Ljava/lang/StringBuffer;
    if-eqz p0, :cond_0

    .line 46
    array-length v2, p0

    .line 47
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 48
    aget-byte v0, p0, v1

    .line 49
    .local v0, byte0:B
    sget-object v4, Landroid/encrypt/MD5;->hex:[C

    ushr-int/lit8 v5, v0, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 50
    sget-object v4, Landroid/encrypt/MD5;->hex:[C

    and-int/lit8 v5, v0, 0xf

    aget-char v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    .end local v0           #byte0:B
    .end local v1           #i:I
    .end local v2           #len:I
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getMD5str(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "inputStr"

    .prologue
    .line 28
    const-string v2, ""

    .line 29
    .local v2, outputStr:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 32
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 34
    .local v1, md5:Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    invoke-static {v3}, Landroid/encrypt/MD5;->byte2str([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 39
    .end local v1           #md5:Ljava/security/MessageDigest;
    :cond_0
    :goto_0
    return-object v2

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method
