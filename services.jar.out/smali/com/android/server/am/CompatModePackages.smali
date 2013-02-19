.class public Lcom/android/server/am/CompatModePackages;
.super Ljava/lang/Object;
.source "CompatModePackages.java"


# static fields
.field public static final COMPAT_FLAG_DISABLED_DEFAULT:I = 0x8

.field public static final COMPAT_FLAG_DONT_ASK:I = 0x1

.field public static final COMPAT_FLAG_ENABLED:I = 0x2

.field public static final COMPAT_FLAG_ENABLED_DEFAULT:I = 0x4

.field private static final MSG_WRITE:I = 0x12c

.field private static mCompatApps:[Ljava/lang/String;

.field private static mCompatGames:[Ljava/lang/String;


# instance fields
.field private final DEBUG_CONFIGURATION:Z

.field private final TAG:Ljava/lang/String;

.field private final mFile:Landroid/util/AtomicFile;

.field private final mHandler:Landroid/os/Handler;

.field private final mPackages:Ljava/util/HashMap;
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

.field private final mPackagesCompatModeHash:Ljava/util/HashMap;
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

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 54
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.bfs.ninjump"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "org.cocos2dx.FishingJoy2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.disney.brave_google"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.eamobile.nfshp_row_wf"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.ea.games.nfs13_na"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.gameloft.android.GAND.GloftM3HP"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.gameloft.android.GAND.GloftD3HP"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.gameloft.android.ANMP.GloftN3HM"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.galapagossoft.trialx2_gl2"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.halfbrick.fruitninjafree"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.halfbrick.fruitninjahdB"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.imangi.templerun"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.imangi.templerun2"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.kiloo.subwaysurf"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.disney.TempleRunOz.goo"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.disney.troz"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/am/CompatModePackages;->mCompatGames:[Ljava/lang/String;

    .line 74
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/android/server/am/CompatModePackages;->mCompatApps:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/io/File;)V
    .locals 12
    .parameter "service"
    .parameter "systemDir"

    .prologue
    const/4 v11, 0x2

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v8, "ActivityManager"

    iput-object v8, p0, Lcom/android/server/am/CompatModePackages;->TAG:Ljava/lang/String;

    .line 32
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/am/CompatModePackages;->DEBUG_CONFIGURATION:Z

    .line 48
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    .line 51
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/android/server/am/CompatModePackages;->mPackagesCompatModeHash:Ljava/util/HashMap;

    .line 80
    new-instance v8, Lcom/android/server/am/CompatModePackages$1;

    invoke-direct {v8, p0}, Lcom/android/server/am/CompatModePackages$1;-><init>(Lcom/android/server/am/CompatModePackages;)V

    iput-object v8, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Landroid/os/Handler;

    .line 94
    iput-object p1, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 95
    new-instance v8, Landroid/util/AtomicFile;

    new-instance v9, Ljava/io/File;

    const-string v10, "packages-compat.xml"

    invoke-direct {v9, p2, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v8, p0, Lcom/android/server/am/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    .line 97
    const/4 v2, 0x0

    .line 99
    .local v2, fis:Ljava/io/FileInputStream;
    :try_start_0
    iget-object v8, p0, Lcom/android/server/am/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v8}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    .line 100
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 101
    .local v5, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v8, 0x0

    invoke-interface {v5, v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 102
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 103
    .local v1, eventType:I
    :goto_0
    if-eq v1, v11, :cond_0

    .line 104
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 106
    :cond_0
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 107
    .local v7, tagName:Ljava/lang/String;
    const-string v8, "compat-packages"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 108
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 110
    :cond_1
    if-ne v1, v11, :cond_3

    .line 111
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 112
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-ne v8, v11, :cond_3

    .line 113
    const-string v8, "pkg"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 114
    const/4 v8, 0x0

    const-string v9, "name"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 115
    .local v6, pkg:Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 116
    const/4 v8, 0x0

    const-string v9, "mode"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 117
    .local v3, mode:Ljava/lang/String;
    const/4 v4, 0x0

    .line 118
    .local v4, modeInt:I
    if-eqz v3, :cond_2

    .line 120
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 124
    :cond_2
    :goto_1
    :try_start_2
    iget-object v8, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .end local v3           #mode:Ljava/lang/String;
    .end local v4           #modeInt:I
    .end local v6           #pkg:Ljava/lang/String;
    :cond_3
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    .line 130
    const/4 v8, 0x1

    if-ne v1, v8, :cond_1

    .line 137
    :cond_4
    if-eqz v2, :cond_5

    .line 139
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 144
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/android/server/am/CompatModePackages;->addCompatList()V

    .line 147
    .end local v1           #eventType:I
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v7           #tagName:Ljava/lang/String;
    :goto_3
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_4
    const-string v8, "ActivityManager"

    const-string v9, "Error reading compat-packages"

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 137
    if-eqz v2, :cond_6

    .line 139
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 144
    :cond_6
    :goto_4
    invoke-direct {p0}, Lcom/android/server/am/CompatModePackages;->addCompatList()V

    goto :goto_3

    .line 134
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 135
    .local v0, e:Ljava/io/IOException;
    if-eqz v2, :cond_7

    :try_start_6
    const-string v8, "ActivityManager"

    const-string v9, "Error reading compat-packages"

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 137
    :cond_7
    if-eqz v2, :cond_8

    .line 139
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 144
    :cond_8
    :goto_5
    invoke-direct {p0}, Lcom/android/server/am/CompatModePackages;->addCompatList()V

    goto :goto_3

    .line 137
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    if-eqz v2, :cond_9

    .line 139
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 144
    :cond_9
    :goto_6
    invoke-direct {p0}, Lcom/android/server/am/CompatModePackages;->addCompatList()V

    throw v8

    .line 121
    .restart local v1       #eventType:I
    .restart local v3       #mode:Ljava/lang/String;
    .restart local v4       #modeInt:I
    .restart local v5       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6       #pkg:Ljava/lang/String;
    .restart local v7       #tagName:Ljava/lang/String;
    :catch_2
    move-exception v8

    goto :goto_1

    .line 140
    .end local v3           #mode:Ljava/lang/String;
    .end local v4           #modeInt:I
    .end local v6           #pkg:Ljava/lang/String;
    :catch_3
    move-exception v8

    goto :goto_2

    .end local v1           #eventType:I
    .end local v5           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v7           #tagName:Ljava/lang/String;
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_4
    move-exception v8

    goto :goto_4

    .local v0, e:Ljava/io/IOException;
    :catch_5
    move-exception v8

    goto :goto_5

    .end local v0           #e:Ljava/io/IOException;
    :catch_6
    move-exception v9

    goto :goto_6
.end method

.method private addCompatForCheck(Ljava/lang/String;Z)V
    .locals 10
    .parameter "PackageName"
    .parameter "NeedCheck"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 164
    const/4 v0, 0x7

    .line 165
    .local v0, COMPAT_SCAL_MODE:I
    invoke-direct {p0, p1}, Lcom/android/server/am/CompatModePackages;->getDisabledPackageFlags(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_1

    move v1, v7

    .line 166
    .local v1, CompatDefaultDisable:Z
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/am/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_2

    move v2, v7

    .line 168
    .local v2, CompatModeHasChanged:Z
    :goto_1
    if-nez v2, :cond_0

    if-eqz v1, :cond_3

    .line 192
    :cond_0
    :goto_2
    return-void

    .end local v1           #CompatDefaultDisable:Z
    .end local v2           #CompatModeHasChanged:Z
    :cond_1
    move v1, v8

    .line 165
    goto :goto_0

    .restart local v1       #CompatDefaultDisable:Z
    :cond_2
    move v2, v8

    .line 166
    goto :goto_1

    .line 172
    .restart local v2       #CompatModeHasChanged:Z
    :cond_3
    if-nez p2, :cond_4

    .line 173
    iget-object v7, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, p1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 177
    :cond_4
    sget-object v4, Lcom/android/server/am/CompatModePackages;->mCompatGames:[Ljava/lang/String;

    .local v4, arr$:[Ljava/lang/String;
    array-length v6, v4

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_3
    if-ge v5, v6, :cond_6

    aget-object v3, v4, v5

    .line 178
    .local v3, DefaultStr:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 179
    iget-object v7, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, p1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 177
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 184
    .end local v3           #DefaultStr:Ljava/lang/String;
    :cond_6
    sget-object v4, Lcom/android/server/am/CompatModePackages;->mCompatApps:[Ljava/lang/String;

    array-length v6, v4

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v6, :cond_8

    aget-object v3, v4, v5

    .line 185
    .restart local v3       #DefaultStr:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 186
    iget-object v7, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, p1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 184
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 191
    .end local v3           #DefaultStr:Ljava/lang/String;
    :cond_8
    iget-object v7, p0, Lcom/android/server/am/CompatModePackages;->mPackagesCompatModeHash:Ljava/util/HashMap;

    const/16 v8, 0x8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, p1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method private addCompatList()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 151
    const-string v5, "ro.config.compatibility_enable"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 152
    .local v2, enableCompFlag:I
    const/4 v5, 0x1

    if-eq v2, v5, :cond_1

    .line 161
    :cond_0
    return-void

    .line 154
    :cond_1
    sget-object v1, Lcom/android/server/am/CompatModePackages;->mCompatGames:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, v1, v3

    .line 155
    .local v0, DefaultStr:Ljava/lang/String;
    invoke-direct {p0, v0, v6}, Lcom/android/server/am/CompatModePackages;->addCompatForCheck(Ljava/lang/String;Z)V

    .line 154
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 158
    .end local v0           #DefaultStr:Ljava/lang/String;
    :cond_2
    sget-object v1, Lcom/android/server/am/CompatModePackages;->mCompatApps:[Ljava/lang/String;

    array-length v4, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 159
    .restart local v0       #DefaultStr:Ljava/lang/String;
    invoke-direct {p0, v0, v6}, Lcom/android/server/am/CompatModePackages;->addCompatForCheck(Ljava/lang/String;Z)V

    .line 158
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private getDisabledPackageFlags(Ljava/lang/String;)I
    .locals 2
    .parameter "packageName"

    .prologue
    .line 196
    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mPackagesCompatModeHash:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 197
    .local v0, flags:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPackageFlags(Ljava/lang/String;)I
    .locals 2
    .parameter "packageName"

    .prologue
    .line 206
    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 207
    .local v0, flags:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setPackageScreenCompatModeLocked(Landroid/content/pm/ApplicationInfo;I)V
    .locals 13
    .parameter "ai"
    .parameter "mode"

    .prologue
    .line 344
    iget-object v8, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 346
    .local v8, packageName:Ljava/lang/String;
    invoke-direct {p0, v8}, Lcom/android/server/am/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v3

    .line 349
    .local v3, curFlags:I
    packed-switch p2, :pswitch_data_0

    .line 360
    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown screen compat mode req #"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "; ignoring"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 351
    :pswitch_0
    const/4 v4, 0x0

    .line 364
    .local v4, enable:Z
    :goto_1
    move v7, v3

    .line 365
    .local v7, newFlags:I
    if-eqz v4, :cond_5

    .line 366
    or-int/lit8 v7, v7, 0x2

    .line 371
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/server/am/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    .line 372
    .local v2, ci:Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v2}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 373
    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ignoring compat mode change of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "; compatibility never needed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const/4 v7, 0x0

    .line 377
    :cond_1
    invoke-virtual {v2}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 378
    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ignoring compat mode change of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "; compatibility always needed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const/4 v7, 0x0

    .line 383
    :cond_2
    if-eq v7, v3, :cond_0

    .line 384
    if-eqz v7, :cond_6

    .line 385
    iget-object v10, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    :goto_3
    invoke-virtual {p0, p1}, Lcom/android/server/am/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    .line 393
    iget-object v10, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Landroid/os/Handler;

    const/16 v11, 0x12c

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 394
    iget-object v10, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Landroid/os/Handler;

    const/16 v11, 0x12c

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 395
    .local v6, msg:Landroid/os/Message;
    iget-object v10, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Landroid/os/Handler;

    const-wide/16 v11, 0x2710

    invoke-virtual {v10, v6, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 397
    iget-object v10, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    .line 401
    .local v9, starting:Lcom/android/server/am/ActivityRecord;
    iget-object v10, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    iget-object v10, v10, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v5, v10, -0x1

    .local v5, i:I
    :goto_4
    if-ltz v5, :cond_7

    .line 402
    iget-object v10, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    iget-object v10, v10, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 403
    .local v0, a:Lcom/android/server/am/ActivityRecord;
    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 404
    const/4 v10, 0x1

    iput-boolean v10, v0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 405
    if-eqz v9, :cond_3

    if-ne v0, v9, :cond_3

    iget-boolean v10, v0, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v10, :cond_3

    .line 406
    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/16 v11, 0x100

    invoke-virtual {v0, v10, v11}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 401
    :cond_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 354
    .end local v0           #a:Lcom/android/server/am/ActivityRecord;
    .end local v2           #ci:Landroid/content/res/CompatibilityInfo;
    .end local v4           #enable:Z
    .end local v5           #i:I
    .end local v6           #msg:Landroid/os/Message;
    .end local v7           #newFlags:I
    .end local v9           #starting:Lcom/android/server/am/ActivityRecord;
    :pswitch_1
    const/4 v4, 0x1

    .line 355
    .restart local v4       #enable:Z
    goto/16 :goto_1

    .line 357
    .end local v4           #enable:Z
    :pswitch_2
    and-int/lit8 v10, v3, 0x2

    if-nez v10, :cond_4

    const/4 v4, 0x1

    .line 358
    .restart local v4       #enable:Z
    :goto_5
    goto/16 :goto_1

    .line 357
    .end local v4           #enable:Z
    :cond_4
    const/4 v4, 0x0

    goto :goto_5

    .line 368
    .restart local v4       #enable:Z
    .restart local v7       #newFlags:I
    :cond_5
    and-int/lit8 v7, v7, -0x3

    goto/16 :goto_2

    .line 387
    .restart local v2       #ci:Landroid/content/res/CompatibilityInfo;
    :cond_6
    iget-object v10, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v10, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 413
    .restart local v5       #i:I
    .restart local v6       #msg:Landroid/os/Message;
    .restart local v9       #starting:Lcom/android/server/am/ActivityRecord;
    :cond_7
    iget-object v10, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v5, v10, -0x1

    :goto_6
    if-ltz v5, :cond_a

    .line 414
    iget-object v10, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 415
    .local v1, app:Lcom/android/server/am/ProcessRecord;
    iget-object v10, v1, Lcom/android/server/am/ProcessRecord;->pkgList:Ljava/util/HashSet;

    invoke-virtual {v10, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 413
    :cond_8
    :goto_7
    add-int/lit8 v5, v5, -0x1

    goto :goto_6

    .line 419
    :cond_9
    :try_start_0
    iget-object v10, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v10, :cond_8

    .line 422
    iget-object v10, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v10, v8, v2}, Landroid/app/IApplicationThread;->updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    .line 424
    :catch_0
    move-exception v10

    goto :goto_7

    .line 428
    .end local v1           #app:Lcom/android/server/am/ProcessRecord;
    :cond_a
    if-eqz v9, :cond_0

    .line 429
    iget-object v10, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    const/4 v11, 0x0

    invoke-virtual {v10, v9, v11}, Lcom/android/server/am/ActivityStack;->ensureActivityConfigurationLocked(Lcom/android/server/am/ActivityRecord;I)Z

    .line 432
    iget-object v10, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    const/4 v11, 0x0

    invoke-virtual {v10, v9, v11}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    goto/16 :goto_0

    .line 349
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;
    .locals 7
    .parameter "ai"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 237
    const-string v4, "ro.config.compatibility_enable"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 238
    .local v1, enableCompFlag:I
    if-ne v1, v2, :cond_0

    .line 240
    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4, v2}, Lcom/android/server/am/CompatModePackages;->addCompatForCheck(Ljava/lang/String;Z)V

    .line 245
    :cond_0
    new-instance v0, Landroid/content/res/CompatibilityInfo;

    iget-object v4, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    iget-object v5, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v5, v5, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget-object v6, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/server/am/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v6

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_1

    :goto_0
    invoke-direct {v0, p1, v4, v5, v2}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZ)V

    .line 249
    .local v0, ci:Landroid/content/res/CompatibilityInfo;
    return-object v0

    .end local v0           #ci:Landroid/content/res/CompatibilityInfo;
    :cond_1
    move v2, v3

    .line 245
    goto :goto_0
.end method

.method public computeCompatModeLocked(Landroid/content/pm/ApplicationInfo;)I
    .locals 6
    .parameter "ai"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 253
    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/am/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    move v0, v2

    .line 254
    .local v0, enabled:Z
    :goto_0
    new-instance v1, Landroid/content/res/CompatibilityInfo;

    iget-object v4, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    iget-object v5, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v5, v5, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-direct {v1, p1, v4, v5, v0}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZ)V

    .line 257
    .local v1, info:Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 258
    const/4 v2, -0x2

    .line 263
    :cond_0
    :goto_1
    return v2

    .end local v0           #enabled:Z
    .end local v1           #info:Landroid/content/res/CompatibilityInfo;
    :cond_1
    move v0, v3

    .line 253
    goto :goto_0

    .line 260
    .restart local v0       #enabled:Z
    .restart local v1       #info:Landroid/content/res/CompatibilityInfo;
    :cond_2
    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 261
    const/4 v2, -0x1

    goto :goto_1

    .line 263
    :cond_3
    if-nez v0, :cond_0

    move v2, v3

    goto :goto_1
.end method

.method public getFrontActivityAskCompatModeLocked()Z
    .locals 3

    .prologue
    .line 268
    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 269
    .local v0, r:Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_0

    .line 270
    const/4 v1, 0x0

    .line 272
    :goto_0
    return v1

    :cond_0
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/am/CompatModePackages;->getPackageAskCompatModeLocked(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public getFrontActivityScreenCompatModeLocked()I
    .locals 3

    .prologue
    .line 302
    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 303
    .local v0, r:Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_0

    .line 304
    const/4 v1, -0x3

    .line 306
    :goto_0
    return v1

    :cond_0
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v1}, Lcom/android/server/am/CompatModePackages;->computeCompatModeLocked(Landroid/content/pm/ApplicationInfo;)I

    move-result v1

    goto :goto_0
.end method

.method public getPackageAskCompatModeLocked(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 276
    invoke-direct {p0, p1}, Lcom/android/server/am/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPackageScreenCompatModeLocked(Ljava/lang/String;)I
    .locals 4
    .parameter "packageName"

    .prologue
    .line 319
    const/4 v0, 0x0

    .line 321
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, p1, v2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 324
    :goto_0
    if-nez v0, :cond_0

    .line 325
    const/4 v1, -0x3

    .line 327
    :goto_1
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/CompatModePackages;->computeCompatModeLocked(Landroid/content/pm/ApplicationInfo;)I

    move-result v1

    goto :goto_1

    .line 322
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getPackages()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    return-object v0
.end method

.method public handlePackageAddedLocked(Ljava/lang/String;Z)V
    .locals 8
    .parameter "packageName"
    .parameter "updated"

    .prologue
    const/16 v7, 0x12c

    const/4 v2, 0x0

    .line 211
    const/4 v0, 0x0

    .line 213
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v4, p1, v5, v6}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 216
    :goto_0
    if-nez v0, :cond_1

    .line 233
    :cond_0
    :goto_1
    return-void

    .line 219
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/am/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    .line 220
    .local v1, ci:Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v2, 0x1

    .line 223
    .local v2, mayCompat:Z
    :cond_2
    if-eqz p2, :cond_0

    .line 226
    if-nez v2, :cond_0

    iget-object v4, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 227
    iget-object v4, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v4, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 229
    iget-object v4, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 230
    .local v3, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x2710

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 214
    .end local v1           #ci:Landroid/content/res/CompatibilityInfo;
    .end local v2           #mayCompat:Z
    .end local v3           #msg:Landroid/os/Message;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method saveCompatModes()V
    .locals 17

    .prologue
    .line 439
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v15

    .line 440
    :try_start_0
    new-instance v10, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-direct {v10, v14}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 441
    .local v10, pkgs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    const/4 v4, 0x0

    .line 446
    .local v4, fos:Ljava/io/FileOutputStream;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v14}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4

    .line 447
    new-instance v8, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v8}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 448
    .local v8, out:Lorg/xmlpull/v1/XmlSerializer;
    const-string v14, "utf-8"

    invoke-interface {v8, v4, v14}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 449
    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-interface {v8, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 450
    const-string v14, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v15, 0x1

    invoke-interface {v8, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 451
    const/4 v14, 0x0

    const-string v15, "compat-packages"

    invoke-interface {v8, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 453
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v11

    .line 454
    .local v11, pm:Landroid/content/pm/IPackageManager;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v12, v14, Landroid/content/res/Configuration;->screenLayout:I

    .line 455
    .local v12, screenLayout:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v13, v14, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 456
    .local v13, smallestScreenWidthDp:I
    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 457
    .local v6, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 458
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 459
    .local v3, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 460
    .local v9, pkg:Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    .line 461
    .local v7, mode:I
    if-eqz v7, :cond_0

    .line 464
    const/4 v1, 0x0

    .line 466
    .local v1, ai:Landroid/content/pm/ApplicationInfo;
    const/4 v14, 0x0

    const/4 v15, 0x0

    :try_start_2
    invoke-interface {v11, v9, v14, v15}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    .line 469
    :goto_1
    if-eqz v1, :cond_0

    .line 472
    :try_start_3
    new-instance v5, Landroid/content/res/CompatibilityInfo;

    const/4 v14, 0x0

    invoke-direct {v5, v1, v12, v13, v14}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZ)V

    .line 474
    .local v5, info:Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v5}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v14

    if-nez v14, :cond_0

    .line 477
    invoke-virtual {v5}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v14

    if-nez v14, :cond_0

    .line 480
    const/4 v14, 0x0

    const-string v15, "pkg"

    invoke-interface {v8, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 481
    const/4 v14, 0x0

    const-string v15, "name"

    invoke-interface {v8, v14, v15, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 482
    const/4 v14, 0x0

    const-string v15, "mode"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v8, v14, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 483
    const/4 v14, 0x0

    const-string v15, "pkg"

    invoke-interface {v8, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 490
    .end local v1           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v5           #info:Landroid/content/res/CompatibilityInfo;
    .end local v6           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v7           #mode:I
    .end local v8           #out:Lorg/xmlpull/v1/XmlSerializer;
    .end local v9           #pkg:Ljava/lang/String;
    .end local v11           #pm:Landroid/content/pm/IPackageManager;
    .end local v12           #screenLayout:I
    .end local v13           #smallestScreenWidthDp:I
    :catch_0
    move-exception v2

    .line 491
    .local v2, e1:Ljava/io/IOException;
    const-string v14, "ActivityManager"

    const-string v15, "Error writing compat packages"

    invoke-static {v14, v15, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 492
    if-eqz v4, :cond_1

    .line 493
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v14, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 496
    .end local v2           #e1:Ljava/io/IOException;
    :cond_1
    :goto_2
    return-void

    .line 441
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .end local v10           #pkgs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v14

    :try_start_4
    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v14

    .line 486
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    .restart local v6       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .restart local v8       #out:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v10       #pkgs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v11       #pm:Landroid/content/pm/IPackageManager;
    .restart local v12       #screenLayout:I
    .restart local v13       #smallestScreenWidthDp:I
    :cond_2
    const/4 v14, 0x0

    :try_start_5
    const-string v15, "compat-packages"

    invoke-interface {v8, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 487
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 489
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v14, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 467
    .restart local v1       #ai:Landroid/content/pm/ApplicationInfo;
    .restart local v3       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v7       #mode:I
    .restart local v9       #pkg:Ljava/lang/String;
    :catch_1
    move-exception v14

    goto :goto_1
.end method

.method public setFrontActivityAskCompatModeLocked(Z)V
    .locals 3
    .parameter "ask"

    .prologue
    .line 280
    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 281
    .local v0, r:Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 282
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/CompatModePackages;->setPackageAskCompatModeLocked(Ljava/lang/String;Z)V

    .line 284
    :cond_0
    return-void
.end method

.method public setFrontActivityScreenCompatModeLocked(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 310
    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMainStack:Lcom/android/server/am/ActivityStack;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 311
    .local v0, r:Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_0

    .line 312
    const-string v1, "ActivityManager"

    const-string v2, "setFrontActivityScreenCompatMode failed: no top activity"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :goto_0
    return-void

    .line 315
    :cond_0
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v1, p1}, Lcom/android/server/am/CompatModePackages;->setPackageScreenCompatModeLocked(Landroid/content/pm/ApplicationInfo;I)V

    goto :goto_0
.end method

.method public setPackageAskCompatModeLocked(Ljava/lang/String;Z)V
    .locals 6
    .parameter "packageName"
    .parameter "ask"

    .prologue
    const/16 v5, 0x12c

    .line 287
    invoke-direct {p0, p1}, Lcom/android/server/am/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v0

    .line 288
    .local v0, curFlags:I
    if-eqz p2, :cond_1

    and-int/lit8 v2, v0, -0x2

    .line 289
    .local v2, newFlags:I
    :goto_0
    if-eq v0, v2, :cond_0

    .line 290
    if-eqz v2, :cond_2

    .line 291
    iget-object v3, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    :goto_1
    iget-object v3, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 296
    iget-object v3, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 297
    .local v1, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x2710

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 299
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    return-void

    .line 288
    .end local v2           #newFlags:I
    :cond_1
    or-int/lit8 v2, v0, 0x1

    goto :goto_0

    .line 293
    .restart local v2       #newFlags:I
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public setPackageScreenCompatModeLocked(Ljava/lang/String;I)V
    .locals 4
    .parameter "packageName"
    .parameter "mode"

    .prologue
    .line 331
    const/4 v0, 0x0

    .line 333
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, p1, v2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 336
    :goto_0
    if-nez v0, :cond_0

    .line 337
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPackageScreenCompatMode failed: unknown package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :goto_1
    return-void

    .line 340
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/android/server/am/CompatModePackages;->setPackageScreenCompatModeLocked(Landroid/content/pm/ApplicationInfo;I)V

    goto :goto_1

    .line 334
    :catch_0
    move-exception v1

    goto :goto_0
.end method
