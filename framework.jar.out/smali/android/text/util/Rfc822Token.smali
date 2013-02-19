.class public Landroid/text/util/Rfc822Token;
.super Ljava/lang/Object;
.source "Rfc822Token.java"


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mComment:Ljava/lang/String;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "address"
    .parameter "comment"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Landroid/text/util/Rfc822Token;->mName:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Landroid/text/util/Rfc822Token;->mAddress:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Landroid/text/util/Rfc822Token;->mComment:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static quoteComment(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "comment"

    .prologue
    const/16 v5, 0x5c

    .line 159
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 160
    .local v2, len:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 163
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 165
    .local v0, c:C
    const/16 v4, 0x28

    if-eq v0, v4, :cond_0

    const/16 v4, 0x29

    if-eq v0, v4, :cond_0

    if-ne v0, v5, :cond_1

    .line 166
    :cond_0
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 169
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    .end local v0           #c:C
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static quoteName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "name"

    .prologue
    const/16 v5, 0x5c

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .local v3, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 140
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 141
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 143
    .local v0, c:C
    if-eq v0, v5, :cond_0

    const/16 v4, 0x22

    if-ne v0, v4, :cond_1

    .line 144
    :cond_0
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 147
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 140
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    .end local v0           #c:C
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static quoteNameIfNecessary(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "name"

    .prologue
    const/16 v5, 0x22

    .line 115
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 117
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 118
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 120
    .local v0, c:C
    const/16 v3, 0x41

    if-lt v0, v3, :cond_0

    const/16 v3, 0x5a

    if-le v0, v3, :cond_4

    :cond_0
    const/16 v3, 0x61

    if-lt v0, v3, :cond_1

    const/16 v3, 0x7a

    if-le v0, v3, :cond_4

    :cond_1
    const/16 v3, 0x20

    if-eq v0, v3, :cond_4

    const/16 v3, 0x30

    if-lt v0, v3, :cond_2

    const/16 v3, 0x39

    if-le v0, v3, :cond_4

    .line 124
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Landroid/text/util/Rfc822Token;->quoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 128
    .end local v0           #c:C
    .end local p0
    :cond_3
    return-object p0

    .line 117
    .restart local v0       #c:C
    .restart local p0
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static stringEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 184
    if-nez p0, :cond_1

    .line 185
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 187
    :goto_0
    return v0

    .line 185
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 187
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 192
    instance-of v2, p1, Landroid/text/util/Rfc822Token;

    if-nez v2, :cond_1

    .line 196
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 195
    check-cast v0, Landroid/text/util/Rfc822Token;

    .line 196
    .local v0, other:Landroid/text/util/Rfc822Token;
    iget-object v2, p0, Landroid/text/util/Rfc822Token;->mName:Ljava/lang/String;

    iget-object v3, v0, Landroid/text/util/Rfc822Token;->mName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/util/Rfc822Token;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/text/util/Rfc822Token;->mAddress:Ljava/lang/String;

    iget-object v3, v0, Landroid/text/util/Rfc822Token;->mAddress:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/util/Rfc822Token;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/text/util/Rfc822Token;->mComment:Ljava/lang/String;

    iget-object v3, v0, Landroid/text/util/Rfc822Token;->mComment:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/util/Rfc822Token;->stringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Landroid/text/util/Rfc822Token;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Landroid/text/util/Rfc822Token;->mComment:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Landroid/text/util/Rfc822Token;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 176
    const/16 v0, 0x11

    .line 177
    .local v0, result:I
    iget-object v1, p0, Landroid/text/util/Rfc822Token;->mName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/text/util/Rfc822Token;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 178
    :cond_0
    iget-object v1, p0, Landroid/text/util/Rfc822Token;->mAddress:Ljava/lang/String;

    if-eqz v1, :cond_1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/text/util/Rfc822Token;->mAddress:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 179
    :cond_1
    iget-object v1, p0, Landroid/text/util/Rfc822Token;->mComment:Ljava/lang/String;

    if-eqz v1, :cond_2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/text/util/Rfc822Token;->mComment:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 180
    :cond_2
    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "address"

    .prologue
    .line 68
    iput-object p1, p0, Landroid/text/util/Rfc822Token;->mAddress:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .parameter "comment"

    .prologue
    .line 75
    iput-object p1, p0, Landroid/text/util/Rfc822Token;->mComment:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 61
    iput-object p1, p0, Landroid/text/util/Rfc822Token;->mName:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x3e

    const/16 v3, 0x3c

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .local v1, sb:Ljava/lang/StringBuilder;
    iget-object v2, p0, Landroid/text/util/Rfc822Token;->mName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/text/util/Rfc822Token;->mName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    iget-object v2, p0, Landroid/text/util/Rfc822Token;->mName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/util/Rfc822Token;->quoteNameIfNecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    :cond_0
    iget-object v2, p0, Landroid/text/util/Rfc822Token;->mComment:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/text/util/Rfc822Token;->mComment:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    iget-object v2, p0, Landroid/text/util/Rfc822Token;->mComment:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/util/Rfc822Token;->quoteComment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    :cond_1
    iget-object v2, p0, Landroid/text/util/Rfc822Token;->mAddress:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/text/util/Rfc822Token;->mAddress:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    .line 99
    iget-object v2, p0, Landroid/text/util/Rfc822Token;->mAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_2

    iget-object v2, p0, Landroid/text/util/Rfc822Token;->mAddress:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_5

    :cond_2
    const/4 v0, 0x1

    .line 100
    .local v0, hasAddSymbol:Z
    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    :cond_3
    iget-object v2, p0, Landroid/text/util/Rfc822Token;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    if-nez v0, :cond_4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    .end local v0           #hasAddSymbol:Z
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 99
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method
