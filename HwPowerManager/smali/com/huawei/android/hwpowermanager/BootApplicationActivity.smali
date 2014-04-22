.class public Lcom/huawei/android/hwpowermanager/BootApplicationActivity;
.super Landroid/app/ListActivity;
.source "BootApplicationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/hwpowermanager/BootApplicationActivity$CompareNum;,
        Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;,
        Lcom/huawei/android/hwpowermanager/BootApplicationActivity$ViewHolder;,
        Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;
    }
.end annotation


# static fields
.field private static FILE_CUST_PACKAGENAME:Ljava/lang/String;

.field static mForbiddenAppsUri:Landroid/net/Uri;

.field private static sAllBootPkgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private static sOperationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBootAppAdapter:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;

.field private mInvalidMenu:Landroid/view/MenuItem;

.field private mIschecked:Z

.field private mSelectAllSwitch:Landroid/widget/Switch;

.field private mValidMenu:Landroid/view/MenuItem;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->sAllBootPkgList:Ljava/util/ArrayList;

    .line 65
    const-string v0, "/data/cust/xml/hw_powersaving_packname.xml"

    sput-object v0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->FILE_CUST_PACKAGENAME:Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x96

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->sOperationList:Ljava/util/ArrayList;

    .line 77
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mForbiddenAppsUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mBootAppAdapter:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mIschecked:Z

    .line 538
    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->sAllBootPkgList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/huawei/android/hwpowermanager/BootApplicationActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mIschecked:Z

    return v0
.end method

