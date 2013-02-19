.class public Lcom/huawei/android/widget/LockPatternUtilsEx;
.super Ljava/lang/Object;
.source "LockPatternUtilsEx.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/huawei/android/widget/LockPatternUtilsEx;->mContext:Landroid/content/Context;

    .line 29
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/huawei/android/widget/LockPatternUtilsEx;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 30
    return-void
.end method


# virtual methods
.method public clearLockEx(ZZ)V
    .locals 1
    .parameter "isBioFallback"
    .parameter "isHwPinFallback"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/huawei/android/widget/LockPatternUtilsEx;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->clearLockEx(ZZ)V

    .line 33
    return-void
.end method

.method public saveLockPassword(Ljava/lang/String;IZZ)V
    .locals 1
    .parameter "password"
    .parameter "quality"
    .parameter "isBioFallback"
    .parameter "isHwPinFallback"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/huawei/android/widget/LockPatternUtilsEx;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;IZZ)V

    .line 37
    return-void
.end method
