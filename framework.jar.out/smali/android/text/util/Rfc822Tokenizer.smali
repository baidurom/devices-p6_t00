.class public Landroid/text/util/Rfc822Tokenizer;
.super Ljava/lang/Object;
.source "Rfc822Tokenizer.java"

# interfaces
.implements Landroid/widget/MultiAutoCompleteTextView$Tokenizer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static crunch(Ljava/lang/StringBuilder;)V
    .locals 5
    .parameter "sb"

    .prologue
    const/16 v4, 0x20

    .line 205
    const/4 v1, 0x0

    .line 206
    .local v1, i:I
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 208
    .local v2, len:I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 209
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 211
    .local v0, c:C
    if-nez v0, :cond_2

    .line 212
    if-eqz v1, :cond_0

    add-int/lit8 v3, v2, -0x1

    if-eq v1, v3, :cond_0

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-eq v3, v4, :cond_0

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-eq v3, v4, :cond_0

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-nez v3, :cond_1

    .line 217
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 218
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 220
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 223
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 227
    .end local v0           #c:C
    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_5

    .line 228
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-nez v3, :cond_4

    .line 229
    invoke-virtual {p0, v1, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 227
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 232
    :cond_5
    return-void
.end method

.method public static tokenize(Ljava/lang/CharSequence;Ljava/util/Collection;)V
    .locals 13
    .parameter "text"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Collection",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, out:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/text/util/Rfc822Token;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .local v8, name:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .local v0, address:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .local v2, comment:Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 51
    .local v6, i:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 53
    .local v3, cursor:I
    const/4 v5, 0x0

    .line 54
    .local v5, find_add_start:Z
    const/4 v4, 0x0

    .line 58
    .local v4, find_add_end:Z
    :cond_0
    :goto_0
    if-ge v6, v3, :cond_15

    .line 59
    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 61
    .local v1, c:C
    const/16 v9, 0x2c

    if-eq v1, v9, :cond_1

    const/16 v9, 0x3b

    if-ne v1, v9, :cond_6

    .line 62
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 64
    :goto_1
    if-ge v6, v3, :cond_2

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x20

    if-ne v9, v10, :cond_2

    .line 65
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 68
    :cond_2
    invoke-static {v8}, Landroid/text/util/Rfc822Tokenizer;->crunch(Ljava/lang/StringBuilder;)V

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_5

    .line 71
    new-instance v9, Landroid/text/util/Rfc822Token;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v10, v11, v12}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_3
    :goto_2
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 81
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 82
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 158
    :cond_4
    :goto_3
    if-eqz v5, :cond_0

    .line 159
    const/4 v5, 0x0

    .line 160
    if-eqz v4, :cond_14

    .line 161
    const/4 v4, 0x0

    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-gtz v9, :cond_0

    .line 163
    const/16 v9, 0x3c

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 164
    const/16 v9, 0x3e

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 74
    :cond_5
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 75
    new-instance v9, Landroid/text/util/Rfc822Token;

    const/4 v10, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v10, v11, v12}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 83
    :cond_6
    const/16 v9, 0x22

    if-ne v1, v9, :cond_a

    .line 84
    add-int/lit8 v6, v6, 0x1

    .line 86
    :goto_4
    if-ge v6, v3, :cond_4

    .line 87
    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 89
    const/16 v9, 0x22

    if-ne v1, v9, :cond_7

    .line 90
    add-int/lit8 v6, v6, 0x1

    .line 91
    goto :goto_3

    .line 92
    :cond_7
    const/16 v9, 0x5c

    if-ne v1, v9, :cond_9

    .line 93
    add-int/lit8 v9, v6, 0x1

    if-ge v9, v3, :cond_8

    .line 94
    add-int/lit8 v9, v6, 0x1

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    :cond_8
    add-int/lit8 v6, v6, 0x2

    goto :goto_4

    .line 98
    :cond_9
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 102
    :cond_a
    const/16 v9, 0x28

    if-ne v1, v9, :cond_10

    .line 103
    const/4 v7, 0x1

    .line 104
    .local v7, level:I
    add-int/lit8 v6, v6, 0x1

    .line 106
    :goto_5
    if-ge v6, v3, :cond_4

    if-lez v7, :cond_4

    .line 107
    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 109
    const/16 v9, 0x29

    if-ne v1, v9, :cond_c

    .line 110
    const/4 v9, 0x1

    if-le v7, v9, :cond_b

    .line 111
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 114
    :cond_b
    add-int/lit8 v7, v7, -0x1

    .line 115
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 116
    :cond_c
    const/16 v9, 0x28

    if-ne v1, v9, :cond_d

    .line 117
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    add-int/lit8 v7, v7, 0x1

    .line 119
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 120
    :cond_d
    const/16 v9, 0x5c

    if-ne v1, v9, :cond_f

    .line 121
    add-int/lit8 v9, v6, 0x1

    if-ge v9, v3, :cond_e

    .line 122
    add-int/lit8 v9, v6, 0x1

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    :cond_e
    add-int/lit8 v6, v6, 0x2

    goto :goto_5

    .line 126
    :cond_f
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 130
    .end local v7           #level:I
    :cond_10
    const/16 v9, 0x3c

    if-ne v1, v9, :cond_12

    .line 132
    const/4 v5, 0x1

    .line 134
    add-int/lit8 v6, v6, 0x1

    .line 136
    :goto_6
    if-ge v6, v3, :cond_4

    .line 137
    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 139
    const/16 v9, 0x3e

    if-ne v1, v9, :cond_11

    .line 141
    const/4 v4, 0x1

    .line 143
    add-int/lit8 v6, v6, 0x1

    .line 144
    goto/16 :goto_3

    .line 146
    :cond_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 147
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 150
    :cond_12
    const/16 v9, 0x20

    if-ne v1, v9, :cond_13

    .line 151
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 152
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 154
    :cond_13
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 167
    :cond_14
    const/16 v9, 0x3c

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_0

    .line 175
    .end local v1           #c:C
    :cond_15
    invoke-static {v8}, Landroid/text/util/Rfc822Tokenizer;->crunch(Ljava/lang/StringBuilder;)V

    .line 177
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_17

    .line 178
    new-instance v9, Landroid/text/util/Rfc822Token;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v10, v11, v12}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_16
    :goto_7
    return-void

    .line 181
    :cond_17
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_16

    .line 182
    new-instance v9, Landroid/text/util/Rfc822Token;

    const/4 v10, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v10, v11, v12}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7
