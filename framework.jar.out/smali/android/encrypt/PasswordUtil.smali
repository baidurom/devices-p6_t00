.class public Landroid/encrypt/PasswordUtil;
.super Ljava/lang/Object;
.source "PasswordUtil.java"


# static fields
.field private static final CHAR_OFFSET:I = 0xa

.field private static final LENGTH:I = 0x4

.field private static final TAG:Ljava/lang/String; = "PasswordUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static codeOffset(Ljava/lang/String;I)Ljava/lang/String;
    .locals 12
    .parameter "code"
    .parameter "offset"

    .prologue
    .line 95
    const-string v5, ""

    .line 96
    .local v5, result:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 98
    .local v0, buf:Ljava/lang/StringBuffer;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    move-object v6, v5

    .line 114
    .end local v5           #result:Ljava/lang/String;
    .local v6, result:Ljava/lang/String;
    :goto_0
    return-object v6

    .line 103
    .end local v6           #result:Ljava/lang/String;
    .restart local v5       #result:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_2

    .line 104
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 105
    .local v7, tempChar:C
    move v8, v7

    .line 106
    .local v8, tempCharInt:I
    add-int v2, v8, p1

    .line 107
    .local v2, convertCharInt:I
    int-to-char v1, v2

    .line 108
    .local v1, convertChar:C
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 110
    .end local v1           #convertChar:C
    .end local v2           #convertCharInt:I
    .end local v7           #tempChar:C
    .end local v8           #tempCharInt:I
    :catch_0
    move-exception v3

    .line 111
    .local v3, ex:Ljava/lang/Exception;
    const-string v9, "PasswordUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "codeOffset:ex:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .end local v3           #ex:Ljava/lang/Exception;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .line 114
    .end local v5           #result:Ljava/lang/String;
    .restart local v6       #result:Ljava/lang/String;
    goto :goto_0
.end method

.method public static flagPswd2PlainText(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "flagPswd"

    .prologue
    .line 26
    const-string v1, ""

    .line 28
    .local v1, plainText:Ljava/lang/String;
    invoke-static {p0}, Landroid/encrypt/PasswordUtil;->isFlagPswd(Ljava/lang/String;)Z

    move-result v0

    .line 29
    .local v0, isFlagPswd:Z
    if-eqz v0, :cond_0

    .line 30
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 31
    .local v2, pswd:Ljava/lang/String;
    invoke-static {v2}, Landroid/encrypt/PasswordEncrypter;->decrypter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 38
    .end local v2           #pswd:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 34
    :cond_0
    const-string v3, "PasswordUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "flagPswd2PlainText: flagPswd:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  is not a flag password!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isFlagPswd(Ljava/lang/String;)Z
    .locals 10
    .parameter "pswd"

    .prologue
    .line 61
    const/4 v3, 0x0

    .line 63
    .local v3, rtnFlag:Z
    const/16 v2, 0x8

    .line 65
    .local v2, length:I
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v2, :cond_1

    :cond_0
    move v4, v3

    .line 82
    .end local v3           #rtnFlag:Z
    .local v4, rtnFlag:I
    :goto_0
    return v4

    .line 70
    .end local v4           #rtnFlag:I
    .restart local v3       #rtnFlag:Z
    :cond_1
    const/4 v7, 0x0

    const/4 v8, 0x4

    :try_start_0
    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 71
    .local v6, validationCode:Ljava/lang/String;
    const/4 v7, 0x4

    const/16 v8, 0x8

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, code:Ljava/lang/String;
    invoke-static {v6}, Landroid/encrypt/PasswordUtil;->validationCode2Str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 74
    .local v5, targetCode:Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_2

    .line 75
    const/4 v3, 0x1

    .end local v0           #code:Ljava/lang/String;
    .end local v5           #targetCode:Ljava/lang/String;
    .end local v6           #validationCode:Ljava/lang/String;
    :cond_2
    :goto_1
    move v4, v3

    .line 82
    .restart local v4       #rtnFlag:I
    goto :goto_0

    .line 78
    .end local v4           #rtnFlag:I
    :catch_0
    move-exception v1

    .line 79
    .local v1, ex:Ljava/lang/Exception;
    const-string v7, "PasswordUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FlagPswd:ex:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static plainText2FlagPswd(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "plainText"

    .prologue
    .line 12
    if-nez p0, :cond_0

    .line 14
    const/4 v3, 0x0

    .line 21
    :goto_0
    return-object v3

    .line 16
    :cond_0
    invoke-static {p0}, Landroid/encrypt/PasswordEncrypter;->encrypter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 18
    .local v1, encryptPswd:Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 19
    .local v0, code:Ljava/lang/String;
    invoke-static {v0}, Landroid/encrypt/PasswordUtil;->str2ValidationCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 21
    .local v2, validationCode:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static pswd2PlainText(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "dbPswd"

    .prologue
    .line 43
    if-nez p0, :cond_0

    .line 45
    const/4 v1, 0x0

    .line 55
    :goto_0
    return-object v1

    .line 47
    :cond_0
    const-string v1, ""

    .line 48
    .local v1, plainText:Ljava/lang/String;
    invoke-static {p0}, Landroid/encrypt/PasswordUtil;->isFlagPswd(Ljava/lang/String;)Z

    move-result v0

    .line 49
    .local v0, isFlagPswd:Z
    const-string v2, "PasswordUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dbPswd:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; isFlagPswd:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    if-eqz v0, :cond_1

    .line 51
    invoke-static {p0}, Landroid/encrypt/PasswordUtil;->flagPswd2PlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 53
    :cond_1
    move-object v1, p0

    goto :goto_0
.end method

.method private static str2ValidationCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "code"

    .prologue
    .line 87
    const/16 v0, 0xa

    invoke-static {p0, v0}, Landroid/encrypt/PasswordUtil;->codeOffset(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static validationCode2Str(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "code"

    .prologue
    .line 91
    const/16 v0, -0xa

    invoke-static {p0, v0}, Landroid/encrypt/PasswordUtil;->codeOffset(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
