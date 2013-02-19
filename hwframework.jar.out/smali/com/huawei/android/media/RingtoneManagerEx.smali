.class public Lcom/huawei/android/media/RingtoneManagerEx;
.super Ljava/lang/Object;
.source "RingtoneManagerEx.java"


# static fields
.field public static final TYPE_RINGTONE2:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSetUriStat()Z
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Landroid/media/RingtoneManager;->getSetUriStat()Z

    move-result v0

    return v0
.end method
