.class public Landroid/telephony/SignalStrength;
.super Ljava/lang/Object;
.source "SignalStrength.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/SignalStrength;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = true

#the value of this static final field might be set in the static constructor
.field public static final GSM_STRENGTH_GOOD_STD:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final GSM_STRENGTH_GREAT_STD:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final GSM_STRENGTH_MODERATE_STD:I = 0x0

.field public static final GSM_STRENGTH_NONE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final GSM_STRENGTH_POOR_STD:I = 0x0

.field public static final GSM_STRENGTH_UNKOUWN:I = 0x63

.field public static final G_STRENGTH_GOOD_STD:I = -0x61

.field public static final G_STRENGTH_GREAT_STD:I = -0x59

.field public static final G_STRENGTH_MODERATE_STD:I = -0x67

.field public static final G_STRENGTH_POOR_STD:I = -0x6d

.field public static INVALID:I = 0x0

.field public static final INVALID_SNR:I = 0x7fffffff

.field private static final LOG_TAG:Ljava/lang/String; = "SignalStrength"

#the value of this static final field might be set in the static constructor
.field public static final LTE_STRENGTH_GOOD_STD:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final LTE_STRENGTH_GREAT_STD:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final LTE_STRENGTH_MODERATE_STD:I = 0x0

.field public static final LTE_STRENGTH_NONE_STD:I = -0x8c

#the value of this static final field might be set in the static constructor
.field public static final LTE_STRENGTH_POOR_STD:I = 0x0

.field public static final LTE_STRENGTH_UNKOUWN_STD:I = -0x2c

.field public static final L_STRENGTH_GOOD_STD:I = -0x5f

.field public static final L_STRENGTH_GREAT_STD:I = -0x55

.field public static final L_STRENGTH_MODERATE_STD:I = -0x69

.field public static final L_STRENGTH_POOR_STD:I = -0x73

.field public static final NUM_SIGNAL_STRENGTH_BINS:I = 0x5

.field public static final SIGNAL_STRENGTH_GOOD:I = 0x3

.field public static final SIGNAL_STRENGTH_GREAT:I = 0x4

.field public static final SIGNAL_STRENGTH_MODERATE:I = 0x2

.field public static final SIGNAL_STRENGTH_NAMES:[Ljava/lang/String; = null

.field public static final SIGNAL_STRENGTH_NONE_OR_UNKNOWN:I = 0x0

.field public static final SIGNAL_STRENGTH_POOR:I = 0x1

.field public static final TDS_STRENGTH_GOOD_STD:I = -0x62

.field public static final TDS_STRENGTH_GREAT_STD:I = -0x5b

.field public static final TDS_STRENGTH_MODERATE_STD:I = -0x69

.field public static final TDS_STRENGTH_POOR_STD:I = -0x6f

#the value of this static final field might be set in the static constructor
.field public static final WCDMA_STRENGTH_GOOD_STD:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final WCDMA_STRENGTH_GREAT_STD:I = 0x0

.field public static final WCDMA_STRENGTH_INVALID:I = 0x7fffffff

#the value of this static final field might be set in the static constructor
.field public static final WCDMA_STRENGTH_MODERATE_STD:I = 0x0

.field public static final WCDMA_STRENGTH_NONE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final WCDMA_STRENGTH_POOR_STD:I = 0x0

.field public static final W_STRENGTH_GOOD_STD:I = -0x62

.field public static final W_STRENGTH_GREAT_STD:I = -0x5b

.field public static final W_STRENGTH_MODERATE_STD:I = -0x69

.field public static final W_STRENGTH_POOR_STD:I = -0x70


# instance fields
.field private isGsm:Z

.field private mCdmaDbm:I

.field private mCdmaEcio:I

.field private mEvdoDbm:I

.field private mEvdoEcio:I

.field private mEvdoSnr:I

.field private mGsmBitErrorRate:I

.field private mGsmSignalStrength:I

.field private mLteCqi:I

.field private mLteRsrp:I

.field private mLteRsrq:I

.field private mLteRssnr:I

.field private mLteSignalStrength:I

.field private mWcdmaEcio:I

.field private mWcdmaRscp:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, -0x69

    .line 52
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "none"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "poor"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "moderate"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "good"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "great"

    aput-object v2, v0, v1

    sput-object v0, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    .line 82
    const-string/jumbo v0, "ro.gsm.poorstd"

    const/16 v1, -0x6d

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/telephony/SignalStrength;->GSM_STRENGTH_POOR_STD:I

    .line 83
    const-string/jumbo v0, "ro.gsm.modstd"

    const/16 v1, -0x67

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/telephony/SignalStrength;->GSM_STRENGTH_MODERATE_STD:I

    .line 84
    const-string/jumbo v0, "ro.gsm.goodstd"

    const/16 v1, -0x61

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/telephony/SignalStrength;->GSM_STRENGTH_GOOD_STD:I

    .line 85
    const-string/jumbo v0, "ro.gsm.greatstd"

    const/16 v1, -0x59

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/telephony/SignalStrength;->GSM_STRENGTH_GREAT_STD:I

    .line 87
    const-string/jumbo v0, "ro.wcdma.poorstd"

    const/16 v1, -0x70

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/telephony/SignalStrength;->WCDMA_STRENGTH_POOR_STD:I

    .line 88
    const-string/jumbo v0, "ro.wcdma.modstd"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/telephony/SignalStrength;->WCDMA_STRENGTH_MODERATE_STD:I

    .line 89
    const-string/jumbo v0, "ro.wcdma.goodstd"

    const/16 v1, -0x62

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/telephony/SignalStrength;->WCDMA_STRENGTH_GOOD_STD:I

    .line 90
    const-string/jumbo v0, "ro.wcdma.greatstd"

    const/16 v1, -0x5b

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/telephony/SignalStrength;->WCDMA_STRENGTH_GREAT_STD:I

    .line 92
    const-string/jumbo v0, "ro.lte.poorstd"

    const/16 v1, -0x73

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/telephony/SignalStrength;->LTE_STRENGTH_POOR_STD:I

    .line 93
    const-string/jumbo v0, "ro.lte.modstd"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/telephony/SignalStrength;->LTE_STRENGTH_MODERATE_STD:I

    .line 94
    const-string/jumbo v0, "ro.lte.goodstd"

    const/16 v1, -0x5f

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/telephony/SignalStrength;->LTE_STRENGTH_GOOD_STD:I

    .line 95
    const-string/jumbo v0, "ro.lte.greatstd"

    const/16 v1, -0x55

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/telephony/SignalStrength;->LTE_STRENGTH_GREAT_STD:I

    .line 118
    const v0, 0x7fffffff

    sput v0, Landroid/telephony/SignalStrength;->INVALID:I

    .line 408
    new-instance v0, Landroid/telephony/SignalStrength$1;

    invoke-direct {v0}, Landroid/telephony/SignalStrength$1;-><init>()V

    sput-object v0, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x63

    const/4 v0, -0x1

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 144
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 145
    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    .line 146
    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaEcio:I

    .line 147
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 148
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 149
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 150
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 151
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 152
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 153
    sget v0, Landroid/telephony/SignalStrength;->INVALID:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 154
    sget v0, Landroid/telephony/SignalStrength;->INVALID:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 155
    sget v0, Landroid/telephony/SignalStrength;->INVALID:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 156
    sget v0, Landroid/telephony/SignalStrength;->INVALID:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 158
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIIIZ)V
    .locals 0
    .parameter "gsmSignalStrength"
    .parameter "gsmBitErrorRate"
    .parameter "wcdmaRscp"
    .parameter "wcdmaEcio"
    .parameter "cdmaDbm"
    .parameter "cdmaEcio"
    .parameter "evdoDbm"
    .parameter "evdoEcio"
    .parameter "evdoSnr"
    .parameter "lteSignalStrength"
    .parameter "lteRsrp"
    .parameter "lteRsrq"
    .parameter "lteRssnr"
    .parameter "lteCqi"
    .parameter "gsmFlag"

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    invoke-virtual/range {p0 .. p15}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIIIZ)V

    .line 202
    return-void
