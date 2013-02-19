.class public Landroid/text/format/DateFormat;
.super Ljava/lang/Object;
.source "DateFormat.java"


# static fields
.field public static final AM_PM:C = 'a'

.field public static final CAPITAL_AM_PM:C = 'A'

.field public static final DATE:C = 'd'

.field public static final DAY:C = 'E'

.field public static final HOUR:C = 'h'

.field public static final HOUR_OF_DAY:C = 'k'

.field public static final MINUTE:C = 'm'

.field public static final MONTH:C = 'M'

.field public static final QUOTE:C = '\''

.field public static final SECONDS:C = 's'

.field public static final STANDALONE_MONTH:C = 'L'

.field public static final TIME_ZONE:C = 'z'

.field public static final YEAR:C = 'y'

.field private static sIs24Hour:Z

.field private static sIs24HourLocale:Ljava/util/Locale;

.field private static final sLocaleLock:Ljava/lang/Object;

.field private static sZeroDigit:C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 213
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/format/DateFormat;->sLocaleLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendQuotedText(Landroid/text/SpannableStringBuilder;II)I
    .locals 4
    .parameter "s"
    .parameter "i"
    .parameter "len"

    .prologue
    const/16 v3, 0x27

    .line 679
    add-int/lit8 v2, p1, 0x1

    if-ge v2, p2, :cond_1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    .line 680
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 681
    const/4 v1, 0x1

    .line 712
    :cond_0
    :goto_0
    return v1

    .line 684
    :cond_1
    const/4 v1, 0x0

    .line 687
    .local v1, count:I
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 688
    add-int/lit8 p2, p2, -0x1

    .line 690
    :goto_1
    if-ge p1, p2, :cond_0

    .line 691
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    .line 693
    .local v0, c:C
    if-ne v0, v3, :cond_3

    .line 695
    add-int/lit8 v2, p1, 0x1

    if-ge v2, p2, :cond_2

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_2

    .line 697
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 698
    add-int/lit8 p2, p2, -0x1

    .line 699
    add-int/lit8 v1, v1, 0x1

    .line 700
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 703
    :cond_2
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 707
    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 708
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;
    .locals 1
    .parameter "inFormat"
    .parameter "inTimeInMillis"

    .prologue
    .line 431
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;
    .locals 10
    .parameter "inFormat"
    .parameter "inDate"

    .prologue
    const/16 v8, 0xa

    const/16 v9, 0x9

    .line 519
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 523
    .local v5, s:Landroid/text/SpannableStringBuilder;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 525
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_5

    .line 528
    const/4 v1, 0x1

    .line 529
    .local v1, count:I
    invoke-virtual {v5, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    .line 531
    .local v0, c:I
    const/16 v7, 0x27

    if-ne v0, v7, :cond_1

    .line 532
    invoke-static {v5, v2, v3}, Landroid/text/format/DateFormat;->appendQuotedText(Landroid/text/SpannableStringBuilder;II)I

    move-result v1

    .line 533
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 525
    :cond_0
    :goto_1
    add-int/2addr v2, v1

    goto :goto_0

    .line 537
    :cond_1
    :goto_2
    add-int v7, v2, v1

    if-ge v7, v3, :cond_2

    add-int v7, v2, v1

    invoke-virtual {v5, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v0, :cond_2

    .line 538
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 543
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-static {v7}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v7

    iget-char v7, v7, Llibcore/icu/LocaleData;->zeroDigit:C

    sput-char v7, Landroid/text/format/DateFormat;->sZeroDigit:C

    .line 546
    sparse-switch v0, :sswitch_data_0

    .line 603
    const/4 v4, 0x0

    .line 607
    .local v4, replacement:Ljava/lang/String;
    :goto_3
    if-eqz v4, :cond_0

    .line 608
    add-int v7, v2, v1

    invoke-virtual {v5, v2, v7, v4}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 609
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 610
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    goto :goto_1

    .line 548
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_0
    invoke-virtual {p1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v4

    .line 549
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_3

    .line 553
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_1
    invoke-virtual {p1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v4

    .line 554
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_3

    .line 557
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_2
    const/4 v7, 0x5

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7, v1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v4

    .line 558
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_3

    .line 561
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_3
    const/4 v7, 0x7

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 562
    .local v6, temp:I
    const/4 v7, 0x4

    if-ge v1, v7, :cond_3

    const/16 v7, 0x14

    :goto_4
    invoke-static {v6, v7}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v4

    .line 566
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_3

    .end local v4           #replacement:Ljava/lang/String;
    :cond_3
    move v7, v8

    .line 562
    goto :goto_4

    .line 569
    .end local v6           #temp:I
    :sswitch_4
    invoke-virtual {p1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 571
    .restart local v6       #temp:I
    if-nez v6, :cond_4

    .line 572
    const/16 v6, 0xc

    .line 574
    :cond_4
    invoke-static {v6, v1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v4

    .line 575
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_3

    .line 578
    .end local v4           #replacement:Ljava/lang/String;
    .end local v6           #temp:I
    :sswitch_5
    const/16 v7, 0xb

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7, v1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v4

    .line 579
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_3

    .line 582
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_6
    const/16 v7, 0xc

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7, v1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v4

    .line 583
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_3

    .line 587
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_7
    invoke-static {p1, v1, v0}, Landroid/text/format/DateFormat;->getMonthString(Ljava/util/Calendar;II)Ljava/lang/String;

    move-result-object v4

    .line 588
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_3

    .line 591
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_8
    const/16 v7, 0xd

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7, v1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v4

    .line 592
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_3

    .line 595
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_9
    invoke-static {p1, v1}, Landroid/text/format/DateFormat;->getTimeZoneString(Ljava/util/Calendar;I)Ljava/lang/String;

    move-result-object v4

    .line 596
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_3

    .line 599
    .end local v4           #replacement:Ljava/lang/String;
    :sswitch_a
    invoke-static {p1, v1}, Landroid/text/format/DateFormat;->getYearString(Ljava/util/Calendar;I)Ljava/lang/String;

    move-result-object v4

    .line 600
    .restart local v4       #replacement:Ljava/lang/String;
    goto :goto_3

    .line 614
    .end local v0           #c:I
    .end local v1           #count:I
    .end local v4           #replacement:Ljava/lang/String;
    :cond_5
    instance-of v7, p0, Landroid/text/Spanned;

    if-eqz v7, :cond_6

    .line 615
    new-instance v7, Landroid/text/SpannedString;

    invoke-direct {v7, v5}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 617
    :goto_5
    return-object v7

    :cond_6
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    .line 546
    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_1
        0x45 -> :sswitch_3
        0x4c -> :sswitch_7
        0x4d -> :sswitch_7
        0x61 -> :sswitch_0
        0x64 -> :sswitch_2
        0x68 -> :sswitch_4
        0x6b -> :sswitch_5
        0x6d -> :sswitch_6
        0x73 -> :sswitch_8
        0x79 -> :sswitch_a
        0x7a -> :sswitch_9
    .end sparse-switch
.end method

.method public static format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "inFormat"
    .parameter "inDate"

    .prologue
    .line 442
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 444
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 446
    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method private static formatZoneOffset(II)Ljava/lang/String;
    .locals 6
    .parameter "offset"
    .parameter "count"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 652
    div-int/lit16 p0, p0, 0x3e8

    .line 653
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 655
    .local v2, tb:Ljava/lang/StringBuilder;
    if-gez p0, :cond_0

    .line 656
    const-string v3, "-"

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    neg-int p0, p0

    .line 662
    :goto_0
    div-int/lit16 v0, p0, 0xe10

    .line 663
    .local v0, hours:I
    rem-int/lit16 v3, p0, 0xe10

    div-int/lit8 v1, v3, 0x3c

    .line 665
    .local v1, minutes:I
    invoke-static {v0, v5}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    invoke-static {v1, v5}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 659
    .end local v0           #hours:I
    .end local v1           #minutes:I
    :cond_0
    const-string v3, "+"

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .locals 3
    .parameter "context"

    .prologue
    .line 294
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, value:Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v1

    return-object v1
.end method

.method public static getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;
    .locals 2
    .parameter "context"
    .parameter "value"

    .prologue
    .line 311
    invoke-static {p0, p1}, Landroid/text/format/DateFormat;->getDateFormatStringForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, format:Ljava/lang/String;
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static getDateFormatOrder(Landroid/content/Context;)[C
    .locals 14
    .parameter "context"

    .prologue
    const/16 v13, 0x79

    const/16 v12, 0x64

    const/16 v11, 0x4d

    .line 387
    const/4 v10, 0x3

    new-array v8, v10, [C

    fill-array-data v8, :array_0

    .line 388
    .local v8, order:[C
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 389
    .local v9, value:Ljava/lang/String;
    const/4 v6, 0x0

    .line 390
    .local v6, index:I
    const/4 v2, 0x0

    .line 391
    .local v2, foundDate:Z
    const/4 v3, 0x0

    .line 392
    .local v3, foundMonth:Z
    const/4 v4, 0x0

    .line 394
    .local v4, foundYear:Z
    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, arr$:[C
    array-length v7, v0

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v7, :cond_4

    aget-char v1, v0, v5

    .line 395
    .local v1, c:C
    if-nez v2, :cond_0

    if-ne v1, v12, :cond_0

    .line 396
    const/4 v2, 0x1

    .line 397
    aput-char v12, v8, v6

    .line 398
    add-int/lit8 v6, v6, 0x1

    .line 401
    :cond_0
    if-nez v3, :cond_2

    if-eq v1, v11, :cond_1

    const/16 v10, 0x4c

    if-ne v1, v10, :cond_2

    .line 402
    :cond_1
    const/4 v3, 0x1

    .line 403
    aput-char v11, v8, v6

    .line 404
    add-int/lit8 v6, v6, 0x1

    .line 407
    :cond_2
    if-nez v4, :cond_3

    if-ne v1, v13, :cond_3

    .line 408
    const/4 v4, 0x1

    .line 409
    aput-char v13, v8, v6

    .line 410
    add-int/lit8 v6, v6, 0x1

    .line 394
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 413
    .end local v1           #c:C
    :cond_4
    return-object v8

    .line 387
    nop

    :array_0
    .array-data 0x2
        0x64t 0x0t
        0x4dt 0x0t
        0x79t 0x0t
    .end array-data
.end method

.method private static getDateFormatString(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 417
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, value:Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->getDateFormatStringForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getDateFormatStringForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "value"

    .prologue
    const/4 v6, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 317
    if-eqz p1, :cond_5

    .line 318
    const/16 v5, 0x4d

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 319
    .local v1, month:I
    const/16 v5, 0x64

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 320
    .local v0, day:I
    const/16 v5, 0x79

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 322
    .local v4, year:I
    if-ltz v1, :cond_5

    if-ltz v0, :cond_5

    if-ltz v4, :cond_5

    .line 323
    const v5, 0x1040034

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 324
    .local v2, template:Ljava/lang/String;
    if-ge v4, v1, :cond_1

    if-ge v4, v0, :cond_1

    .line 325
    if-ge v1, v0, :cond_0

    .line 326
    new-array v5, v6, [Ljava/lang/Object;

    const-string/jumbo v6, "yyyy"

    aput-object v6, v5, v7

    const-string v6, "MM"

    aput-object v6, v5, v8

    const-string v6, "dd"

    aput-object v6, v5, v9

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v3, p1

    .line 354
    .end local v0           #day:I
    .end local v1           #month:I
    .end local v2           #template:Ljava/lang/String;
    .end local v4           #year:I
    .end local p1
    .local v3, value:Ljava/lang/String;
    :goto_1
    return-object v3

    .line 328
    .end local v3           #value:Ljava/lang/String;
    .restart local v0       #day:I
    .restart local v1       #month:I
    .restart local v2       #template:Ljava/lang/String;
    .restart local v4       #year:I
    .restart local p1
    :cond_0
    new-array v5, v6, [Ljava/lang/Object;

    const-string/jumbo v6, "yyyy"

    aput-object v6, v5, v7

    const-string v6, "dd"

    aput-object v6, v5, v8

    const-string v6, "MM"

    aput-object v6, v5, v9

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 330
    :cond_1
    if-ge v1, v0, :cond_3

    .line 331
    if-ge v0, v4, :cond_2

    .line 332
    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "MM"

    aput-object v6, v5, v7

    const-string v6, "dd"

    aput-object v6, v5, v8

    const-string/jumbo v6, "yyyy"

    aput-object v6, v5, v9

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 334
    :cond_2
    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "MM"

    aput-object v6, v5, v7

    const-string/jumbo v6, "yyyy"

    aput-object v6, v5, v8

    const-string v6, "dd"

    aput-object v6, v5, v9

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 337
    :cond_3
    if-ge v1, v4, :cond_4

    .line 338
    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "dd"

    aput-object v6, v5, v7

    const-string v6, "MM"

    aput-object v6, v5, v8

    const-string/jumbo v6, "yyyy"

    aput-object v6, v5, v9

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 340
    :cond_4
    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "dd"

    aput-object v6, v5, v7

    const-string/jumbo v6, "yyyy"

    aput-object v6, v5, v8

    const-string v6, "MM"

    aput-object v6, v5, v9

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 353
    .end local v0           #day:I
    .end local v1           #month:I
    .end local v2           #template:Ljava/lang/String;
    .end local v4           #year:I
    :cond_5
    const v5, 0x1040033

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    move-object v3, p1

    .line 354
    .end local p1
    .restart local v3       #value:Ljava/lang/String;
    goto :goto_1
.end method

.method public static getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .locals 1
    .parameter "context"

    .prologue
    .line 364
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .locals 1
    .parameter "context"

    .prologue
    .line 374
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method private static getMonthString(Ljava/util/Calendar;II)Ljava/lang/String;
    .locals 5
    .parameter "inDate"
    .parameter "count"
    .parameter "kind"

    .prologue
    const/16 v4, 0x14

    const/16 v3, 0xa

    .line 621
    const/16 v2, 0x4c

    if-ne p2, v2, :cond_0

    const/4 v1, 0x1

    .line 622
    .local v1, standalone:Z
    :goto_0
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 624
    .local v0, month:I
    const/4 v2, 0x4

    if-lt p1, v2, :cond_2

    .line 625
    if-eqz v1, :cond_1

    invoke-static {v0, v3}, Landroid/text/format/DateUtils;->getStandaloneMonthString(II)Ljava/lang/String;

    move-result-object v2

    .line 634
    :goto_1
    return-object v2

    .line 621
    .end local v0           #month:I
    .end local v1           #standalone:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 625
    .restart local v0       #month:I
    .restart local v1       #standalone:Z
    :cond_1
    invoke-static {v0, v3}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 628
    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_4

    .line 629
    if-eqz v1, :cond_3

    invoke-static {v0, v4}, Landroid/text/format/DateUtils;->getStandaloneMonthString(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    invoke-static {v0, v4}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 634
    :cond_4
    add-int/lit8 v2, v0, 0x1

    invoke-static {v2, p1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .locals 4
    .parameter "context"

    .prologue
    .line 274
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    .line 277
    .local v0, b24:Z
    if-eqz v0, :cond_0

    .line 278
    const v1, 0x1040031

    .line 283
    .local v1, res:I
    :goto_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 280
    .end local v1           #res:I
    :cond_0
    const v1, 0x1040030

    .restart local v1       #res:I
    goto :goto_0
.end method

.method private static getTimeZoneString(Ljava/util/Calendar;I)Ljava/lang/String;
    .locals 5
    .parameter "inDate"
    .parameter "count"

    .prologue
    const/16 v4, 0x10

    const/4 v2, 0x0

    .line 639
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 641
    .local v1, tz:Ljava/util/TimeZone;
    const/4 v3, 0x2

    if-ge p1, v3, :cond_0

    .line 642
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xf

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2, p1}, Landroid/text/format/DateFormat;->formatZoneOffset(II)Ljava/lang/String;

    move-result-object v2

    .line 647
    :goto_0
    return-object v2

    .line 646
    :cond_0
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .line 647
    .local v0, dst:Z
    :goto_1
    invoke-virtual {v1, v0, v2}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .end local v0           #dst:Z
    :cond_1
    move v0, v2

    .line 646
    goto :goto_1
.end method

.method private static getYearString(Ljava/util/Calendar;I)Ljava/lang/String;
    .locals 3
    .parameter "inDate"
    .parameter "count"

    .prologue
    const/4 v2, 0x2

    .line 671
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 672
    .local v0, year:I
    if-gt p1, v2, :cond_0

    rem-int/lit8 v1, v0, 0x64

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sget-char v2, Landroid/text/format/DateFormat;->sZeroDigit:C

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->localizeDigits(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static hasSeconds(Ljava/lang/CharSequence;)Z
    .locals 6
    .parameter "inFormat"

    .prologue
    const/4 v4, 0x0

    .line 461
    if-nez p0, :cond_1

    .line 479
    :cond_0
    :goto_0
    return v4

    .line 463
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 468
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 469
    const/4 v1, 0x1

    .line 470
    .local v1, count:I
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 472
    .local v0, c:I
    const/16 v5, 0x27

    if-ne v0, v5, :cond_3

    .line 473
    invoke-static {p0, v2, v3}, Landroid/text/format/DateFormat;->skipQuotedText(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 468
    :cond_2
    add-int/2addr v2, v1

    goto :goto_1

    .line 474
    :cond_3
    const/16 v5, 0x73

    if-ne v0, v5, :cond_2

    .line 475
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static is24HourFormat(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    .line 227
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "time_12_24"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 230
    .local v4, value:Ljava/lang/String;
    if-nez v4, :cond_3

    .line 231
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v0, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 233
    .local v0, locale:Ljava/util/Locale;
    sget-object v6, Landroid/text/format/DateFormat;->sLocaleLock:Ljava/lang/Object;

    monitor-enter v6

    .line 234
    :try_start_0
    sget-object v5, Landroid/text/format/DateFormat;->sIs24HourLocale:Ljava/util/Locale;

    if-eqz v5, :cond_0

    sget-object v5, Landroid/text/format/DateFormat;->sIs24HourLocale:Ljava/util/Locale;

    invoke-virtual {v5, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 235
    sget-boolean v5, Landroid/text/format/DateFormat;->sIs24Hour:Z

    monitor-exit v6

    .line 264
    .end local v0           #locale:Ljava/util/Locale;
    :goto_0
    return v5

    .line 237
    .restart local v0       #locale:Ljava/util/Locale;
    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    const/4 v5, 0x1

    invoke-static {v5, v0}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    .line 243
    .local v1, natural:Ljava/text/DateFormat;
    instance-of v5, v1, Ljava/text/SimpleDateFormat;

    if-eqz v5, :cond_2

    move-object v3, v1

    .line 244
    check-cast v3, Ljava/text/SimpleDateFormat;

    .line 245
    .local v3, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v3}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, pattern:Ljava/lang/String;
    const/16 v5, 0x48

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_1

    .line 248
    const-string v4, "24"

    .line 256
    .end local v2           #pattern:Ljava/lang/String;
    .end local v3           #sdf:Ljava/text/SimpleDateFormat;
    :goto_1
    sget-object v6, Landroid/text/format/DateFormat;->sLocaleLock:Ljava/lang/Object;

    monitor-enter v6

    .line 257
    :try_start_1
    sput-object v0, Landroid/text/format/DateFormat;->sIs24HourLocale:Ljava/util/Locale;

    .line 258
    const-string v5, "24"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Landroid/text/format/DateFormat;->sIs24Hour:Z

    .line 259
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 261
    sget-boolean v5, Landroid/text/format/DateFormat;->sIs24Hour:Z

    goto :goto_0

    .line 237
    .end local v1           #natural:Ljava/text/DateFormat;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 250
    .restart local v1       #natural:Ljava/text/DateFormat;
    .restart local v2       #pattern:Ljava/lang/String;
    .restart local v3       #sdf:Ljava/text/SimpleDateFormat;
    :cond_1
    const-string v4, "12"

    goto :goto_1

    .line 253
    .end local v2           #pattern:Ljava/lang/String;
    .end local v3           #sdf:Ljava/text/SimpleDateFormat;
    :cond_2
    const-string v4, "12"

    goto :goto_1

    .line 259
    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5

    .line 264
    .end local v0           #locale:Ljava/util/Locale;
    .end local v1           #natural:Ljava/text/DateFormat;
    :cond_3
    const-string v5, "24"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_0
.end method

.method private static localizeDigits(Ljava/lang/String;C)Ljava/lang/String;
    .locals 7
    .parameter "s"
    .parameter "localeZero"

    .prologue
    const/16 v6, 0x30

    .line 726
    if-eq p1, v6, :cond_2

    .line 727
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 728
    .local v2, length:I
    add-int/lit8 v3, p1, -0x30

    .line 729
    .local v3, offsetToLocalizedDigits:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 730
    .local v4, result:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 731
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 732
    .local v0, ch:C
    if-lt v0, v6, :cond_0

    const/16 v5, 0x39

    if-gt v0, v5, :cond_0

    .line 733
    add-int v5, v0, v3

    int-to-char v0, v5

    .line 735
    :cond_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 730
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 737
    .end local v0           #ch:C
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 739
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v3           #offsetToLocalizedDigits:I
    .end local v4           #result:Ljava/lang/StringBuilder;
    .end local p0
    :cond_2
    return-object p0
.end method

.method private static skipQuotedText(Ljava/lang/CharSequence;II)I
    .locals 4
    .parameter "s"
    .parameter "i"
    .parameter "len"

    .prologue
    const/16 v3, 0x27

    .line 483
    add-int/lit8 v2, p1, 0x1

    if-ge v2, p2, :cond_1

    add-int/lit8 v2, p1, 0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    .line 484
    const/4 v1, 0x2

    .line 508
    :cond_0
    return v1

    .line 487
    :cond_1
    const/4 v1, 0x1

    .line 489
    .local v1, count:I
    add-int/lit8 p1, p1, 0x1

    .line 491
    :goto_0
    if-ge p1, p2, :cond_0

    .line 492
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 494
    .local v0, c:C
    if-ne v0, v3, :cond_2

    .line 495
    add-int/lit8 v1, v1, 0x1

    .line 497
    add-int/lit8 v2, p1, 0x1

    if-ge v2, p2, :cond_0

    add-int/lit8 v2, p1, 0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    .line 498
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 503
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 504
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static zeroPad(II)Ljava/lang/String;
    .locals 6
    .parameter "inValue"
    .parameter "inMinDigits"

    .prologue
    .line 717
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 718
    .local v0, result:Ljava/lang/String;
    sget-char v1, Landroid/text/format/DateFormat;->sZeroDigit:C

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->localizeDigits(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
