.class public Lcom/huawei/android/media/MediaRecorderEx;
.super Ljava/lang/Object;
.source "MediaRecorderEx.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static pause(Landroid/media/MediaRecorder;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 25
    invoke-virtual {p0}, Landroid/media/MediaRecorder;->pause()V

    .line 26
    return-void
.end method

.method public static resume(Landroid/media/MediaRecorder;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 28
    invoke-virtual {p0}, Landroid/media/MediaRecorder;->resume()V

    .line 29
    return-void
.end method