.end method

.method public constructor <init>(IIIIIIIIIZ)V
    .locals 16
    .parameter "gsmSignalStrength"
    .parameter "gsmBitErrorRate"
    .parameter "wcdmaRscp"
    .parameter "wcdmaEcio"
    .parameter "cdmaDbm"
    .parameter "cdmaEcio"
    .parameter "evdoDbm"
    .parameter "evdoEcio"
    .parameter "evdoSnr"
    .parameter "gsmFlag"

    .prologue
    .line 213
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 214
    const/16 v10, 0x63

    sget v11, Landroid/telephony/SignalStrength;->INVALID:I

    sget v12, Landroid/telephony/SignalStrength;->INVALID:I

    sget v13, Landroid/telephony/SignalStrength;->INVALID:I

    sget v14, Landroid/telephony/SignalStrength;->INVALID:I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v15, p10

    invoke-virtual/range {v0 .. v15}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIIIZ)V

    .line 218
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaEcio:I

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 337
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 342
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 345
    return-void

    .line 344
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcel;Z)V
    .locals 2
    .parameter "in"
    .parameter "validate"

    .prologue
    const/4 v1, 0x1

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaEcio:I

    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 360
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 362
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 363
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 365
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 366
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 367
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 371
    if-ne p2, v1, :cond_0

    .line 372
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->validateInput()V

    .line 373
    :cond_0
    return-void

    .line 369
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/telephony/SignalStrength;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    invoke-virtual {p0, p1}, Landroid/telephony/SignalStrength;->copyFrom(Landroid/telephony/SignalStrength;)V

    .line 229
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .parameter "gsmFlag"

    .prologue
    const/16 v1, 0x63

    const/4 v0, -0x1

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 170
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 171
    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    .line 172
    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaEcio:I

    .line 173
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 174
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 175
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 176
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 177
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 178
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 179
    sget v0, Landroid/telephony/SignalStrength;->INVALID:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 180
    sget v0, Landroid/telephony/SignalStrength;->INVALID:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 181
    sget v0, Landroid/telephony/SignalStrength;->INVALID:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 182
    sget v0, Landroid/telephony/SignalStrength;->INVALID:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 183
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 184
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 1148
    const-string v0, "SignalStrength"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    return-void
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;
    .locals 1
    .parameter "m"

    .prologue
    .line 132
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 133
    .local v0, ret:Landroid/telephony/SignalStrength;
    invoke-direct {v0, p0}, Landroid/telephony/SignalStrength;->setFromNotifierBundle(Landroid/os/Bundle;)V

    .line 134
    return-object v0
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 1103
    const-string v0, "GsmSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 1104
    const-string v0, "GsmBitErrorRate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 1105
    const-string v0, "WcdmaRscp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    .line 1106
    const-string/jumbo v0, "wcdmaEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaEcio:I

    .line 1107
    const-string v0, "CdmaDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 1108
    const-string v0, "CdmaEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 1109
    const-string v0, "EvdoDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 1110
    const-string v0, "EvdoEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 1111
    const-string v0, "EvdoSnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 1112
    const-string v0, "LteSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 1113
    const-string v0, "LteRsrp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 1114
    const-string v0, "LteRsrq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 1115
    const-string v0, "LteRssnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 1116
    const-string v0, "LteCqi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 1117
    const-string v0, "isGsm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 1118
    return-void
.end method


