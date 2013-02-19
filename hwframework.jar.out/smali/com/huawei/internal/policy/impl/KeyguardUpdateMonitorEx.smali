.class public Lcom/huawei/internal/policy/impl/KeyguardUpdateMonitorEx;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitorEx.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSimState(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;I)Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 2
    .parameter "obj"
    .parameter "subscription"

    .prologue
    .line 72
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getTelephonyPlmn(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;I)Ljava/lang/CharSequence;
    .locals 2
    .parameter "obj"
    .parameter "subscription"

    .prologue
    .line 76
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getTelephonySpn(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;I)Ljava/lang/CharSequence;
    .locals 2
    .parameter "obj"
    .parameter "subscription"

    .prologue
    .line 80
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
