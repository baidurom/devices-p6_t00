.class public Lcom/huawei/internal/telephony/uicc/AdnRecordEx;
.super Ljava/lang/Object;
.source "AdnRecordEx.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static describeContents(Lcom/android/internal/telephony/AdnRecord;)I
    .locals 1
    .parameter "obj"

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public static writeToParcel(Lcom/android/internal/telephony/AdnRecord;Landroid/os/Parcel;I)V
    .locals 0
    .parameter "obj"
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/AdnRecord;->writeToParcel(Landroid/os/Parcel;I)V

    .line 68
    return-void
.end method