# virtual methods
.method protected copyFrom(Landroid/telephony/SignalStrength;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 303
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 304
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 305
    iget v0, p1, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    .line 306
    iget v0, p1, Landroid/telephony/SignalStrength;->mWcdmaEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaEcio:I

    .line 307
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 308
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 309
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 310
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 311
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 312
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 313
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 314
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 315
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 316
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteCqi:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 317
    iget-boolean v0, p1, Landroid/telephony/SignalStrength;->isGsm:Z

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 318
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 400
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v3, 0x0

    .line 1045
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/SignalStrength;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1050
    .local v2, s:Landroid/telephony/SignalStrength;
    if-nez p1, :cond_1

    .line 1054
    .end local v2           #s:Landroid/telephony/SignalStrength;
    :cond_0
    :goto_0
    return v3

    .line 1046
    :catch_0
    move-exception v1

    .line 1047
    .local v1, ex:Ljava/lang/ClassCastException;
    goto :goto_0

    .line 1054
    .end local v1           #ex:Ljava/lang/ClassCastException;
    .restart local v2       #s:Landroid/telephony/SignalStrength;
    :cond_1
    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mWcdmaEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mWcdmaEcio:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteCqi:I

    if-ne v4, v5, :cond_0

    iget-boolean v4, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    iget-boolean v5, v2, Landroid/telephony/SignalStrength;->isGsm:Z

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2
    .parameter "m"

    .prologue
    .line 1127
    const-string v0, "GsmSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1128
    const-string v0, "GsmBitErrorRate"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1129
    const-string v0, "WcdmaRscp"

    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1130
    const-string/jumbo v0, "wcdmaEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1131
    const-string v0, "CdmaDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1132
    const-string v0, "CdmaEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1133
    const-string v0, "EvdoDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1134
    const-string v0, "EvdoEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1135
    const-string v0, "EvdoSnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1136
    const-string v0, "LteSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1137
    const-string v0, "LteRsrp"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1138
    const-string v0, "LteRsrq"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1139
    const-string v0, "LteRssnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1140
    const-string v0, "LteCqi"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1141
    const-string v0, "isGsm"

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1142
    return-void
.end method

.method public getAsuLevel()I
    .locals 5

    .prologue
    .line 599
    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v3, :cond_2

    .line 601
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v3

    sget v4, Landroid/telephony/SignalStrength;->INVALID:I

    if-eq v3, v4, :cond_0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v3

    if-nez v3, :cond_1

    .line 603
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmAsuLevel()I

    move-result v0

    .line 621
    .local v0, asuLevel:I
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAsuLevel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 622
    return v0

    .line 605
    .end local v0           #asuLevel:I
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteAsuLevel()I

    move-result v0

    .restart local v0       #asuLevel:I
    goto :goto_0

    .line 608
    .end local v0           #asuLevel:I
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result v1

    .line 609
    .local v1, cdmaAsuLevel:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoAsuLevel()I

    move-result v2

    .line 610
    .local v2, evdoAsuLevel:I
    if-nez v2, :cond_3

    .line 612
    move v0, v1

    .restart local v0       #asuLevel:I
    goto :goto_0

    .line 613
    .end local v0           #asuLevel:I
    :cond_3
    if-nez v1, :cond_4

    .line 615
    move v0, v2

    .restart local v0       #asuLevel:I
    goto :goto_0

    .line 618
    .end local v0           #asuLevel:I
    :cond_4
    if-ge v1, v2, :cond_5

    move v0, v1

    .restart local v0       #asuLevel:I
    :goto_1
    goto :goto_0

    .end local v0           #asuLevel:I
    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method public getCdmaAsuLevel()I
    .locals 8

    .prologue
    const/16 v7, -0x5a

    const/16 v6, -0x64

    .line 799
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    .line 800
    .local v1, cdmaDbm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v2

    .line 804
    .local v2, cdmaEcio:I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    const/16 v0, 0x63

    .line 813
    .local v0, cdmaAsuLevel:I
    :goto_0
    if-lt v2, v7, :cond_6

    const/16 v3, 0x10

    .line 820
    .local v3, ecioAsuLevel:I
    :goto_1
    if-ge v0, v3, :cond_b

    move v4, v0

    .line 821
    .local v4, level:I
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCdmaAsuLevel="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 822
    return v4

    .line 805
    .end local v0           #cdmaAsuLevel:I
    .end local v3           #ecioAsuLevel:I
    .end local v4           #level:I
    :cond_0
    const/16 v5, -0x4b

    if-lt v1, v5, :cond_1

    const/16 v0, 0x10

    .restart local v0       #cdmaAsuLevel:I
    goto :goto_0

    .line 806
    .end local v0           #cdmaAsuLevel:I
    :cond_1
    const/16 v5, -0x52

    if-lt v1, v5, :cond_2

    const/16 v0, 0x8

    .restart local v0       #cdmaAsuLevel:I
    goto :goto_0

    .line 807
    .end local v0           #cdmaAsuLevel:I
    :cond_2
    if-lt v1, v7, :cond_3

    const/4 v0, 0x4

    .restart local v0       #cdmaAsuLevel:I
    goto :goto_0

    .line 808
    .end local v0           #cdmaAsuLevel:I
    :cond_3
    const/16 v5, -0x5f

    if-lt v1, v5, :cond_4

    const/4 v0, 0x2

    .restart local v0       #cdmaAsuLevel:I
    goto :goto_0

    .line 809
    .end local v0           #cdmaAsuLevel:I
    :cond_4
    if-lt v1, v6, :cond_5

    const/4 v0, 0x1

    .restart local v0       #cdmaAsuLevel:I
    goto :goto_0

    .line 810
    .end local v0           #cdmaAsuLevel:I
    :cond_5
    const/16 v0, 0x63

    .restart local v0       #cdmaAsuLevel:I
    goto :goto_0

    .line 814
    :cond_6
    if-lt v2, v6, :cond_7

    const/16 v3, 0x8

    .restart local v3       #ecioAsuLevel:I
    goto :goto_1

    .line 815
    .end local v3           #ecioAsuLevel:I
    :cond_7
    const/16 v5, -0x73

    if-lt v2, v5, :cond_8

    const/4 v3, 0x4

    .restart local v3       #ecioAsuLevel:I
    goto :goto_1

    .line 816
    .end local v3           #ecioAsuLevel:I
    :cond_8
    const/16 v5, -0x82

    if-lt v2, v5, :cond_9

    const/4 v3, 0x2

    .restart local v3       #ecioAsuLevel:I
    goto :goto_1

    .line 817
    .end local v3           #ecioAsuLevel:I
    :cond_9
    const/16 v5, -0x96

    if-lt v2, v5, :cond_a

    const/4 v3, 0x1

    .restart local v3       #ecioAsuLevel:I
    goto :goto_1

    .line 818
    .end local v3           #ecioAsuLevel:I
    :cond_a
    const/16 v3, 0x63

    .restart local v3       #ecioAsuLevel:I
    goto :goto_1

    :cond_b
    move v4, v3

    .line 820
    goto :goto_2
.end method

.method public getCdmaDbm()I
    .locals 1

    .prologue
    .line 503
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    return v0
.end method

.method public getCdmaEcio()I
    .locals 1

    .prologue
    .line 510
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    return v0
.end method

.method public getCdmaLevel()I
    .locals 7

    .prologue
    .line 768
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 769
    .local v0, cdmaDbm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    .line 773
    .local v1, cdmaEcio:I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_0

    const/4 v3, 0x0

    .line 781
    .local v3, levelDbm:I
    :goto_0
    const/16 v5, -0x9

    if-lt v1, v5, :cond_5

    const/4 v4, 0x4

    .line 787
    .local v4, levelEcio:I
    :goto_1
    if-ge v3, v4, :cond_9

    move v2, v3

    .line 788
    .local v2, cdmalevel:I
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCdmaLevel="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 789
    return v2

    .line 774
    .end local v2           #cdmalevel:I
    .end local v3           #levelDbm:I
    .end local v4           #levelEcio:I
    :cond_0
    const/16 v5, -0x53

    if-lt v0, v5, :cond_1

    const/4 v3, 0x4

    .restart local v3       #levelDbm:I
    goto :goto_0

    .line 775
    .end local v3           #levelDbm:I
    :cond_1
    const/16 v5, -0x63

    if-lt v0, v5, :cond_2

    const/4 v3, 0x3

    .restart local v3       #levelDbm:I
    goto :goto_0

    .line 776
    .end local v3           #levelDbm:I
    :cond_2
    const/16 v5, -0x6a

    if-lt v0, v5, :cond_3

    const/4 v3, 0x2

    .restart local v3       #levelDbm:I
    goto :goto_0

    .line 777
    .end local v3           #levelDbm:I
    :cond_3
    const/16 v5, -0x70

    if-lt v0, v5, :cond_4

    const/4 v3, 0x1

    .restart local v3       #levelDbm:I
    goto :goto_0

    .line 778
    .end local v3           #levelDbm:I
    :cond_4
    const/4 v3, 0x0

    .restart local v3       #levelDbm:I
    goto :goto_0

    .line 782
    :cond_5
    const/16 v5, -0xb

    if-lt v1, v5, :cond_6

    const/4 v4, 0x3

    .restart local v4       #levelEcio:I
    goto :goto_1

    .line 783
    .end local v4           #levelEcio:I
    :cond_6
    const/16 v5, -0xd

    if-lt v1, v5, :cond_7

    const/4 v4, 0x2

    .restart local v4       #levelEcio:I
    goto :goto_1

    .line 784
    .end local v4           #levelEcio:I
    :cond_7
    const/16 v5, -0xf

    if-lt v1, v5, :cond_8

    const/4 v4, 0x1

    .restart local v4       #levelEcio:I
    goto :goto_1

    .line 785
    .end local v4           #levelEcio:I
    :cond_8
    const/4 v4, 0x0

    .restart local v4       #levelEcio:I
    goto :goto_1

    :cond_9
    move v2, v4

    .line 787
    goto :goto_2
.end method

.method public getDbm()I
    .locals 5

    .prologue
    const/16 v4, -0x78

    .line 633
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 635
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v3

    sget v4, Landroid/telephony/SignalStrength;->INVALID:I

    if-eq v3, v4, :cond_0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v3

    if-nez v3, :cond_1

    .line 637
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v1

    .line 648
    .local v1, dBm:I
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDbm="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 649
    .end local v1           #dBm:I
    :goto_1
    return v1

    .line 639
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    .restart local v1       #dBm:I
    goto :goto_0

    .line 642
    .end local v1           #dBm:I
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 643
    .local v0, cdmaDbm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v2

    .line 645
    .local v2, evdoDbm:I
    if-ne v2, v4, :cond_4

    .end local v0           #cdmaDbm:I
    :cond_3
    :goto_2
    move v1, v0

    goto :goto_1

    .restart local v0       #cdmaDbm:I
    :cond_4
    if-ne v0, v4, :cond_5

    move v0, v2

    goto :goto_2

    :cond_5
    if-lt v0, v2, :cond_3

    move v0, v2

    goto :goto_2
.end method

.method public getEvdoAsuLevel()I
    .locals 7

    .prologue
    .line 862
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 863
    .local v0, evdoDbm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 867
    .local v1, evdoSnr:I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_0

    const/16 v3, 0x63

    .line 875
    .local v3, levelEvdoDbm:I
    :goto_0
    const/4 v5, 0x7

    if-lt v1, v5, :cond_6

    const/16 v4, 0x10

    .line 882
    .local v4, levelEvdoSnr:I
    :goto_1
    if-ge v3, v4, :cond_b

    move v2, v3

    .line 883
    .local v2, level:I
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getEvdoAsuLevel="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 884
    return v2

    .line 868
    .end local v2           #level:I
    .end local v3           #levelEvdoDbm:I
    .end local v4           #levelEvdoSnr:I
    :cond_0
    const/16 v5, -0x41

    if-lt v0, v5, :cond_1

    const/16 v3, 0x10

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 869
    .end local v3           #levelEvdoDbm:I
    :cond_1
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_2

    const/16 v3, 0x8

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 870
    .end local v3           #levelEvdoDbm:I
    :cond_2
    const/16 v5, -0x55

    if-lt v0, v5, :cond_3

    const/4 v3, 0x4

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 871
    .end local v3           #levelEvdoDbm:I
    :cond_3
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_4

    const/4 v3, 0x2

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 872
    .end local v3           #levelEvdoDbm:I
    :cond_4
    const/16 v5, -0x69

    if-lt v0, v5, :cond_5

    const/4 v3, 0x1

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 873
    .end local v3           #levelEvdoDbm:I
    :cond_5
    const/16 v3, 0x63

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 876
    :cond_6
    const/4 v5, 0x6

    if-lt v1, v5, :cond_7

    const/16 v4, 0x8

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    .line 877
    .end local v4           #levelEvdoSnr:I
    :cond_7
    const/4 v5, 0x5

    if-lt v1, v5, :cond_8

    const/4 v4, 0x4

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    .line 878
    .end local v4           #levelEvdoSnr:I
    :cond_8
    const/4 v5, 0x3

    if-lt v1, v5, :cond_9

    const/4 v4, 0x2

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    .line 879
    .end local v4           #levelEvdoSnr:I
    :cond_9
    const/4 v5, 0x1

    if-lt v1, v5, :cond_a

    const/4 v4, 0x1

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    .line 880
    .end local v4           #levelEvdoSnr:I
    :cond_a
    const/16 v4, 0x63

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    :cond_b
    move v2, v4

    .line 882
    goto :goto_2
.end method

.method public getEvdoDbm()I
    .locals 1

    .prologue
    .line 517
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    return v0
.end method

.method public getEvdoEcio()I
    .locals 1

    .prologue
    .line 524
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    return v0
.end method

.method public getEvdoLevel()I
    .locals 7

    .prologue
    .line 831
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 832
    .local v0, evdoDbm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 837
    .local v1, evdoSnr:I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_0

    const/4 v3, 0x0

    .line 844
    .local v3, levelEvdoDbm:I
    :goto_0
    const/4 v5, 0x7

    if-lt v1, v5, :cond_5

    const/4 v4, 0x4

    .line 850
    .local v4, levelEvdoSnr:I
    :goto_1
    if-ge v3, v4, :cond_9

    move v2, v3

    .line 851
    .local v2, evdolevel:I
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getEvdoLevel="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 852
    return v2

    .line 838
    .end local v2           #evdolevel:I
    .end local v3           #levelEvdoDbm:I
    .end local v4           #levelEvdoSnr:I
    :cond_0
    const/16 v5, -0x53

    if-lt v0, v5, :cond_1

    const/4 v3, 0x4

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 839
    .end local v3           #levelEvdoDbm:I
    :cond_1
    const/16 v5, -0x63

    if-lt v0, v5, :cond_2

    const/4 v3, 0x3

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 840
    .end local v3           #levelEvdoDbm:I
    :cond_2
    const/16 v5, -0x6a

    if-lt v0, v5, :cond_3

    const/4 v3, 0x2

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 841
    .end local v3           #levelEvdoDbm:I
    :cond_3
    const/16 v5, -0x70

    if-lt v0, v5, :cond_4

    const/4 v3, 0x1

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 842
    .end local v3           #levelEvdoDbm:I
    :cond_4
    const/4 v3, 0x0

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 845
    :cond_5
    const/4 v5, 0x5

    if-lt v1, v5, :cond_6

    const/4 v4, 0x3

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    .line 846
    .end local v4           #levelEvdoSnr:I
    :cond_6
    const/4 v5, 0x3

    if-lt v1, v5, :cond_7

    const/4 v4, 0x2

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    .line 847
    .end local v4           #levelEvdoSnr:I
    :cond_7
    const/4 v5, 0x1

    if-lt v1, v5, :cond_8

    const/4 v4, 0x1

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    .line 848
    .end local v4           #levelEvdoSnr:I
    :cond_8
    const/4 v4, 0x0

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    :cond_9
    move v2, v4

    .line 850
    goto :goto_2
.end method

.method public getEvdoSnr()I
    .locals 1

    .prologue
    .line 531
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    return v0
.end method

.method public getGsmAsuLevel()I
    .locals 6

    .prologue
    const/4 v3, -0x1

    .line 747
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    .line 749
    .local v2, gsmSignalStrength:I
    if-nez v2, :cond_0

    move v1, v3

    .line 750
    .local v1, dbm:I
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gsmSignalStrength="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mWcdmaRscp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 751
    if-eq v1, v3, :cond_1

    iget v3, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    if-nez v3, :cond_1

    .line 752
    add-int/lit8 v3, v1, 0x71

    div-int/lit8 v0, v3, 0x2

    .line 757
    .local v0, asu:I
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getGsmAsuLevel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 758
    return v0

    .end local v0           #asu:I
    .end local v1           #dbm:I
    :cond_0
    move v1, v2

    .line 749
    goto :goto_0

    .line 754
    .restart local v1       #dbm:I
    :cond_1
    const/4 v0, -0x1

    .restart local v0       #asu:I
    goto :goto_1
.end method

.method public getGsmBitErrorRate()I
    .locals 1

    .prologue
    .line 479
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    return v0
.end method

.method public getGsmDbm()I
    .locals 5

    .prologue
    const/4 v0, -0x1

    .line 660
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    .line 661
    .local v1, gsmSignalStrength:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getWcdmaRscp()I

    move-result v2

    .line 663
    .local v2, wcdmaDbm:I
    if-eq v0, v2, :cond_0

    if-nez v2, :cond_2

    .line 664
    :cond_0
    const/16 v3, 0x63

    if-ne v1, v3, :cond_1

    .line 668
    .local v0, dbm:I
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getGsmDbm="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 669
    return v0

    .end local v0           #dbm:I
    :cond_1
    move v0, v1

    .line 664
    goto :goto_0

    .line 666
    :cond_2
    move v0, v2

    .restart local v0       #dbm:I
    goto :goto_0
.end method

.method public getGsmLevel()I
    .locals 5

    .prologue
    .line 680
    const/4 v0, 0x0

    .line 687
    .local v0, level:I
    const/4 v3, -0x1

    iget v4, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    if-eq v3, v4, :cond_0

    iget v3, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    if-nez v3, :cond_7

    .line 690
    :cond_0
    iget v3, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-eqz v3, :cond_1

    const/16 v3, 0x63

    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ne v3, v4, :cond_2

    :cond_1
    const/4 v0, 0x0

    .line 730
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mGsmSignalStrength="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,mWcdmaRscp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,level="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 731
    return v0

    .line 691
    :cond_2
    iget v3, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    sget v4, Landroid/telephony/SignalStrength;->GSM_STRENGTH_GREAT_STD:I

    if-lt v3, v4, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    .line 692
    :cond_3
    iget v3, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    sget v4, Landroid/telephony/SignalStrength;->GSM_STRENGTH_GOOD_STD:I

    if-lt v3, v4, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    .line 693
    :cond_4
    iget v3, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    sget v4, Landroid/telephony/SignalStrength;->GSM_STRENGTH_MODERATE_STD:I

    if-lt v3, v4, :cond_5

    const/4 v0, 0x2

    goto :goto_0

    .line 694
    :cond_5
    iget v3, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    sget v4, Landroid/telephony/SignalStrength;->GSM_STRENGTH_POOR_STD:I

    if-lt v3, v4, :cond_6

    const/4 v0, 0x1

    goto :goto_0

    .line 695
    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    .line 701
    :cond_7
    const-string/jumbo v3, "signal.dualparam"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_e

    .line 702
    iget v3, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    if-eqz v3, :cond_8

    iget v3, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    sget v4, Landroid/telephony/SignalStrength;->INVALID:I

    if-ne v3, v4, :cond_9

    :cond_8
    const/4 v0, 0x0

    goto :goto_0

    .line 703
    :cond_9
    iget v3, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    sget v4, Landroid/telephony/SignalStrength;->WCDMA_STRENGTH_GREAT_STD:I

    if-lt v3, v4, :cond_a

    const/4 v0, 0x4

    goto :goto_0

    .line 704
    :cond_a
    iget v3, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    sget v4, Landroid/telephony/SignalStrength;->WCDMA_STRENGTH_GOOD_STD:I

    if-lt v3, v4, :cond_b

    const/4 v0, 0x3

    goto :goto_0

    .line 705
    :cond_b
    iget v3, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    sget v4, Landroid/telephony/SignalStrength;->WCDMA_STRENGTH_MODERATE_STD:I

    if-lt v3, v4, :cond_c

    const/4 v0, 0x2

    goto :goto_0

    .line 706
    :cond_c
    iget v3, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    sget v4, Landroid/telephony/SignalStrength;->WCDMA_STRENGTH_POOR_STD:I

    if-lt v3, v4, :cond_d

    const/4 v0, 0x1

    goto/16 :goto_0

    .line 707
    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 709
    :cond_e
    const/4 v2, 0x0

    .line 710
    .local v2, levelRscp:I
    const/4 v1, 0x0

    .line 711
    .local v1, levelEcio:I
    iget v3, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    if-eqz v3, :cond_f

    iget v3, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    sget v4, Landroid/telephony/SignalStrength;->INVALID:I

    if-ne v3, v4, :cond_11

    :cond_f
    const/4 v2, 0x0

    .line 718
    :goto_1
    iget v3, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    if-eqz v3, :cond_10

    iget v3, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    sget v4, Landroid/telephony/SignalStrength;->INVALID:I

    if-ne v3, v4, :cond_16

    :cond_10
    const/4 v1, 0x0

    .line 724
    :goto_2
    if-ge v2, v1, :cond_1b

    move v0, v2

    :goto_3
    goto/16 :goto_0

    .line 712
    :cond_11
    iget v3, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    sget v4, Landroid/telephony/SignalStrength;->WCDMA_STRENGTH_GREAT_STD:I

    if-lt v3, v4, :cond_12

    const/4 v2, 0x4

    goto :goto_1

    .line 713
    :cond_12
    iget v3, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    sget v4, Landroid/telephony/SignalStrength;->WCDMA_STRENGTH_GOOD_STD:I

    if-lt v3, v4, :cond_13

    const/4 v2, 0x3

    goto :goto_1

    .line 714
    :cond_13
    iget v3, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    sget v4, Landroid/telephony/SignalStrength;->WCDMA_STRENGTH_MODERATE_STD:I

    if-lt v3, v4, :cond_14

    const/4 v2, 0x2

    goto :goto_1

    .line 715
    :cond_14
    iget v3, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    sget v4, Landroid/telephony/SignalStrength;->WCDMA_STRENGTH_POOR_STD:I

    if-lt v3, v4, :cond_15

    const/4 v2, 0x1

    goto :goto_1

    .line 716
    :cond_15
    const/4 v2, 0x0

    goto :goto_1

    .line 719
    :cond_16
    iget v3, p0, Landroid/telephony/SignalStrength;->mWcdmaEcio:I

    sget v4, Landroid/telephony/SignalStrength;->WCDMA_STRENGTH_GREAT_STD:I

    if-lt v3, v4, :cond_17

    const/4 v1, 0x4

    goto :goto_2

    .line 720
    :cond_17
    iget v3, p0, Landroid/telephony/SignalStrength;->mWcdmaEcio:I

    sget v4, Landroid/telephony/SignalStrength;->WCDMA_STRENGTH_GOOD_STD:I

    if-lt v3, v4, :cond_18

    const/4 v1, 0x3

    goto :goto_2

    .line 721
    :cond_18
    iget v3, p0, Landroid/telephony/SignalStrength;->mWcdmaEcio:I

    sget v4, Landroid/telephony/SignalStrength;->WCDMA_STRENGTH_MODERATE_STD:I

    if-lt v3, v4, :cond_19

    const/4 v1, 0x2

    goto :goto_2

    .line 722
    :cond_19
    iget v3, p0, Landroid/telephony/SignalStrength;->mWcdmaEcio:I

    sget v4, Landroid/telephony/SignalStrength;->WCDMA_STRENGTH_POOR_STD:I

    if-lt v3, v4, :cond_1a

    const/4 v1, 0x1

    goto :goto_2

    .line 723
    :cond_1a
    const/4 v1, 0x0

    goto :goto_2

    :cond_1b
    move v0, v1

    .line 724
    goto :goto_3
.end method

.method public getGsmSignalStrength()I
    .locals 1

    .prologue
    .line 472
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    return v0
.end method

.method public getLevel()I
    .locals 5

    .prologue
    .line 567
    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v3, :cond_1

    .line 568
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v2

    .line 569
    .local v2, level:I
    if-nez v2, :cond_0

    .line 570
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v2

    .line 588
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLevel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 589
    return v2

    .line 573
    .end local v2           #level:I
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .line 574
    .local v0, cdmaLevel:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCdmaLevel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 575
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v1

    .line 576
    .local v1, evdoLevel:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEvdoLevel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 577
    if-nez v1, :cond_2

    .line 579
    move v2, v0

    .restart local v2       #level:I
    goto :goto_0

    .line 580
    .end local v2           #level:I
    :cond_2
    if-nez v0, :cond_3

    .line 582
    move v2, v1

    .restart local v2       #level:I
    goto :goto_0

    .line 585
    .end local v2           #level:I
    :cond_3
    if-ge v0, v1, :cond_4

    move v2, v0

    .restart local v2       #level:I
    :goto_1
    goto :goto_0

    .end local v2           #level:I
    :cond_4
    move v2, v1

    goto :goto_1
.end method

.method public getLteAsuLevel()I
    .locals 4

    .prologue
    .line 993
    const/16 v0, 0x63

    .line 994
    .local v0, lteAsuLevel:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    .line 1008
    .local v1, lteDbm:I
    sget v2, Landroid/telephony/SignalStrength;->INVALID:I

    if-ne v1, v2, :cond_0

    const/16 v0, 0xff

    .line 1010
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lte Asu level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1011
    return v0

    .line 1009
    :cond_0
    add-int/lit16 v0, v1, 0x8c

    goto :goto_0
.end method

.method public getLteCqi()I
    .locals 1

    .prologue
    .line 556
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    return v0
.end method

.method public getLteDbm()I
    .locals 1

    .prologue
    .line 893
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteLevel()I
    .locals 6

    .prologue
    const/16 v5, -0x2c

    .line 911
    const/4 v2, 0x0

    .line 913
    .local v2, rsrpIconLevel:I
    const-string/jumbo v3, "signal.dualparam"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_5

    .line 914
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-le v3, v5, :cond_0

    const/4 v2, 0x0

    .line 920
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLTELevel - rsrp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " snr:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " rsrpIconLevel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 941
    :goto_1
    return v2

    .line 915
    :cond_0
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    sget v4, Landroid/telephony/SignalStrength;->LTE_STRENGTH_GREAT_STD:I

    if-lt v3, v4, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    .line 916
    :cond_1
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    sget v4, Landroid/telephony/SignalStrength;->LTE_STRENGTH_GOOD_STD:I

    if-lt v3, v4, :cond_2

    const/4 v2, 0x3

    goto :goto_0

    .line 917
    :cond_2
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    sget v4, Landroid/telephony/SignalStrength;->LTE_STRENGTH_MODERATE_STD:I

    if-lt v3, v4, :cond_3

    const/4 v2, 0x2

    goto :goto_0

    .line 918
    :cond_3
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    sget v4, Landroid/telephony/SignalStrength;->LTE_STRENGTH_POOR_STD:I

    if-lt v3, v4, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    .line 919
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 923
    :cond_5
    const/4 v0, 0x0

    .line 924
    .local v0, LevelRsrp:I
    const/4 v1, 0x0

    .line 925
    .local v1, LevelRssnr:I
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-le v3, v5, :cond_6

    const/4 v0, 0x0

    .line 932
    :goto_2
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-le v3, v5, :cond_b

    const/4 v1, 0x0

    .line 938
    :goto_3
    if-ge v0, v1, :cond_10

    move v2, v0

    :goto_4
    goto :goto_1

    .line 926
    :cond_6
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    sget v4, Landroid/telephony/SignalStrength;->LTE_STRENGTH_GREAT_STD:I

    if-lt v3, v4, :cond_7

    const/4 v0, 0x4

    goto :goto_2

    .line 927
    :cond_7
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    sget v4, Landroid/telephony/SignalStrength;->LTE_STRENGTH_GOOD_STD:I

    if-lt v3, v4, :cond_8

    const/4 v0, 0x3

    goto :goto_2

    .line 928
    :cond_8
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    sget v4, Landroid/telephony/SignalStrength;->LTE_STRENGTH_MODERATE_STD:I

    if-lt v3, v4, :cond_9

    const/4 v0, 0x2

    goto :goto_2

    .line 929
    :cond_9
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    sget v4, Landroid/telephony/SignalStrength;->LTE_STRENGTH_POOR_STD:I

    if-lt v3, v4, :cond_a

    const/4 v0, 0x1

    goto :goto_2

    .line 930
    :cond_a
    const/4 v0, 0x0

    goto :goto_2

    .line 933
    :cond_b
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    sget v4, Landroid/telephony/SignalStrength;->LTE_STRENGTH_GREAT_STD:I

    if-lt v3, v4, :cond_c

    const/4 v1, 0x4

    goto :goto_3

    .line 934
    :cond_c
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    sget v4, Landroid/telephony/SignalStrength;->LTE_STRENGTH_GOOD_STD:I

    if-lt v3, v4, :cond_d

    const/4 v1, 0x3

    goto :goto_3

    .line 935
    :cond_d
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    sget v4, Landroid/telephony/SignalStrength;->LTE_STRENGTH_MODERATE_STD:I

    if-lt v3, v4, :cond_e

    const/4 v1, 0x2

    goto :goto_3

    .line 936
    :cond_e
    iget v3, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    sget v4, Landroid/telephony/SignalStrength;->LTE_STRENGTH_POOR_STD:I

    if-lt v3, v4, :cond_f

    const/4 v1, 0x1

    goto :goto_3

    .line 937
    :cond_f
    const/4 v1, 0x0

    goto :goto_3

    :cond_10
    move v2, v1

    .line 938
    goto :goto_4
.end method

.method public getLteRsrp()I
    .locals 1

    .prologue
    .line 541
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteRsrq()I
    .locals 1

    .prologue
    .line 546
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    return v0
.end method

.method public getLteRssnr()I
    .locals 1

    .prologue
    .line 551
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    return v0
.end method

.method public getLteSignalStrenght()I
    .locals 1

    .prologue
    .line 536
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    return v0
.end method

.method public getWcdmaEcio()I
    .locals 1

    .prologue
    .line 494
    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaEcio:I

    return v0
.end method

.method public getWcdmaRscp()I
    .locals 1

    .prologue
    .line 487
    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1026
    const/16 v0, 0x1f

    .line 1027
    .local v0, primeNum:I
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    mul-int/2addr v1, v0

    iget v2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mWcdmaEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int/2addr v1, v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initialize(IIIIIIIIIIIIIIZ)V
    .locals 3
    .parameter "gsmSignalStrength"
    .parameter "gsmBitErrorRate"
    .parameter "wcdmaRscp"
    .parameter "wcdmaEcio"
    .parameter "cdmaDbm"
    .parameter "cdmaEcio"
    .parameter "evdoDbm"
    .parameter "evdoEcio"
    .parameter "evdoSnr"
    .parameter "lteSignalStrength"
    .parameter "lteRsrp"
    .parameter "lteRsrq"
    .parameter "lteRssnr"
    .parameter "lteCqi"
    .parameter "gsm"

    .prologue
    .line 281
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 282
    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 283
    iput p3, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    .line 284
    iput p4, p0, Landroid/telephony/SignalStrength;->mWcdmaEcio:I

    .line 285
    iput p5, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 286
    iput p6, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 287
    iput p7, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 288
    iput p8, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 289
    iput p9, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 290
    iput p10, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 291
    iput p11, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 292
    iput p12, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 293
    move/from16 v0, p13

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 294
    move/from16 v0, p14

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 295
    move/from16 v0, p15

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method public initialize(IIIIIIIIIZ)V
    .locals 16
    .parameter "gsmSignalStrength"
    .parameter "gsmBitErrorRate"
    .parameter "wcdmaRscp"
    .parameter "wcdmaEcio"
    .parameter "cdmaDbm"
    .parameter "cdmaEcio"
    .parameter "evdoDbm"
    .parameter "evdoEcio"
    .parameter "evdoSnr"
    .parameter "gsm"

    .prologue
    .line 250
    const/16 v10, 0x63

    sget v11, Landroid/telephony/SignalStrength;->INVALID:I

    sget v12, Landroid/telephony/SignalStrength;->INVALID:I

    sget v13, Landroid/telephony/SignalStrength;->INVALID:I

    sget v14, Landroid/telephony/SignalStrength;->INVALID:I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v15, p10

    invoke-virtual/range {v0 .. v15}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIIIZ)V

    .line 254
    return-void
