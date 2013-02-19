.class public Landroid/app/NativeActivity;
.super Landroid/app/Activity;
.source "NativeActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback2;
.implements Landroid/view/InputQueue$Callback;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/NativeActivity$InputMethodCallback;,
        Landroid/app/NativeActivity$NativeContentView;
    }
.end annotation


# static fields
.field private static final KEY_NATIVE_SAVED_STATE:Ljava/lang/String; = "android:native_state"

.field public static final META_DATA_FUNC_NAME:Ljava/lang/String; = "android.app.func_name"

.field public static final META_DATA_LIB_NAME:Ljava/lang/String; = "android.app.lib_name"


# instance fields
.field private mCurInputQueue:Landroid/view/InputQueue;

.field private mCurSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mDestroyed:Z

.field private mDispatchingUnhandledKey:Z

.field private mIMM:Landroid/view/inputmethod/InputMethodManager;

.field private mInputMethodCallback:Landroid/app/NativeActivity$InputMethodCallback;

.field mLastContentHeight:I

.field mLastContentWidth:I

.field mLastContentX:I

.field mLastContentY:I

.field final mLocation:[I

.field private mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

.field private mNativeHandle:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 75
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/app/NativeActivity;->mLocation:[I

    .line 121
    return-void
.end method

.method static synthetic access$000(Landroid/app/NativeActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Landroid/app/NativeActivity;->mNativeHandle:I

    return v0
.end method

.method static synthetic access$100(Landroid/app/NativeActivity;IIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/app/NativeActivity;->finishPreDispatchKeyEventNative(IIZ)V

    return-void
.end method

.method private native dispatchKeyEventNative(ILandroid/view/KeyEvent;)V
.end method

.method private native finishPreDispatchKeyEventNative(IIZ)V
.end method

.method private native loadNativeCode(Ljava/lang/String;Ljava/lang/String;Landroid/os/MessageQueue;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/res/AssetManager;[B)I
.end method

.method private native onConfigurationChangedNative(I)V
.end method

.method private native onContentRectChangedNative(IIIII)V
.end method

.method private native onInputChannelCreatedNative(ILandroid/view/InputChannel;)V
.end method

.method private native onInputChannelDestroyedNative(ILandroid/view/InputChannel;)V
.end method

.method private native onLowMemoryNative(I)V
.end method

.method private native onPauseNative(I)V
.end method

.method private native onResumeNative(I)V
.end method

.method private native onSaveInstanceStateNative(I)[B
.end method

.method private native onStartNative(I)V
.end method

.method private native onStopNative(I)V
.end method

.method private native onSurfaceChangedNative(ILandroid/view/Surface;III)V
.end method

.method private native onSurfaceCreatedNative(ILandroid/view/Surface;)V
.end method

.method private native onSurfaceDestroyedNative(I)V
.end method

.method private native onSurfaceRedrawNeededNative(ILandroid/view/Surface;)V
.end method

.method private native onWindowFocusChangedNative(IZ)V
.end method

.method private native unloadNativeCode(I)V
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 286
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDispatchingUnhandledKey:Z

    if-eqz v0, :cond_0

    .line 287
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 292
    :goto_0
    return v0

    .line 291
    :cond_0
    iget v0, p0, Landroid/app/NativeActivity;->mNativeHandle:I

    invoke-direct {p0, v0, p1}, Landroid/app/NativeActivity;->dispatchKeyEventNative(ILandroid/view/KeyEvent;)V

    .line 292
    const/4 v0, 0x1

    goto :goto_0
.end method

.method dispatchUnhandledKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 357
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/app/NativeActivity;->mDispatchingUnhandledKey:Z

    .line 358
    invoke-virtual {p0}, Landroid/app/NativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 359
    .local v0, decor:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 365
    iput-boolean v2, p0, Landroid/app/NativeActivity;->mDispatchingUnhandledKey:Z

    .line 362
    :goto_0
    return v1

    .line 365
    :cond_0
    iput-boolean v2, p0, Landroid/app/NativeActivity;->mDispatchingUnhandledKey:Z

    move v1, v2

    .line 362
    goto :goto_0

    .line 365
    .end local v0           #decor:Landroid/view/View;
    :catchall_0
    move-exception v1

    iput-boolean v2, p0, Landroid/app/NativeActivity;->mDispatchingUnhandledKey:Z

    throw v1
.end method

.method hideIme(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 387
    iget-object v0, p0, Landroid/app/NativeActivity;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    invoke-virtual {v1}, Landroid/app/NativeActivity$NativeContentView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 388
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 262
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 263
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 264
    iget v0, p0, Landroid/app/NativeActivity;->mNativeHandle:I

    invoke-direct {p0, v0}, Landroid/app/NativeActivity;->onConfigurationChangedNative(I)V

    .line 266
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 20
    .parameter "savedInstanceState"

    .prologue
    .line 139
    const-string/jumbo v15, "main"

    .line 140
    .local v15, libname:Ljava/lang/String;
    const-string v3, "ANativeActivity_onCreate"

    .line 143
    .local v3, funcname:Ljava/lang/String;
    const-string v1, "input_method"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/app/NativeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/app/NativeActivity;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 144
    new-instance v1, Landroid/app/NativeActivity$InputMethodCallback;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Landroid/app/NativeActivity$InputMethodCallback;-><init>(Landroid/app/NativeActivity;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/app/NativeActivity;->mInputMethodCallback:Landroid/app/NativeActivity$InputMethodCallback;

    .line 146
    invoke-virtual/range {p0 .. p0}, Landroid/app/NativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/view/Window;->takeSurface(Landroid/view/SurfaceHolder$Callback2;)V

    .line 147
    invoke-virtual/range {p0 .. p0}, Landroid/app/NativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/view/Window;->takeInputQueue(Landroid/view/InputQueue$Callback;)V

    .line 148
    invoke-virtual/range {p0 .. p0}, Landroid/app/NativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/view/Window;->setFormat(I)V

    .line 149
    invoke-virtual/range {p0 .. p0}, Landroid/app/NativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v4, 0x10

    invoke-virtual {v1, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 153
    new-instance v1, Landroid/app/NativeActivity$NativeContentView;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Landroid/app/NativeActivity$NativeContentView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    .line 154
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    move-object/from16 v0, p0

    iput-object v0, v1, Landroid/app/NativeActivity$NativeContentView;->mActivity:Landroid/app/NativeActivity;

    .line 155
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/app/NativeActivity;->setContentView(Landroid/view/View;)V

    .line 156
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    invoke-virtual {v1}, Landroid/app/NativeActivity$NativeContentView;->requestFocus()Z

    .line 157
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    invoke-virtual {v1}, Landroid/app/NativeActivity$NativeContentView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 160
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/NativeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/app/NativeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v11

    .line 162
    .local v11, ai:Landroid/content/pm/ActivityInfo;
    iget-object v1, v11, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 163
    iget-object v1, v11, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "android.app.lib_name"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 164
    .local v18, ln:Ljava/lang/String;
    if-eqz v18, :cond_0

    move-object/from16 v15, v18

    .line 165
    :cond_0
    iget-object v1, v11, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "android.app.func_name"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 166
    if-eqz v18, :cond_1

    move-object/from16 v3, v18

    .line 172
    .end local v18           #ln:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    .line 174
    .local v2, path:Ljava/lang/String;
    new-instance v16, Ljava/io/File;

    iget-object v1, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .local v16, libraryFile:Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 177
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 181
    :cond_2
    if-nez v2, :cond_3

    .line 182
    const-string v1, "LD_LIBRARY_PATH"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 183
    .local v17, libraryPath:Ljava/lang/String;
    const-string v1, ":"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 184
    .local v19, paths:[Ljava/lang/String;
    invoke-static {v15}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 185
    .local v14, libName:Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    move-object/from16 v0, v19

    array-length v1, v0

    if-ge v13, v1, :cond_3

    .line 186
    new-instance v16, Ljava/io/File;

    .end local v16           #libraryFile:Ljava/io/File;
    aget-object v1, v19, v13

    move-object/from16 v0, v16

    invoke-direct {v0, v1, v14}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .restart local v16       #libraryFile:Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 188
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 194
    .end local v13           #i:I
    .end local v14           #libName:Ljava/lang/String;
    .end local v17           #libraryPath:Ljava/lang/String;
    .end local v19           #paths:[Ljava/lang/String;
    :cond_3
    if-nez v2, :cond_5

    .line 195
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find native library: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    .end local v2           #path:Ljava/lang/String;
    .end local v11           #ai:Landroid/content/pm/ActivityInfo;
    .end local v16           #libraryFile:Ljava/io/File;
    :catch_0
    move-exception v12

    .line 169
    .local v12, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v4, "Error getting activity info"

    invoke-direct {v1, v4, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 185
    .end local v12           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2       #path:Ljava/lang/String;
    .restart local v11       #ai:Landroid/content/pm/ActivityInfo;
    .restart local v13       #i:I
    .restart local v14       #libName:Ljava/lang/String;
    .restart local v16       #libraryFile:Ljava/io/File;
    .restart local v17       #libraryPath:Ljava/lang/String;
    .restart local v19       #paths:[Ljava/lang/String;
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 198
    .end local v13           #i:I
    .end local v14           #libName:Ljava/lang/String;
    .end local v17           #libraryPath:Ljava/lang/String;
    .end local v19           #paths:[Ljava/lang/String;
    :cond_5
    if-eqz p1, :cond_6

    const-string v1, "android:native_state"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v10

    .line 201
    .local v10, nativeSavedState:[B
    :goto_1
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/app/NativeActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroid/app/NativeActivity;->getObbDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v1, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStorageAppFilesDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual/range {p0 .. p0}, Landroid/app/NativeActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v10}, Landroid/app/NativeActivity;->loadNativeCode(Ljava/lang/String;Ljava/lang/String;Landroid/os/MessageQueue;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/res/AssetManager;[B)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/app/NativeActivity;->mNativeHandle:I

    .line 206
    move-object/from16 v0, p0

    iget v1, v0, Landroid/app/NativeActivity;->mNativeHandle:I

    if-nez v1, :cond_7

    .line 207
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to load native library: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 198
    .end local v10           #nativeSavedState:[B
    :cond_6
    const/4 v10, 0x0

    goto :goto_1

    .line 209
    .restart local v10       #nativeSavedState:[B
    :cond_7
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 210
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    .line 215
    iget-object v0, p0, Landroid/app/NativeActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 216
    iget v0, p0, Landroid/app/NativeActivity;->mNativeHandle:I

    invoke-direct {p0, v0}, Landroid/app/NativeActivity;->onSurfaceDestroyedNative(I)V

    .line 217
    iput-object v2, p0, Landroid/app/NativeActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 219
    :cond_0
    iget-object v0, p0, Landroid/app/NativeActivity;->mCurInputQueue:Landroid/view/InputQueue;

    if-eqz v0, :cond_1

    .line 220
    iget v0, p0, Landroid/app/NativeActivity;->mNativeHandle:I

    iget-object v1, p0, Landroid/app/NativeActivity;->mCurInputQueue:Landroid/view/InputQueue;

    invoke-virtual {v1}, Landroid/view/InputQueue;->getInputChannel()Landroid/view/InputChannel;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onInputChannelDestroyedNative(ILandroid/view/InputChannel;)V

    .line 221
    iput-object v2, p0, Landroid/app/NativeActivity;->mCurInputQueue:Landroid/view/InputQueue;

    .line 223
    :cond_1
    iget v0, p0, Landroid/app/NativeActivity;->mNativeHandle:I

    invoke-direct {p0, v0}, Landroid/app/NativeActivity;->unloadNativeCode(I)V

    .line 224
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 225
    return-void
.end method

.method public onGlobalLayout()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 339
    iget-object v0, p0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    iget-object v1, p0, Landroid/app/NativeActivity;->mLocation:[I

    invoke-virtual {v0, v1}, Landroid/app/NativeActivity$NativeContentView;->getLocationInWindow([I)V

    .line 340
    iget-object v0, p0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    invoke-virtual {v0}, Landroid/app/NativeActivity$NativeContentView;->getWidth()I

    move-result v7

    .line 341
    .local v7, w:I
    iget-object v0, p0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    invoke-virtual {v0}, Landroid/app/NativeActivity$NativeContentView;->getHeight()I

    move-result v6

    .line 342
    .local v6, h:I
    iget-object v0, p0, Landroid/app/NativeActivity;->mLocation:[I

    aget v0, v0, v2

    iget v1, p0, Landroid/app/NativeActivity;->mLastContentX:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/app/NativeActivity;->mLocation:[I

    aget v0, v0, v3

    iget v1, p0, Landroid/app/NativeActivity;->mLastContentY:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/app/NativeActivity;->mLastContentWidth:I

    if-ne v7, v0, :cond_0

    iget v0, p0, Landroid/app/NativeActivity;->mLastContentHeight:I

    if-eq v6, v0, :cond_1

    .line 344
    :cond_0
    iget-object v0, p0, Landroid/app/NativeActivity;->mLocation:[I

    aget v0, v0, v2

    iput v0, p0, Landroid/app/NativeActivity;->mLastContentX:I

    .line 345
    iget-object v0, p0, Landroid/app/NativeActivity;->mLocation:[I

    aget v0, v0, v3

    iput v0, p0, Landroid/app/NativeActivity;->mLastContentY:I

    .line 346
    iput v7, p0, Landroid/app/NativeActivity;->mLastContentWidth:I

    .line 347
    iput v6, p0, Landroid/app/NativeActivity;->mLastContentHeight:I

    .line 348
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_1

    .line 349
    iget v1, p0, Landroid/app/NativeActivity;->mNativeHandle:I

    iget v2, p0, Landroid/app/NativeActivity;->mLastContentX:I

    iget v3, p0, Landroid/app/NativeActivity;->mLastContentY:I

    iget v4, p0, Landroid/app/NativeActivity;->mLastContentWidth:I

    iget v5, p0, Landroid/app/NativeActivity;->mLastContentHeight:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/NativeActivity;->onContentRectChangedNative(IIIII)V

    .line 353
    :cond_1
    return-void
.end method

.method public onInputQueueCreated(Landroid/view/InputQueue;)V
    .locals 2
    .parameter "queue"

    .prologue
    .line 325
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 326
    iput-object p1, p0, Landroid/app/NativeActivity;->mCurInputQueue:Landroid/view/InputQueue;

    .line 327
    iget v0, p0, Landroid/app/NativeActivity;->mNativeHandle:I

    invoke-virtual {p1}, Landroid/view/InputQueue;->getInputChannel()Landroid/view/InputChannel;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onInputChannelCreatedNative(ILandroid/view/InputChannel;)V

    .line 329
    :cond_0
    return-void
.end method

.method public onInputQueueDestroyed(Landroid/view/InputQueue;)V
    .locals 2
    .parameter "queue"

    .prologue
    .line 332
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/NativeActivity;->mCurInputQueue:Landroid/view/InputQueue;

    .line 333
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 334
    iget v0, p0, Landroid/app/NativeActivity;->mNativeHandle:I

    invoke-virtual {p1}, Landroid/view/InputQueue;->getInputChannel()Landroid/view/InputChannel;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onInputChannelDestroyedNative(ILandroid/view/InputChannel;)V

    .line 336
    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 270
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 271
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 272
    iget v0, p0, Landroid/app/NativeActivity;->mNativeHandle:I

    invoke-direct {p0, v0}, Landroid/app/NativeActivity;->onLowMemoryNative(I)V

    .line 274
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 229
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 230
    iget v0, p0, Landroid/app/NativeActivity;->mNativeHandle:I

    invoke-direct {p0, v0}, Landroid/app/NativeActivity;->onPauseNative(I)V

    .line 231
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 235
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 236
    iget v0, p0, Landroid/app/NativeActivity;->mNativeHandle:I

    invoke-direct {p0, v0}, Landroid/app/NativeActivity;->onResumeNative(I)V

    .line 237
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 241
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 242
    iget v1, p0, Landroid/app/NativeActivity;->mNativeHandle:I

    invoke-direct {p0, v1}, Landroid/app/NativeActivity;->onSaveInstanceStateNative(I)[B

    move-result-object v0

    .line 243
    .local v0, state:[B
    if-eqz v0, :cond_0

    .line 244
    const-string v1, "android:native_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 246
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 250
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 251
    iget v0, p0, Landroid/app/NativeActivity;->mNativeHandle:I

    invoke-direct {p0, v0}, Landroid/app/NativeActivity;->onStartNative(I)V

    .line 252
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 256
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 257
    iget v0, p0, Landroid/app/NativeActivity;->mNativeHandle:I

    invoke-direct {p0, v0}, Landroid/app/NativeActivity;->onStopNative(I)V

    .line 258
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 278
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 279
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 280
    iget v0, p0, Landroid/app/NativeActivity;->mNativeHandle:I

    invoke-direct {p0, v0, p1}, Landroid/app/NativeActivity;->onWindowFocusChangedNative(IZ)V

    .line 282
    :cond_0
    return-void
.end method

.method preDispatchKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 2
    .parameter "event"
    .parameter "seq"

    .prologue
    .line 370
    iget-object v0, p0, Landroid/app/NativeActivity;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/app/NativeActivity;->mInputMethodCallback:Landroid/app/NativeActivity$InputMethodCallback;

    invoke-virtual {v0, p0, p2, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->dispatchKeyEvent(Landroid/content/Context;ILandroid/view/KeyEvent;Landroid/view/inputmethod/InputMethodManager$FinishedEventCallback;)V

    .line 372
    return-void
.end method

.method setWindowFlags(II)V
    .locals 1
    .parameter "flags"
    .parameter "mask"

    .prologue
    .line 375
    invoke-virtual {p0}, Landroid/app/NativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFlags(II)V

    .line 376
    return-void
.end method

.method setWindowFormat(I)V
    .locals 1
    .parameter "format"

    .prologue
    .line 379
    invoke-virtual {p0}, Landroid/app/NativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setFormat(I)V

    .line 380
    return-void
.end method

.method showIme(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 383
    iget-object v0, p0, Landroid/app/NativeActivity;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 384
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 6
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 304
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 305
    iput-object p1, p0, Landroid/app/NativeActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 306
    iget v1, p0, Landroid/app/NativeActivity;->mNativeHandle:I

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/NativeActivity;->onSurfaceChangedNative(ILandroid/view/Surface;III)V

    .line 308
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 297
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 298
    iput-object p1, p0, Landroid/app/NativeActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 299
    iget v0, p0, Landroid/app/NativeActivity;->mNativeHandle:I

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onSurfaceCreatedNative(ILandroid/view/Surface;)V

    .line 301
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 318
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/NativeActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 319
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 320
    iget v0, p0, Landroid/app/NativeActivity;->mNativeHandle:I

    invoke-direct {p0, v0}, Landroid/app/NativeActivity;->onSurfaceDestroyedNative(I)V

    .line 322
    :cond_0
    return-void
.end method

.method public surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 311
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 312
    iput-object p1, p0, Landroid/app/NativeActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 313
    iget v0, p0, Landroid/app/NativeActivity;->mNativeHandle:I

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onSurfaceRedrawNeededNative(ILandroid/view/Surface;)V

    .line 315
    :cond_0
    return-void
.end method
