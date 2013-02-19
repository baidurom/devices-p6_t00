.class public Landroid/appwidget/AppWidgetHostView;
.super Landroid/widget/FrameLayout;
.source "AppWidgetHostView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;
    }
.end annotation


# static fields
.field static final CROSSFADE:Z = false

.field static final FADE_DURATION:I = 0x3e8

.field static final LOGD:Z = false

.field static final TAG:Ljava/lang/String; = "AppWidgetHostView"

.field static final VIEW_MODE_CONTENT:I = 0x1

.field static final VIEW_MODE_DEFAULT:I = 0x3

.field static final VIEW_MODE_ERROR:I = 0x2

.field static final VIEW_MODE_NOINIT:I

.field static final sInflaterFilter:Landroid/view/LayoutInflater$Filter;


# instance fields
.field mAppWidgetId:I

.field mContext:Landroid/content/Context;

.field mFadeStartTime:J

.field mInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field mLayoutId:I

.field mOld:Landroid/graphics/Bitmap;

.field mOldPaint:Landroid/graphics/Paint;

.field private mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field mRemoteContext:Landroid/content/Context;

.field private mUser:Landroid/os/UserHandle;

.field mView:Landroid/view/View;

.field mViewMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Landroid/appwidget/AppWidgetHostView$1;

    invoke-direct {v0}, Landroid/appwidget/AppWidgetHostView$1;-><init>()V

    sput-object v0, Landroid/appwidget/AppWidgetHostView;->sInflaterFilter:Landroid/view/LayoutInflater$Filter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 99
    const/high16 v0, 0x10a

    const v1, 0x10a0001

    invoke-direct {p0, p1, v0, v1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;II)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .parameter "context"
    .parameter "animationIn"
    .parameter "animationOut"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Landroid/appwidget/AppWidgetHostView;->mLayoutId:I

    .line 89
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/appwidget/AppWidgetHostView;->mFadeStartTime:J

    .line 91
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mOldPaint:Landroid/graphics/Paint;

    .line 120
    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    .line 121
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mUser:Landroid/os/UserHandle;

    .line 124
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->setIsRootNamespace(Z)V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 2
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 106
    const/high16 v0, 0x10a

    const v1, 0x10a0001

    invoke-direct {p0, p1, v0, v1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;II)V

    .line 107
    iput-object p2, p0, Landroid/appwidget/AppWidgetHostView;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    .line 108
    return-void
.end method

.method private generateId()I
    .locals 2

    .prologue
    .line 226
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getId()I

    move-result v0

    .line 227
    .local v0, id:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    .end local v0           #id:I
    :cond_0
    return v0
.end method

