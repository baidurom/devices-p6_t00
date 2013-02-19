.class public final Landroid/encrypt/AES128_ECB_HEX;
.super Ljava/lang/Object;
.source "AES128_ECB_HEX.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static decode(Ljava/lang/String;[BI)[B
    .locals 2
    .parameter "stHex"
    .parameter "btKey"
    .parameter "iKeyLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-static {p0}, Landroid/encrypt/HEX;->decode(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2}, Landroid/encrypt/AES128_ECB;->decode([BI[BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static encode([BI[BI)Ljava/lang/String;
    .locals 2
    .parameter "btPlain"
    .parameter "iLen"
    .parameter "btKey"
    .parameter "iKeyLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-static {p0, p1, p2, p3}, Landroid/encrypt/AES128_ECB;->encode([BI[BI)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/encrypt/HEX;->encode([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
