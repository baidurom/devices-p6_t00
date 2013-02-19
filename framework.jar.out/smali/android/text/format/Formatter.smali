.class public final Landroid/text/format/Formatter;
.super Ljava/lang/Object;
.source "Formatter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "number"

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static formatFileSize(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "number"
    .parameter "shorter"

    .prologue
    const/high16 v7, 0x4480

    const/high16 v6, 0x4461

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 51
    if-nez p0, :cond_0

    .line 52
    const-string v5, ""

    .line 102
    :goto_0
    return-object v5

    .line 55
    :cond_0
    long-to-float v2, p1

    .line 56
    .local v2, result:F
    const v3, 0x104006c

    .line 57
    .local v3, suffix:I
    cmpl-float v5, v2, v6

    if-lez v5, :cond_1

    .line 58
    const v3, 0x104006d

    .line 59
    div-float/2addr v2, v7

    .line 61
    :cond_1
    cmpl-float v5, v2, v6

    if-lez v5, :cond_2

    .line 62
    const v3, 0x104006e

    .line 63
    div-float/2addr v2, v7

    .line 65
    :cond_2
    cmpl-float v5, v2, v6

    if-lez v5, :cond_3

    .line 66
    const v3, 0x104006f

    .line 67
    div-float/2addr v2, v7

    .line 69
    :cond_3
    cmpl-float v5, v2, v6

    if-lez v5, :cond_4

    .line 70
    const v3, 0x1040070

    .line 71
    div-float/2addr v2, v7

    .line 73
    :cond_4
    cmpl-float v5, v2, v6

    if-lez v5, :cond_5

    .line 74
    const v3, 0x1040071

    .line 75
    div-float/2addr v2, v7

    .line 79
    :cond_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 80
    .local v0, cLocale:Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, language:Ljava/lang/String;
    const-string v5, "ar"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "fa"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "hi"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 82
    :cond_6
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 84
    :cond_7
    const/high16 v5, 0x3f80

    cmpg-float v5, v2, v5

    if-gez v5, :cond_8

    .line 85
    const-string v5, "%.2f"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v0, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, value:Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1040072

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v8

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 86
    .end local v4           #value:Ljava/lang/String;
    :cond_8
    const/high16 v5, 0x4120

    cmpg-float v5, v2, v5

    if-gez v5, :cond_a

    .line 87
    if-eqz p3, :cond_9

    .line 88
    const-string v5, "%.1f"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v0, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #value:Ljava/lang/String;
    goto :goto_1

    .line 90
    .end local v4           #value:Ljava/lang/String;
    :cond_9
    const-string v5, "%.2f"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v0, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #value:Ljava/lang/String;
    goto :goto_1

    .line 92
    .end local v4           #value:Ljava/lang/String;
    :cond_a
    const/high16 v5, 0x42c8

    cmpg-float v5, v2, v5

    if-gez v5, :cond_c

    .line 93
    if-eqz p3, :cond_b

    .line 94
    const-string v5, "%.0f"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v0, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #value:Ljava/lang/String;
    goto :goto_1

    .line 96
    .end local v4           #value:Ljava/lang/String;
    :cond_b
    const-string v5, "%.2f"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v0, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #value:Ljava/lang/String;
    goto :goto_1

    .line 99
    .end local v4           #value:Ljava/lang/String;
    :cond_c
    const-string v5, "%.0f"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v0, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #value:Ljava/lang/String;
    goto :goto_1
.end method

.method public static formatIpAddress(I)Ljava/lang/String;
    .locals 1
    .parameter "ipv4Address"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 121
    invoke-static {p0}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "number"

    .prologue
    .line 47
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
