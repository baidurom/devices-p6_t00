.class public Lcom/huawei/internal/telephony/uicc/IccRefreshResponseEx;
.super Ljava/lang/Object;
.source "IccRefreshResponseEx.java"


# static fields
.field public static final REFRESH_RESULT_FILE_UPDATE:I = 0x0

.field public static final REFRESH_RESULT_INIT:I = 0x1

.field public static final REFRESH_RESULT_RESET:I = 0x2


# instance fields
.field public aid:Ljava/lang/String;

.field public efId:I

.field public refreshResult:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)Ljava/lang/String;
    .locals 1
    .parameter "obj"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
