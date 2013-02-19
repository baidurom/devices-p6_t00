.class public Lcom/huawei/android/os/EnvironmentEx;
.super Ljava/lang/Object;
.source "EnvironmentEx.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUmsStoragePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Landroid/os/Environment;->getUmsStoragePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isUmsStorageMounted()Z
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Landroid/os/Environment;->isUmsStorageMounted()Z

    move-result v0

    return v0
.end method
