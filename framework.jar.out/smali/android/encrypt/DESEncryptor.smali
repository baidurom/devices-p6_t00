.class public Landroid/encrypt/DESEncryptor;
.super Ljava/lang/Object;
.source "DESEncryptor.java"


# static fields
.field private static m3DesEncryptor:Landroid/encrypt/DESEncryptor;


# instance fields
.field private iv_param_spec:Ljavax/crypto/spec/IvParameterSpec;

.field private key:Ljavax/crypto/SecretKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Landroid/encrypt/DESEncryptor;->m3DesEncryptor:Landroid/encrypt/DESEncryptor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, v0, v0}, Landroid/encrypt/DESEncryptor;-><init>([B[B)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 82
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/encrypt/DESEncryptor;-><init>([B[B)V

    .line 83
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "key"

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/encrypt/DESEncryptor;-><init>([B[B)V

    .line 87
    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 10
    .parameter "key"
    .parameter "iv"

    .prologue
    const/4 v7, 0x0

    const/16 v9, 0x18

    const/16 v8, 0x8

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v7, p0, Landroid/encrypt/DESEncryptor;->key:Ljavax/crypto/SecretKey;

    .line 21
    iput-object v7, p0, Landroid/encrypt/DESEncryptor;->iv_param_spec:Ljavax/crypto/spec/IvParameterSpec;

    .line 90
    if-nez p1, :cond_2

    .line 91
    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    .line 92
    .local v4, sr:Ljava/security/SecureRandom;
    new-array p1, v9, [B

    .line 93
    invoke-virtual {v4, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 101
    .end local v4           #sr:Ljava/security/SecureRandom;
    :cond_0
    if-nez p2, :cond_3

    .line 102
    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    .line 103
    .restart local v4       #sr:Ljava/security/SecureRandom;
    new-array p2, v8, [B

    .line 104
    invoke-virtual {v4, p2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 114
    .end local v4           #sr:Ljava/security/SecureRandom;
    :cond_1
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/DESedeKeySpec;

    invoke-direct {v0, p1}, Ljavax/crypto/spec/DESedeKeySpec;-><init>([B)V

    .line 115
    .local v0, dks:Ljavax/crypto/spec/DESedeKeySpec;
    const-string v7, "DESede"

    invoke-static {v7}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    .line 116
    .local v3, keyFactory:Ljavax/crypto/SecretKeyFactory;
    invoke-virtual {v3, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v7

    iput-object v7, p0, Landroid/encrypt/DESEncryptor;->key:Ljavax/crypto/SecretKey;

    .line 117
    new-instance v7, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v7, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    iput-object v7, p0, Landroid/encrypt/DESEncryptor;->iv_param_spec:Ljavax/crypto/spec/IvParameterSpec;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_2

    .line 125
    .end local v0           #dks:Ljavax/crypto/spec/DESedeKeySpec;
    .end local v3           #keyFactory:Ljavax/crypto/SecretKeyFactory;
    :goto_0
    return-void

    .line 94
    :cond_2
    array-length v7, p1

    if-eq v7, v9, :cond_0

    .line 95
    move-object v6, p1

    .line 96
    .local v6, tmpKey:[B
    new-array p1, v9, [B

    .line 97
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v7, v6

    if-ge v2, v7, :cond_0

    if-ge v2, v9, :cond_0

    .line 98
    aget-byte v7, v6, v2

    aput-byte v7, p1, v2

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 105
    .end local v2           #i:I
    .end local v6           #tmpKey:[B
    :cond_3
    array-length v7, p2

    if-eq v7, v8, :cond_1

    .line 106
    move-object v5, p2

    .line 107
    .local v5, tmpIv:[B
    new-array p2, v8, [B

    .line 108
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    array-length v7, v5

    if-ge v2, v7, :cond_1

    if-ge v2, v8, :cond_1

    .line 109
    aget-byte v7, v5, v2

    aput-byte v7, p2, v2

    .line 108
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 118
    .end local v2           #i:I
    .end local v5           #tmpIv:[B
    :catch_0
    move-exception v1

    .line 119
    .local v1, e:Ljava/security/InvalidKeyException;
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_0

    .line 120
    .end local v1           #e:Ljava/security/InvalidKeyException;
    :catch_1
    move-exception v1

    .line 121
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 122
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v1

    .line 123
    .local v1, e:Ljava/security/spec/InvalidKeySpecException;
    invoke-virtual {v1}, Ljava/security/spec/InvalidKeySpecException;->printStackTrace()V

    goto :goto_0
.end method

.method public static bufferToHex([BII)Ljava/lang/String;
    .locals 5
    .parameter "array"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 49
    const/16 v4, 0x10

    new-array v0, v4, [C

    fill-array-data v0, :array_0

    .line 67
    .local v0, HEX_CHAR:[C
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .local v3, result:Ljava/lang/StringBuilder;
    move v2, p1

    .local v2, i:I
    :goto_0
    add-int v4, p1, p2

    if-ge v2, v4, :cond_0

    .line 70
    aget-byte v1, p0, v2

    .line 71
    .local v1, b:B
    ushr-int/lit8 v4, v1, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    and-int/lit8 v4, v1, 0xf

    aget-char v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 74
    .end local v1           #b:B
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 49
    nop

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

.method public static desEncrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "string"

    .prologue
    const/4 v6, 0x0

    .line 33
    const-string v0, "HEX:"

    .line 34
    .local v0, cryptograph:Ljava/lang/String;
    invoke-static {}, Landroid/encrypt/DESEncryptor;->get3DesEncryptor()Landroid/encrypt/DESEncryptor;

    move-result-object v2

    .line 36
    .local v2, desEncrypt:Landroid/encrypt/DESEncryptor;
    if-nez p0, :cond_0

    .line 37
    const/4 v4, 0x0

    .line 45
    :goto_0
    return-object v4

    .line 40
    :cond_0
    invoke-virtual {v2}, Landroid/encrypt/DESEncryptor;->getIv_param_spec()Ljavax/crypto/spec/IvParameterSpec;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v3

    .line 41
    .local v3, ivBytes:[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v3

    invoke-static {v3, v6, v5}, Landroid/encrypt/DESEncryptor;->bufferToHex([BII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/encrypt/DESEncryptor;->encrypt([B)[B

    move-result-object v1

    .line 43
    .local v1, cryptographBytes:[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v1

    invoke-static {v1, v6, v5}, Landroid/encrypt/DESEncryptor;->bufferToHex([BII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 45
    goto :goto_0
.end method

.method public static get3DesEncryptor()Landroid/encrypt/DESEncryptor;
    .locals 2

    .prologue
    .line 26
    sget-object v0, Landroid/encrypt/DESEncryptor;->m3DesEncryptor:Landroid/encrypt/DESEncryptor;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Landroid/encrypt/DESEncryptor;

    const-string v1, "HuaweiDeItmsIsVeryGood"

    invoke-direct {v0, v1}, Landroid/encrypt/DESEncryptor;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/encrypt/DESEncryptor;->m3DesEncryptor:Landroid/encrypt/DESEncryptor;

    .line 29
    :cond_0
    sget-object v0, Landroid/encrypt/DESEncryptor;->m3DesEncryptor:Landroid/encrypt/DESEncryptor;

    return-object v0
.end method


# virtual methods
.method public decrypt([B)[B
    .locals 6
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .line 177
    if-nez p1, :cond_0

    .line 198
    :goto_0
    return-object v2

    .line 182
    :cond_0
    :try_start_0
    const-string v3, "DESede/CBC/NoPadding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 183
    .local v0, cipher1:Ljavax/crypto/Cipher;
    const/4 v3, 0x2

    iget-object v4, p0, Landroid/encrypt/DESEncryptor;->key:Ljavax/crypto/SecretKey;

    iget-object v5, p0, Landroid/encrypt/DESEncryptor;->iv_param_spec:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0, v3, v4, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 184
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v2

    goto :goto_0

    .line 185
    .end local v0           #cipher1:Ljavax/crypto/Cipher;
    :catch_0
    move-exception v1

    .line 186
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 187
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 188
    .local v1, e:Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_0

    .line 189
    .end local v1           #e:Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v1

    .line 190
    .local v1, e:Ljava/security/InvalidKeyException;
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_0

    .line 191
    .end local v1           #e:Ljava/security/InvalidKeyException;
    :catch_3
    move-exception v1

    .line 192
    .local v1, e:Ljava/security/InvalidAlgorithmParameterException;
    invoke-virtual {v1}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V

    goto :goto_0

    .line 193
    .end local v1           #e:Ljava/security/InvalidAlgorithmParameterException;
    :catch_4
    move-exception v1

    .line 194
    .local v1, e:Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_0

    .line 195
    .end local v1           #e:Ljavax/crypto/IllegalBlockSizeException;
    :catch_5
    move-exception v1

    .line 196
    .local v1, e:Ljavax/crypto/BadPaddingException;
    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_0
.end method

.method public encrypt([B)[B
    .locals 9
    .parameter "data"

    .prologue
    const/4 v5, 0x0

    .line 144
    if-nez p1, :cond_0

    .line 173
    :goto_0
    return-object v5

    .line 147
    :cond_0
    array-length v6, p1

    rem-int/lit8 v3, v6, 0x8

    .line 148
    .local v3, spare:I
    if-eqz v3, :cond_1

    .line 149
    move-object v4, p1

    .line 150
    .local v4, tmpdata:[B
    array-length v6, v4

    rsub-int/lit8 v7, v3, 0x8

    add-int/2addr v6, v7

    new-array p1, v6, [B

    .line 151
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v6, v4

    if-ge v2, v6, :cond_1

    .line 152
    aget-byte v6, v4, v2

    aput-byte v6, p1, v2

    .line 151
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 157
    .end local v2           #i:I
    .end local v4           #tmpdata:[B
    :cond_1
    :try_start_0
    const-string v6, "DESede/CBC/NoPadding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 158
    .local v0, cipher1:Ljavax/crypto/Cipher;
    const/4 v6, 0x1

    iget-object v7, p0, Landroid/encrypt/DESEncryptor;->key:Ljavax/crypto/SecretKey;

    iget-object v8, p0, Landroid/encrypt/DESEncryptor;->iv_param_spec:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0, v6, v7, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 159
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v5

    goto :goto_0

    .line 160
    .end local v0           #cipher1:Ljavax/crypto/Cipher;
    :catch_0
    move-exception v1

    .line 161
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 162
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 163
    .local v1, e:Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_0

    .line 164
    .end local v1           #e:Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v1

    .line 165
    .local v1, e:Ljava/security/InvalidKeyException;
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_0

    .line 166
    .end local v1           #e:Ljava/security/InvalidKeyException;
    :catch_3
    move-exception v1

    .line 167
    .local v1, e:Ljava/security/InvalidAlgorithmParameterException;
    invoke-virtual {v1}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V

    goto :goto_0

    .line 168
    .end local v1           #e:Ljava/security/InvalidAlgorithmParameterException;
    :catch_4
    move-exception v1

    .line 169
    .local v1, e:Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_0

    .line 170
    .end local v1           #e:Ljavax/crypto/IllegalBlockSizeException;
    :catch_5
    move-exception v1

    .line 171
    .local v1, e:Ljavax/crypto/BadPaddingException;
    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_0
.end method

.method public getIv_param_spec()Ljavax/crypto/spec/IvParameterSpec;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Landroid/encrypt/DESEncryptor;->iv_param_spec:Ljavax/crypto/spec/IvParameterSpec;

    return-object v0
.end method

.method public getKey()Ljavax/crypto/SecretKey;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Landroid/encrypt/DESEncryptor;->key:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public setIv_param_spec(Ljavax/crypto/spec/IvParameterSpec;)V
    .locals 0
    .parameter "iv_param_spec"

    .prologue
    .line 140
    iput-object p1, p0, Landroid/encrypt/DESEncryptor;->iv_param_spec:Ljavax/crypto/spec/IvParameterSpec;

    .line 141
    return-void
.end method

.method public setKey(Ljavax/crypto/SecretKey;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 132
    iput-object p1, p0, Landroid/encrypt/DESEncryptor;->key:Ljavax/crypto/SecretKey;

    .line 133
    return-void
.end method
