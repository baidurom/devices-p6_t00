.class public Landroid/content/res/CompatibilityInfo;
.super Ljava/lang/Object;
.source "CompatibilityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/CompatibilityInfo$Translator;
    }
.end annotation


# static fields
.field private static final ALWAYS_NEEDS_COMPAT:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/res/CompatibilityInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final DEBUG:Z = false

.field public static final DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo; = null

.field public static final DEFAULT_NORMAL_SHORT_DIMENSION:I = 0x140

.field public static final MAXIMUM_ASPECT_RATIO:F = 1.7791667f

.field private static final NEEDS_SCREEN_COMPAT:I = 0x8

.field private static final NEVER_NEEDS_COMPAT:I = 0x4

.field public static final SCALE_FORCE:I = 0x1

.field public static final SCALE_GL:I = 0x1

.field public static final SCALE_NATIVE:I = 0x8

.field public static final SCALE_PACKAGE:I = 0x4

.field public static final SCALE_SURFACE:I = 0x2

.field private static final SCALING_REQUIRED:I = 0x1


# instance fields
.field public appScaleOptFlags:I

.field public appScaleRatio:F

.field public final applicationDensity:I

.field public final applicationInvertedScale:F

.field public final applicationScale:F

.field private final mCompatibilityFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Landroid/content/res/CompatibilityInfo$1;

    invoke-direct {v0}, Landroid/content/res/CompatibilityInfo$1;-><init>()V

    sput-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    .line 832
    new-instance v0, Landroid/content/res/CompatibilityInfo$2;

    invoke-direct {v0}, Landroid/content/res/CompatibilityInfo$2;-><init>()V

    sput-object v0, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f80

    .line 331
    const/4 v0, 0x4

    sget v1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-direct {p0, v0, v1, v2, v2}, Landroid/content/res/CompatibilityInfo;-><init>(IIFF)V

    .line 334
    return-void
.end method

.method private constructor <init>(IIFF)V
    .locals 0
    .parameter "compFlags"
    .parameter "dens"
    .parameter "scale"
    .parameter "invertedScale"

    .prologue
    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    iput p1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 315
    iput p2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 316
    iput p3, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 317
    iput p4, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 318
    return-void
.end method