.method public static getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 6
    .parameter "context"
    .parameter "component"
    .parameter "padding"

    .prologue
    const/4 v4, 0x0

    .line 180
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 183
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    if-nez p2, :cond_1

    .line 184
    new-instance p2, Landroid/graphics/Rect;

    .end local p2
    invoke-direct {p2, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 190
    .restart local p2
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 196
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0xe

    if-lt v4, v5, :cond_0

    .line 197
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 198
    .local v3, r:Landroid/content/res/Resources;
    const v4, 0x105004e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p2, Landroid/graphics/Rect;->left:I

    .line 200
    const v4, 0x1050050

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p2, Landroid/graphics/Rect;->right:I

    .line 202
    const v4, 0x105004f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p2, Landroid/graphics/Rect;->top:I

    .line 204
    const v4, 0x1050051

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p2, Landroid/graphics/Rect;->bottom:I

    .line 207
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v3           #r:Landroid/content/res/Resources;
    :cond_0
    :goto_1
    return-object p2

    .line 186
    :cond_1
    invoke-virtual {p2, v4, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 191
    :catch_0
    move-exception v1

    .line 193
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1
.end method

.method private getRemoteContext(Landroid/widget/RemoteViews;)Landroid/content/Context;
    .locals 5
    .parameter "views"

    .prologue
    .line 474
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 475
    .local v1, packageName:Ljava/lang/String;
    if-nez v1, :cond_0

    iget-object v2, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    .line 483
    :goto_0
    return-object v2

    .line 479
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    const/4 v3, 0x4

    iget-object v4, p0, Landroid/appwidget/AppWidgetHostView;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 481
    :catch_0
    move-exception v0

    .line 482
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "AppWidgetHostView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v2, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    goto :goto_0
.end method


# virtual methods
.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 232
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView;->generateId()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    .line 234
    .local v2, parcelable:Landroid/os/Parcelable;
    const/4 v1, 0x0

    .line 235
    .local v1, jail:Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;
    if-eqz v2, :cond_0

    instance-of v3, v2, Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 236
    check-cast v1, Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;

    .line 239
    :cond_0
    if-nez v1, :cond_1

    new-instance v1, Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;

    .end local v1           #jail:Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;
    const/4 v3, 0x0

    invoke-direct {v1, v3}, Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;-><init>(Landroid/appwidget/AppWidgetHostView$1;)V

    .line 242
    .restart local v1       #jail:Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;
    :cond_1
    :try_start_0
    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "AppWidgetHostView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to restoreInstanceState for widget id: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-nez v3, :cond_2

    const-string/jumbo v3, "null"

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    iget-object v3, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    goto :goto_1
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 220
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    new-instance v0, Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;-><init>(Landroid/appwidget/AppWidgetHostView$1;)V

    .line 221
    .local v0, jail:Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 222
    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView;->generateId()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 223
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 522
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 330
    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mRemoteContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mRemoteContext:Landroid/content/Context;

    .line 331
    .local v0, context:Landroid/content/Context;
    :goto_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v1

    .line 330
    .end local v0           #context:Landroid/content/Context;
    :cond_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public getAppWidgetId()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    return v0
.end method

.method public getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    return-object v0
.end method

.method protected getDefaultView()Landroid/view/View;
    .locals 14

    .prologue
    .line 549
    const/4 v1, 0x0

    .line 550
    .local v1, defaultView:Landroid/view/View;
    const/4 v3, 0x0

    .line 554
    .local v3, exception:Ljava/lang/Exception;
    :try_start_0
    iget-object v10, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v10, :cond_4

    .line 555
    iget-object v10, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v11, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v11, v11, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x4

    iget-object v13, p0, Landroid/appwidget/AppWidgetHostView;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v9

    .line 557
    .local v9, theirContext:Landroid/content/Context;
    iput-object v9, p0, Landroid/appwidget/AppWidgetHostView;->mRemoteContext:Landroid/content/Context;

    .line 558
    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 560
    .local v4, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {v4, v9}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 561
    sget-object v10, Landroid/appwidget/AppWidgetHostView;->sInflaterFilter:Landroid/view/LayoutInflater$Filter;

    invoke-virtual {v4, v10}, Landroid/view/LayoutInflater;->setFilter(Landroid/view/LayoutInflater$Filter;)V

    .line 562
    iget-object v10, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v7

    .line 563
    .local v7, manager:Landroid/appwidget/AppWidgetManager;
    iget v10, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    invoke-virtual {v7, v10}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v8

    .line 565
    .local v8, options:Landroid/os/Bundle;
    iget-object v10, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v6, v10, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    .line 566
    .local v6, layoutId:I
    const-string v10, "appWidgetCategory"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 567
    const-string v10, "appWidgetCategory"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 568
    .local v0, category:I
    const/4 v10, 0x2

    if-ne v0, v10, :cond_0

    .line 569
    iget-object v10, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v5, v10, Landroid/appwidget/AppWidgetProviderInfo;->initialKeyguardLayout:I

    .line 572
    .local v5, kgLayoutId:I
    if-nez v5, :cond_3

    .line 579
    .end local v0           #category:I
    .end local v5           #kgLayoutId:I
    :cond_0
    :goto_0
    new-instance v10, Landroid/widget/WidgetFactoryHuaWei;

    iget-object v11, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v12, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v12, v12, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/widget/WidgetFactoryHuaWei;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    .line 580
    const/4 v10, 0x0

    invoke-virtual {v4, v6, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    .line 595
    .end local v4           #inflater:Landroid/view/LayoutInflater;
    .end local v6           #layoutId:I
    .end local v7           #manager:Landroid/appwidget/AppWidgetManager;
    .end local v8           #options:Landroid/os/Bundle;
    .end local v9           #theirContext:Landroid/content/Context;
    :goto_1
    if-eqz v3, :cond_1

    .line 596
    const-string v10, "AppWidgetHostView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error inflating AppWidget "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    :cond_1
    if-nez v1, :cond_2

    .line 601
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getErrorView()Landroid/view/View;

    move-result-object v1

    .line 604
    :cond_2
    return-object v1

    .restart local v0       #category:I
    .restart local v4       #inflater:Landroid/view/LayoutInflater;
    .restart local v5       #kgLayoutId:I
    .restart local v6       #layoutId:I
    .restart local v7       #manager:Landroid/appwidget/AppWidgetManager;
    .restart local v8       #options:Landroid/os/Bundle;
    .restart local v9       #theirContext:Landroid/content/Context;
    :cond_3
    move v6, v5

    .line 572
    goto :goto_0

    .line 582
    .end local v0           #category:I
    .end local v4           #inflater:Landroid/view/LayoutInflater;
    .end local v5           #kgLayoutId:I
    .end local v6           #layoutId:I
    .end local v7           #manager:Landroid/appwidget/AppWidgetManager;
    .end local v8           #options:Landroid/os/Bundle;
    .end local v9           #theirContext:Landroid/content/Context;
    :cond_4
    :try_start_1
    const-string v10, "AppWidgetHostView"

    const-string v11, "can\'t inflate defaultView because mInfo is missing"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 584
    :catch_0
    move-exception v2

    .line 585
    .local v2, e:Ljava/lang/IllegalStateException;
    move-object v3, v2

    .line 592
    goto :goto_1

    .line 586
    .end local v2           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v2

    .line 587
    .local v2, e:Ljava/lang/NullPointerException;
    move-object v3, v2

    .line 592
    goto :goto_1

    .line 588
    .end local v2           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v2

    .line 589
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v3, v2

    .line 592
    goto :goto_1

    .line 590
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_3
    move-exception v2

    .line 591
    .local v2, e:Ljava/lang/RuntimeException;
    move-object v3, v2

    goto :goto_1
.end method

.method protected getErrorView()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 611
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 612
    .local v0, tv:Landroid/widget/TextView;
    const v1, 0x1040470

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 614
    const/16 v1, 0x7f

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 615
    return-object v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 620
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 621
    const-class v0, Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 622
    return-void
.end method

.method protected prepareView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    const/4 v1, -0x1

    .line 532
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 533
    .local v0, requested:Landroid/widget/FrameLayout$LayoutParams;
    if-nez v0, :cond_0

    .line 534
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .end local v0           #requested:Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 538
    .restart local v0       #requested:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 539
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 540
    return-void
.end method

.method resetAppWidget(Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 339
    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 340
    const/4 v0, 0x0

    iput v0, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    .line 341
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 342
    return-void
.end method

.method public setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .locals 5
    .parameter "appWidgetId"
    .parameter "info"

    .prologue
    .line 149
    iput p1, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    .line 150
    iput-object p2, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 154
    if-eqz p2, :cond_0

    .line 156
    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 157
    .local v0, padding:Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/appwidget/AppWidgetHostView;->setPadding(IIII)V

    .line 158
    iget-object v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/appwidget/AppWidgetHostView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 160
    .end local v0           #padding:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public setOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 140
    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    .line 141
    return-void
.end method

.method public setUserId(I)V
    .locals 1
    .parameter "userId"

    .prologue
    .line 129
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mUser:Landroid/os/UserHandle;

    .line 130
    return-void
.end method

.method public updateAppWidget(Landroid/widget/RemoteViews;)V
    .locals 9
    .parameter "remoteViews"

    .prologue
    const/4 v6, 0x3

    const/4 v8, 0x2

    .line 352
    const/4 v4, 0x0

    .line 353
    .local v4, recycled:Z
    const/4 v0, 0x0

    .line 354
    .local v0, content:Landroid/view/View;
    const/4 v2, 0x0

    .line 375
    .local v2, exception:Ljava/lang/Exception;
    if-nez p1, :cond_4

    .line 376
    iget v5, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    if-ne v5, v6, :cond_1

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getDefaultView()Landroid/view/View;

    move-result-object v0

    .line 381
    const/4 v5, -0x1

    iput v5, p0, Landroid/appwidget/AppWidgetHostView;->mLayoutId:I

    .line 382
    iput v6, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    .line 416
    :goto_1
    if-nez v0, :cond_2

    .line 417
    iget v5, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    if-eq v5, v8, :cond_0

    .line 421
    const-string v5, "AppWidgetHostView"

    const-string/jumbo v6, "updateAppWidget couldn\'t find any view, using error view"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 422
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getErrorView()Landroid/view/View;

    move-result-object v0

    .line 423
    iput v8, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    .line 426
    :cond_2
    if-nez v4, :cond_3

    .line 427
    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->prepareView(Landroid/view/View;)V

    .line 428
    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->addView(Landroid/view/View;)V

    .line 431
    :cond_3
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    if-eq v5, v0, :cond_0

    .line 432
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    invoke-virtual {p0, v5}, Landroid/appwidget/AppWidgetHostView;->removeView(Landroid/view/View;)V

    .line 433
    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    goto :goto_0

    .line 386
    :cond_4
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;->getRemoteContext(Landroid/widget/RemoteViews;)Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mRemoteContext:Landroid/content/Context;

    .line 387
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v3

    .line 391
    .local v3, layoutId:I
    if-nez v0, :cond_5

    iget v5, p0, Landroid/appwidget/AppWidgetHostView;->mLayoutId:I

    if-ne v3, v5, :cond_5

    .line 393
    :try_start_0
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    iget-object v7, p0, Landroid/appwidget/AppWidgetHostView;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {p1, v5, v6, v7}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 394
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    const/4 v4, 0x1

    .line 403
    :cond_5
    :goto_2
    if-nez v0, :cond_6

    .line 405
    :try_start_1
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/appwidget/AppWidgetHostView;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {p1, v5, p0, v6}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 412
    :cond_6
    :goto_3
    iput v3, p0, Landroid/appwidget/AppWidgetHostView;->mLayoutId:I

    .line 413
    const/4 v5, 0x1

    iput v5, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    goto :goto_1

    .line 397
    :catch_0
    move-exception v1

    .line 398
    .local v1, e:Ljava/lang/RuntimeException;
    move-object v2, v1

    goto :goto_2

    .line 407
    .end local v1           #e:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 408
    .restart local v1       #e:Ljava/lang/RuntimeException;
    move-object v2, v1

    goto :goto_3
.end method

.method public updateAppWidgetOptions(Landroid/os/Bundle;)V
    .locals 2
    .parameter "options"

    .prologue
    .line 321
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iget v1, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    invoke-virtual {v0, v1, p1}, Landroid/appwidget/AppWidgetManager;->updateAppWidgetOptions(ILandroid/os/Bundle;)V

    .line 322
    return-void
.end method

.method public updateAppWidgetSize(Landroid/os/Bundle;IIII)V
    .locals 7
    .parameter "newOptions"
    .parameter "minWidth"
    .parameter "minHeight"
    .parameter "maxWidth"
    .parameter "maxHeight"

    .prologue
    .line 266
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetSize(Landroid/os/Bundle;IIIIZ)V

    .line 267
    return-void
.end method

.method public updateAppWidgetSize(Landroid/os/Bundle;IIIIZ)V
    .locals 13
    .parameter "newOptions"
    .parameter "minWidth"
    .parameter "minHeight"
    .parameter "maxWidth"
    .parameter "maxHeight"
    .parameter "ignorePadding"

    .prologue
    .line 274
    if-nez p1, :cond_0

    .line 275
    new-instance p1, Landroid/os/Bundle;

    .end local p1
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 278
    .restart local p1
    :cond_0
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 279
    .local v7, padding:Landroid/graphics/Rect;
    iget-object v11, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v11, :cond_1

    .line 280
    iget-object v11, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v12, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v12, v12, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-static {v11, v12, v7}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v7

    .line 282
    :cond_1
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v0, v11, Landroid/util/DisplayMetrics;->density:F

    .line 284
    .local v0, density:F
    iget v11, v7, Landroid/graphics/Rect;->left:I

    iget v12, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v12

    int-to-float v11, v11

    div-float/2addr v11, v0

    float-to-int v9, v11

    .line 285
    .local v9, xPaddingDips:I
    iget v11, v7, Landroid/graphics/Rect;->top:I

    iget v12, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v12

    int-to-float v11, v11

    div-float/2addr v11, v0

    float-to-int v10, v11

    .line 287
    .local v10, yPaddingDips:I
    if-eqz p6, :cond_7

    const/4 v11, 0x0

    :goto_0
    sub-int v5, p2, v11

    .line 288
    .local v5, newMinWidth:I
    if-eqz p6, :cond_8

    const/4 v11, 0x0

    :goto_1
    sub-int v4, p3, v11

    .line 289
    .local v4, newMinHeight:I
    if-eqz p6, :cond_2

    const/4 v9, 0x0

    .end local v9           #xPaddingDips:I
    :cond_2
    sub-int v3, p4, v9

    .line 290
    .local v3, newMaxWidth:I
    if-eqz p6, :cond_3

    const/4 v10, 0x0

    .end local v10           #yPaddingDips:I
    :cond_3
    sub-int v2, p5, v10

    .line 292
    .local v2, newMaxHeight:I
    iget-object v11, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-static {v11}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v8

    .line 295
    .local v8, widgetManager:Landroid/appwidget/AppWidgetManager;
    iget v11, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    invoke-virtual {v8, v11}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v6

    .line 296
    .local v6, oldOptions:Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 297
    .local v1, needsUpdate:Z
    const-string v11, "appWidgetMinWidth"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    if-ne v5, v11, :cond_4

    const-string v11, "appWidgetMinHeight"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    if-ne v4, v11, :cond_4

    const-string v11, "appWidgetMaxWidth"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    if-ne v3, v11, :cond_4

    const-string v11, "appWidgetMaxHeight"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    if-eq v2, v11, :cond_5

    .line 301
    :cond_4
    const/4 v1, 0x1

    .line 304
    :cond_5
    if-eqz v1, :cond_6

    .line 305
    const-string v11, "appWidgetMinWidth"

    invoke-virtual {p1, v11, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 306
    const-string v11, "appWidgetMinHeight"

    invoke-virtual {p1, v11, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 307
    const-string v11, "appWidgetMaxWidth"

    invoke-virtual {p1, v11, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 308
    const-string v11, "appWidgetMaxHeight"

    invoke-virtual {p1, v11, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 309
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetOptions(Landroid/os/Bundle;)V

    .line 311
    :cond_6
    return-void

    .end local v1           #needsUpdate:Z
    .end local v2           #newMaxHeight:I
    .end local v3           #newMaxWidth:I
    .end local v4           #newMinHeight:I
    .end local v5           #newMinWidth:I
    .end local v6           #oldOptions:Landroid/os/Bundle;
    .end local v8           #widgetManager:Landroid/appwidget/AppWidgetManager;
    .restart local v9       #xPaddingDips:I
    .restart local v10       #yPaddingDips:I
    :cond_7
    move v11, v9

    .line 287
    goto :goto_0

    .restart local v5       #newMinWidth:I
    :cond_8
    move v11, v10

    .line 288
    goto :goto_1
.end method

.method viewDataChanged(I)V
    .locals 5
    .parameter "viewId"

    .prologue
    .line 452
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 453
    .local v3, v:Landroid/view/View;
    if-eqz v3, :cond_0

    instance-of v4, v3, Landroid/widget/AdapterView;

    if-eqz v4, :cond_0

    move-object v1, v3

    .line 454
    check-cast v1, Landroid/widget/AdapterView;

    .line 455
    .local v1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 456
    .local v0, adapter:Landroid/widget/Adapter;
    instance-of v4, v0, Landroid/widget/BaseAdapter;

    if-eqz v4, :cond_1

    move-object v2, v0

    .line 457
    check-cast v2, Landroid/widget/BaseAdapter;

    .line 458
    .local v2, baseAdapter:Landroid/widget/BaseAdapter;
    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 466
    .end local v0           #adapter:Landroid/widget/Adapter;
    .end local v1           #adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    .end local v2           #baseAdapter:Landroid/widget/BaseAdapter;
    :cond_0
    :goto_0
    return-void

    .line 459
    .restart local v0       #adapter:Landroid/widget/Adapter;
    .restart local v1       #adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    :cond_1
    if-nez v0, :cond_0

    instance-of v4, v1, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;

    if-eqz v4, :cond_0

    .line 463
    check-cast v1, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;

    .end local v1           #adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-interface {v1}, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;->deferNotifyDataSetChanged()V

    goto :goto_0
.end method
