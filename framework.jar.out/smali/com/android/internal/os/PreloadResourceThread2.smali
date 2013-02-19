.class Lcom/android/internal/os/PreloadResourceThread2;
.super Ljava/lang/Thread;
.source "ZygoteInit.java"


# static fields
.field private static final PRELOAD_GC_THRESHOLD:I = 0x7a120

.field private static final TAG:Ljava/lang/String; = "PreloadResource"

.field private static mResources:Landroid/content/res/Resources;


# instance fields
.field id:I

.field runtime:Ldalvik/system/VMRuntime;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 127
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/PreloadResourceThread2;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method public constructor <init>(Ldalvik/system/VMRuntime;)V
    .locals 0
    .parameter "rt"

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/android/internal/os/PreloadResourceThread2;->runtime:Ldalvik/system/VMRuntime;

    .line 134
    return-void
.end method

.method private static preloadColorStateLists(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I
    .locals 6
    .parameter "runtime"
    .parameter "ar"

    .prologue
    .line 163
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 164
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 165
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v3

    const v4, 0x7a120

    if-le v3, v4, :cond_0

    .line 169
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 170
    invoke-virtual {p0}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 171
    invoke-static {}, Landroid/os/Debug;->resetGlobalAllocSize()V

    .line 173
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 177
    .local v2, id:I
    if-eqz v2, :cond_1

    .line 178
    sget-object v3, Lcom/android/internal/os/PreloadResourceThread2;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    if-nez v3, :cond_1

    .line 179
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find preloaded color resource #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 164
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    .end local v2           #id:I
    :cond_2
    return v0
.end method

.method private preloadDrawables(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I
    .locals 5
    .parameter "runtime"
    .parameter "ar"

    .prologue
    .line 137
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 138
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 139
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v2

    const v3, 0x7a120

    if-le v2, v3, :cond_0

    .line 143
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 144
    invoke-virtual {p1}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 145
    invoke-static {}, Landroid/os/Debug;->resetGlobalAllocSize()V

    .line 147
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/os/PreloadResourceThread2;->id:I

    .line 149
    iget v2, p0, Lcom/android/internal/os/PreloadResourceThread2;->id:I

    if-eqz v2, :cond_1

    .line 150
    sget-object v2, Lcom/android/internal/os/PreloadResourceThread2;->mResources:Landroid/content/res/Resources;

    iget v3, p0, Lcom/android/internal/os/PreloadResourceThread2;->id:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_1

    .line 151
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find preloaded drawable resource #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/os/PreloadResourceThread2;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 138
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    :cond_2
    return v0
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 190
    sget-object v4, Lcom/android/internal/os/PreloadResourceThread2;->mResources:Landroid/content/res/Resources;

    const v5, 0x1070005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 192
    .local v1, ar:Landroid/content/res/TypedArray;
    iget-object v4, p0, Lcom/android/internal/os/PreloadResourceThread2;->runtime:Ldalvik/system/VMRuntime;

    invoke-direct {p0, v4, v1}, Lcom/android/internal/os/PreloadResourceThread2;->preloadDrawables(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I

    .line 193
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 196
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 197
    .local v2, startTime:J
    sget-object v4, Lcom/android/internal/os/PreloadResourceThread2;->mResources:Landroid/content/res/Resources;

    const/high16 v5, 0x204

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 199
    iget-object v4, p0, Lcom/android/internal/os/PreloadResourceThread2;->runtime:Ldalvik/system/VMRuntime;

    invoke-direct {p0, v4, v1}, Lcom/android/internal/os/PreloadResourceThread2;->preloadDrawables(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I

    move-result v0

    .line 200
    .local v0, N:I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 201
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

    .line 206
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 207
    sget-object v4, Lcom/android/internal/os/PreloadResourceThread2;->mResources:Landroid/content/res/Resources;

    const v5, 0x1070006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 209
    iget-object v4, p0, Lcom/android/internal/os/PreloadResourceThread2;->runtime:Ldalvik/system/VMRuntime;

    invoke-static {v4, v1}, Lcom/android/internal/os/PreloadResourceThread2;->preloadColorStateLists(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I

    move-result v0

    .line 210
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 211
    const-string v4, "PreloadResource"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "preloaded "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "color resources in "

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

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    sget-object v4, Lcom/android/internal/os/PreloadResourceThread2;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4}, Landroid/content/res/Resources;->finishPreloading()V

    .line 214
    return-void
.end method