.method private constructor <init>(IIFFI)V
    .locals 0
    .parameter "compFlags"
    .parameter "dens"
    .parameter "scale"
    .parameter "invertedScale"
    .parameter "flags"

    .prologue
    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    iput p1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 324
    iput p2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 325
    iput p3, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 326
    iput p4, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 327
    iput p5, p0, Landroid/content/res/CompatibilityInfo;->appScaleOptFlags:I

    .line 328
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ApplicationInfo;IIZ)V
    .locals 11
    .parameter "appInfo"
    .parameter "screenLayout"
    .parameter "sw"
    .parameter "forceCompat"

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const/4 v5, 0x0

    .line 138
    .local v5, compatFlags:I
    const/high16 v9, 0x3f80

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->appScaleRatio:F

    .line 139
    if-eqz p4, :cond_4

    .line 140
    const/4 v9, 0x1

    iput v9, p1, Landroid/content/pm/ApplicationInfo;->appScaleOptFlags:I

    .line 141
    const/4 v9, 0x1

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->appScaleOptFlags:I

    .line 166
    :goto_0
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    if-nez v9, :cond_0

    iget v9, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    if-nez v9, :cond_0

    iget v9, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    if-eqz v9, :cond_a

    .line 170
    :cond_0
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    if-eqz v9, :cond_5

    iget v7, p1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    .line 173
    .local v7, required:I
    :goto_1
    if-nez v7, :cond_1

    .line 174
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 176
    :cond_1
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    if-eqz v9, :cond_6

    iget v4, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .line 178
    .local v4, compat:I
    :goto_2
    if-ge v4, v7, :cond_2

    .line 179
    move v4, v7

    .line 181
    :cond_2
    iget v6, p1, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 183
    .local v6, largest:I
    const/16 v9, 0x140

    if-le v7, v9, :cond_7

    .line 190
    or-int/lit8 v5, v5, 0x4

    .line 207
    :cond_3
    :goto_3
    sget v9, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 208
    const/high16 v9, 0x3f80

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 209
    const/high16 v9, 0x3f80

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 309
    .end local v4           #compat:I
    .end local v6           #largest:I
    .end local v7           #required:I
    :goto_4
    iput v5, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 310
    return-void

    .line 143
    :cond_4
    const/4 v9, 0x0

    iput v9, p1, Landroid/content/pm/ApplicationInfo;->appScaleOptFlags:I

    .line 144
    const/4 v9, 0x0

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->appScaleOptFlags:I

    goto :goto_0

    .line 170
    :cond_5
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    goto :goto_1

    .restart local v7       #required:I
    :cond_6
    move v4, v7

    .line 176
    goto :goto_2

    .line 191
    .restart local v4       #compat:I
    .restart local v6       #largest:I
    :cond_7
    if-eqz v6, :cond_8

    if-le p3, v6, :cond_8

    .line 195
    or-int/lit8 v5, v5, 0xa

    goto :goto_3

    .line 196
    :cond_8
    if-lt v4, p3, :cond_9

    .line 199
    or-int/lit8 v5, v5, 0x4

    goto :goto_3

    .line 200
    :cond_9
    if-eqz p4, :cond_3

    .line 203
    or-int/lit8 v5, v5, 0x8

    goto :goto_3

    .line 216
    .end local v4           #compat:I
    .end local v6           #largest:I
    .end local v7           #required:I
    :cond_a
    const/4 v0, 0x2

    .line 222
    .local v0, EXPANDABLE:I
    const/16 v1, 0x8

    .line 228
    .local v1, LARGE_SCREENS:I
    const/16 v2, 0x20

    .line 230
    .local v2, XLARGE_SCREENS:I
    const/4 v8, 0x0

    .line 234
    .local v8, sizeInfo:I
    const/4 v3, 0x0

    .line 236
    .local v3, anyResizeable:Z
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v9, v9, 0x800

    if-eqz v9, :cond_b

    .line 237
    or-int/lit8 v8, v8, 0x8

    .line 238
    const/4 v3, 0x1

    .line 239
    if-nez p4, :cond_b

    .line 243
    or-int/lit8 v8, v8, 0x22

    .line 246
    :cond_b
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v10, 0x8

    and-int/2addr v9, v10

    if-eqz v9, :cond_c

    .line 247
    const/4 v3, 0x1

    .line 248
    if-nez p4, :cond_c

    .line 249
    or-int/lit8 v8, v8, 0x22

    .line 252
    :cond_c
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v9, v9, 0x1000

    if-eqz v9, :cond_d

    .line 253
    const/4 v3, 0x1

    .line 254
    or-int/lit8 v8, v8, 0x2

    .line 257
    :cond_d
    if-eqz p4, :cond_e

    .line 262
    and-int/lit8 v8, v8, -0x3

    .line 265
    :cond_e
    or-int/lit8 v5, v5, 0x8

    .line 266
    and-int/lit8 v9, p2, 0xf

    packed-switch v9, :pswitch_data_0

    .line 285
    :cond_f
    :goto_5
    const/high16 v9, 0x1000

    and-int/2addr v9, p2

    if-eqz v9, :cond_14

    .line 286
    and-int/lit8 v9, v8, 0x2

    if-eqz v9, :cond_13

    .line 287
    and-int/lit8 v5, v5, -0x9

    .line 296
    :cond_10
    :goto_6
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v9, v9, 0x2000

    if-eqz v9, :cond_15

    .line 297
    sget v9, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 298
    const/high16 v9, 0x3f80

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 299
    const/high16 v9, 0x3f80

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    goto :goto_4

    .line 268
    :pswitch_0
    and-int/lit8 v9, v8, 0x20

    if-eqz v9, :cond_11

    .line 269
    and-int/lit8 v5, v5, -0x9

    .line 271
    :cond_11
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v10, 0x8

    and-int/2addr v9, v10

    if-eqz v9, :cond_f

    .line 272
    or-int/lit8 v5, v5, 0x4

    goto :goto_5

    .line 276
    :pswitch_1
    and-int/lit8 v9, v8, 0x8

    if-eqz v9, :cond_12

    .line 277
    and-int/lit8 v5, v5, -0x9

    .line 279
    :cond_12
    iget v9, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v9, v9, 0x800

    if-eqz v9, :cond_f

    .line 280
    or-int/lit8 v5, v5, 0x4

    goto :goto_5

    .line 288
    :cond_13
    if-nez v3, :cond_10

    .line 289
    or-int/lit8 v5, v5, 0x2

    goto :goto_6

    .line 292
    :cond_14
    and-int/lit8 v5, v5, -0x9

    .line 293
    or-int/lit8 v5, v5, 0x4

    goto :goto_6

    .line 301
    :cond_15
    const/16 v9, 0xa0

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 302
    sget v9, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v9, v9

    const/high16 v10, 0x4320

    div-float/2addr v9, v10

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 304
    const/high16 v9, 0x3f80

    iget v10, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    div-float/2addr v9, v10

    iput v9, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 305
    or-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    .line 266
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method synthetic constructor <init>(Landroid/content/res/CompatibilityInfo$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/content/res/CompatibilityInfo;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 869
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 870
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    .line 871
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    .line 873
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->appScaleOptFlags:I

    .line 875
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 876
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 877
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/res/CompatibilityInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F
    .locals 14
    .parameter "dm"
    .parameter "outDm"

    .prologue
    .line 590
    iget v12, p0, Landroid/util/DisplayMetrics;->noncompatDensity:F

    iget v13, p0, Landroid/util/DisplayMetrics;->density:F

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_1

    iget v12, p0, Landroid/util/DisplayMetrics;->noncompatDensity:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_1

    iget v12, p0, Landroid/util/DisplayMetrics;->density:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_1

    .line 594
    const/high16 v7, 0x3f80

    .line 635
    :cond_0
    :goto_0
    return v7

    .line 597
    :cond_1
    iget v11, p0, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 598
    .local v11, width:I
    iget v1, p0, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 600
    .local v1, height:I
    if-ge v11, v1, :cond_4

    .line 601
    move v9, v11

    .line 602
    .local v9, shortSize:I
    move v2, v1

    .line 608
    .local v2, longSize:I
    :goto_1
    const/high16 v12, 0x43a0

    iget v13, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v12, v13

    const/high16 v13, 0x3f00

    add-float/2addr v12, v13

    float-to-int v5, v12

    .line 609
    .local v5, newShortSize:I
    int-to-float v12, v2

    int-to-float v13, v9

    div-float v0, v12, v13

    .line 610
    .local v0, aspect:F
    const v12, 0x3fe3bbbc

    cmpl-float v12, v0, v12

    if-lez v12, :cond_2

    .line 611
    const v0, 0x3fe3bbbc

    .line 613
    :cond_2
    int-to-float v12, v5

    mul-float/2addr v12, v0

    const/high16 v13, 0x3f00

    add-float/2addr v12, v13

    float-to-int v4, v12

    .line 615
    .local v4, newLongSize:I
    if-ge v11, v1, :cond_5

    .line 616
    move v6, v5

    .line 617
    .local v6, newWidth:I
    move v3, v4

    .line 623
    .local v3, newHeight:I
    :goto_2
    int-to-float v12, v11

    int-to-float v13, v6

    div-float v10, v12, v13

    .line 624
    .local v10, sw:F
    int-to-float v12, v1

    int-to-float v13, v3

    div-float v8, v12, v13

    .line 625
    .local v8, sh:F
    cmpg-float v12, v10, v8

    if-gez v12, :cond_6

    move v7, v10

    .line 626
    .local v7, scale:F
    :goto_3
    const/high16 v12, 0x3f80

    cmpg-float v12, v7, v12

    if-gez v12, :cond_3

    .line 627
    const/high16 v7, 0x3f80

    .line 630
    :cond_3
    if-eqz p1, :cond_0

    .line 631
    iput v6, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 632
    iput v3, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0

    .line 604
    .end local v0           #aspect:F
    .end local v2           #longSize:I
    .end local v3           #newHeight:I
    .end local v4           #newLongSize:I
    .end local v5           #newShortSize:I
    .end local v6           #newWidth:I
    .end local v7           #scale:F
    .end local v8           #sh:F
    .end local v9           #shortSize:I
    .end local v10           #sw:F
    :cond_4
    move v9, v1

    .line 605
    .restart local v9       #shortSize:I
    move v2, v11

    .restart local v2       #longSize:I
    goto :goto_1

    .line 619
    .restart local v0       #aspect:F
    .restart local v4       #newLongSize:I
    .restart local v5       #newShortSize:I
    :cond_5
    move v6, v4

    .line 620
    .restart local v6       #newWidth:I
    move v3, v5

    .restart local v3       #newHeight:I
    goto :goto_2

    .restart local v8       #sh:F
    .restart local v10       #sw:F
    :cond_6
    move v7, v8

    .line 625
    goto :goto_3
.end method

.method public static computeForceCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F
    .locals 16
    .parameter "dm"
    .parameter "outDm"

    .prologue
    .line 647
    move-object/from16 v0, p0

    iget v14, v0, Landroid/util/DisplayMetrics;->noncompatDensity:F

    move-object/from16 v0, p0

    iget v15, v0, Landroid/util/DisplayMetrics;->density:F

    cmpl-float v14, v14, v15

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget v14, v0, Landroid/util/DisplayMetrics;->noncompatDensity:F

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget v14, v0, Landroid/util/DisplayMetrics;->density:F

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-eqz v14, :cond_1

    .line 651
    const/high16 v9, 0x3f80

    .line 756
    :cond_0
    :goto_0
    return v9

    .line 654
    :cond_1
    move-object/from16 v0, p0

    iget v13, v0, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 655
    .local v13, width:I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 657
    .local v3, height:I
    if-ge v13, v3, :cond_5

    .line 658
    move v11, v13

    .line 659
    .local v11, shortSize:I
    move v4, v3

    .line 665
    .local v4, longSize:I
    :goto_1
    const/high16 v2, 0x43a0

    .line 669
    .local v2, factor:F
    const/16 v14, 0x438

    if-ge v4, v14, :cond_6

    .line 671
    const/high16 v2, 0x43a0

    .line 729
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget v14, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v14, v2

    const/high16 v15, 0x3f00

    add-float/2addr v14, v15

    float-to-int v7, v14

    .line 730
    .local v7, newShortSize:I
    int-to-float v14, v4

    int-to-float v15, v11

    div-float v1, v14, v15

    .line 731
    .local v1, aspect:F
    const v14, 0x3fe3bbbc

    cmpl-float v14, v1, v14

    if-lez v14, :cond_3

    .line 732
    const v1, 0x3fe3bbbc

    .line 734
    :cond_3
    int-to-float v14, v7

    mul-float/2addr v14, v1

    const/high16 v15, 0x3f00

    add-float/2addr v14, v15

    float-to-int v6, v14

    .line 736
    .local v6, newLongSize:I
    if-ge v13, v3, :cond_e

    .line 737
    move v8, v7

    .line 738
    .local v8, newWidth:I
    move v5, v6

    .line 744
    .local v5, newHeight:I
    :goto_3
    int-to-float v14, v13

    int-to-float v15, v8

    div-float v12, v14, v15

    .line 745
    .local v12, sw:F
    int-to-float v14, v3

    int-to-float v15, v5

    div-float v10, v14, v15

    .line 746
    .local v10, sh:F
    cmpg-float v14, v12, v10

    if-gez v14, :cond_f

    move v9, v12

    .line 747
    .local v9, scale:F
    :goto_4
    const/high16 v14, 0x3f80

    cmpg-float v14, v9, v14

    if-gez v14, :cond_4

    .line 748
    const/high16 v9, 0x3f80

    .line 751
    :cond_4
    if-eqz p1, :cond_0

    .line 752
    move-object/from16 v0, p1

    iput v8, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 753
    move-object/from16 v0, p1

    iput v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0

    .line 661
    .end local v1           #aspect:F
    .end local v2           #factor:F
    .end local v4           #longSize:I
    .end local v5           #newHeight:I
    .end local v6           #newLongSize:I
    .end local v7           #newShortSize:I
    .end local v8           #newWidth:I
    .end local v9           #scale:F
    .end local v10           #sh:F
    .end local v11           #shortSize:I
    .end local v12           #sw:F
    :cond_5
    move v11, v3

    .line 662
    .restart local v11       #shortSize:I
    move v4, v13

    .restart local v4       #longSize:I
    goto :goto_1

    .line 674
    .restart local v2       #factor:F
    :cond_6
    const/16 v14, 0x4a6

    if-gt v4, v14, :cond_7

    .line 677
    const/high16 v2, 0x4398

    goto :goto_2

    .line 679
    :cond_7
    const/16 v14, 0x500

    if-gt v4, v14, :cond_8

    .line 681
    const/high16 v2, 0x4396

    goto :goto_2

    .line 684
    :cond_8
    const/16 v14, 0x780

    if-gt v4, v14, :cond_2

    .line 686
    const/16 v14, 0x4b0

    if-ge v11, v14, :cond_b

    .line 688
    move-object/from16 v0, p0

    iget v14, v0, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    if-le v14, v15, :cond_9

    .line 690
    const/high16 v2, 0x4370

    goto :goto_2

    .line 695
    :cond_9
    const/16 v14, 0x780

    if-ge v4, v14, :cond_a

    .line 697
    const v2, 0x436a8000

    goto :goto_2

    .line 702
    :cond_a
    const/high16 v2, 0x4370

    goto :goto_2

    .line 709
    :cond_b
    move-object/from16 v0, p0

    iget v14, v0, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    if-le v14, v15, :cond_c

    .line 711
    const/high16 v2, 0x4370

    goto :goto_2

    .line 716
    :cond_c
    const/16 v14, 0x780

    if-ge v4, v14, :cond_d

    .line 718
    const/high16 v2, 0x4370

    goto/16 :goto_2

    .line 723
    :cond_d
    const/high16 v2, 0x4370

    goto/16 :goto_2

    .line 740
    .restart local v1       #aspect:F
    .restart local v6       #newLongSize:I
    .restart local v7       #newShortSize:I
    :cond_e
    move v8, v6

    .line 741
    .restart local v8       #newWidth:I
    move v5, v7

    .restart local v5       #newHeight:I
    goto :goto_3

    .restart local v10       #sh:F
    .restart local v12       #sw:F
    :cond_f
    move v9, v10

    .line 746
    goto :goto_4
.end method

.method public static final makeNewCompatibilityInfo(I)Landroid/content/res/CompatibilityInfo;
    .locals 6
    .parameter "flags"

    .prologue
    .line 847
    new-instance v0, Landroid/content/res/CompatibilityInfo;

    const/16 v1, 0xb

    const/16 v2, 0xa0

    const v3, 0x3faa6666

    const v4, 0x3f404cec

    move v5, p0

    invoke-direct/range {v0 .. v5}, Landroid/content/res/CompatibilityInfo;-><init>(IIFFI)V

    return-object v0
.end method

.method public static final makeNewPackageCompatibilityInfo(I)Landroid/content/res/CompatibilityInfo;
    .locals 6
    .parameter "flags"

    .prologue
    const/high16 v5, 0x4320

    .line 856
    new-instance v0, Landroid/content/res/CompatibilityInfo;

    const/16 v1, 0xb

    const/16 v2, 0xa0

    sget v3, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v3, v3

    div-float/2addr v3, v5

    sget v4, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v4, v4

    div-float v4, v5, v4

    move v5, p0

    invoke-direct/range {v0 .. v5}, Landroid/content/res/CompatibilityInfo;-><init>(IIFFI)V

    return-object v0
.end method

.method public static final makeNoneCompatibilityInfo(I)Landroid/content/res/CompatibilityInfo;
    .locals 6
    .parameter "flags"

    .prologue
    const/high16 v3, 0x3f80

    .line 865
    new-instance v0, Landroid/content/res/CompatibilityInfo;

    const/4 v1, 0x4

    sget v2, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    move v4, v3

    move v5, p0

    invoke-direct/range {v0 .. v5}, Landroid/content/res/CompatibilityInfo;-><init>(IIFFI)V

    return-object v0
.end method


# virtual methods
.method public alwaysSupportsScreen()Z
    .locals 1

    .prologue
    .line 352
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public applyToConfiguration(ILandroid/content/res/Configuration;)V
    .locals 4
    .parameter "displayDensity"
    .parameter "inoutConfig"

    .prologue
    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f00

    .line 557
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->realNeedCompat()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 561
    iget v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, -0x10

    or-int/lit8 v1, v1, 0x2

    iput v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    .line 564
    iget v1, p2, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v1, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 565
    iget v1, p2, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v1, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 566
    iget v1, p2, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v1, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 568
    :cond_0
    iput p1, p2, Landroid/content/res/Configuration;->densityDpi:I

    .line 569
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 570
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 571
    .local v0, invertedRatio:F
    iget v1, p2, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p2, Landroid/content/res/Configuration;->densityDpi:I

    .line 577
    .end local v0           #invertedRatio:F
    :cond_1
    :goto_0
    return-void

    .line 573
    :cond_2
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->appScaleOptFlags:I

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/content/res/CompatibilityInfo;->appScaleRatio:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 574
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->appScaleRatio:F

    div-float v1, v2, v1

    iput v1, p0, Landroid/content/res/CompatibilityInfo;->appScaleRatio:F

    .line 575
    iget v1, p2, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v1, v1

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->appScaleRatio:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p2, Landroid/content/res/Configuration;->densityDpi:I

    goto :goto_0
.end method

.method public applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .locals 5
    .parameter "inoutDm"

    .prologue
    const/high16 v4, 0x3f80

    const/high16 v3, 0x3f00

    .line 515
    const/high16 v0, 0x3f80

    .line 516
    .local v0, invertedRatio:F
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->realNeedCompat()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 520
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->appScaleOptFlags:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 521
    invoke-static {p1, p1}, Landroid/content/res/CompatibilityInfo;->computeForceCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    move-result v0

    .line 531
    :goto_0
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 532
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 533
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatDensity:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 534
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 535
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 536
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->xdpi:F

    .line 537
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    .line 538
    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 539
    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 553
    :cond_0
    :goto_1
    return-void

    .line 523
    :cond_1
    invoke-static {p1, p1}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    move-result v0

    goto :goto_0

    .line 527
    :cond_2
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    iput v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 528
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    iput v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0

    .line 541
    :cond_3
    cmpl-float v1, v0, v4

    if-eqz v1, :cond_0

    .line 543
    iput v0, p0, Landroid/content/res/CompatibilityInfo;->appScaleRatio:F

    .line 544
    div-float v0, v4, v0

    .line 545
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatDensity:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 546
    iget v1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4320

    mul-float/2addr v1, v2

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 547
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 548
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->xdpi:F

    .line 549
    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    mul-float/2addr v1, v0

    iput v1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    goto :goto_1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 818
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v3, 0x0

    .line 762
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/content/res/CompatibilityInfo;

    move-object v2, v0

    .line 763
    .local v2, oc:Landroid/content/res/CompatibilityInfo;
    iget v4, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    iget v5, v2, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    if-eq v4, v5, :cond_1

    .line 770
    .end local v2           #oc:Landroid/content/res/CompatibilityInfo;
    :cond_0
    :goto_0
    return v3

    .line 764
    .restart local v2       #oc:Landroid/content/res/CompatibilityInfo;
    :cond_1
    iget v4, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    iget v5, v2, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    if-ne v4, v5, :cond_0

    .line 765
    iget v4, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    iget v5, v2, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 766
    iget v4, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    iget v5, v2, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 767
    iget v4, p0, Landroid/content/res/CompatibilityInfo;->appScaleOptFlags:I

    iget v5, v2, Landroid/content/res/CompatibilityInfo;->appScaleOptFlags:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v5, :cond_0

    .line 768
    const/4 v3, 0x1

    goto :goto_0

    .line 769
    .end local v2           #oc:Landroid/content/res/CompatibilityInfo;
    :catch_0
    move-exception v1

    .line 770
    .local v1, e:Ljava/lang/ClassCastException;
    goto :goto_0
.end method

.method public getTranslator()Landroid/content/res/CompatibilityInfo$Translator;
    .locals 1

    .prologue
    .line 360
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/res/CompatibilityInfo$Translator;

    invoke-direct {v0, p0}, Landroid/content/res/CompatibilityInfo$Translator;-><init>(Landroid/content/res/CompatibilityInfo;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 805
    const/16 v0, 0x11

    .line 806
    .local v0, result:I
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    add-int/lit16 v0, v1, 0x20f

    .line 807
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    add-int v0, v1, v2

    .line 808
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 809
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 811
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/CompatibilityInfo;->appScaleOptFlags:I

    add-int v0, v1, v2

    .line 813
    return v0
.end method

.method public isScalingRequired()Z
    .locals 1

    .prologue
    .line 340
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public neverSupportsScreen()Z
    .locals 1

    .prologue
    .line 348
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public realNeedCompat()Z
    .locals 1

    .prologue
    .line 508
    const/4 v0, 0x1

    return v0
.end method

.method public supportsScreen()Z
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 776
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 777
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 779
    const-string v1, "dpi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 781
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 783
    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 786
    const-string v1, " resizing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 789
    const-string v1, " never-compat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    :cond_2
    invoke-virtual {p0}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 792
    const-string v1, " always-compat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    :cond_3
    iget v1, p0, Landroid/content/res/CompatibilityInfo;->appScaleOptFlags:I

    if-eqz v1, :cond_4

    .line 796
    const-string v1, " enabledAppScaleOpt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    :cond_4
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 823
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->mCompatibilityFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 824
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 826
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->appScaleOptFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 828
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 829
    iget v0, p0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 830
    return-void
.end method
