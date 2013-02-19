.class public Lcom/huawei/android/telephony/TelephonyManagerEx;
.super Ljava/lang/Object;
.source "TelephonyManagerEx.java"


# static fields
.field public static final SIM_STATE_ABSENT:I = 0x1

.field public static final SIM_STATE_CARD_IO_ERROR:I = 0x6

.field public static final SIM_STATE_DEACTIVED:I = 0x8

.field public static final SIM_STATE_NETWORK_LOCKED:I = 0x4

.field public static final SIM_STATE_NOT_READY:I = 0x7

.field public static final SIM_STATE_PIN_REQUIRED:I = 0x2

.field public static final SIM_STATE_PUK_REQUIRED:I = 0x3

.field public static final SIM_STATE_READY:I = 0x5

.field public static final SIM_STATE_UNKNOWN:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApnFilter()Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getPesn(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 2
    .parameter "object"

    .prologue
    .line 102
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getPhoneCount(Landroid/telephony/TelephonyManager;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 75
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    return v0
.end method

.method public static getPhoneType(Landroid/telephony/TelephonyManager;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 98
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public static isMultiSimEnabled(Landroid/telephony/TelephonyManager;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 84
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    return v0
.end method

.method public static isVirtualNet()Z
    .locals 2

    .prologue
    .line 108
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
