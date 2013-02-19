.class public Lcom/huawei/android/media/AudioManagerEx;
.super Ljava/lang/Object;
.source "AudioManagerEx.java"


# static fields
.field public static final STREAM_FM:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isMicrophoneMute(Landroid/media/AudioManager;I)I
    .locals 1
    .parameter "obj"
    .parameter "modemType"

    .prologue
    .line 71
    invoke-virtual {p0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setMicrophoneMute(Landroid/media/AudioManager;IZ)V
    .locals 0
    .parameter "obj"
    .parameter "modemType"
    .parameter "on"

    .prologue
    .line 81
    invoke-virtual {p0, p2}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 84
    return-void
.end method
