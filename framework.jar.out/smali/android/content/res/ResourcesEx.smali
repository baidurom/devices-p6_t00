.class public Landroid/content/res/ResourcesEx;
.super Landroid/content/res/Resources;
.source "ResourcesEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/ResourcesEx$ThemeResource;
    }
.end annotation


# static fields
.field private static final ANDROID_RES:Ljava/lang/String; = "android"

.field private static final ANDROID_RES_EXT:Ljava/lang/String; = "androidhwext"

.field private static final DEBUG_DRAWABLE:Z = false

.field private static final DEBUG_ICON:Z = false

.field private static final DEBUG_VERBOSE_ICON:Z = false

.field private static final DELTA_X_OF_BACKGROUND:I = 0x0

.field private static final DELTA_Y_OF_BACKGROUND:I = -0x1

.field private static final FRAMEWORK_RES:Ljava/lang/String; = "framework-res"

.field private static final FRAMEWORK_RES_EXT:Ljava/lang/String; = "framework-res-hwext"

.field private static final ICONS_ZIPFILE:Ljava/lang/String; = "icons"

.field private static final ICON_BACKGROUND_PREFIX:Ljava/lang/String; = "icon_background"

.field private static final ICON_BORDER_FILE:Ljava/lang/String; = "icon_border.png"

.field private static final ICON_MASK_FILE:Ljava/lang/String; = "icon_mask.png"

.field private static final ICON_SYS_APP_DEFAULT:Ljava/lang/String; = "sym_def_app_icon"

.field private static final LEN_OF_ANDROID:I = 0x7

.field private static final LEN_OF_ANDROID_EXT:I = 0xc

.field static final TAG:Ljava/lang/String; = "ResourcesEx"

.field private static final THEME_DIR:Ljava/lang/String;

.field private static mCacheColorInfoList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mNonThemedPackage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mPreloadedThemeColorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sBgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static sBmpBorder:Landroid/graphics/Bitmap;

.field private static sBmpMask:Landroid/graphics/Bitmap;

.field private static sBmpSysAppDefault:Landroid/graphics/Bitmap;

.field private static final sConfigAppBigIconSize:I

.field private static final sConfigAppInnerIconSize:I

.field private static sStandardBgSize:I

.field private static sStandardIconSize:I


# instance fields
.field private isThemeColor:Z

.field private final mDrawableCacheEx:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 56
    sput v2, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    .line 57
    sput v2, Landroid/content/res/ResourcesEx;->sStandardIconSize:I

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/skin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/res/ResourcesEx;->THEME_DIR:Ljava/lang/String;

    .line 68
    sput-object v3, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    .line 69
    sput-object v3, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    .line 70
    sput-object v3, Landroid/content/res/ResourcesEx;->sBmpSysAppDefault:Landroid/graphics/Bitmap;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/content/res/ResourcesEx;->mCacheColorInfoList:Ljava/util/HashMap;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/content/res/ResourcesEx;->mPreloadedThemeColorList:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/content/res/ResourcesEx;->mNonThemedPackage:Ljava/util/ArrayList;

    .line 84
    const-string/jumbo v0, "ro.config.app_big_icon_size"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/content/res/ResourcesEx;->sConfigAppBigIconSize:I

    .line 86
    const-string/jumbo v0, "ro.config.app_inner_icon_size"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/content/res/ResourcesEx;->sConfigAppInnerIconSize:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 720
    invoke-direct {p0}, Landroid/content/res/Resources;-><init>()V

    .line 71
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesEx;->mDrawableCacheEx:Landroid/util/LongSparseArray;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/ResourcesEx;->isThemeColor:Z

    .line 721
    sget v0, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    if-ne v1, v0, :cond_0

    .line 722
    sget v0, Landroid/content/res/ResourcesEx;->sConfigAppBigIconSize:I

    if-ne v0, v1, :cond_1

    const v0, 0x105007d

    invoke-virtual {p0, v0}, Landroid/content/res/ResourcesEx;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    :goto_0
    sput v0, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    .line 724
    sget v0, Landroid/content/res/ResourcesEx;->sConfigAppInnerIconSize:I

    if-ne v0, v1, :cond_2

    const v0, 0x105007c

    invoke-virtual {p0, v0}, Landroid/content/res/ResourcesEx;->getDimensionPixelSize(I)I

    move-result v0

    :goto_1
    sput v0, Landroid/content/res/ResourcesEx;->sStandardIconSize:I

    .line 730
    :cond_0
    invoke-static {}, Landroid/content/res/ResourcesEx;->initStatics()V

    .line 731
    return-void

    .line 722
    :cond_1
    sget v0, Landroid/content/res/ResourcesEx;->sConfigAppBigIconSize:I

    goto :goto_0

    .line 724
    :cond_2
    sget v0, Landroid/content/res/ResourcesEx;->sConfigAppInnerIconSize:I

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "assets"
    .parameter "metrics"
    .parameter "config"

    .prologue
    .line 699
    const/4 v0, 0x0

    check-cast v0, Landroid/content/res/CompatibilityInfo;

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/content/res/ResourcesEx;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 700
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V
    .locals 1
    .parameter "assets"
    .parameter "metrics"
    .parameter "config"
    .parameter "compInfo"

    .prologue
    .line 716
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 71
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesEx;->mDrawableCacheEx:Landroid/util/LongSparseArray;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/ResourcesEx;->isThemeColor:Z

    .line 717
    return-void