.method static synthetic access$102(Lcom/huawei/android/hwpowermanager/BootApplicationActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mIschecked:Z

    return p1
.end method

.method static synthetic access$200(Lcom/huawei/android/hwpowermanager/BootApplicationActivity;)Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mBootAppAdapter:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/huawei/android/hwpowermanager/BootApplicationActivity;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mSelectAllSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$400(Lcom/huawei/android/hwpowermanager/BootApplicationActivity;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mValidMenu:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$500(Lcom/huawei/android/hwpowermanager/BootApplicationActivity;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mInvalidMenu:Landroid/view/MenuItem;

    return-object v0
.end method

.method private ensureForbiddenItemContain(Ljava/util/Set;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 648
    .local p1, mForbiddenApps:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 649
    .local v4, mPm:Landroid/content/pm/PackageManager;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 650
    .local v3, mAllBootListPkgName:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v7, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->sAllBootPkgList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;

    .line 651
    .local v5, tempAllBoot:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;
    iget-object v7, v5, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mPkgName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 653
    .end local v5           #tempAllBoot:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 654
    .local v6, tempforbidden:Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 655
    new-instance v1, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;

    invoke-direct {v1}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;-><init>()V

    .line 656
    .local v1, forbiddenItem:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;
    iput-object v6, v1, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mPkgName:Ljava/lang/String;

    .line 658
    :try_start_0
    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v1, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 659
    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v1, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mLable:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 669
    const/4 v7, 0x1

    iput-boolean v7, v1, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mNewEnable:Z

    .line 670
    sget-object v7, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->sAllBootPkgList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 660
    :catch_0
    move-exception v0

    .line 665
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 673
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1           #forbiddenItem:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;
    .end local v6           #tempforbidden:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public static filterPackage(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 12
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 430
    .local p0, arraylist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;>;"
    const/4 v2, 0x0

    .line 431
    .local v2, fin:Ljava/io/FileInputStream;
    const/4 v8, 0x0

    .line 433
    .local v8, packname:Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v10, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->FILE_CUST_PACKAGENAME:Ljava/lang/String;

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 434
    .local v0, custPackageNameFile:Ljava/io/File;
    const/4 v9, 0x0

    .line 435
    .local v9, xrp:Lorg/xmlpull/v1/XmlPullParser;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 436
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    .end local v2           #fin:Ljava/io/FileInputStream;
    .local v3, fin:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 438
    const/4 v10, 0x0

    invoke-interface {v9, v3, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-object v2, v3

    .line 442
    .end local v3           #fin:Ljava/io/FileInputStream;
    .restart local v2       #fin:Ljava/io/FileInputStream;
    :goto_0
    :try_start_2
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_5

    .line 443
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    .line 444
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 445
    .local v6, name:Ljava/lang/String;
    const-string v10, "package"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 446
    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    .line 447
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 448
    .local v5, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;>;"
    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 449
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;

    .line 450
    .local v4, item:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;
    iget-object v7, v4, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mPkgName:Ljava/lang/String;

    .line 451
    .local v7, pName:Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 452
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 459
    .end local v0           #custPackageNameFile:Ljava/io/File;
    .end local v4           #item:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;
    .end local v5           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;>;"
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #pName:Ljava/lang/String;
    .end local v9           #xrp:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v1

    .line 460
    .local v1, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 462
    if-eqz v2, :cond_1

    .line 464
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 470
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    :goto_3
    return-void

    .line 440
    .restart local v0       #custPackageNameFile:Ljava/io/File;
    .restart local v9       #xrp:Lorg/xmlpull/v1/XmlPullParser;
    :cond_2
    :try_start_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f040001

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    goto :goto_0

    .line 457
    :cond_3
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 462
    .end local v0           #custPackageNameFile:Ljava/io/File;
    .end local v9           #xrp:Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v10

    :goto_4
    if-eqz v2, :cond_4

    .line 464
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 467
    :cond_4
    :goto_5
    throw v10

    .line 462
    .restart local v0       #custPackageNameFile:Ljava/io/File;
    .restart local v9       #xrp:Lorg/xmlpull/v1/XmlPullParser;
    :cond_5
    if-eqz v2, :cond_1

    .line 464
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    .line 465
    :catch_1
    move-exception v1

    .line 466
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 465
    .end local v0           #custPackageNameFile:Ljava/io/File;
    .end local v9           #xrp:Lorg/xmlpull/v1/XmlPullParser;
    .local v1, e:Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 466
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 465
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 466
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 462
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #fin:Ljava/io/FileInputStream;
    .restart local v0       #custPackageNameFile:Ljava/io/File;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    .restart local v9       #xrp:Lorg/xmlpull/v1/XmlPullParser;
    :catchall_1
    move-exception v10

    move-object v2, v3

    .end local v3           #fin:Ljava/io/FileInputStream;
    .restart local v2       #fin:Ljava/io/FileInputStream;
    goto :goto_4

    .line 459
    .end local v2           #fin:Ljava/io/FileInputStream;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3           #fin:Ljava/io/FileInputStream;
    .restart local v2       #fin:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private getAppsFromUri(Landroid/net/Uri;)Ljava/util/Set;
    .locals 9
    .parameter "uri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 677
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 679
    .local v6, apps:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 681
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 682
    if-eqz v7, :cond_1

    .line 683
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 684
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 685
    const-string v0, "package_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 688
    .local v8, mPkgNames:Ljava/lang/String;
    invoke-interface {v6, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 690
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 693
    .end local v8           #mPkgNames:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 695
    if-eqz v7, :cond_0

    .line 696
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 700
    :cond_0
    :goto_1
    return-object v6

    .line 695
    :cond_1
    if-eqz v7, :cond_0

    .line 696
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 695
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 696
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static initStarupForbiddenAppDB(Landroid/content/Context;)V
    .locals 28
    .parameter "context"

    .prologue
    .line 307
    const-string v25, "appDatabase"

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    .line 309
    .local v21, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 310
    .local v12, editor:Landroid/content/SharedPreferences$Editor;
    const-string v25, "savedForbidDatabase"

    const-string v26, "forbidNoSave"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 312
    .local v16, isSaved:Ljava/lang/String;
    const-string v25, "forbidSave"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 422
    :goto_0
    return-void

    .line 316
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    .line 317
    .local v20, pm:Landroid/content/pm/PackageManager;
    new-instance v25, Landroid/content/Intent;

    const-string v26, "android.intent.action.BOOT_COMPLETED"

    invoke-direct/range {v25 .. v26}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v26, 0x202

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 321
    .local v6, bootApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v25, Landroid/content/Intent;

    const-string v26, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct/range {v25 .. v26}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v26, 0x202

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    .line 325
    .local v9, connectApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 327
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    .line 328
    .local v10, count:I
    const-string v25, "BootAppListActivity"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "all count="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const/4 v13, 0x0

    .line 332
    .local v13, found:Z
    sget-object v26, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->sAllBootPkgList:Ljava/util/ArrayList;

    monitor-enter v26

    .line 333
    :try_start_0
    sget-object v25, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->sAllBootPkgList:Ljava/util/ArrayList;

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 334
    monitor-exit v26
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    if-ge v14, v10, :cond_6

    .line 337
    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/ResolveInfo;

    .line 338
    .local v17, item:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v25, v0

    if-eqz v25, :cond_2

    move-object/from16 v0, v17

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 340
    .local v8, ci:Landroid/content/pm/ComponentInfo;
    :goto_2
    iget-object v0, v8, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 342
    .local v19, packageName:Ljava/lang/String;
    const/16 v18, 0x0

    .line 343
    .local v18, one:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;
    sget-object v25, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->sAllBootPkgList:Ljava/util/ArrayList;

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 344
    .local v22, size:I
    const/16 v23, 0x0

    .local v23, t:I
    :goto_3
    move/from16 v0, v23

    move/from16 v1, v22

    if-ge v0, v1, :cond_1

    .line 345
    sget-object v25, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->sAllBootPkgList:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    .end local v18           #one:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;
    check-cast v18, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;

    .line 346
    .restart local v18       #one:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mPkgName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 347
    const/4 v13, 0x1

    .line 351
    :cond_1
    if-eqz v13, :cond_4

    .line 352
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mClsName:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    iget-object v0, v8, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    :goto_4
    const/4 v13, 0x0

    .line 336
    :goto_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 334
    .end local v8           #ci:Landroid/content/pm/ComponentInfo;
    .end local v14           #i:I
    .end local v17           #item:Landroid/content/pm/ResolveInfo;
    .end local v18           #one:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;
    .end local v19           #packageName:Ljava/lang/String;
    .end local v22           #size:I
    .end local v23           #t:I
    :catchall_0
    move-exception v25

    :try_start_1
    monitor-exit v26
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v25

    .line 338
    .restart local v14       #i:I
    .restart local v17       #item:Landroid/content/pm/ResolveInfo;
    :cond_2
    move-object/from16 v0, v17

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_2

    .line 344
    .restart local v8       #ci:Landroid/content/pm/ComponentInfo;
    .restart local v18       #one:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;
    .restart local v19       #packageName:Ljava/lang/String;
    .restart local v22       #size:I
    .restart local v23       #t:I
    :cond_3
    add-int/lit8 v23, v23, 0x1

    goto :goto_3

    .line 354
    :cond_4
    new-instance v18, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;

    .end local v18           #one:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;
    invoke-direct/range {v18 .. v18}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;-><init>()V

    .line 355
    .restart local v18       #one:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mPkgName:Ljava/lang/String;

    .line 356
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mClsName:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    iget-object v0, v8, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v25

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 358
    iget-object v0, v8, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mLable:Ljava/lang/CharSequence;

    .line 360
    const/4 v15, 0x0

    .line 362
    .local v15, info:Landroid/content/pm/ApplicationInfo;
    const/16 v25, 0x0

    :try_start_2
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v15

    .line 367
    iget v0, v15, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, 0x1

    if-eqz v25, :cond_5

    .line 369
    const/16 v25, 0x2

    move/from16 v0, v25

    move-object/from16 v1, v18

    iput v0, v1, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mType:I

    .line 374
    :goto_6
    const-string v25, "BootAppListActivity"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "pos="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", packageName="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    sget-object v26, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->sAllBootPkgList:Ljava/util/ArrayList;

    monitor-enter v26

    .line 377
    :try_start_3
    sget-object v25, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->sAllBootPkgList:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    monitor-exit v26

    goto/16 :goto_4

    :catchall_1
    move-exception v25

    monitor-exit v26
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v25

    .line 363
    :catch_0
    move-exception v11

    .line 364
    .local v11, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v13, 0x0

    .line 365
    goto/16 :goto_5

    .line 372
    .end local v11           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_5
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v18

    iput v0, v1, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mType:I

    goto :goto_6

    .line 384
    .end local v8           #ci:Landroid/content/pm/ComponentInfo;
    .end local v15           #info:Landroid/content/pm/ApplicationInfo;
    .end local v17           #item:Landroid/content/pm/ResolveInfo;
    .end local v18           #one:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;
    .end local v19           #packageName:Ljava/lang/String;
    .end local v22           #size:I
    .end local v23           #t:I
    :cond_6
    sget-object v26, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->sAllBootPkgList:Ljava/util/ArrayList;

    monitor-enter v26

    .line 385
    :try_start_4
    sget-object v25, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->sAllBootPkgList:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->filterPackage(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 386
    monitor-exit v26
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 388
    sget-object v25, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->sAllBootPkgList:Ljava/util/ArrayList;

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 389
    .local v5, bootAppSize:I
    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    .line 390
    .local v24, values:Landroid/content/ContentValues;
    const/4 v7, 0x0

    .line 391
    .local v7, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v25, "content://com.huawei.android.batteryspriteprovider"

    invoke-static/range {v25 .. v25}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 392
    .local v4, baseUri:Landroid/net/Uri;
    const-string v25, "forbiddenapps"

    move-object/from16 v0, v25

    invoke-static {v4, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    sput-object v25, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mForbiddenAppsUri:Landroid/net/Uri;

    .line 394
    const/4 v14, 0x0

    :goto_7
    if-ge v14, v5, :cond_8

    .line 395
    sget-object v25, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->sAllBootPkgList:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;

    .line 396
    .local v3, appItem:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;
    const/16 v25, 0x2

    iget v0, v3, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mType:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_7

    .line 397
    const-string v25, "package_name"

    iget-object v0, v3, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mPkgName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string v25, "list_type"

    const/16 v26, 0x2

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 399
    sget-object v25, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mForbiddenAppsUri:Landroid/net/Uri;

    invoke-static/range {v25 .. v25}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 400
    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 401
    sget-object v25, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->sOperationList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    :goto_8
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 386
    .end local v3           #appItem:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;
    .end local v4           #baseUri:Landroid/net/Uri;
    .end local v5           #bootAppSize:I
    .end local v7           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v24           #values:Landroid/content/ContentValues;
    :catchall_2
    move-exception v25

    :try_start_5
    monitor-exit v26
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v25

    .line 403
    .restart local v3       #appItem:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;
    .restart local v4       #baseUri:Landroid/net/Uri;
    .restart local v5       #bootAppSize:I
    .restart local v7       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v24       #values:Landroid/content/ContentValues;
    :cond_7
    const-string v25, "package_name"

    iget-object v0, v3, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mPkgName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string v25, "list_type"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 405
    sget-object v25, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mForbiddenAppsUri:Landroid/net/Uri;

    invoke-static/range {v25 .. v25}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 406
    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 407
    sget-object v25, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->sOperationList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 412
    .end local v3           #appItem:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;
    :cond_8
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "com.huawei.android.batteryspriteprovider"

    sget-object v27, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->sOperationList:Ljava/util/ArrayList;

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_6 .. :try_end_6} :catch_2

    .line 420
    :goto_9
    const-string v25, "savedForbidDatabase"

    const-string v26, "forbidSave"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 421
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 414
    :catch_1
    move-exception v11

    .line 415
    .local v11, e:Landroid/os/RemoteException;
    invoke-virtual {v11}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9

    .line 416
    .end local v11           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v11

    .line 417
    .local v11, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v11}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_9
.end method

.method private invalidAllItem()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 767
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->changeSwitchStatus(Ljava/lang/Boolean;)V

    .line 768
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mValidMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 769
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mInvalidMenu:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 770
    return-void
.end method

.method private validAllItem()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 761
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->changeSwitchStatus(Ljava/lang/Boolean;)V

    .line 762
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mValidMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 763
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mInvalidMenu:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 764
    return-void
.end method


# virtual methods
.method public changeSwitchStatus(Ljava/lang/Boolean;)V
    .locals 4
    .parameter "switchStatus"

    .prologue
    .line 498
    sget-object v2, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->sAllBootPkgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 499
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, ifor:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 500
    sget-object v2, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->sAllBootPkgList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, v2, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mNewEnable:Z

    .line 499
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 502
    :cond_0
    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mBootAppAdapter:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;

    invoke-virtual {v2}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;->notifyDataSetChanged()V

    .line 503
    return-void
.end method

.method public contentResolverOnDestory()V
    .locals 2

    .prologue
    .line 515
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$2;

    invoke-direct {v1, p0}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$2;-><init>(Lcom/huawei/android/hwpowermanager/BootApplicationActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 534
    .local v0, contentResolverOnDestory:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 535
    return-void
.end method

.method public deleteFromDB(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 4
    .parameter "uri"
    .parameter "packName"

    .prologue
    .line 509
    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "package_name=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 511
    return-void
.end method

.method public fetchInstalledApps(Landroid/content/Context;)V
    .locals 18
    .parameter "context"

    .prologue
    .line 560
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    new-instance v16, Landroid/content/Intent;

    const-string v17, "android.intent.action.BOOT_COMPLETED"

    invoke-direct/range {v16 .. v17}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v17, 0x202

    invoke-virtual/range {v15 .. v17}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 565
    .local v1, bootApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    new-instance v16, Landroid/content/Intent;

    const-string v17, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct/range {v16 .. v17}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v17, 0x202

    invoke-virtual/range {v15 .. v17}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 570
    .local v3, connectApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 572
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 573
    .local v4, count:I
    const-string v15, "BootAppListActivity"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "all count="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    sget-object v15, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mForbiddenAppsUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->getAppsFromUri(Landroid/net/Uri;)Ljava/util/Set;

    move-result-object v6

    .line 577
    .local v6, forbiddenApps:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 579
    .local v7, found:Z
    sget-object v16, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->sAllBootPkgList:Ljava/util/ArrayList;

    monitor-enter v16

    .line 580
    :try_start_0
    sget-object v15, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->sAllBootPkgList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 581
    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 583
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v4, :cond_6

    .line 584
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 585
    .local v10, item:Landroid/content/pm/ResolveInfo;
    iget-object v15, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v15, :cond_2

    iget-object v2, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 587
    .local v2, ci:Landroid/content/pm/ComponentInfo;
    :goto_1
    iget-object v13, v2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 589
    .local v13, packageName:Ljava/lang/String;
    const/4 v12, 0x0

    .line 590
    .local v12, one:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;
    const/4 v14, 0x0

    .local v14, t:I
    :goto_2
    sget-object v15, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->sAllBootPkgList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v14, v15, :cond_0

    .line 591
    sget-object v15, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->sAllBootPkgList:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #one:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;
    check-cast v12, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;

    .line 592
    .restart local v12       #one:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;
    iget-object v15, v12, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mPkgName:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 593
    const/4 v7, 0x1

    .line 597
    :cond_0
    if-eqz v7, :cond_4

    .line 598
    iget-object v15, v12, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mClsName:Ljava/util/ArrayList;

    iget-object v0, v2, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    :goto_3
    invoke-interface {v6, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 629
    const/4 v15, 0x1

    iput-boolean v15, v12, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mNewEnable:Z

    .line 631
    :cond_1
    const/4 v7, 0x0

    .line 583
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 581
    .end local v2           #ci:Landroid/content/pm/ComponentInfo;
    .end local v8           #i:I
    .end local v10           #item:Landroid/content/pm/ResolveInfo;
    .end local v12           #one:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;
    .end local v13           #packageName:Ljava/lang/String;
    .end local v14           #t:I
    :catchall_0
    move-exception v15

    :try_start_1
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v15

    .line 585
    .restart local v8       #i:I
    .restart local v10       #item:Landroid/content/pm/ResolveInfo;
    :cond_2
    iget-object v2, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_1

    .line 590
    .restart local v2       #ci:Landroid/content/pm/ComponentInfo;
    .restart local v12       #one:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;
    .restart local v13       #packageName:Ljava/lang/String;
    .restart local v14       #t:I
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 600
    :cond_4
    new-instance v12, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;

    .end local v12           #one:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;
    invoke-direct {v12}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;-><init>()V

    .line 601
    .restart local v12       #one:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;
    iput-object v13, v12, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mPkgName:Ljava/lang/String;

    .line 602
    iget-object v15, v12, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mClsName:Ljava/util/ArrayList;

    iget-object v0, v2, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    invoke-virtual {v10, v15}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    iput-object v15, v12, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 604
    iget-object v15, v2, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v15

    iput-object v15, v12, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mLable:Ljava/lang/CharSequence;

    .line 605
    const/4 v9, 0x0

    .line 606
    .local v9, info:Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 608
    .local v11, mPm:Landroid/content/pm/PackageManager;
    const/4 v15, 0x0

    :try_start_2
    invoke-virtual {v11, v13, v15}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v9

    .line 613
    iget v15, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_5

    .line 615
    const/4 v15, 0x2

    iput v15, v12, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mType:I

    .line 620
    :goto_5
    const-string v15, "BootAppListActivity"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "pos="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", packageName="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    sget-object v16, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->sAllBootPkgList:Ljava/util/ArrayList;

    monitor-enter v16

    .line 623
    :try_start_3
    sget-object v15, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->sAllBootPkgList:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 624
    monitor-exit v16

    goto :goto_3

    :catchall_1
    move-exception v15

    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v15

    .line 609
    :catch_0
    move-exception v5

    .line 610
    .local v5, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v7, 0x0

    .line 611
    goto :goto_4

    .line 618
    .end local v5           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_5
    const/4 v15, 0x1

    iput v15, v12, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mType:I

    goto :goto_5

    .line 634
    .end local v2           #ci:Landroid/content/pm/ComponentInfo;
    .end local v9           #info:Landroid/content/pm/ApplicationInfo;
    .end local v10           #item:Landroid/content/pm/ResolveInfo;
    .end local v11           #mPm:Landroid/content/pm/PackageManager;
    .end local v12           #one:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;
    .end local v13           #packageName:Ljava/lang/String;
    .end local v14           #t:I
    :cond_6
    sget-object v16, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->sAllBootPkgList:Ljava/util/ArrayList;

    monitor-enter v16

    .line 635
    :try_start_4
    sget-object v15, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->sAllBootPkgList:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-static {v15, v0}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->filterPackage(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 636
    monitor-exit v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 639
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->ensureForbiddenItemContain(Ljava/util/Set;)V

    .line 641
    sget-object v15, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->sAllBootPkgList:Ljava/util/ArrayList;

    new-instance v16, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$CompareNum;

    invoke-direct/range {v16 .. v16}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$CompareNum;-><init>()V

    invoke-static/range {v15 .. v16}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 642
    return-void

    .line 636
    :catchall_2
    move-exception v15

    :try_start_5
    monitor-exit v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v15
.end method

.method public insertToDB(Landroid/net/Uri;Ljava/lang/String;I)V
    .locals 9
    .parameter "uri"
    .parameter "packName"
    .parameter "mType"

    .prologue
    .line 476
    const/4 v6, 0x0

    .line 478
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "package_name=?"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v4, v1

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 480
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 481
    :cond_0
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 482
    .local v8, values:Landroid/content/ContentValues;
    const-string v0, "package_name"

    invoke-virtual {v8, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const-string v0, "app_type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 484
    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 485
    const-string v0, "BootAppListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertToDB "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " successfully!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    .end local v8           #values:Landroid/content/ContentValues;
    :cond_1
    if-eqz v6, :cond_2

    .line 491
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 494
    :cond_2
    :goto_0
    return-void

    .line 487
    :catch_0
    move-exception v7

    .line 488
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "BootAppListActivity"

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 490
    if-eqz v6, :cond_2

    .line 491
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 490
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 491
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 749
    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->contentResolverOnDestory()V

    .line 750
    invoke-super {p0}, Landroid/app/ListActivity;->onBackPressed()V

    .line 751
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 301
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 96
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 100
    const-string v2, "content://com.huawei.android.batteryspriteprovider"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 101
    .local v0, baseUri:Landroid/net/Uri;
    const-string v2, "forbiddenapps"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mForbiddenAppsUri:Landroid/net/Uri;

    .line 104
    invoke-virtual {p0, p0}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->fetchInstalledApps(Landroid/content/Context;)V

    .line 106
    const v2, 0x7f030004

    invoke-virtual {p0, v2}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->setContentView(I)V

    .line 108
    new-instance v2, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;

    invoke-direct {v2, p0, p0}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;-><init>(Lcom/huawei/android/hwpowermanager/BootApplicationActivity;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mBootAppAdapter:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;

    .line 109
    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mBootAppAdapter:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;

    invoke-virtual {p0, v2}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 111
    const v2, 0x7f0b0005

    invoke-virtual {p0, v2}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 114
    .local v1, mSettingTitle:Landroid/widget/TextView;
    const v2, 0x7f0b0010

    invoke-virtual {p0, v2}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mSelectAllSwitch:Landroid/widget/Switch;

    .line 117
    iget-object v4, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mSelectAllSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mBootAppAdapter:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;

    invoke-virtual {v2}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;->allUnchecked()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v4, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 119
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 121
    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mSelectAllSwitch:Landroid/widget/Switch;

    new-instance v3, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$1;

    invoke-direct {v3, p0}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$1;-><init>(Lcom/huawei/android/hwpowermanager/BootApplicationActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 135
    return-void

    .line 117
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 709
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 711
    const v0, 0x7f090037

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 713
    const v0, 0x7f090036

    invoke-interface {p1, v1, v3, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 717
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mValidMenu:Landroid/view/MenuItem;

    .line 718
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mInvalidMenu:Landroid/view/MenuItem;

    .line 720
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mValidMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 721
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mInvalidMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 723
    return v2
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 292
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 293
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 298
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x0

    .line 729
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 743
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_1
    return v0

    .line 731
    :sswitch_0
    invoke-direct {p0}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->invalidAllItem()V

    goto :goto_1

    .line 734
    :sswitch_1
    invoke-direct {p0}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->validAllItem()V

    goto :goto_1

    .line 737
    :sswitch_2
    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->contentResolverOnDestory()V

    .line 738
    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->finish()V

    goto :goto_0

    .line 729
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x102002c -> :sswitch_2
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 287
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 288
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 756
    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->contentResolverOnDestory()V

    .line 757
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 758
    return-void
.end method
