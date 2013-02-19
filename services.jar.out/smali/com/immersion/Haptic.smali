.class public Lcom/immersion/Haptic;
.super Ljava/lang/Object;
.source "Haptic.java"


# static fields
.field public static final DEVICE_DRV2604:I = 0x4

.field public static final DEVICE_DRV2605:I = 0x5

.field public static final DEVICE_REVISION_MASK:I = 0x7

.field public static final HAPTIC_EFFECT_INDEX_MAX:I = 0xfe

.field public static final HAPTIC_INTER_EFFECT_DELAY_10MS_MAX:I = 0x7f

.field public static final HAPTIC_PLAY_EFFECT_SEQUENCE_BUFFER_SIZE_MAX:I = 0x8

.field public static final HAPTIC_TIMED_EFFECT_DURATION_MS_MAX:I = 0x2710


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "hapticapi"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 26
    const-string v0, "hapticjavaapi"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getChipRevision()I
.end method

.method public static native getDeviceID()I
.end method

.method public static native initialize()V
.end method

.method public static native playEffect(I)V
.end method

.method public static native playEffectSequence([BI)V
.end method

.method public static native playTimedEffect(II)V
.end method

.method public static native runDiagnostic()I
.end method

.method public static native stopPlayingEffect()V
.end method

.method public static native terminate()V
.end method
