.class public Landroid/webkit/DateSorter;
.super Ljava/lang/Object;
.source "DateSorter.java"


# static fields
.field public static final DAY_COUNT:I = 0x5

.field private static final LOGTAG:Ljava/lang/String; = "webkit"

.field private static final NUM_DAYS_AGO:I = 0x7


# instance fields
.field private mBins:[J

.field private mLabels:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v7, 0x6

    const/4 v8, 0x2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v4, 0x4

    new-array v4, v4, [J

    iput-object v4, p0, Landroid/webkit/DateSorter;->mBins:[J

    .line 45
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 55
    .local v3, resources:Landroid/content/res/Resources;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 56
    .local v0, c:Ljava/util/Calendar;
    invoke-direct {p0, v0}, Landroid/webkit/DateSorter;->beginningOfDay(Ljava/util/Calendar;)V

    .line 59
    iget-object v4, p0, Landroid/webkit/DateSorter;->mBins:[J

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    aput-wide v5, v4, v10

    .line 60
    invoke-virtual {v0, v7, v9}, Ljava/util/Calendar;->add(II)V

    .line 61
    iget-object v4, p0, Landroid/webkit/DateSorter;->mBins:[J

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    aput-wide v5, v4, v11

    .line 62
    const/4 v4, -0x6

    invoke-virtual {v0, v7, v4}, Ljava/util/Calendar;->add(II)V

    .line 63
    iget-object v4, p0, Landroid/webkit/DateSorter;->mBins:[J

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    aput-wide v5, v4, v8

    .line 64
    const/4 v4, 0x7

    invoke-virtual {v0, v7, v4}, Ljava/util/Calendar;->add(II)V

    .line 65
    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->add(II)V

    .line 66
    iget-object v4, p0, Landroid/webkit/DateSorter;->mBins:[J

    const/4 v5, 0x3

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 69
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v1, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 70
    .local v1, locale:Ljava/util/Locale;
    if-nez v1, :cond_0

    .line 71
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 73
    :cond_0
    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v2

    .line 74
    .local v2, localeData:Llibcore/icu/LocaleData;
    iget-object v4, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    iget-object v5, v2, Llibcore/icu/LocaleData;->today:Ljava/lang/String;

    aput-object v5, v4, v10

    .line 75
    iget-object v4, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    iget-object v5, v2, Llibcore/icu/LocaleData;->yesterday:Ljava/lang/String;

    aput-object v5, v4, v11

    .line 82
    iget-object v4, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    const v5, 0x202007f

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    .line 83
    iget-object v4, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    const/4 v5, 0x3

    const v6, 0x202007e

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 85
    iget-object v4, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    const/4 v5, 0x4

    const v6, 0x10403aa

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 86
    return-void
.end method

.method private beginningOfDay(Ljava/util/Calendar;)V
    .locals 2
    .parameter "c"

    .prologue
    const/4 v1, 0x0

    .line 130
    const/16 v0, 0xb

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 131
    const/16 v0, 0xc

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 132
    const/16 v0, 0xd

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 133
    const/16 v0, 0xe

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 134
    return-void
.end method


# virtual methods
.method public getBoundary(I)J
    .locals 3
    .parameter "index"

    .prologue
    .line 117
    const/4 v0, 0x4

    .line 119
    .local v0, lastDay:I
    if-ltz p1, :cond_0

    if-le p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 122
    :cond_1
    if-ne p1, v0, :cond_2

    const-wide/high16 v1, -0x8000

    .line 123
    :goto_0
    return-wide v1

    :cond_2
    iget-object v1, p0, Landroid/webkit/DateSorter;->mBins:[J

    aget-wide v1, v1, p1

    goto :goto_0
.end method

.method public getIndex(J)I
    .locals 4
    .parameter "time"

    .prologue
    .line 95
    const/4 v1, 0x4

    .line 96
    .local v1, lastDay:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 97
    iget-object v2, p0, Landroid/webkit/DateSorter;->mBins:[J

    aget-wide v2, v2, v0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    .line 99
    .end local v0           #i:I
    :goto_1
    return v0

    .line 96
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 99
    goto :goto_1
.end method

.method public getLabel(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 107
    if-ltz p1, :cond_0

    const/4 v0, 0x5

    if-lt p1, v0, :cond_1

    :cond_0
    const-string v0, ""

    .line 108
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/webkit/DateSorter;->mLabels:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method
