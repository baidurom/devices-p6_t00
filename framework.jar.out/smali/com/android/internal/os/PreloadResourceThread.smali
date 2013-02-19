.class Lcom/android/internal/os/PreloadResourceThread;
.super Ljava/lang/Thread;
.source "ZygoteInit.java"


# static fields
.field private static final PRELOAD_GC_THRESHOLD:I = 0x7a120

.field private static final TAG:Ljava/lang/String; = "PreloadResource"

.field private static mResources:Landroid/content/res/Resources;


# instance fields
.field id:I

.field private mPart:I

.field private mStr:Ljava/lang/String;

.field runtime:Ldalvik/system/VMRuntime;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/PreloadResourceThread;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method public constructor <init>(Ldalvik/system/VMRuntime;I)V
    .locals 0
    .parameter "rt"
    .parameter "part"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/internal/os/PreloadResourceThread;->runtime:Ldalvik/system/VMRuntime;

    .line 67
    iput p2, p0, Lcom/android/internal/os/PreloadResourceThread;->mPart:I

    .line 68
    return-void
.end method

.method private preloadDrawables(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I
    .locals 7
    .parameter "runtime"
    .parameter "ar"

    .prologue
    .line 71
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 74
    .local v0, N:I
    iget v4, p0, Lcom/android/internal/os/PreloadResourceThread;->mPart:I

    if-nez v4, :cond_1

    .line 75
    const/4 v2, 0x0

    .line 76
    .local v2, j:I
    shr-int/lit8 v3, v0, 0x1

    .line 82
    .local v3, k:I
    :goto_0
    move v1, v2

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 83
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v4

    const v5, 0x7a120

    if-le v4, v5, :cond_0

    .line 87
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 88
    invoke-virtual {p1}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 89
    invoke-static {}, Landroid/os/Debug;->resetGlobalAllocSize()V

    .line 91
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p2, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/android/internal/os/PreloadResourceThread;->id:I

    .line 93
    iget v4, p0, Lcom/android/internal/os/PreloadResourceThread;->id:I

    if-eqz v4, :cond_2

    .line 94
    sget-object v4, Lcom/android/internal/os/PreloadResourceThread;->mResources:Landroid/content/res/Resources;

    iget v5, p0, Lcom/android/internal/os/PreloadResourceThread;->id:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_2

    .line 95
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find preloaded drawable resource #0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/os/PreloadResourceThread;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 78
    .end local v1           #i:I
    .end local v2           #j:I
    .end local v3           #k:I
    :cond_1
    shr-int/lit8 v2, v0, 0x1

    .line 79
    .restart local v2       #j:I
    move v3, v0

    .restart local v3       #k:I
    goto :goto_0

    .line 82
    .restart local v1       #i:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 103
    :cond_3
    sub-int v4, v3, v2

    return v4
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 107
    sget-object v4, Lcom/android/internal/os/PreloadResourceThread;->mResources:Landroid/content/res/Resources;

    const v5, 0x1070005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 109
    .local v1, ar:Landroid/content/res/TypedArray;
    iget-object v4, p0, Lcom/android/internal/os/PreloadResourceThread;->runtime:Ldalvik/system/VMRuntime;

    invoke-direct {p0, v4, v1}, Lcom/android/internal/os/PreloadResourceThread;->preloadDrawables(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I

    .line 110
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 113
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 114
    .local v2, startTime:J
    sget-object v4, Lcom/android/internal/os/PreloadResourceThread;->mResources:Landroid/content/res/Resources;

    const/high16 v5, 0x204

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 116
    iget-object v4, p0, Lcom/android/internal/os/PreloadResourceThread;->runtime:Ldalvik/system/VMRuntime;

    invoke-direct {p0, v4, v1}, Lcom/android/internal/os/PreloadResourceThread;->preloadDrawables(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I

    move-result v0

    .line 117
    .local v0, N:I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 118
    const-string v4, "PreloadResource"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "...preloaded "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " hwextdrawable resources in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ms."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void
.end method
