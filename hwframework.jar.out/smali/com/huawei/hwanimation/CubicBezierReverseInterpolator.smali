.class public Lcom/huawei/hwanimation/CubicBezierReverseInterpolator;
.super Lcom/huawei/hwanimation/CubicBezierInterpolator;
.source "CubicBezierReverseInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field private static final TAG:Ljava/lang/String; = "CubicBezierReverseInterpolator"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/huawei/hwanimation/CubicBezierInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4
    .parameter "input"

    .prologue
    const/high16 v3, 0x3f80

    .line 23
    const v0, 0x3983126f

    sub-float v1, v3, p1

    invoke-virtual {p0, v1}, Lcom/huawei/hwanimation/CubicBezierReverseInterpolator;->BinarySearch(F)J

    move-result-wide v1

    long-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/huawei/hwanimation/CubicBezierReverseInterpolator;->getCubicBezierY(F)F

    move-result v0

    sub-float v0, v3, v0

    return v0
.end method