.end method

.method public static tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;
    .locals 2
    .parameter "text"

    .prologue
    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v0, out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/util/Rfc822Token;>;"
    invoke-static {p0, v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;Ljava/util/Collection;)V

    .line 201
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/text/util/Rfc822Token;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/util/Rfc822Token;

    return-object v1
.end method


# virtual methods
.method public findTokenEnd(Ljava/lang/CharSequence;I)I
    .locals 8
    .parameter "text"
    .parameter "cursor"

    .prologue
    const/16 v7, 0x5c

    const/16 v6, 0x28

    const/16 v5, 0x22

    .line 269
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 270
    .local v2, len:I
    move v1, p2

    .line 272
    .local v1, i:I
    :cond_0
    :goto_0
    if-ge v1, v2, :cond_1

    .line 273
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 275
    .local v0, c:C
    const/16 v4, 0x2c

    if-eq v0, v4, :cond_1

    const/16 v4, 0x3b

    if-ne v0, v4, :cond_2

    .line 329
    .end local v0           #c:C
    :cond_1
    return v1

    .line 277
    .restart local v0       #c:C
    :cond_2
    if-ne v0, v5, :cond_5

    .line 278
    add-int/lit8 v1, v1, 0x1

    .line 280
    :goto_1
    if-ge v1, v2, :cond_0

    .line 281
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 283
    if-ne v0, v5, :cond_3

    .line 284
    add-int/lit8 v1, v1, 0x1

    .line 285
    goto :goto_0

    .line 286
    :cond_3
    if-ne v0, v7, :cond_4

    add-int/lit8 v4, v1, 0x1

    if-ge v4, v2, :cond_4

    .line 287
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 289
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 292
    :cond_5
    if-ne v0, v6, :cond_9

    .line 293
    const/4 v3, 0x1

    .line 294
    .local v3, level:I
    add-int/lit8 v1, v1, 0x1

    .line 296
    :goto_2
    if-ge v1, v2, :cond_0

    if-lez v3, :cond_0

    .line 297
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 299
    const/16 v4, 0x29

    if-ne v0, v4, :cond_6

    .line 300
    add-int/lit8 v3, v3, -0x1

    .line 301
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 302
    :cond_6
    if-ne v0, v6, :cond_7

    .line 303
    add-int/lit8 v3, v3, 0x1

    .line 304
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 305
    :cond_7
    if-ne v0, v7, :cond_8

    add-int/lit8 v4, v1, 0x1

    if-ge v4, v2, :cond_8

    .line 306
    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    .line 308
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 311
    .end local v3           #level:I
    :cond_9
    const/16 v4, 0x3c

    if-ne v0, v4, :cond_b

    .line 312
    add-int/lit8 v1, v1, 0x1

    .line 314
    :goto_3
    if-ge v1, v2, :cond_0

    .line 315
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 317
    const/16 v4, 0x3e

    if-ne v0, v4, :cond_a

    .line 318
    add-int/lit8 v1, v1, 0x1

    .line 319
    goto :goto_0

    .line 321
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 325
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public findTokenStart(Ljava/lang/CharSequence;I)I
    .locals 4
    .parameter "text"
    .parameter "cursor"

    .prologue
    .line 243
    const/4 v0, 0x0

    .line 244
    .local v0, best:I
    const/4 v1, 0x0

    .line 246
    .local v1, i:I
    :cond_0
    :goto_0
    if-ge v1, p2, :cond_2

    .line 247
    invoke-virtual {p0, p1, v1}, Landroid/text/util/Rfc822Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 249
    if-ge v1, p2, :cond_0

    .line 250
    add-int/lit8 v1, v1, 0x1

    .line 252
    :goto_1
    if-ge v1, p2, :cond_1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    .line 253
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 256
    :cond_1
    if-ge v1, p2, :cond_0

    .line 257
    move v0, v1

    goto :goto_0

    .line 262
    :cond_2
    return v0
.end method

.method public terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "text"

    .prologue
    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
