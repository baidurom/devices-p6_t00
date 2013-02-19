.class public Landroid/app/Application;
.super Landroid/content/ContextWrapper;
.source "Application.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Application$ActivityLifecycleCallbacks;
    }
.end annotation


# static fields
.field static final HWTHEME_FLIPFONT:I = 0x2

.field static final sIsHwTFlipFontOn:Z


# instance fields
.field private mActivityLifecycleCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Application$ActivityLifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mComponentCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastConfig:Landroid/content/res/Configuration;

.field public mLoadedApk:Landroid/app/LoadedApk;

.field private mTopActivityCnt:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 298
    const-string/jumbo v1, "ro.config.hwtheme"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Landroid/app/Application;->sIsHwTFlipFontOn:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Application;->mComponentCallbacks:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    .line 295
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/app/Application;->mLastConfig:Landroid/content/res/Configuration;

    .line 81
    return-void
.end method

.method private collectActivityLifecycleCallbacks()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 268
    const/4 v0, 0x0

    .line 269
    .local v0, callbacks:[Ljava/lang/Object;
    iget-object v2, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v2

    .line 270
    :try_start_0
    iget-object v1, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 271
    iget-object v1, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 273
    :cond_0
    monitor-exit v2

    .line 274
    return-object v0

    .line 273
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private collectComponentCallbacks()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 258
    const/4 v0, 0x0

    .line 259
    .local v0, callbacks:[Ljava/lang/Object;
    iget-object v2, p0, Landroid/app/Application;->mComponentCallbacks:Ljava/util/ArrayList;

    monitor-enter v2

    .line 260
    :try_start_0
    iget-object v1, p0, Landroid/app/Application;->mComponentCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 261
    iget-object v1, p0, Landroid/app/Application;->mComponentCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 263
    :cond_0
    monitor-exit v2

    .line 264
    return-object v0

    .line 263
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method final attach(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 172
    invoke-static {p1}, Landroid/app/ContextImpl;->getImpl(Landroid/content/Context;)Landroid/app/ContextImpl;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iput-object v0, p0, Landroid/app/Application;->mLoadedApk:Landroid/app/LoadedApk;

    .line 173
    return-void
.end method

.method dispatchActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 5
    .parameter "activity"
    .parameter "savedInstanceState"

    .prologue
    .line 177
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 178
    .local v1, componentName:Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    const-string v3, "com.huawei.message"

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 179
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ldalvik/system/VMRuntime;->setReduceGCForAlloc(I)V

    .line 182
    :cond_0
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 183
    .local v0, callbacks:[Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 184
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 185
    aget-object v3, v0, v2

    check-cast v3, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v3, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 184
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 189
    .end local v2           #i:I
    :cond_1
    return-void
.end method

.method dispatchActivityDestroyed(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 249
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 250
    .local v0, callbacks:[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 251
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 252
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityDestroyed(Landroid/app/Activity;)V

    .line 251
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 255
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method dispatchActivityPaused(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 216
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 217
    .local v0, callbacks:[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 218
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 219
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPaused(Landroid/app/Activity;)V

    .line 218
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 222
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method dispatchActivityResumed(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 201
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 202
    .local v0, callbacks:[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 203
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 204
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityResumed(Landroid/app/Activity;)V

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    .end local v1           #i:I
    :cond_0
    iget v2, p0, Landroid/app/Application;->mTopActivityCnt:I

    if-nez v2, :cond_1

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ldalvik/system/VMRuntime;->setAppMode(I)V

    .line 211
    :cond_1
    iget v2, p0, Landroid/app/Application;->mTopActivityCnt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/app/Application;->mTopActivityCnt:I

    .line 213
    return-void
.end method

.method dispatchActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .parameter "activity"
    .parameter "outState"

    .prologue
    .line 239
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 240
    .local v0, callbacks:[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 241
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 242
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 241
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 246
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method dispatchActivityStarted(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 192
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 193
    .local v0, callbacks:[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 194
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 195
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStarted(Landroid/app/Activity;)V

    .line 194
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method dispatchActivityStopped(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 225
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 226
    .local v0, callbacks:[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 227
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 228
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStopped(Landroid/app/Activity;)V

    .line 227
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    .end local v1           #i:I
    :cond_0
    iget v2, p0, Landroid/app/Application;->mTopActivityCnt:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/app/Application;->mTopActivityCnt:I

    .line 234
    iget v2, p0, Landroid/app/Application;->mTopActivityCnt:I

    if-nez v2, :cond_1

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ldalvik/system/VMRuntime;->setAppMode(I)V

    .line 236
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Landroid/app/Application;->setThemeFontOnConfigChg(Landroid/content/res/Configuration;)V

    .line 112
    invoke-direct {p0}, Landroid/app/Application;->collectComponentCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 113
    .local v0, callbacks:[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 114
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 115
    aget-object v2, v0, v1

    check-cast v2, Landroid/content/ComponentCallbacks;

    invoke-interface {v2, p1}, Landroid/content/ComponentCallbacks;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 94
    invoke-virtual {p0}, Landroid/app/Application;->setThemeFont()V

    .line 96
    return-void
.end method

.method public onLowMemory()V
    .locals 3

    .prologue
    .line 121
    invoke-direct {p0}, Landroid/app/Application;->collectComponentCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 122
    .local v0, callbacks:[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 123
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 124
    aget-object v2, v0, v1

    check-cast v2, Landroid/content/ComponentCallbacks;

    invoke-interface {v2}, Landroid/content/ComponentCallbacks;->onLowMemory()V

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method public onTerminate()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 4
    .parameter "level"

    .prologue
    .line 130
    invoke-direct {p0}, Landroid/app/Application;->collectComponentCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 131
    .local v1, callbacks:[Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 132
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 133
    aget-object v0, v1, v2

    .line 134
    .local v0, c:Ljava/lang/Object;
    instance-of v3, v0, Landroid/content/ComponentCallbacks2;

    if-eqz v3, :cond_0

    .line 135
    check-cast v0, Landroid/content/ComponentCallbacks2;

    .end local v0           #c:Ljava/lang/Object;
    invoke-interface {v0, p1}, Landroid/content/ComponentCallbacks2;->onTrimMemory(I)V

    .line 132
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 139
    .end local v2           #i:I
    :cond_1
    return-void
.end method

.method public registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 154
    iget-object v1, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 155
    :try_start_0
    iget-object v0, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    monitor-exit v1

    .line 157
    return-void

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 142
    iget-object v1, p0, Landroid/app/Application;->mComponentCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 143
    :try_start_0
    iget-object v0, p0, Landroid/app/Application;->mComponentCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    monitor-exit v1

    .line 145
    return-void

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setThemeFont()V
    .locals 1

    .prologue
    .line 279
    sget-boolean v0, Landroid/app/Application;->sIsHwTFlipFontOn:Z

    if-eqz v0, :cond_0

    .line 280
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/graphics/Typeface;->setThemeFont(Ljava/lang/String;)V

    .line 282
    :cond_0
    return-void
.end method

.method setThemeFontOnConfigChg(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 285
    sget-boolean v1, Landroid/app/Application;->sIsHwTFlipFontOn:Z

    if-eqz v1, :cond_0

    .line 286
    iget-object v1, p0, Landroid/app/Application;->mLastConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    .line 287
    .local v0, configChanges:I
    invoke-static {v0}, Landroid/content/pm/ActivityInfoEx;->activityInfoConfigToNative(I)I

    move-result v0

    .line 289
    and-int/lit16 v1, v0, 0x4004

    if-eqz v1, :cond_0

    .line 290
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/graphics/Typeface;->setThemeFont(Ljava/lang/String;)V

    .line 293
    .end local v0           #configChanges:I
    :cond_0
    return-void
.end method

.method public unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 160
    iget-object v1, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 161
    :try_start_0
    iget-object v0, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 162
    monitor-exit v1

    .line 163
    return-void

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 148
    iget-object v1, p0, Landroid/app/Application;->mComponentCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 149
    :try_start_0
    iget-object v0, p0, Landroid/app/Application;->mComponentCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 150
    monitor-exit v1

    .line 151
    return-void

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
