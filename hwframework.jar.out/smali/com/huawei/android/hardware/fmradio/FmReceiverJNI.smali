.class Lcom/huawei/android/hardware/fmradio/FmReceiverJNI;
.super Ljava/lang/Object;
.source "FmReceiverJNI.java"


# static fields
.field static final FM_JNI_FAILURE:I = -0x1

.field static final FM_JNI_SUCCESS:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "fm_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native acquireFdNative(Ljava/lang/String;)I
.end method

.method static native audioControlNative(III)I
.end method

.method static native cancelSearchNative(I)I
.end method

.method static native closeFdNative(I)I
.end method

.method static native getAudioQuiltyNative(II)I
.end method

.method static native getBufferNative(I[BI)I
.end method

.method static native getControlNative(II)I
.end method

.method static native getFreqNative(I)I
.end method

.method static native getLowerBandNative(I)I
.end method

.method static native getRSSINative(I)I
.end method

.method static native getRawRdsNative(I[BI)I
.end method

.method static native setBandNative(III)I
.end method

.method static native setControlNative(III)I
.end method

.method static native setFreqNative(II)I
.end method

.method static native setMonoStereoNative(II)I
.end method

.method static native setNotchFilterNative(Z)V
.end method

.method static native setPINative(II)I
.end method

.method static native setPSRepeatCountNative(II)I
.end method

.method static native setPTYNative(II)I
.end method

.method static native setTxPowerLevelNative(II)I
.end method

.method static native startPSNative(ILjava/lang/String;I)I
.end method

.method static native startRTNative(ILjava/lang/String;I)I
.end method

.method static native startSearchNative(II)I
.end method

.method static native stopPSNative(I)I
.end method

.method static native stopRTNative(I)I
.end method
