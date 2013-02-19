.class public Lcom/huawei/internal/telephony/VirtualNetEx;
.super Ljava/lang/Object;
.source "VirtualNetEx.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApnFilter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/android/internal/telephony/VirtualNet;->getApnFilter()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isVirtualNet()Z
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/android/internal/telephony/VirtualNet;->isVirtualNet()Z

    move-result v0

    return v0
.end method