.end method

.method public isGsm()Z
    .locals 1

    .prologue
    .line 1018
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    return v0
.end method

.method public setGsm(Z)V
    .locals 0
    .parameter "gsmFlag"

    .prologue
    .line 464
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 465
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1077
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignalStrength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    const-string v0, "gw|lte"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "cdma"

    goto :goto_0
.end method

.method public validateInput()V
    .locals 5

    .prologue
    const/16 v1, 0x63

    const/4 v3, -0x1

    const/16 v2, -0x78

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SignalStrength before validate="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 433
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ltz v0, :cond_3

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    :goto_0
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 442
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-lez v0, :cond_4

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    neg-int v0, v0

    :goto_1
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 443
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-lez v0, :cond_5

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    neg-int v0, v0

    :goto_2
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 445
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    neg-int v2, v0

    :cond_0
    iput v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 446
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-lez v0, :cond_6

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    neg-int v0, v0

    :goto_3
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 447
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-lez v0, :cond_1

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    const/16 v2, 0x8

    if-gt v0, v2, :cond_1

    iget v3, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    :cond_1
    iput v3, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 449
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v0, :cond_2

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    :cond_2
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 450
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v1, 0x2c

    if-lt v0, v1, :cond_7

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v1, 0x8c

    if-gt v0, v1, :cond_7

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    neg-int v0, v0

    :goto_4
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 451
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_8

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_8

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    neg-int v0, v0

    :goto_5
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 452
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, -0xc8

    if-lt v0, v1, :cond_9

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, 0x12c

    if-gt v0, v1, :cond_9

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    :goto_6
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignalStrength after validate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 455
    return-void

    :cond_3
    move v0, v1

    .line 433
    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 442
    goto :goto_1

    .line 443
    :cond_5
    const/16 v0, -0xa0

    goto :goto_2

    :cond_6
    move v0, v3

    .line 446
    goto :goto_3

    .line 450
    :cond_7
    sget v0, Landroid/telephony/SignalStrength;->INVALID:I

    goto :goto_4

    .line 451
    :cond_8
    sget v0, Landroid/telephony/SignalStrength;->INVALID:I

    goto :goto_5

    .line 452
    :cond_9
    sget v0, Landroid/telephony/SignalStrength;->INVALID:I

    goto :goto_6
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 379
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 381
    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 382
    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 383
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 384
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 385
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 386
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 387
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 388
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 389
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 390
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 391
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 392
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 393
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 394
    return-void

    .line 393
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
