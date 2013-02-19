.class public Lcom/android/internal/telephony/AdnRecord;
.super Ljava/lang/Object;
.source "AdnRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field static final ADN_BCD_NUMBER_LENGTH:I = 0x0

.field static final ADN_CAPABILITY_ID:I = 0xc

.field static final ADN_DIALING_NUMBER_END:I = 0xb

.field static final ADN_DIALING_NUMBER_START:I = 0x2

.field static final ADN_EXTENSION_ID:I = 0xd

.field static final ADN_REC_ID:I = 0x1

.field static final ADN_SFI:I = 0x0

.field static final ADN_TON_AND_NPI:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field static final EXT_RECORD_LENGTH_BYTES:I = 0xd

.field static final EXT_RECORD_TYPE_ADDITIONAL_DATA:I = 0x2

.field static final EXT_RECORD_TYPE_MASK:I = 0x3

.field static final FOOTER_SIZE_BYTES:I = 0xe

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final MAX_EXT_CALLED_PARTY_LENGTH:I = 0xa

.field static final MAX_NUMBER_SIZE_BYTES:I = 0xb

.field static final NONE_TYPE1_DATA_LENGTH:I = 0x11

.field static final TYPE1_DATA_LENGTH:I = 0xf


# instance fields
.field alphaTag:Ljava/lang/String;

.field anr:Ljava/lang/String;

.field efid:I

