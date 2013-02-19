.class public abstract Landroid/os/Vibrator;
.super Ljava/lang/Object;
.source "Vibrator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract hasVibrator()Z
.end method

.method public abstract vibrate(J)V
.end method

.method public vibrate(JI)V
    .locals 0
    .parameter "milliseconds"
    .parameter "strength"

    .prologue
    .line 82
    return-void
.end method

.method public abstract vibrate([JI)V
.end method

.method public vibrate([JII)V
    .locals 0
    .parameter "pattern"
    .parameter "repeat"
    .parameter "strength"

    .prologue
    .line 83
    return-void
.end method

.method public vibrateEffect(IJI)V
    .locals 0
    .parameter "effectIndex"
    .parameter "milliseconds"
    .parameter "repeat"

    .prologue
    .line 84
    return-void
.end method

.method public vibrateEffectSequence([BIJI)V
    .locals 0
    .parameter "buffer"
    .parameter "bufferSize"
    .parameter "milliseconds"
    .parameter "repeat"

    .prologue
    .line 85
    return-void
.end method

.method public vibrateHWEffect(I)V
    .locals 0
    .parameter "effectIndex"

    .prologue
    .line 86
    return-void
.end method
