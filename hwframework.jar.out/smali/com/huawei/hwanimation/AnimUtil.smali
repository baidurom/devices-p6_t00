.class public Lcom/huawei/hwanimation/AnimUtil;
.super Ljava/lang/Object;
.source "AnimUtil.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "AnimUtil"

.field public static final TRANSIT_ACTIVITY_CLOSE:I = 0x2

.field public static final TRANSIT_ACTIVITY_OPEN:I = 0x1

.field public static final TRANSIT_TASK_CLOSE:I = 0x4

.field public static final TRANSIT_TASK_OPEN:I = 0x3

.field private static sHwAnimResPackageName:Ljava/lang/String;


# instance fields
.field private mClientContext:Landroid/content/Context;

.field private mClientToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "androidhwext"

    sput-object v0, Lcom/huawei/hwanimation/AnimUtil;->sHwAnimResPackageName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/huawei/hwanimation/AnimUtil;->mClientContext:Landroid/content/Context;

    .line 39
    iput-object v0, p0, Lcom/huawei/hwanimation/AnimUtil;->mClientToken:Landroid/os/IBinder;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/huawei/hwanimation/AnimUtil;->mClientContext:Landroid/content/Context;

    .line 39
    iput-object v0, p0, Lcom/huawei/hwanimation/AnimUtil;->mClientToken:Landroid/os/IBinder;

    .line 46
    iput-object p1, p0, Lcom/huawei/hwanimation/AnimUtil;->mClientContext:Landroid/content/Context;

    .line 47
    invoke-direct {p0}, Lcom/huawei/hwanimation/AnimUtil;->initToken()V

    .line 48
    return-void
.end method

.method private initToken()V
    .locals 4

    .prologue
    .line 139
    const/4 v0, 0x0

    .line 141
    .local v0, getActivityTokenMethod:Ljava/lang/reflect/Method;
    :try_start_0
    const-class v1, Landroid/app/Activity;

    const-string v2, "getActivityToken"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 142
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3

    .line 146
    :goto_0
    if-nez v0, :cond_0

    .line 163
    :goto_1
    return-void

    .line 155
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/huawei/hwanimation/AnimUtil;->mClientContext:Landroid/content/Context;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    iput-object v1, p0, Lcom/huawei/hwanimation/AnimUtil;->mClientToken:Landroid/os/IBinder;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 156
    :catch_0
    move-exception v1

    goto :goto_1

    .line 160
    :catch_1
    move-exception v1

    goto :goto_1

    .line 158
    :catch_2
    move-exception v1

    goto :goto_1

    .line 143
    :catch_3
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public getCubicBezierInterpolator(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/huawei/hwanimation/CubicBezierInterpolator;
    .locals 1
    .parameter "name"
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 58
    const-string v0, "cubicBezierInterpolator"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Lcom/huawei/hwanimation/CubicBezierInterpolator;

    invoke-direct {v0, p2, p3}, Lcom/huawei/hwanimation/CubicBezierInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    :goto_0
    return-object v0

    .line 60
    :cond_0
    const-string v0, "cubicBezierReverseInterpolator"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    new-instance v0, Lcom/huawei/hwanimation/CubicBezierReverseInterpolator;

    invoke-direct {v0, p2, p3}, Lcom/huawei/hwanimation/CubicBezierReverseInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0

    .line 63
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public overrideTransition(I)V
    .locals 12
    .parameter "transit"

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x0

    .line 72
    iget-object v6, p0, Lcom/huawei/hwanimation/AnimUtil;->mClientToken:Landroid/os/IBinder;

    if-nez v6, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    const/4 v3, 0x0

    .line 87
    .local v3, hwAnimationContext:Landroid/content/Context;
    :try_start_0
    iget-object v6, p0, Lcom/huawei/hwanimation/AnimUtil;->mClientContext:Landroid/content/Context;

    sget-object v7, Lcom/huawei/hwanimation/AnimUtil;->sHwAnimResPackageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 93
    if-eqz v3, :cond_0

    .line 94
    const/4 v1, 0x0

    .local v1, enterAnim:I
    const/4 v2, 0x0

    .line 95
    .local v2, exitAnim:I
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "HwAnimation"

    const-string v8, "style"

    sget-object v9, Lcom/huawei/hwanimation/AnimUtil;->sHwAnimResPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 96
    .local v4, resId:I
    if-eqz v4, :cond_0

    .line 101
    sget-object v6, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 102
    .local v5, windowAnimationArray:Landroid/content/res/TypedArray;
    const/4 v6, 0x1

    if-ne p1, v6, :cond_3

    .line 103
    invoke-virtual {v5, v11, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 104
    const/4 v6, 0x5

    invoke-virtual {v5, v6, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 119
    :cond_2
    :goto_1
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 122
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    iget-object v7, p0, Lcom/huawei/hwanimation/AnimUtil;->mClientToken:Landroid/os/IBinder;

    sget-object v8, Lcom/huawei/hwanimation/AnimUtil;->sHwAnimResPackageName:Ljava/lang/String;

    invoke-interface {v6, v7, v8, v1, v2}, Landroid/app/IActivityManager;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 124
    :catch_0
    move-exception v6

    goto :goto_0

    .line 88
    .end local v1           #enterAnim:I
    .end local v2           #exitAnim:I
    .end local v4           #resId:I
    .end local v5           #windowAnimationArray:Landroid/content/res/TypedArray;
    :catch_1
    move-exception v0

    .line 90
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 105
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1       #enterAnim:I
    .restart local v2       #exitAnim:I
    .restart local v4       #resId:I
    .restart local v5       #windowAnimationArray:Landroid/content/res/TypedArray;
    :cond_3
    const/4 v6, 0x2

    if-ne p1, v6, :cond_4

    .line 106
    const/4 v6, 0x6

    invoke-virtual {v5, v6, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 107
    const/4 v6, 0x7

    invoke-virtual {v5, v6, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    goto :goto_1

    .line 108
    :cond_4
    const/4 v6, 0x3

    if-ne p1, v6, :cond_5

    .line 109
    const/16 v6, 0x8

    invoke-virtual {v5, v6, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 110
    const/16 v6, 0x9

    invoke-virtual {v5, v6, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    goto :goto_1

    .line 111
    :cond_5
    if-ne p1, v11, :cond_2

    .line 112
    const/16 v6, 0xa

    invoke-virtual {v5, v6, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 113
    const/16 v6, 0xb

    invoke-virtual {v5, v6, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    goto :goto_1
.end method
