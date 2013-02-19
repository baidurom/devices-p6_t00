.class public final Lcom/huawei/android/telephony/SmsManagerEx;
.super Ljava/lang/Object;
.source "SmsManagerEx.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableCdmaBroadcast(Landroid/telephony/SmsManager;I)Z
    .locals 1
    .parameter "obj"
    .parameter "messageIdentifier"

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Landroid/telephony/SmsManager;->disableCdmaBroadcast(I)Z

    move-result v0

    return v0
.end method

.method public static enableCdmaBroadcast(Landroid/telephony/SmsManager;I)Z
    .locals 1
    .parameter "obj"
    .parameter "messageIdentifier"

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Landroid/telephony/SmsManager;->enableCdmaBroadcast(I)Z

    move-result v0

    return v0
.end method

.method public static getSmscAddr(Landroid/telephony/SmsManager;)Ljava/lang/String;
    .locals 1
    .parameter "obj"

    .prologue
    .line 42
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSmscAddr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setSmscAddr(Landroid/telephony/SmsManager;Ljava/lang/String;)Z
    .locals 1
    .parameter "obj"
    .parameter "smscAddr"

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Landroid/telephony/SmsManager;->setSmscAddr(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
