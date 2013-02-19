.class public Lcom/huawei/hwanimation/CubicBezierInterpolator;
.super Ljava/lang/Object;
.source "CubicBezierInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field public static final DEBUG:Z = true

.field static final MAX_RESOLUTION:J = 0xfa0L

.field static final SEARCH_STEP:F = 2.5E-4f

.field private static final TAG:Ljava/lang/String; = "CubicBezierInterpolator"


# instance fields
.field mControlPoint1x:F

.field mControlPoint1y:F

.field mControlPoint2x:F

.field mControlPoint2y:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v1, p0, Lcom/huawei/hwanimation/CubicBezierInterpolator;->mControlPoint1x:F

    iput v1, p0, Lcom/huawei/hwanimation/CubicBezierInterpolator;->mControlPoint1y:F

    .line 40
    iput v1, p0, Lcom/huawei/hwanimation/CubicBezierInterpolator;->mControlPoint2x:F

    iput v1, p0, Lcom/huawei/hwanimation/CubicBezierInterpolator;->mControlPoint2y:F

    .line 49
    sget-object v1, Landroidhwext/R$styleable;->CubicBezierInterpolator:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 51
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/huawei/hwanimation/CubicBezierInterpolator;->mControlPoint1x:F

    .line 52
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/huawei/hwanimation/CubicBezierInterpolator;->mControlPoint1y:F

    .line 53
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/huawei/hwanimation/CubicBezierInterpolator;->mControlPoint2x:F

    .line 54
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/huawei/hwanimation/CubicBezierInterpolator;->mControlPoint2y:F

    .line 56
    const-string v1, "CubicBezierInterpolator"

    invoke-virtual {p0}, Lcom/huawei/hwanimation/CubicBezierInterpolator;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 60
    return-void
.end method

.method private getCubicBezierX(F)F
    .locals 4
    .parameter "t"

    .prologue
    const/high16 v3, 0x4040

    const/high16 v2, 0x3f80

    .line 81
    sub-float v0, v2, p1

    mul-float/2addr v0, v3

    sub-float v1, v2, p1

    mul-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/huawei/hwanimation/CubicBezierInterpolator;->mControlPoint1x:F

    mul-float/2addr v0, v1

    sub-float v1, v2, p1

    mul-float/2addr v1, v3

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/huawei/hwanimation/CubicBezierInterpolator;->mControlPoint2x:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float v1, p1, p1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method BinarySearch(F)J
    .locals 12
    .parameter "key"

    .prologue
    const-wide/16 v10, 0x1

    .line 102
    const-wide/16 v3, 0x0

    .line 103
    .local v3, low:J
    const-wide/16 v1, 0xfa0

    .line 106
    .local v1, high:J
    const/4 v0, 0x0

    .line 108
    .local v0, approximation:F
    :goto_0
    cmp-long v7, v3, v1

    if-gtz v7, :cond_1

    .line 109
    add-long v7, v3, v1

    const/4 v9, 0x1

    ushr-long v5, v7, v9

    .line 110
    .local v5, middle:J
    const v7, 0x3983126f

    long-to-float v8, v5

    mul-float/2addr v7, v8

    invoke-direct {p0, v7}, Lcom/huawei/hwanimation/CubicBezierInterpolator;->getCubicBezierX(F)F

    move-result v0

    .line 112
    cmpg-float v7, v0, p1

    if-gez v7, :cond_0

    .line 113
    add-long v3, v5, v10

    goto :goto_0

    .line 114
    :cond_0
    cmpl-float v7, v0, p1

    if-lez v7, :cond_2

    .line 115
    sub-long v1, v5, v10

    goto :goto_0

    .end local v5           #middle:J
    :cond_1
    move-wide v5, v3

    .line 121
    :cond_2
    return-wide v5
.end method

.method protected getCubicBezierY(F)F
    .locals 4
    .parameter "t"

    .prologue
    const/high16 v3, 0x4040

    const/high16 v2, 0x3f80

    .line 92
    sub-float v0, v2, p1

    mul-float/2addr v0, v3

    sub-float v1, v2, p1

    mul-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/huawei/hwanimation/CubicBezierInterpolator;->mControlPoint1y:F

    mul-float/2addr v0, v1

    sub-float v1, v2, p1

    mul-float/2addr v1, v3

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/huawei/hwanimation/CubicBezierInterpolator;->mControlPoint2y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    mul-float v1, p1, p1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method public getInterpolation(F)F
    .locals 3
    .parameter "input"

    .prologue
    .line 71
    const v0, 0x3983126f

    invoke-virtual {p0, p1}, Lcom/huawei/hwanimation/CubicBezierInterpolator;->BinarySearch(F)J

    move-result-wide v1

    long-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/huawei/hwanimation/CubicBezierInterpolator;->getCubicBezierY(F)F

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "CubicBezierInterpolator"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 127
    .local v0, sb:Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mControlPoint1x = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/huawei/hwanimation/CubicBezierInterpolator;->mControlPoint1x:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mControlPoint1y = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/huawei/hwanimation/CubicBezierInterpolator;->mControlPoint1y:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mControlPoint2x = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/huawei/hwanimation/CubicBezierInterpolator;->mControlPoint2x:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", mControlPoint2y = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/huawei/hwanimation/CubicBezierInterpolator;->mControlPoint2y:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