.field emails:[Ljava/lang/String;

.field extRecord:I

.field number:Ljava/lang/String;

.field recordNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/android/internal/telephony/AdnRecord$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/AdnRecord$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/AdnRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"

    .prologue
    const/4 v1, 0x0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 50
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 55
    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    .line 167
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    .line 168
    iput p2, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 169
    iput-object p3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 170
    iput-object p4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 171
    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 172
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"

    .prologue
    const/4 v1, 0x0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 50
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 55
    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    .line 159
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    .line 160
    iput p2, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 161
    iput-object p3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 162
    iput-object p4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 163
    iput-object p5, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 164
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"
    .parameter "anr"

    .prologue
    const/4 v1, 0x0

    .line 767
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 50
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 55
    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    .line 769
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    .line 770
    iput p2, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 771
    iput-object p3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 772
    iput-object p4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 773
    iput-object p5, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 774
    iput-object p6, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    .line 775
    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 2
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "record"

    .prologue
    const/4 v1, 0x0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 50
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 55
    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    .line 145
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    .line 146
    iput p2, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 147
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/AdnRecord;->parseRecord([B)V

    .line 148
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "alphaTag"
    .parameter "number"

    .prologue
    const/4 v0, 0x0

    .line 151
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"

    .prologue
    const/4 v1, 0x0

    .line 155
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"
    .parameter "anr"

    .prologue
    const/4 v1, 0x0

    .line 764
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "record"

    .prologue
    const/4 v0, 0x0

    .line 141
    invoke-direct {p0, v0, v0, p1}, Lcom/android/internal/telephony/AdnRecord;-><init>(II[B)V

    .line 142
    return-void
.end method

.method public static getAlphaTagEncodingLength(Ljava/lang/String;)I
    .locals 31
    .parameter "alphaTag"

    .prologue
    .line 631
    const/4 v15, 0x0

    .line 632
    .local v15, gsm7Len:I
    const/4 v14, 0x0

    .line 633
    .local v14, gsm7Converts:I
    const/16 v21, 0x1

    .line 634
    .local v21, ucs80Len:I
    const/16 v20, 0x0

    .line 635
    .local v20, ucs80Converts:I
    const/16 v23, 0x3

    .line 636
    .local v23, ucs81Len:I
    const/16 v22, 0x0

    .line 637
    .local v22, ucs81Converts:I
    const/16 v25, 0x4

    .line 638
    .local v25, ucs82Len:I
    const/16 v24, 0x0

    .line 647
    .local v24, ucs82Converts:I
    const/16 v6, 0x20

    .line 648
    .local v6, baser81:C
    const/16 v8, 0x20

    .line 649
    .local v8, baser82Low:C
    const/16 v7, 0x20

    .line 650
    .local v7, baser82High:C
    const/16 v26, 0x1

    .line 651
    .local v26, useGsm7:Z
    const/16 v27, 0x1

    .line 652
    .local v27, usePattern81:Z
    const/16 v18, 0x0

    .line 653
    .local v18, setPattern81:Z
    const/16 v28, 0x1

    .line 654
    .local v28, usePattern82:Z
    const/16 v19, 0x0

    .line 656
    .local v19, setPattern82:Z
    const/4 v2, 0x0

    .line 657
    .local v2, SIM_CODING_GSM7:I
    const/16 v3, 0x80

    .line 658
    .local v3, SIM_CODING_PURE_UCS2:I
    const/16 v4, 0x81

    .line 659
    .local v4, SIM_CODING_UCS2_HALF_PAGE_1:I
    const/16 v5, 0x82

    .line 661
    .local v5, SIM_CODING_UCS2_HALF_PAGE_2:I
    if-nez p0, :cond_1

    .line 662
    const-string v29, "GSM"

    const-string v30, "[getAlphaTagEncodingLength] Empty alpha tag"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    const/4 v10, 0x0

    .line 756
    :cond_0
    :goto_0
    return v10

    .line 667
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v17

    .line 668
    .local v17, lenTag:I
    const/16 v16, 0x0

    .local v16, index:I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_f

    .line 669
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 670
    .local v12, c:C
    invoke-static {v12}, Lcom/android/internal/telephony/GsmAlphabet;->UCStoGsm7(C)I

    move-result v13

    .line 671
    .local v13, currGsm7Length:I
    const/16 v29, -0x1

    move/from16 v0, v29

    if-eq v13, v0, :cond_7

    .line 672
    if-eqz v26, :cond_2

    .line 673
    add-int/2addr v15, v13

    .line 674
    add-int/lit8 v14, v14, 0x1

    .line 680
    :cond_2
    :goto_2
    if-eqz v27, :cond_4

    .line 681
    const/16 v29, -0x1

    move/from16 v0, v29

    if-ne v0, v13, :cond_3

    .line 682
    const v29, 0x8000

    and-int v29, v29, v12

    const v30, 0x8000

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_8

    .line 683
    const/16 v27, 0x0

    .line 695
    :cond_3
    :goto_3
    if-eqz v27, :cond_4

    .line 696
    add-int/lit8 v22, v22, 0x1

    .line 697
    const/16 v29, -0x1

    move/from16 v0, v29

    if-ne v0, v13, :cond_a

    .line 698
    add-int/lit8 v23, v23, 0x1

    .line 705
    :cond_4
    :goto_4
    if-eqz v28, :cond_6

    .line 706
    const/16 v29, -0x1

    move/from16 v0, v29

    if-ne v0, v13, :cond_5

    .line 707
    if-nez v19, :cond_b

    .line 708
    const/16 v19, 0x1

    .line 709
    move v8, v12

    .line 710
    move v7, v12

    .line 722
    :cond_5
    :goto_5
    if-eqz v28, :cond_6

    .line 723
    add-int/lit8 v24, v24, 0x1

    .line 724
    const/16 v29, -0x1

    move/from16 v0, v29

    if-ne v0, v13, :cond_e

    .line 725
    add-int/lit8 v25, v25, 0x1

    .line 732
    :cond_6
    :goto_6
    add-int/lit8 v21, v21, 0x2

    .line 733
    add-int/lit8 v20, v20, 0x1

    .line 668
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 677
    :cond_7
    const/16 v26, 0x0

    goto :goto_2

    .line 685
    :cond_8
    if-nez v18, :cond_9

    .line 686
    const/16 v18, 0x1

    .line 687
    and-int/lit16 v0, v12, 0x7f80

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-char v6, v0

    goto :goto_3

    .line 689
    :cond_9
    and-int/lit16 v0, v12, 0x7f80

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-char v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    if-eq v6, v0, :cond_3

    .line 690
    const/16 v27, 0x0

    goto :goto_3

    .line 700
    :cond_a
    add-int v23, v23, v13

    goto :goto_4

    .line 712
    :cond_b
    if-le v8, v12, :cond_d

    .line 713
    move v8, v12

    .line 717
    :cond_c
    :goto_7
    sub-int v29, v7, v8

    const/16 v30, 0x7f

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_5

    .line 718
    const/16 v28, 0x0

    goto :goto_5

    .line 714
    :cond_d
    if-ge v7, v12, :cond_c

    .line 715
    move v7, v12

    goto :goto_7

    .line 727
    :cond_e
    add-int v25, v25, v13

    goto :goto_6

    .line 738
    .end local v12           #c:C
    .end local v13           #currGsm7Length:I
    :cond_f
    move v9, v14

    .line 739
    .local v9, bestConverts:I
    const/4 v11, 0x0

    .line 740
    .local v11, bestMode:I
    move v10, v15

    .line 741
    .local v10, bestLen:I
    move/from16 v0, v22

    if-ge v9, v0, :cond_10

    .line 742
    move/from16 v9, v22

    .line 743
    const/16 v11, 0x81

    .line 744
    move/from16 v10, v23

    .line 746
    :cond_10
    move/from16 v0, v24

    if-ge v9, v0, :cond_11

    .line 747
    move/from16 v9, v24

    .line 748
    const/16 v11, 0x82

    .line 749
    move/from16 v10, v25

    .line 751
    :cond_11
    move/from16 v0, v20

    if-ge v9, v0, :cond_0

    .line 752
    move/from16 v9, v20

    .line 753
    const/16 v11, 0x80

    .line 754
    move/from16 v10, v21

    goto/16 :goto_0
.end method

.method private parseRecord([B)V
    .locals 6
    .parameter "record"

    .prologue
    const/4 v5, 0x0

    .line 589
    const/4 v3, 0x0

    :try_start_0
    array-length v4, p1

    add-int/lit8 v4, v4, -0xe

    invoke-static {p1, v3, v4}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 592
    array-length v3, p1

    add-int/lit8 v1, v3, -0xe

    .line 594
    .local v1, footerOffset:I
    aget-byte v3, p1, v1

    and-int/lit16 v2, v3, 0xff

    .line 596
    .local v2, numberLength:I
    const/16 v3, 0xb

    if-le v2, v3, :cond_0

    .line 598
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 623
    .end local v1           #footerOffset:I
    .end local v2           #numberLength:I
    :goto_0
    return-void

    .line 609
    .restart local v1       #footerOffset:I
    .restart local v2       #numberLength:I
    :cond_0
    add-int/lit8 v3, v1, 0x1

    invoke-static {p1, v3, v2}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 613
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 615
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 617
    .end local v1           #footerOffset:I
    .end local v2           #numberLength:I
    :catch_0
    move-exception v0

    .line 618
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v3, "GSM"

    const-string v4, "Error parsing AdnRecord"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 619
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 620
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 621
    iput-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    goto :goto_0
.end method

.method private static stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 247
    if-ne p0, p1, :cond_0

    .line 248
    const/4 v0, 0x1

    .line 259
    :goto_0
    return v0

    .line 250
    :cond_0
    if-nez p0, :cond_1

    .line 251
    const-string p0, ""

    .line 253
    :cond_1
    if-nez p1, :cond_2

    .line 254
    const-string p1, ""

    .line 259
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public appendExtRecord([B)V
    .locals 4
    .parameter "extRecord"

    .prologue
    const/4 v3, 0x2

    .line 557
    :try_start_0
    array-length v1, p1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    .line 579
    :cond_0
    :goto_0
    return-void

    .line 561
    :cond_1
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x3

    if-ne v1, v3, :cond_0

    .line 566
    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    .line 571
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {p1, v2, v3}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 576
    :catch_0
    move-exception v0

    .line 577
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "GSM"

    const-string v2, "Error parsing AdnRecord ext record"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public buildAdnString(I)[B
    .locals 41
    .parameter "recordSize"

    .prologue
    .line 332
    add-int/lit8 v21, p1, -0xe

    .line 334
    .local v21, footerOffset:I
    const/16 v23, 0x0

    .line 335
    .local v23, gsm7Len:I
    const/16 v22, 0x0

    .line 336
    .local v22, gsm7Converts:I
    const/16 v30, 0x1

    .line 337
    .local v30, ucs80Len:I
    const/16 v29, 0x0

    .line 338
    .local v29, ucs80Converts:I
    const/16 v32, 0x3

    .line 339
    .local v32, ucs81Len:I
    const/16 v31, 0x0

    .line 340
    .local v31, ucs81Converts:I
    const/16 v34, 0x4

    .line 341
    .local v34, ucs82Len:I
    const/16 v33, 0x0

    .line 350
    .local v33, ucs82Converts:I
    const/16 v10, 0x20

    .line 351
    .local v10, baser81:C
    const/16 v12, 0x20

    .line 352
    .local v12, baser82Low:C
    const/16 v11, 0x20

    .line 353
    .local v11, baser82High:C
    const/16 v35, 0x1

    .line 354
    .local v35, useGsm7:Z
    const/16 v36, 0x1

    .line 355
    .local v36, usePattern81:Z
    const/16 v27, 0x0

    .line 356
    .local v27, setPattern81:Z
    const/16 v37, 0x1

    .line 357
    .local v37, usePattern82:Z
    const/16 v28, 0x0

    .line 359
    .local v28, setPattern82:Z
    const/4 v4, 0x0

    .line 360
    .local v4, SIM_CODING_GSM7:I
    const/16 v5, 0x80

    .line 361
    .local v5, SIM_CODING_PURE_UCS2:I
    const/16 v6, 0x81

    .line 362
    .local v6, SIM_CODING_UCS2_HALF_PAGE_1:I
    const/16 v7, 0x82

    .line 364
    .local v7, SIM_CODING_UCS2_HALF_PAGE_2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    move-object/from16 v38, v0

    if-eqz v38, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    move-object/from16 v38, v0

    if-nez v38, :cond_2

    .line 365
    :cond_0
    const-string v38, "GSM"

    const-string v39, "[buildAdnString] Empty alpha tag or number"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    move/from16 v0, p1

    new-array v8, v0, [B

    .line 367
    .local v8, adnString:[B
    const/16 v24, 0x0

    .local v24, i:I
    :goto_0
    move/from16 v0, v24

    move/from16 v1, p1

    if-ge v0, v1, :cond_1

    .line 368
    const/16 v38, -0x1

    aput-byte v38, v8, v24

    .line 367
    add-int/lit8 v24, v24, 0x1

    goto :goto_0

    :cond_1
    move-object v9, v8

    .line 548
    .end local v8           #adnString:[B
    .local v9, adnString:[B
    :goto_1
    return-object v9

    .line 372
    .end local v9           #adnString:[B
    .end local v24           #i:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->length()I

    move-result v38

    const/16 v39, 0x14

    move/from16 v0, v38

    move/from16 v1, v39

    if-le v0, v1, :cond_3

    .line 374
    const-string v38, "GSM"

    const-string v39, "[buildAdnString] Max length of dialing number is 20"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const/16 v40, 0x14

    invoke-virtual/range {v38 .. v40}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 380
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->length()I

    move-result v26

    .line 381
    .local v26, lenTag:I
    const/16 v25, 0x0

    .line 382
    .local v25, index:I
    :goto_2
    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_b

    if-nez v35, :cond_4

    if-nez v36, :cond_4

    if-nez v37, :cond_4

    move/from16 v0, v30

    move/from16 v1, v21

    if-gt v0, v1, :cond_b

    .line 384
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    .line 385
    .local v18, c:C
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/GsmAlphabet;->UCStoGsm7(C)I

    move-result v19

    .line 386
    .local v19, currGsm7Length:I
    const/16 v38, -0x1

    move/from16 v0, v19

    move/from16 v1, v38

    if-eq v0, v1, :cond_10

    .line 387
    if-eqz v35, :cond_5

    .line 388
    add-int v23, v23, v19

    .line 389
    add-int/lit8 v22, v22, 0x1

    .line 395
    :cond_5
    :goto_3
    if-eqz v36, :cond_7

    move/from16 v0, v32

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    .line 396
    const/16 v38, -0x1

    move/from16 v0, v38

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 397
    const v38, 0x8000

    and-int v38, v38, v18

    const v39, 0x8000

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_11

    .line 398
    const/16 v36, 0x0

    .line 410
    :cond_6
    :goto_4
    if-eqz v36, :cond_7

    .line 411
    add-int/lit8 v31, v31, 0x1

    .line 412
    const/16 v38, -0x1

    move/from16 v0, v38

    move/from16 v1, v19

    if-ne v0, v1, :cond_13

    .line 413
    add-int/lit8 v32, v32, 0x1

    .line 420
    :cond_7
    :goto_5
    if-eqz v37, :cond_9

    move/from16 v0, v34

    move/from16 v1, v21

    if-ge v0, v1, :cond_9

    .line 421
    const/16 v38, -0x1

    move/from16 v0, v38

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 422
    if-nez v28, :cond_14

    .line 423
    const/16 v28, 0x1

    .line 424
    move/from16 v12, v18

    .line 425
    move/from16 v11, v18

    .line 438
    :cond_8
    :goto_6
    if-eqz v37, :cond_9

    .line 439
    add-int/lit8 v33, v33, 0x1

    .line 440
    const/16 v38, -0x1

    move/from16 v0, v38

    move/from16 v1, v19

    if-ne v0, v1, :cond_17

    .line 441
    add-int/lit8 v34, v34, 0x1

    .line 448
    :cond_9
    :goto_7
    move/from16 v0, v30

    move/from16 v1, v21

    if-ge v0, v1, :cond_a

    .line 449
    add-int/lit8 v30, v30, 0x2

    .line 450
    add-int/lit8 v29, v29, 0x1

    .line 453
    :cond_a
    if-eqz v35, :cond_18

    .line 454
    move/from16 v0, v23

    move/from16 v1, v21

    if-lt v0, v1, :cond_19

    .line 471
    .end local v18           #c:C
    .end local v19           #currGsm7Length:I
    :cond_b
    :goto_8
    move/from16 v14, v22

    .line 472
    .local v14, bestConverts:I
    const/16 v16, 0x0

    .line 473
    .local v16, bestMode:I
    move/from16 v15, v23

    .line 474
    .local v15, bestLen:I
    move/from16 v0, v31

    if-ge v14, v0, :cond_c

    .line 475
    move/from16 v14, v31

    .line 476
    const/16 v16, 0x81

    .line 477
    move/from16 v15, v32

    .line 479
    :cond_c
    move/from16 v0, v33

    if-ge v14, v0, :cond_d

    .line 480
    move/from16 v14, v33

    .line 481
    const/16 v16, 0x82

    .line 482
    move/from16 v15, v34

    .line 484
    :cond_d
    move/from16 v0, v29

    if-ge v14, v0, :cond_e

    .line 485
    move/from16 v14, v29

    .line 486
    const/16 v16, 0x80

    .line 487
    move/from16 v15, v30

    .line 491
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 492
    move/from16 v0, v21

    if-le v15, v0, :cond_f

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    add-int/lit8 v40, v14, -0x1

    invoke-virtual/range {v38 .. v40}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 494
    add-int/lit8 v15, v15, -0x2

    .line 496
    :cond_f
    move/from16 v0, p1

    new-array v8, v0, [B

    .line 497
    .restart local v8       #adnString:[B
    const/16 v24, 0x0

    .restart local v24       #i:I
    :goto_9
    move/from16 v0, v24

    move/from16 v1, p1

    if-ge v0, v1, :cond_1c

    .line 498
    const/16 v38, -0x1

    aput-byte v38, v8, v24

    .line 497
    add-int/lit8 v24, v24, 0x1

    goto :goto_9

    .line 392
    .end local v8           #adnString:[B
    .end local v14           #bestConverts:I
    .end local v15           #bestLen:I
    .end local v16           #bestMode:I
    .end local v24           #i:I
    .restart local v18       #c:C
    .restart local v19       #currGsm7Length:I
    :cond_10
    const/16 v35, 0x0

    goto/16 :goto_3

    .line 400
    :cond_11
    if-nez v27, :cond_12

    .line 401
    const/16 v27, 0x1

    .line 402
    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x7f80

    move/from16 v38, v0

    move/from16 v0, v38

    int-to-char v10, v0

    goto/16 :goto_4

    .line 404
    :cond_12
    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x7f80

    move/from16 v38, v0

    move/from16 v0, v38

    int-to-char v0, v0

    move/from16 v38, v0

    move/from16 v0, v38

    if-eq v10, v0, :cond_6

    .line 405
    const/16 v36, 0x0

    goto/16 :goto_4

    .line 415
    :cond_13
    add-int v32, v32, v19

    goto/16 :goto_5

    .line 427
    :cond_14
    move/from16 v0, v18

    if-le v12, v0, :cond_16

    .line 428
    move/from16 v12, v18

    .line 432
    :cond_15
    :goto_a
    sub-int v38, v11, v12

    const/16 v39, 0x7f

    move/from16 v0, v38

    move/from16 v1, v39

    if-le v0, v1, :cond_8

    .line 433
    const/16 v37, 0x0

    goto/16 :goto_6

    .line 429
    :cond_16
    move/from16 v0, v18

    if-ge v11, v0, :cond_15

    .line 430
    move/from16 v11, v18

    goto :goto_a

    .line 443
    :cond_17
    add-int v34, v34, v19

    goto/16 :goto_7

    .line 457
    :cond_18
    if-eqz v36, :cond_1a

    .line 458
    move/from16 v0, v32

    move/from16 v1, v21

    if-ge v0, v1, :cond_b

    .line 383
    :cond_19
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_2

    .line 461
    :cond_1a
    if-eqz v37, :cond_1b

    .line 462
    move/from16 v0, v34

    move/from16 v1, v21

    if-lt v0, v1, :cond_19

    goto/16 :goto_8

    .line 465
    :cond_1b
    move/from16 v0, v30

    move/from16 v1, v21

    if-lt v0, v1, :cond_19

    goto/16 :goto_8

    .line 500
    .end local v18           #c:C
    .end local v19           #currGsm7Length:I
    .restart local v8       #adnString:[B
    .restart local v14       #bestConverts:I
    .restart local v15       #bestLen:I
    .restart local v16       #bestMode:I
    .restart local v24       #i:I
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->length()I

    move-result v38

    if-lez v38, :cond_1d

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v13

    .line 502
    .local v13, bcdNumber:[B
    const-string v38, "AdnRecord"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "buildAdnString bcdNumber.length = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    array-length v0, v13

    move/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const/16 v38, 0x0

    add-int/lit8 v39, v21, 0x1

    array-length v0, v13

    move/from16 v40, v0

    move/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-static {v13, v0, v8, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 506
    add-int/lit8 v38, v21, 0x0

    array-length v0, v13

    move/from16 v39, v0

    move/from16 v0, v39

    int-to-byte v0, v0

    move/from16 v39, v0

    aput-byte v39, v8, v38

    .line 509
    .end local v13           #bcdNumber:[B
    :cond_1d
    add-int/lit8 v38, v21, 0xc

    const/16 v39, -0x1

    aput-byte v39, v8, v38

    .line 511
    add-int/lit8 v38, v21, 0xd

    const/16 v39, -0x1

    aput-byte v39, v8, v38

    .line 514
    sparse-switch v16, :sswitch_data_0

    :goto_b
    move-object v9, v8

    .line 548
    .end local v8           #adnString:[B
    .restart local v9       #adnString:[B
    goto/16 :goto_1

    .line 516
    .end local v9           #adnString:[B
    .restart local v8       #adnString:[B
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v17

    .line 517
    .local v17, byteTag:[B
    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v40, v0

    move-object/from16 v0, v17

    move/from16 v1, v38

    move/from16 v2, v39

    move/from16 v3, v40

    invoke-static {v0, v1, v8, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_b

    .line 522
    .end local v17           #byteTag:[B
    :sswitch_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    move-object/from16 v38, v0

    const-string v39, "UTF-16BE"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 526
    .restart local v17       #byteTag:[B
    :goto_c
    const/16 v38, 0x0

    const/16 v39, -0x80

    aput-byte v39, v8, v38

    .line 527
    const/16 v38, 0x0

    const/16 v39, 0x1

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v40, v0

    move-object/from16 v0, v17

    move/from16 v1, v38

    move/from16 v2, v39

    move/from16 v3, v40

    invoke-static {v0, v1, v8, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_b

    .line 523
    .end local v17           #byteTag:[B
    :catch_0
    move-exception v20

    .line 524
    .local v20, e:Ljava/io/UnsupportedEncodingException;
    const/16 v38, 0x0

    move/from16 v0, v38

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .restart local v17       #byteTag:[B
    goto :goto_c

    .line 531
    .end local v17           #byteTag:[B
    .end local v20           #e:Ljava/io/UnsupportedEncodingException;
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    move-object/from16 v38, v0

    add-int/lit8 v39, v15, -0x2

    move-object/from16 v0, v38

    move/from16 v1, v39

    invoke-static {v0, v10, v1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToUCS81Packed(Ljava/lang/String;CI)[B

    move-result-object v17

    .line 532
    .restart local v17       #byteTag:[B
    const/16 v38, 0x0

    const/16 v39, -0x7f

    aput-byte v39, v8, v38

    .line 533
    const/16 v38, 0x1

    add-int/lit8 v39, v15, -0x3

    move/from16 v0, v39

    int-to-byte v0, v0

    move/from16 v39, v0

    aput-byte v39, v8, v38

    .line 534
    const/16 v38, 0x0

    const/16 v39, 0x2

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v40, v0

    move-object/from16 v0, v17

    move/from16 v1, v38

    move/from16 v2, v39

    move/from16 v3, v40

    invoke-static {v0, v1, v8, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_b

    .line 538
    .end local v17           #byteTag:[B
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    move-object/from16 v38, v0

    add-int/lit8 v39, v15, -0x2

    move-object/from16 v0, v38

    move/from16 v1, v39

    invoke-static {v0, v12, v1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToUCS82Packed(Ljava/lang/String;CI)[B

    move-result-object v17

    .line 539
    .restart local v17       #byteTag:[B
    const/16 v38, 0x0

    const/16 v39, -0x7e

    aput-byte v39, v8, v38

    .line 540
    const/16 v38, 0x1

    add-int/lit8 v39, v15, -0x4

    move/from16 v0, v39

    int-to-byte v0, v0

    move/from16 v39, v0

    aput-byte v39, v8, v38

    .line 541
    const/16 v38, 0x0

    const/16 v39, 0x2

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v40, v0

    move-object/from16 v0, v17

    move/from16 v1, v38

    move/from16 v2, v39

    move/from16 v3, v40

    invoke-static {v0, v1, v8, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_b

    .line 514
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x80 -> :sswitch_1
        0x81 -> :sswitch_2
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method public buildAnrString(IIII)[B
    .locals 9
    .parameter "recordSize"
    .parameter "recordSeq"
    .parameter "efid"
    .parameter "adnNum"

    .prologue
    .line 916
    const/4 v1, 0x0

    .line 919
    .local v1, anrRecord:Ljava/lang/String;
    const-string v5, "GSM"

    const-string v6, "buildAnrString(): enter."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    new-array v2, p1, [B

    .line 924
    .local v2, anrString:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, p1, :cond_0

    .line 926
    const/4 v5, -0x1

    aput-byte v5, v2, v3

    .line 924
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 929
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    const-string v6, ",,"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 931
    :cond_1
    const-string v5, "GSM"

    const-string v6, "buildAnrString(): anr number is empty. "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    :cond_2
    :goto_1
    return-object v2

    .line 935
    :cond_3
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "buildAnrString(): anr = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    const/4 v4, 0x0

    .line 938
    .local v4, ret:[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 940
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 941
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v4, v6

    const/4 v7, 0x0

    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    aget-object v8, v4, v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 944
    :cond_4
    if-eqz v4, :cond_2

    array-length v5, v4

    if-le v5, p2, :cond_2

    .line 949
    aget-object v1, v4, p2

    .line 952
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "buildAnrString(): anrRecord = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 956
    const-string v5, "GSM"

    const-string v6, "buildAnrString(): anrRecord is empty. "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 960
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x14

    if-le v5, v6, :cond_6

    .line 962
    const-string v5, "GSM"

    const-string v6, "buildAnrString(): Max length of dailing number is 20"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    const/4 v5, 0x0

    const/16 v6, 0x14

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 965
    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    .line 968
    :cond_6
    const/4 v5, 0x0

    const/4 v6, 0x1

    aput-byte v6, v2, v5

    .line 969
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v0

    .line 970
    .local v0, anrNumber:[B
    const/4 v5, 0x1

    array-length v6, v0

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    .line 972
    const/4 v5, 0x0

    const/4 v6, 0x2

    array-length v7, v0

    invoke-static {v0, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 974
    const/16 v5, 0xf

    if-le p1, v5, :cond_7

    .line 976
    add-int/lit8 v5, p1, -0x4

    const/4 v6, -0x1

    aput-byte v6, v2, v5

    .line 977
    add-int/lit8 v5, p1, -0x3

    const/4 v6, -0x1

    aput-byte v6, v2, v5

    .line 979
    add-int/lit8 v5, p1, -0x2

    int-to-byte v6, p3

    aput-byte v6, v2, v5

    .line 980
    add-int/lit8 v5, p1, -0x1

    int-to-byte v6, p4

    aput-byte v6, v2, v5

    goto/16 :goto_1

    .line 984
    :cond_7
    add-int/lit8 v5, p1, -0x2

    const/4 v6, -0x1

    aput-byte v6, v2, v5

    .line 985
    add-int/lit8 v5, p1, -0x1

    const/4 v6, -0x1

    aput-byte v6, v2, v5

    goto/16 :goto_1
.end method

.method public buildEmailString(IIII)[B
    .locals 9
    .parameter "recordSize"
    .parameter "recordSeq"
    .parameter "efid"
    .parameter "adnNum"

    .prologue
    const/4 v8, 0x0

    .line 854
    add-int/lit8 v3, p1, -0x2

    .line 857
    .local v3, footerOffset:I
    new-array v2, p1, [B

    .line 859
    .local v2, emailString:[B
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, p1, :cond_0

    .line 861
    const/4 v6, -0x1

    aput-byte v6, v2, v4

    .line 859
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 864
    :cond_0
    add-int/lit8 v6, v3, 0x0

    int-to-byte v7, p3

    aput-byte v7, v2, v6

    .line 865
    add-int/lit8 v6, v3, 0x1

    int-to-byte v7, p4

    aput-byte v7, v2, v6

    .line 867
    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    if-nez v6, :cond_2

    .line 910
    :cond_1
    :goto_1
    return-object v2

    .line 873
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    aget-object v1, v6, p2

    .line 877
    .local v1, emailRecord:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 879
    invoke-static {v1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v0

    .line 882
    .local v0, byteTag:[B
    array-length v6, v0

    if-le v6, v3, :cond_3

    move v5, v3

    .line 883
    .local v5, length:I
    :goto_2
    iget-object v6, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    aget-object v7, v7, p2

    invoke-virtual {v7, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, p2

    .line 884
    invoke-static {v0, v8, v2, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 882
    .end local v5           #length:I
    :cond_3
    array-length v5, v0

    goto :goto_2
.end method

.method public buildIapString(II)[B
    .locals 5
    .parameter "recordSize"
    .parameter "recNum"

    .prologue
    .line 995
    const/4 v2, 0x0

    .line 997
    .local v2, iapString:[B
    add-int/lit8 v0, p1, -0xe

    .line 1000
    .local v0, footerOffset:I
    new-array v2, p1, [B

    .line 1002
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 1004
    const/4 v3, -0x1

    aput-byte v3, v2, v1

    .line 1002
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1007
    :cond_0
    const/4 v3, 0x0

    int-to-byte v4, p2

    aput-byte v4, v2, v3

    .line 1009
    return-object v2
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x0

    return v0
.end method

.method public equalAdn(Lcom/android/internal/telephony/AdnRecord;)Z
    .locals 2
    .parameter "adn"

    .prologue
    .line 292
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getEfid()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getRecordNumber()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    return-object v0
.end method

.method public getAnr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    return-object v0
.end method

.method public getEfid()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    return v0
.end method

.method public getEmails()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordNumber()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    return v0
.end method

.method public hasExtendedRecord()Z
    .locals 2

    .prologue
    .line 242
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/gsm/SIMRecords;->getEmailAnrSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/AdnRecord;->isEmptyAnr(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmptyAnr(Ljava/lang/String;)Z
    .locals 4
    .parameter "s"

    .prologue
    const/4 v1, 0x1

    .line 789
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 802
    :cond_0
    :goto_0
    return v1

    .line 794
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 796
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_2

    .line 798
    const/4 v1, 0x0

    goto :goto_0

    .line 794
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public isEqual(Lcom/android/internal/telephony/AdnRecord;)Z
    .locals 4
    .parameter "adn"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 268
    invoke-static {}, Lcom/android/internal/telephony/gsm/SIMRecords;->getEmailAnrSupport()Z

    move-result v2

    if-nez v2, :cond_2

    .line 270
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/internal/telephony/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/internal/telephony/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    iget-object v3, p1, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 275
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 270
    goto :goto_0

    .line 275
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/internal/telephony/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/internal/telephony/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    iget-object v3, p1, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/AdnRecord;->stringCompareEmails([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/AdnRecord;->stringCompareAnr(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public setAnr(Ljava/lang/String;)V
    .locals 0
    .parameter "anr"

    .prologue
    .line 784
    iput-object p1, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    .line 785
    return-void
.end method

.method public setEfid(I)V
    .locals 0
    .parameter "efid"

    .prologue
    .line 196
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    .line 197
    return-void
.end method

.method public setEmails([Ljava/lang/String;)V
    .locals 0
    .parameter "emails"

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 223
    return-void
.end method

.method public setRecordNumber(I)V
    .locals 0
    .parameter "RecordNumber"

    .prologue
    .line 205
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 206
    return-void
.end method

.method public stringCompareAnr(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 809
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/AdnRecord;->isEmptyAnr(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 811
    :cond_0
    const-string p1, ""

    .line 814
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/AdnRecord;->isEmptyAnr(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 816
    :cond_2
    const-string p2, ""

    .line 819
    :cond_3
    invoke-static {p1, p2}, Lcom/android/internal/telephony/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public stringCompareEmails([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .parameter "e1"
    .parameter "e2"

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 824
    const-string v0, ""

    .line 826
    .local v0, e:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 828
    new-array p1, v1, [Ljava/lang/String;

    .line 829
    aput-object v0, p1, v4

    .line 832
    :cond_0
    if-nez p2, :cond_1

    .line 834
    new-array p2, v1, [Ljava/lang/String;

    .line 835
    aput-object v0, p2, v4

    .line 838
    :cond_1
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stringCompareEmails():isEqual  adn  e1[0]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "e2[0]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p2, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    aget-object v1, p1, v4

    aget-object v2, p2, v4

    invoke-static {v1, v2}, Lcom/android/internal/telephony/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ADN Record \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 302
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 310
    invoke-static {}, Lcom/android/internal/telephony/gsm/SIMRecords;->getEmailAnrSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->anr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 318
    :cond_0
    return-void
.end method
