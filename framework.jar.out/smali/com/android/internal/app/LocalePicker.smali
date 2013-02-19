.class public Lcom/android/internal/app/LocalePicker;
.super Landroid/app/ListFragment;
.source "LocalePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/LocalePicker$LocaleInfo;,
        Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;
    }
.end annotation


# static fields
.field private static final AUTOMATIC:Ljava/lang/String; = "automatic"

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "LocalePicker"

.field private static isShowLanguageOnly:Z

.field private static mEnableSimLang:Z


# instance fields
.field mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    const-string/jumbo v0, "ro.config.simlang"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/app/LocalePicker;->mEnableSimLang:Z

    .line 57
    sput-boolean v1, Lcom/android/internal/app/LocalePicker;->isShowLanguageOnly:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 66
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/android/internal/app/LocalePicker;->isShowLanguageOnly:Z

    return v0
.end method

.method private static arrayContains([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "array"
    .parameter "value"

    .prologue
    .line 318
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 319
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 321
    :goto_1
    return v1

    .line 318
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 321
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static checkCustLanguages([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "white_languages"
    .parameter "black_languages"
    .parameter "s"

    .prologue
    .line 338
    if-eqz p0, :cond_0

    invoke-static {p0, p2}, Lcom/android/internal/app/LocalePicker;->arrayContains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    invoke-static {p1, p2}, Lcom/android/internal/app/LocalePicker;->arrayContains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 339
    :cond_1
    const/4 v0, 0x1

    .line 341
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static constructAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    const v0, 0x1090081

    const v1, 0x1020176

    invoke-static {p0, v0, v1}, Lcom/android/internal/app/LocalePicker;->constructAdapter(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static constructAdapter(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;
    .locals 31
    .parameter "context"
    .parameter "layoutId"
    .parameter "fieldId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    .line 113
    .local v25, resources:Landroid/content/res/Resources;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v22

    .line 114
    .local v22, locales:[Ljava/lang/String;
    const v3, 0x1070007

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v27

    .line 115
    .local v27, specialLocaleCodes:[Ljava/lang/String;
    const v3, 0x1070008

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v28

    .line 116
    .local v28, specialLocaleNames:[Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 117
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    .line 118
    .local v23, origSize:I
    move/from16 v0, v23

    new-array v0, v0, [Lcom/android/internal/app/LocalePicker$LocaleInfo;

    move-object/from16 v24, v0

    .line 119
    .local v24, preprocess:[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    const/16 v16, 0x0

    .line 122
    .local v16, finalSize:I
    const-string/jumbo v3, "true"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "hw_show_languages_only"

    invoke-static {v4, v5}, Landroid/provider/SettingsEx$Systemex;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sput-boolean v3, Lcom/android/internal/app/LocalePicker;->isShowLanguageOnly:Z

    .line 126
    invoke-static/range {p0 .. p0}, Lcom/android/internal/app/LocalePicker;->getWhiteLanguage(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v30

    .line 127
    .local v30, white_languages:[Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/android/internal/app/LocalePicker;->getBlackLanguage(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v13

    .line 128
    .local v13, black_languages:[Ljava/lang/String;
    const/16 v18, 0x0

    .local v18, i:I
    move/from16 v17, v16

    .end local v16           #finalSize:I
    .local v17, finalSize:I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_4

    .line 129
    aget-object v26, v22, v18

    .line 130
    .local v26, s:Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v21

    .line 131
    .local v21, len:I
    const/4 v3, 0x5

    move/from16 v0, v21

    if-ne v0, v3, :cond_8

    .line 132
    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-static {v0, v13, v1}, Lcom/android/internal/app/LocalePicker;->checkCustLanguages([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move/from16 v16, v17

    .line 128
    .end local v17           #finalSize:I
    .restart local v16       #finalSize:I
    :goto_1
    add-int/lit8 v18, v18, 0x1

    move/from16 v17, v16

    .end local v16           #finalSize:I
    .restart local v17       #finalSize:I
    goto :goto_0

    .line 136
    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x2

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 137
    .local v20, language:Ljava/lang/String;
    const/4 v3, 0x3

    const/4 v4, 0x5

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 138
    .local v14, country:Ljava/lang/String;
    new-instance v19, Ljava/util/Locale;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v14}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .local v19, l:Ljava/util/Locale;
    if-nez v17, :cond_1

    .line 144
    add-int/lit8 v16, v17, 0x1

    .end local v17           #finalSize:I
    .restart local v16       #finalSize:I
    new-instance v3, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    move-object/from16 v0, v19

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-direct {v3, v4, v0}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v3, v24, v17

    goto :goto_1

    .line 151
    .end local v16           #finalSize:I
    .restart local v17       #finalSize:I
    :cond_1
    add-int/lit8 v3, v17, -0x1

    aget-object v3, v24, v3

    iget-object v3, v3, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 159
    add-int/lit8 v3, v17, -0x1

    aget-object v3, v24, v3

    add-int/lit8 v4, v17, -0x1

    aget-object v4, v24, v4

    iget-object v4, v4, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v4, v0, v1}, Lcom/android/internal/app/LocalePicker;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/app/LocalePicker$LocaleInfo;->label:Ljava/lang/String;

    .line 166
    add-int/lit8 v16, v17, 0x1

    .end local v17           #finalSize:I
    .restart local v16       #finalSize:I
    new-instance v3, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Lcom/android/internal/app/LocalePicker;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-direct {v3, v4, v0}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v3, v24, v17

    goto :goto_1

    .line 172
    .end local v16           #finalSize:I
    .restart local v17       #finalSize:I
    :cond_2
    const-string/jumbo v3, "zz_ZZ"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 173
    const-string v15, "Pseudo..."

    .line 180
    .local v15, displayName:Ljava/lang/String;
    :goto_2
    add-int/lit8 v16, v17, 0x1

    .end local v17           #finalSize:I
    .restart local v16       #finalSize:I
    new-instance v3, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    move-object/from16 v0, v19

    invoke-direct {v3, v15, v0}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v3, v24, v17

    goto/16 :goto_1

    .line 175
    .end local v15           #displayName:Ljava/lang/String;
    .end local v16           #finalSize:I
    .restart local v17       #finalSize:I
    :cond_3
    move-object/from16 v0, v19

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .restart local v15       #displayName:Ljava/lang/String;
    goto :goto_2

    .line 187
    .end local v14           #country:Ljava/lang/String;
    .end local v15           #displayName:Ljava/lang/String;
    .end local v19           #l:Ljava/util/Locale;
    .end local v20           #language:Ljava/lang/String;
    .end local v21           #len:I
    .end local v26           #s:Ljava/lang/String;
    :cond_4
    move/from16 v0, v17

    new-array v7, v0, [Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 189
    .local v7, localeInfos:[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    const/16 v18, 0x0

    :goto_3
    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_5

    .line 190
    aget-object v3, v24, v18

    aput-object v3, v7, v18

    .line 189
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 192
    :cond_5
    invoke-static {v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 194
    sget-boolean v3, Lcom/android/internal/app/LocalePicker;->mEnableSimLang:Z

    if-eqz v3, :cond_7

    .line 195
    new-instance v11, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    const v3, 0x202007b

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/Locale;

    const-string v5, "automatic"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v11, v3, v4}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 196
    .local v11, aLocaleInfo:Lcom/android/internal/app/LocalePicker$LocaleInfo;
    const/4 v12, 0x0

    .line 197
    .local v12, aLocaleInfoTemp:Lcom/android/internal/app/LocalePicker$LocaleInfo;
    add-int/lit8 v3, v17, 0x1

    new-array v0, v3, [Lcom/android/internal/app/LocalePicker$LocaleInfo;

    move-object/from16 v29, v0

    .line 198
    .local v29, updateLocaleInfos:[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    const/4 v3, 0x0

    aput-object v11, v29, v3

    .line 199
    const/16 v18, 0x0

    :goto_4
    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_6

    .line 200
    add-int/lit8 v3, v18, 0x1

    aget-object v4, v7, v18

    aput-object v4, v29, v3

    .line 199
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 202
    :cond_6
    move-object/from16 v7, v29

    .line 205
    .end local v11           #aLocaleInfo:Lcom/android/internal/app/LocalePicker$LocaleInfo;
    .end local v12           #aLocaleInfoTemp:Lcom/android/internal/app/LocalePicker$LocaleInfo;
    .end local v29           #updateLocaleInfos:[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    :cond_7
    const-string v3, "layout_inflater"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 207
    .local v8, inflater:Landroid/view/LayoutInflater;
    new-instance v3, Lcom/android/internal/app/LocalePicker$1;

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v9, p1

    move/from16 v10, p2

    invoke-direct/range {v3 .. v10}, Lcom/android/internal/app/LocalePicker$1;-><init>(Landroid/content/Context;II[Lcom/android/internal/app/LocalePicker$LocaleInfo;Landroid/view/LayoutInflater;II)V

    return-object v3

    .end local v7           #localeInfos:[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    .end local v8           #inflater:Landroid/view/LayoutInflater;
    .restart local v21       #len:I
    .restart local v26       #s:Ljava/lang/String;
    :cond_8
    move/from16 v16, v17

    .end local v17           #finalSize:I
    .restart local v16       #finalSize:I
    goto/16 :goto_1
.end method

.method private static getBlackLanguage(Landroid/content/Context;)[Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    .line 324
    const/4 v0, 0x0

    .line 325
    .local v0, black_languages:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 328
    .local v1, black_strings:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "black_languages"

    invoke-static {v3, v4}, Landroid/provider/SettingsEx$Systemex;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 332
    :goto_0
    if-eqz v1, :cond_0

    .line 333
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 335
    :cond_0
    return-object v0

    .line 329
    :catch_0
    move-exception v2

    .line 330
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "LocalePicker"

    const-string v4, "Could not load default locales"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "l"
    .parameter "specialLocaleCodes"
    .parameter "specialLocaleNames"

    .prologue
    .line 239
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, code:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 242
    aget-object v2, p1, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    aget-object v2, p2, v1

    .line 247
    :goto_1
    return-object v2

    .line 241
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 247
    :cond_1
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private static getWhiteLanguage(Landroid/content/Context;)[Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    .line 303
    const/4 v1, 0x0

    .line 304
    .local v1, white_languages:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 307
    .local v2, white_strings:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "white_languages"

    invoke-static {v3, v4}, Landroid/provider/SettingsEx$Systemex;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 312
    :goto_0
    if-eqz v2, :cond_0

    .line 313
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 315
    :cond_0
    return-object v1

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "LocalePicker"

    const-string v4, "Could not load default locales"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 230
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 234
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static updateLocale(Ljava/util/Locale;)V
    .locals 3
    .parameter "locale"

    .prologue
    .line 287
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 288
    .local v0, am:Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 292
    .local v1, config:Landroid/content/res/Configuration;
    invoke-virtual {v1, p0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 294
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 296
    const-string v2, "com.android.providers.settings"

    invoke-static {v2}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v1           #config:Landroid/content/res/Configuration;
    :goto_0
    return-void

    .line 297
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 252
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 253
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/LocalePicker;->constructAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 254
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    invoke-virtual {p0, v0}, Lcom/android/internal/app/LocalePicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 255
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 275
    iget-object v1, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    if-eqz v1, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    iget-object v0, v1, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    .line 277
    .local v0, locale:Ljava/util/Locale;
    iget-object v1, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    invoke-interface {v1, v0}, Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;->onLocaleSelected(Ljava/util/Locale;)V

    .line 279
    .end local v0           #locale:Ljava/util/Locale;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 263
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 264
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 265
    return-void
.end method

.method public setLocaleSelectionListener(Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    .line 259
    return-void
.end method
