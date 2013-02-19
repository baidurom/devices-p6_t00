.class public interface abstract Landroid/webkit/WebViewInputDispatcher$WebKitCallbacks;
.super Ljava/lang/Object;
.source "WebViewInputDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewInputDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WebKitCallbacks"
.end annotation


# virtual methods
.method public abstract blockUIMessages()V
.end method

.method public abstract dispatchWebKitEvent(Landroid/webkit/WebViewInputDispatcher;Landroid/view/MotionEvent;II)Z
.end method

.method public abstract findTouchNodeAt(II)Z
.end method

.method public abstract focusIsPlugin(II)Z
.end method

.method public abstract getWebKitLooper()Landroid/os/Looper;
.end method

.method public abstract removeUIMessages()V
.end method

.method public abstract unblockUIMessages()V
.end method