.end method

.method private addIconBackgroud(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "bmpSrc"
    .parameter "idAndPackageName"

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 197
    sget-object v6, Landroid/content/res/ResourcesEx;->THEME_DIR:Ljava/lang/String;

    const-string v7, "icons"

    invoke-static {v6, v7}, Landroid/content/res/ZipFileCache;->getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ZipFileCache;

    move-result-object v2

    .line 198
    .local v2, iconZipFileCache:Landroid/content/res/ZipFileCache;
    if-nez v2, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-object v4

    .line 201
    :cond_1
    sget-object v6, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    if-nez v6, :cond_2

    .line 202
    const-string v6, "icon_border.png"

    invoke-virtual {v2, v6}, Landroid/content/res/ZipFileCache;->getBitmapEntry(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    sput-object v6, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    .line 203
    sget-object v6, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_2

    .line 204
    sget-object v6, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    sget v7, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    invoke-static {v6, v7, v10}, Landroid/content/IconBitmapUtils;->zoomIfNeed(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v6

    sput-object v6, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    .line 207
    :cond_2
    sget-object v6, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_0

    .line 210
    sget-object v6, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    if-nez v6, :cond_3

    .line 211
    const-string v6, "icon_mask.png"

    invoke-virtual {v2, v6}, Landroid/content/res/ZipFileCache;->getBitmapEntry(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    sput-object v6, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    .line 212
    sget-object v6, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_3

    .line 213
    sget-object v6, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    sget v7, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    invoke-static {v6, v7, v10}, Landroid/content/IconBitmapUtils;->zoomIfNeed(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v6

    sput-object v6, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    .line 216
    :cond_3
    sget-object v6, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_0

    .line 219
    invoke-direct {p0, p2}, Landroid/content/res/ResourcesEx;->getRandomBgImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 220
    .local v0, bmpBg:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 223
    sget v6, Landroid/content/res/ResourcesEx;->sStandardIconSize:I

    invoke-static {p1, v6, v8}, Landroid/content/IconBitmapUtils;->zoomIfNeed(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 224
    .local v1, bmpSrcStd:Landroid/graphics/Bitmap;
    sget-object v6, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    invoke-static {v1, v6}, Landroid/content/IconBitmapUtils;->mask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 225
    .local v3, maskResultBitmap:Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 226
    .local v4, newBitmap:Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 228
    .local v5, tmpBitmap:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_6

    .line 229
    invoke-static {v3, v0, v8, v9}, Landroid/content/IconBitmapUtils;->overlap2Bitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 230
    sget-object v6, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    invoke-static {v6, v5}, Landroid/content/IconBitmapUtils;->overlap2Bitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 236
    :goto_1
    if-eqz v3, :cond_4

    .line 237
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 239
    :cond_4
    if-eqz v5, :cond_5

    .line 240
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 242
    :cond_5
    if-ne v1, p1, :cond_7

    .line 244
    if-eqz v4, :cond_0

    .line 245
    if-eqz v1, :cond_0

    .line 246
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 233
    :cond_6
    invoke-static {v1, v0, v8, v9}, Landroid/content/IconBitmapUtils;->overlap2Bitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 234
    sget-object v6, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    invoke-static {v6, v5}, Landroid/content/IconBitmapUtils;->overlap2Bitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_1

    .line 251
    :cond_7
    if-eqz v4, :cond_9

    .line 252
    if-eqz v1, :cond_8

    .line 253
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 255
    :cond_8
    if-eqz p1, :cond_0

    .line 256
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    .line 260
    :cond_9
    if-eqz v1, :cond_0

    .line 261
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0
.end method

.method private checkSpecialIcons(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "entryName"

    .prologue
    const/4 v1, 0x0

    .line 176
    const-string/jumbo v2, "sym_def_app_icon"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 177
    sget-object v2, Landroid/content/res/ResourcesEx;->sBmpSysAppDefault:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    .line 178
    sget-object v2, Landroid/content/res/ResourcesEx;->THEME_DIR:Ljava/lang/String;

    const-string v3, "icons"

    invoke-static {v2, v3}, Landroid/content/res/ZipFileCache;->getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ZipFileCache;

    move-result-object v0

    .line 179
    .local v0, iconZipFileCache:Landroid/content/res/ZipFileCache;
    if-nez v0, :cond_1

    .line 188
    .end local v0           #iconZipFileCache:Landroid/content/res/ZipFileCache;
    :cond_0
    :goto_0
    return-object v1

    .line 182
    .restart local v0       #iconZipFileCache:Landroid/content/res/ZipFileCache;
    :cond_1
    const-string/jumbo v2, "sym_def_app_icon.png"

    invoke-virtual {v0, v2}, Landroid/content/res/ZipFileCache;->getBitmapEntry(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 184
    .end local v0           #iconZipFileCache:Landroid/content/res/ZipFileCache;
    :cond_2
    sget-object v2, Landroid/content/res/ResourcesEx;->sBmpSysAppDefault:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 185
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v2, Landroid/content/res/ResourcesEx;->sBmpSysAppDefault:Landroid/graphics/Bitmap;

    invoke-direct {v1, p0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private static getAllBgImage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "path"
    .parameter "zip"

    .prologue
    .line 95
    sget-object v3, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    sget-object v3, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 117
    :cond_0
    return-void

    .line 98
    :cond_1
    sget-object v3, Landroid/content/res/ResourcesEx;->THEME_DIR:Ljava/lang/String;

    const-string v4, "icons"

    invoke-static {v3, v4}, Landroid/content/res/ZipFileCache;->getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ZipFileCache;

    move-result-object v2

    .line 99
    .local v2, iconZipFileCache:Landroid/content/res/ZipFileCache;
    if-eqz v2, :cond_0

    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, bmp:Landroid/graphics/Bitmap;
    const-string v3, "icon_background"

    invoke-virtual {v2, v3}, Landroid/content/res/ZipFileCache;->getBitmapList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    sput-object v3, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    .line 104
    sget-object v3, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 107
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v3, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 108
    sget-object v3, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bmp:Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 109
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 110
    sget v3, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Landroid/content/IconBitmapUtils;->zoomIfNeed(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 111
    sget-object v3, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 107
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getCode(Ljava/lang/String;)I
    .locals 3
    .parameter "idAndPackageName"

    .prologue
    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, code:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 146
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/2addr v0, v2

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    :cond_0
    return v0
.end method

.method private getColorValueFromStr(Ljava/lang/String;)I
    .locals 8
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 560
    if-eqz p1, :cond_5

    .line 561
    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 562
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "Color value \'%s\' must start with #"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 566
    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 569
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_1

    .line 570
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "Color value \'%s\' is too long. Format is either#AARRGGBB, #RRGGBB, #RGB, or #ARGB"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 576
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v6, :cond_3

    .line 577
    const/16 v1, 0x8

    new-array v0, v1, [C

    .line 578
    .local v0, color:[C
    const/16 v1, 0x46

    aput-char v1, v0, v3

    aput-char v1, v0, v4

    .line 579
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput-char v1, v0, v6

    aput-char v1, v0, v5

    .line 580
    const/4 v1, 0x5

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aput-char v2, v0, v1

    aput-char v2, v0, v7

    .line 581
    const/4 v1, 0x6

    const/4 v2, 0x7

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v0, v2

    aput-char v3, v0, v1

    .line 582
    new-instance p1, Ljava/lang/String;

    .end local p1
    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    .line 599
    .end local v0           #color:[C
    .restart local p1
    :cond_2
    :goto_0
    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    long-to-int v1, v1

    return v1

    .line 583
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v7, :cond_4

    .line 584
    const/16 v1, 0x8

    new-array v0, v1, [C

    .line 585
    .restart local v0       #color:[C
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput-char v1, v0, v3

    aput-char v1, v0, v4

    .line 586
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput-char v1, v0, v6

    aput-char v1, v0, v5

    .line 587
    const/4 v1, 0x5

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aput-char v2, v0, v1

    aput-char v2, v0, v7

    .line 588
    const/4 v1, 0x6

    const/4 v2, 0x7

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v0, v2

    aput-char v3, v0, v1

    .line 589
    new-instance p1, Ljava/lang/String;

    .end local p1
    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    .line 590
    .restart local p1
    goto :goto_0

    .end local v0           #color:[C
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 591
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FF"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 602
    :cond_5
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-direct {v1}, Ljava/lang/NumberFormatException;-><init>()V

    throw v1
.end method

.method private getRandomBgImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "idAndPackageName"

    .prologue
    .line 124
    sget-object v2, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    sget-object v2, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 125
    :cond_0
    sget-object v2, Landroid/content/res/ResourcesEx;->THEME_DIR:Ljava/lang/String;

    const-string v3, "icons"

    invoke-static {v2, v3}, Landroid/content/res/ResourcesEx;->getAllBgImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_1
    const/4 v1, 0x0

    .line 128
    .local v1, len:I
    sget-object v2, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 129
    sget-object v2, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 131
    :cond_2
    if-lez v1, :cond_3

    .line 132
    invoke-direct {p0, p1}, Landroid/content/res/ResourcesEx;->getCode(Ljava/lang/String;)I

    move-result v2

    rem-int v0, v2, v1

    .line 133
    .local v0, i:I
    sget-object v2, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 135
    .end local v0           #i:I
    :goto_0
    return-object v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getThemeResource(I)Landroid/content/res/ResourcesEx$ThemeResource;
    .locals 4
    .parameter "id"

    .prologue
    .line 664
    invoke-virtual {p0, p1}, Landroid/content/res/ResourcesEx;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 665
    .local v0, packageName:Ljava/lang/String;
    invoke-virtual {p0, p1}, Landroid/content/res/ResourcesEx;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 666
    .local v1, resName:Ljava/lang/String;
    const-string v2, "android"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 667
    const-string v0, "framework-res"

    .line 668
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "framework-res"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 671
    :cond_0
    const-string v2, "androidhwext"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 672
    const-string v0, "framework-res-hwext"

    .line 673
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "framework-res-hwext"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 675
    :cond_1
    new-instance v2, Landroid/content/res/ResourcesEx$ThemeResource;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ResourcesEx$ThemeResource;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private inflateColorInfoList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 12
    .parameter "parser"
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 518
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 522
    .local v3, innerDepth:I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .local v8, type:I
    const/4 v9, 0x1

    if-eq v8, v9, :cond_4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-gt v9, v3, :cond_1

    const/4 v9, 0x3

    if-eq v8, v9, :cond_4

    .line 524
    :cond_1
    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 528
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 529
    .local v4, lableName:Ljava/lang/String;
    const-string v9, "color"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "drawable"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 532
    :cond_2
    invoke-interface {p1, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    .line 533
    .local v5, name:Ljava/lang/String;
    invoke-interface {p1, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 534
    .local v0, colorName:Ljava/lang/String;
    const/4 v7, 0x0

    .line 535
    .local v7, text:Ljava/lang/String;
    const/4 v1, 0x0

    .line 536
    .local v1, colorVaue:I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_3

    .line 537
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    .line 539
    :cond_3
    const-string/jumbo v9, "name"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 540
    invoke-direct {p0, v7}, Landroid/content/res/ResourcesEx;->getColorValueFromStr(Ljava/lang/String;)I

    move-result v1

    .line 542
    const/4 v2, 0x0

    .line 543
    .local v2, fullColorName:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 544
    .local v6, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    const-string v9, ":"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    const-string v9, "/"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 551
    sget-object v9, Landroid/content/res/ResourcesEx;->mCacheColorInfoList:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 554
    .end local v0           #colorName:Ljava/lang/String;
    .end local v1           #colorVaue:I
    .end local v2           #fullColorName:Ljava/lang/String;
    .end local v4           #lableName:Ljava/lang/String;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #sb:Ljava/lang/StringBuilder;
    .end local v7           #text:Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private static initStatics()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 152
    sget-object v1, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    sget-object v1, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 169
    .local v0, iconZipFileCache:Landroid/content/res/ZipFileCache;
    :cond_0
    :goto_0
    return-void

    .line 155
    .end local v0           #iconZipFileCache:Landroid/content/res/ZipFileCache;
    :cond_1
    sget-object v1, Landroid/content/res/ResourcesEx;->THEME_DIR:Ljava/lang/String;

    const-string v2, "icons"

    invoke-static {v1, v2}, Landroid/content/res/ZipFileCache;->getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ZipFileCache;

    move-result-object v0

    .line 156
    .restart local v0       #iconZipFileCache:Landroid/content/res/ZipFileCache;
    if-eqz v0, :cond_0

    .line 159
    const-string v1, "icon_border.png"

    invoke-virtual {v0, v1}, Landroid/content/res/ZipFileCache;->getBitmapEntry(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    .line 160
    const-string v1, "icon_mask.png"

    invoke-virtual {v0, v1}, Landroid/content/res/ZipFileCache;->getBitmapEntry(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    .line 161
    sget-object v1, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 162
    sget-object v1, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    sget v2, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    invoke-static {v1, v2, v3}, Landroid/content/IconBitmapUtils;->zoomIfNeed(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    .line 164
    :cond_2
    sget-object v1, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 165
    sget-object v1, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    sget v2, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    invoke-static {v1, v2, v3}, Landroid/content/IconBitmapUtils;->zoomIfNeed(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    .line 167
    :cond_3
    sget-object v1, Landroid/content/res/ResourcesEx;->THEME_DIR:Ljava/lang/String;

    const-string v2, "icons"

    invoke-static {v1, v2}, Landroid/content/res/ResourcesEx;->getAllBgImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string/jumbo v1, "sym_def_app_icon.png"

    invoke-virtual {v0, v1}, Landroid/content/res/ZipFileCache;->getBitmapEntry(Ljava/lang/String;)Landroid/graphics/Bitmap;

    goto :goto_0
.end method


# virtual methods
.method public getColor(I)I
    .locals 5
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 494
    iget-object v3, p0, Landroid/content/res/ResourcesEx;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v3

    .line 495
    :try_start_0
    iget-object v1, p0, Landroid/content/res/ResourcesEx;->mTmpValue:Landroid/util/TypedValue;

    .line 496
    .local v1, value:Landroid/util/TypedValue;
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/res/ResourcesEx;->getValue(ILandroid/util/TypedValue;Z)V

    .line 497
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x10

    if-lt v2, v4, :cond_1

    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1f

    if-gt v2, v4, :cond_1

    .line 499
    sget-boolean v2, Landroid/content/res/Resources;->sIsHwTheme:Z

    if-eqz v2, :cond_0

    .line 500
    invoke-virtual {p0, v1, p1}, Landroid/content/res/ResourcesEx;->getThemeColor(Landroid/util/TypedValue;I)I

    move-result v0

    .line 501
    .local v0, colorVaue:I
    monitor-exit v3

    .line 506
    .end local v0           #colorVaue:I
    :goto_0
    return v0

    .line 503
    :cond_0
    iget v0, v1, Landroid/util/TypedValue;->data:I

    monitor-exit v3

    goto :goto_0

    .line 508
    .end local v1           #value:Landroid/util/TypedValue;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 506
    .restart local v1       #value:Landroid/util/TypedValue;
    :cond_1
    :try_start_1
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getThemeColor(Landroid/util/TypedValue;I)I
    .locals 11
    .parameter "value"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 611
    invoke-direct {p0, p2}, Landroid/content/res/ResourcesEx;->getThemeResource(I)Landroid/content/res/ResourcesEx$ThemeResource;

    move-result-object v8

    .line 612
    .local v8, themeRes:Landroid/content/res/ResourcesEx$ThemeResource;
    iget-object v4, v8, Landroid/content/res/ResourcesEx$ThemeResource;->packageName:Ljava/lang/String;

    .line 613
    .local v4, packageName:Ljava/lang/String;
    iget-object v7, v8, Landroid/content/res/ResourcesEx$ThemeResource;->resName:Ljava/lang/String;

    .line 614
    .local v7, resName:Ljava/lang/String;
    sget-object v9, Landroid/content/res/ResourcesEx;->mPreloadedThemeColorList:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    sget-object v9, Landroid/content/res/ResourcesEx;->mNonThemedPackage:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 615
    const/4 v5, 0x0

    .line 617
    .local v5, packageZipFileCache:Landroid/content/res/ZipFileCache;
    :try_start_0
    new-instance v2, Ljava/io/File;

    sget-object v9, Landroid/content/res/ResourcesEx;->THEME_DIR:Ljava/lang/String;

    invoke-direct {v2, v9, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    .local v2, file:Ljava/io/File;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 619
    :cond_0
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/content/res/ResourcesEx;->isThemeColor:Z

    .line 620
    sget-object v9, Landroid/content/res/ResourcesEx;->mNonThemedPackage:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    iget v9, p1, Landroid/util/TypedValue;->data:I

    .line 659
    .end local v2           #file:Ljava/io/File;
    .end local v5           #packageZipFileCache:Landroid/content/res/ZipFileCache;
    :cond_1
    :goto_0
    return v9

    .line 623
    .restart local v2       #file:Ljava/io/File;
    .restart local v5       #packageZipFileCache:Landroid/content/res/ZipFileCache;
    :cond_2
    sget-object v9, Landroid/content/res/ResourcesEx;->THEME_DIR:Ljava/lang/String;

    invoke-static {v9, v4}, Landroid/content/res/ZipFileCache;->getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ZipFileCache;

    move-result-object v5

    .line 624
    if-nez v5, :cond_3

    .line 625
    iget v9, p1, Landroid/util/TypedValue;->data:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 627
    .end local v2           #file:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 628
    .local v1, ex:Ljava/lang/Exception;
    iput-boolean v10, p0, Landroid/content/res/ResourcesEx;->isThemeColor:Z

    .line 629
    sget-object v9, Landroid/content/res/ResourcesEx;->mNonThemedPackage:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    iget v9, p1, Landroid/util/TypedValue;->data:I

    goto :goto_0

    .line 633
    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v2       #file:Ljava/io/File;
    :cond_3
    const-string/jumbo v9, "theme.xml"

    invoke-virtual {v5, v9}, Landroid/content/res/ZipFileCache;->getInputStreamEntry(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 634
    .local v3, is:Ljava/io/InputStream;
    if-eqz v3, :cond_4

    .line 637
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 638
    .local v6, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v9, 0x0

    invoke-interface {v6, v3, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 639
    invoke-direct {p0, v6, v4}, Landroid/content/res/ResourcesEx;->inflateColorInfoList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 645
    if-eqz v3, :cond_4

    .line 646
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 652
    .end local v6           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_4
    :goto_1
    sget-object v9, Landroid/content/res/ResourcesEx;->mPreloadedThemeColorList:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    .end local v2           #file:Ljava/io/File;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v5           #packageZipFileCache:Landroid/content/res/ZipFileCache;
    :cond_5
    sget-object v9, Landroid/content/res/ResourcesEx;->mCacheColorInfoList:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 655
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/content/res/ResourcesEx;->isThemeColor:Z

    .line 656
    sget-object v9, Landroid/content/res/ResourcesEx;->mCacheColorInfoList:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_0

    .line 640
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v5       #packageZipFileCache:Landroid/content/res/ZipFileCache;
    :catch_1
    move-exception v0

    .line 641
    .local v0, e:Ljava/lang/Exception;
    const/4 v9, 0x0

    :try_start_3
    iput-boolean v9, p0, Landroid/content/res/ResourcesEx;->isThemeColor:Z

    .line 642
    iget v9, p1, Landroid/util/TypedValue;->data:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 645
    if-eqz v3, :cond_1

    .line 646
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 648
    :catch_2
    move-exception v10

    goto :goto_0

    .line 644
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 645
    if-eqz v3, :cond_6

    .line 646
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 649
    :cond_6
    :goto_2
    throw v9

    .line 658
    .end local v2           #file:Ljava/io/File;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v5           #packageZipFileCache:Landroid/content/res/ZipFileCache;
    :cond_7
    iput-boolean v10, p0, Landroid/content/res/ResourcesEx;->isThemeColor:Z

    .line 659
    iget v9, p1, Landroid/util/TypedValue;->data:I

    goto :goto_0

    .line 648
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v5       #packageZipFileCache:Landroid/content/res/ZipFileCache;
    .restart local v6       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_3
    move-exception v9

    goto :goto_1

    .end local v6           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_4
    move-exception v10

    goto :goto_2
.end method

.method public getThemeDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "value"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 436
    invoke-direct {p0, p2}, Landroid/content/res/ResourcesEx;->getThemeResource(I)Landroid/content/res/ResourcesEx$ThemeResource;

    move-result-object v5

    .line 437
    .local v5, themeRes:Landroid/content/res/ResourcesEx$ThemeResource;
    iget-object v3, v5, Landroid/content/res/ResourcesEx$ThemeResource;->packageName:Ljava/lang/String;

    .line 438
    .local v3, packageName:Ljava/lang/String;
    iget-object v7, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 439
    .local v2, file:Ljava/lang/String;
    const/4 v1, 0x0

    .line 445
    .local v1, dr:Landroid/graphics/drawable/Drawable;
    const-string v7, "framework-res"

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_1

    const-string v7, "_holo"

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_1

    .line 461
    :cond_0
    :goto_0
    return-object v6

    .line 449
    :cond_1
    sget-object v7, Landroid/content/res/ResourcesEx;->THEME_DIR:Ljava/lang/String;

    invoke-static {v7, v3}, Landroid/content/res/ZipFileCache;->getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ZipFileCache;

    move-result-object v4

    .line 450
    .local v4, packageZipFileCache:Landroid/content/res/ZipFileCache;
    if-eqz v4, :cond_0

    .line 453
    const-string v6, ".9.png"

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_3

    .line 454
    invoke-virtual {v4, p0, p1, v2}, Landroid/content/res/ZipFileCache;->getDrawableEntry(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_2
    :goto_1
    move-object v6, v1

    .line 461
    goto :goto_0

    .line 456
    :cond_3
    invoke-virtual {v4, v2}, Landroid/content/res/ZipFileCache;->getBitmapEntry(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 457
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 458
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1           #dr:Landroid/graphics/drawable/Drawable;
    invoke-direct {v1, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v1       #dr:Landroid/graphics/drawable/Drawable;
    goto :goto_1
.end method

.method getThemeIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 11
    .parameter "id"

    .prologue
    const/4 v10, 0x1

    .line 321
    const/4 v3, 0x0

    .line 322
    .local v3, dr:Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    .line 323
    .local v0, bmp:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 324
    .local v1, bmpScaled:Landroid/graphics/Bitmap;
    invoke-virtual {p0, p1}, Landroid/content/res/ResourcesEx;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v7

    .line 325
    .local v7, packageName:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 326
    .local v5, idAndPackageName:Ljava/lang/String;
    const-string v6, ""

    .line 327
    .local v6, imgFile:Ljava/lang/String;
    invoke-static {v5}, Landroid/content/IconCache;->get(Ljava/lang/String;)Landroid/content/IconCache$CacheEntry;

    move-result-object v2

    .line 329
    .local v2, ce:Landroid/content/IconCache$CacheEntry;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v2, Landroid/content/IconCache$CacheEntry;->type:I

    if-ne v8, v10, :cond_0

    iget-object v8, v2, Landroid/content/IconCache$CacheEntry;->name:Ljava/lang/String;

    :goto_0
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".png"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 330
    sget-object v8, Landroid/content/res/ResourcesEx;->THEME_DIR:Ljava/lang/String;

    const-string v9, "icons"

    invoke-static {v8, v9}, Landroid/content/res/ZipFileCache;->getAndCheckCachedZipFile(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ZipFileCache;

    move-result-object v4

    .line 331
    .local v4, iconZipFileCache:Landroid/content/res/ZipFileCache;
    if-nez v4, :cond_1

    .line 332
    const/4 v8, 0x0

    .line 353
    :goto_1
    return-object v8

    .end local v4           #iconZipFileCache:Landroid/content/res/ZipFileCache;
    :cond_0
    move-object v8, v7

    .line 329
    goto :goto_0

    .line 334
    .restart local v4       #iconZipFileCache:Landroid/content/res/ZipFileCache;
    :cond_1
    invoke-virtual {v4, v6}, Landroid/content/res/ZipFileCache;->getBitmapEntry(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 335
    if-nez v0, :cond_2

    iget v8, v2, Landroid/content/IconCache$CacheEntry;->type:I

    if-ne v8, v10, :cond_2

    .line 336
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".png"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 337
    invoke-virtual {v4, v6}, Landroid/content/res/ZipFileCache;->getBitmapEntry(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 340
    :cond_2
    if-eqz v0, :cond_5

    .line 341
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    sget v9, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    if-ne v8, v9, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget v9, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    if-eq v8, v9, :cond_4

    .line 342
    :cond_3
    sget v8, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    sget v9, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    invoke-static {v0, v8, v9, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 344
    :cond_4
    if-eqz v1, :cond_6

    .line 345
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .end local v3           #dr:Landroid/graphics/drawable/Drawable;
    invoke-direct {v3, p0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 346
    .restart local v3       #dr:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_5

    .line 347
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    :goto_2
    move-object v8, v3

    .line 353
    goto :goto_1

    .line 350
    :cond_6
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .end local v3           #dr:Landroid/graphics/drawable/Drawable;
    invoke-direct {v3, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v3       #dr:Landroid/graphics/drawable/Drawable;
    goto :goto_2
.end method

.method protected handleActivityInfoConfigToNative(I)I
    .locals 1
    .parameter "configChanges"

    .prologue
    .line 768
    or-int/lit16 v0, p1, 0x4000

    return v0
.end method

.method protected handleAddIconBackground(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .parameter "id"
    .parameter "dr"

    .prologue
    const/4 v8, 0x1

    .line 275
    sget-boolean v6, Landroid/content/res/Resources;->sIsHwTheme:Z

    if-eqz v6, :cond_8

    if-eqz p1, :cond_8

    .line 276
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, p1}, Landroid/content/res/ResourcesEx;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 277
    .local v5, idAndPackageName:Ljava/lang/String;
    invoke-static {v5}, Landroid/content/IconCache;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 278
    invoke-static {p2}, Landroid/content/IconBitmapUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 279
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    move-object v4, p2

    .line 312
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v5           #idAndPackageName:Ljava/lang/String;
    .end local p2
    .local v4, dr:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v4

    .line 282
    .end local v4           #dr:Landroid/graphics/drawable/Drawable;
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    .restart local v5       #idAndPackageName:Ljava/lang/String;
    .restart local p2
    :cond_0
    invoke-direct {p0, v0, v5}, Landroid/content/res/ResourcesEx;->addIconBackgroud(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 283
    .local v3, bmpWithBackGround:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_5

    .line 284
    const/4 v2, 0x0

    .line 285
    .local v2, bmpWithBGScaled:Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sget v7, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    if-ne v6, v7, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget v7, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    if-eq v6, v7, :cond_2

    .line 287
    :cond_1
    sget v6, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    sget v7, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    invoke-static {v3, v6, v7, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 290
    :cond_2
    if-eqz v2, :cond_4

    .line 291
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    .end local p2
    invoke-direct {p2, p0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 292
    .restart local p2
    if-eqz v3, :cond_3

    .line 293
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    :goto_1
    move-object v4, p2

    .line 298
    .end local p2
    .restart local v4       #dr:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 296
    .end local v4           #dr:Landroid/graphics/drawable/Drawable;
    .restart local p2
    :cond_4
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    .end local p2
    invoke-direct {p2, p0, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local p2
    goto :goto_1

    .line 301
    .end local v2           #bmpWithBGScaled:Landroid/graphics/Bitmap;
    :cond_5
    sget v6, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    sget v7, Landroid/content/res/ResourcesEx;->sStandardBgSize:I

    invoke-static {v0, v6, v7, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 302
    .local v1, bmpScaled:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_6

    .line 303
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 305
    :cond_6
    if-eqz v1, :cond_7

    .line 306
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    .end local p2
    invoke-direct {p2, p0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local p2
    :cond_7
    move-object v4, p2

    .line 308
    .end local p2
    .restart local v4       #dr:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #bmpScaled:Landroid/graphics/Bitmap;
    .end local v3           #bmpWithBackGround:Landroid/graphics/Bitmap;
    .end local v4           #dr:Landroid/graphics/drawable/Drawable;
    .end local v5           #idAndPackageName:Ljava/lang/String;
    .restart local p2
    :cond_8
    move-object v4, p2

    .line 312
    .end local p2
    .restart local v4       #dr:Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method protected handleClearCache(I)V
    .locals 4
    .parameter "configChanges"

    .prologue
    const/4 v3, 0x0

    .line 735
    sget-object v2, Landroid/content/res/ResourcesEx;->mCacheColorInfoList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 736
    sget-object v2, Landroid/content/res/ResourcesEx;->mPreloadedThemeColorList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 737
    sget-object v2, Landroid/content/res/ResourcesEx;->mNonThemedPackage:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 738
    sget-object v2, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 739
    sget-object v2, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 740
    .local v1, listSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 741
    sget-object v2, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 740
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 743
    :cond_0
    sget-object v2, Landroid/content/res/ResourcesEx;->sBgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 748
    .end local v0           #i:I
    .end local v1           #listSize:I
    :cond_1
    sget-object v2, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    sget-object v2, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 749
    sget-object v2, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 750
    sput-object v3, Landroid/content/res/ResourcesEx;->sBmpBorder:Landroid/graphics/Bitmap;

    .line 752
    :cond_2
    sget-object v2, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    sget-object v2, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 753
    sget-object v2, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 754
    sput-object v3, Landroid/content/res/ResourcesEx;->sBmpMask:Landroid/graphics/Bitmap;

    .line 756
    :cond_3
    sget-object v2, Landroid/content/res/ResourcesEx;->sBmpSysAppDefault:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    sget-object v2, Landroid/content/res/ResourcesEx;->sBmpSysAppDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 757
    sget-object v2, Landroid/content/res/ResourcesEx;->sBmpSysAppDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 758
    sput-object v3, Landroid/content/res/ResourcesEx;->sBmpSysAppDefault:Landroid/graphics/Bitmap;

    .line 760
    :cond_4
    invoke-static {}, Landroid/content/res/ZipFileCache;->clear()V

    .line 761
    invoke-static {}, Landroid/content/res/ResourcesEx;->initStatics()V

    .line 762
    iget-object v2, p0, Landroid/content/res/ResourcesEx;->mDrawableCacheEx:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_5

    .line 763
    iget-object v2, p0, Landroid/content/res/ResourcesEx;->mDrawableCacheEx:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v2, p1}, Landroid/content/res/ResourcesEx;->clearDrawableCache(Landroid/util/LongSparseArray;I)V

    .line 765
    :cond_5
    return-void
.end method

.method loadColorStateList(Landroid/util/TypedValue;I)Landroid/content/res/ColorStateList;
    .locals 3
    .parameter "value"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 466
    const/4 v0, 0x0

    .line 467
    .local v0, colorVaue:I
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/content/res/ResourcesEx;->isThemeColor:Z

    .line 468
    const/4 v1, 0x0

    .line 469
    .local v1, csl:Landroid/content/res/ColorStateList;
    sget-boolean v2, Landroid/content/res/Resources;->sIsHwTheme:Z

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    .line 470
    invoke-virtual {p0, p1, p2}, Landroid/content/res/ResourcesEx;->getThemeColor(Landroid/util/TypedValue;I)I

    move-result v0

    .line 471
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 473
    :cond_0
    iget-boolean v2, p0, Landroid/content/res/ResourcesEx;->isThemeColor:Z

    if-nez v2, :cond_1

    .line 474
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->loadColorStateList(Landroid/util/TypedValue;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 476
    :cond_1
    return-object v1
.end method

.method loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .locals 11
    .parameter "value"
    .parameter "id"

    .prologue
    .line 358
    iget v7, p1, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v7, v7

    const/16 v9, 0x20

    shl-long/2addr v7, v9

    iget v9, p1, Landroid/util/TypedValue;->data:I

    int-to-long v9, v9

    or-long v5, v7, v9

    .line 359
    .local v5, key:J
    const/4 v0, 0x0

    .line 360
    .local v0, colorVaue:I
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/content/res/ResourcesEx;->isThemeColor:Z

    .line 361
    const/4 v1, 0x0

    .line 362
    .local v1, dr:Landroid/graphics/drawable/Drawable;
    iget v7, p1, Landroid/util/TypedValue;->type:I

    const/16 v8, 0x1c

    if-lt v7, v8, :cond_1

    iget v7, p1, Landroid/util/TypedValue;->type:I

    const/16 v8, 0x1f

    if-gt v7, v8, :cond_1

    .line 364
    if-eqz p2, :cond_0

    sget-boolean v7, Landroid/content/res/Resources;->sIsHwTheme:Z

    if-eqz v7, :cond_0

    .line 365
    invoke-virtual {p0, p1, p2}, Landroid/content/res/ResourcesEx;->getThemeColor(Landroid/util/TypedValue;I)I

    move-result v0

    .line 366
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .end local v1           #dr:Landroid/graphics/drawable/Drawable;
    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 367
    .restart local v1       #dr:Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_2

    .line 368
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 373
    :cond_0
    iget-boolean v7, p0, Landroid/content/res/ResourcesEx;->isThemeColor:Z

    if-nez v7, :cond_1

    .line 374
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 377
    :cond_1
    iget-object v7, p0, Landroid/content/res/ResourcesEx;->mDrawableCacheEx:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v7, v5, v6}, Landroid/content/res/ResourcesEx;->getCachedDrawable(Landroid/util/LongSparseArray;J)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 378
    if-eqz v1, :cond_3

    move-object v2, v1

    .line 428
    :goto_0
    return-object v2

    :cond_2
    move-object v2, v1

    .line 370
    goto :goto_0

    .line 383
    :cond_3
    if-eqz p2, :cond_8

    sget-boolean v7, Landroid/content/res/Resources;->sIsHwTheme:Z

    if-eqz v7, :cond_8

    .line 384
    invoke-virtual {p0, p2}, Landroid/content/res/ResourcesEx;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v3

    .line 385
    .local v3, entryName:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, p2}, Landroid/content/res/ResourcesEx;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 390
    .local v4, idAndPackageName:Ljava/lang/String;
    invoke-direct {p0, v3}, Landroid/content/res/ResourcesEx;->checkSpecialIcons(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 391
    if-eqz v1, :cond_4

    .line 392
    iget-object v7, p0, Landroid/content/res/ResourcesEx;->mDrawableCacheEx:Landroid/util/LongSparseArray;

    new-instance v8, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v7, v5, v6, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    move-object v2, v1

    .line 393
    goto :goto_0

    .line 396
    :cond_4
    invoke-static {v4}, Landroid/content/IconCache;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 400
    invoke-virtual {p0, p2}, Landroid/content/res/ResourcesEx;->getThemeIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 401
    .local v2, drIcon:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_5

    .line 402
    iget-object v7, p0, Landroid/content/res/ResourcesEx;->mDrawableCacheEx:Landroid/util/LongSparseArray;

    new-instance v8, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v7, v5, v6, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 407
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .end local v2           #drIcon:Landroid/graphics/drawable/Drawable;
    .end local v3           #entryName:Ljava/lang/String;
    .end local v4           #idAndPackageName:Ljava/lang/String;
    :goto_1
    move-object v2, v1

    .line 428
    goto :goto_0

    .line 414
    .restart local v3       #entryName:Ljava/lang/String;
    .restart local v4       #idAndPackageName:Ljava/lang/String;
    :cond_6
    invoke-virtual {p0, p1, p2}, Landroid/content/res/ResourcesEx;->getThemeDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 415
    if-eqz v1, :cond_7

    .line 416
    iget-object v7, p0, Landroid/content/res/ResourcesEx;->mDrawableCacheEx:Landroid/util/LongSparseArray;

    new-instance v8, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v7, v5, v6, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    move-object v2, v1

    .line 417
    goto :goto_0

    .line 419
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    .line 426
    .end local v3           #entryName:Ljava/lang/String;
    .end local v4           #idAndPackageName:Ljava/lang/String;
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1
.end method
