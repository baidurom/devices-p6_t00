.class final Lcom/android/server/power/RampAnimator;
.super Ljava/lang/Object;
.source "RampAnimator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mAnimatedValue:F

.field private mAnimating:Z

.field private final mCallback:Ljava/lang/Runnable;

.field private final mChoreographer:Landroid/view/Choreographer;

.field private mCurrentValue:I

.field private mDecScale:F

.field private mFirstTime:Z

.field private mIncScale:F

.field private mIsRateDiff:Z

.field private mLastFrameTimeNanos:J

.field private final mObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mProperty:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mRate:I

.field private mTargetValue:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/util/IntProperty;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/util/IntProperty",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, this:Lcom/android/server/power/RampAnimator;,"Lcom/android/server/power/RampAnimator<TT;>;"
    .local p1, object:Ljava/lang/Object;,"TT;"
    .local p2, property:Landroid/util/IntProperty;,"Landroid/util/IntProperty<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/RampAnimator;->mFirstTime:Z

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/RampAnimator;->mIsRateDiff:Z

    .line 154
    new-instance v0, Lcom/android/server/power/RampAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/RampAnimator$1;-><init>(Lcom/android/server/power/RampAnimator;)V

    iput-object v0, p0, Lcom/android/server/power/RampAnimator;->mCallback:Ljava/lang/Runnable;

    .line 49
    iput-object p1, p0, Lcom/android/server/power/RampAnimator;->mObject:Ljava/lang/Object;

    .line 50
    iput-object p2, p0, Lcom/android/server/power/RampAnimator;->mProperty:Landroid/util/IntProperty;

    .line 51
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/power/RampAnimator;)Landroid/view/Choreographer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/server/power/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/power/RampAnimator;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/android/server/power/RampAnimator;->mLastFrameTimeNanos:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/android/server/power/RampAnimator;)Landroid/util/IntProperty;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/server/power/RampAnimator;->mProperty:Landroid/util/IntProperty;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/power/RampAnimator;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-wide p1, p0, Lcom/android/server/power/RampAnimator;->mLastFrameTimeNanos:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/android/server/power/RampAnimator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/server/power/RampAnimator;->postCallback()V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/server/power/RampAnimator;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/server/power/RampAnimator;->mAnimating:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/power/RampAnimator;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/android/server/power/RampAnimator;->mAnimatedValue:F

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/power/RampAnimator;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Lcom/android/server/power/RampAnimator;->mAnimatedValue:F

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/power/RampAnimator;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/android/server/power/RampAnimator;->mTargetValue:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/power/RampAnimator;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/android/server/power/RampAnimator;->mRate:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/power/RampAnimator;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/power/RampAnimator;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/power/RampAnimator;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/android/server/power/RampAnimator;->mIsRateDiff:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/power/RampAnimator;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/server/power/RampAnimator;->mIsRateDiff:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/power/RampAnimator;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/android/server/power/RampAnimator;->mIncScale:F

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/power/RampAnimator;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Lcom/android/server/power/RampAnimator;->mIncScale:F

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/power/RampAnimator;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/android/server/power/RampAnimator;->mDecScale:F

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/power/RampAnimator;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Lcom/android/server/power/RampAnimator;->mDecScale:F

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/power/RampAnimator;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/server/power/RampAnimator;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method private postCallback()V
    .locals 4

    .prologue
    .line 151
    .local p0, this:Lcom/android/server/power/RampAnimator;,"Lcom/android/server/power/RampAnimator<TT;>;"
    iget-object v0, p0, Lcom/android/server/power/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/power/RampAnimator;->mCallback:Ljava/lang/Runnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 152
    return-void
.end method


# virtual methods
.method public animateTo(II)Z
    .locals 4
    .parameter "target"
    .parameter "rate"

    .prologue
    .local p0, this:Lcom/android/server/power/RampAnimator;,"Lcom/android/server/power/RampAnimator<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 115
    iget-boolean v2, p0, Lcom/android/server/power/RampAnimator;->mFirstTime:Z

    if-eqz v2, :cond_0

    .line 116
    iput-boolean v0, p0, Lcom/android/server/power/RampAnimator;->mFirstTime:Z

    .line 117
    iget-object v2, p0, Lcom/android/server/power/RampAnimator;->mProperty:Landroid/util/IntProperty;

    iget-object v3, p0, Lcom/android/server/power/RampAnimator;->mObject:Ljava/lang/Object;

    invoke-virtual {v2, v3, p1}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    .line 118
    iput p1, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    .line 147
    :goto_0
    return v1

    .line 129
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/power/RampAnimator;->mAnimating:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/server/power/RampAnimator;->mRate:I

    if-gt p2, v2, :cond_2

    iget v2, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    if-gt p1, v2, :cond_1

    iget v2, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    iget v3, p0, Lcom/android/server/power/RampAnimator;->mTargetValue:I

    if-le v2, v3, :cond_2

    :cond_1
    iget v2, p0, Lcom/android/server/power/RampAnimator;->mTargetValue:I

    iget v3, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    if-gt v2, v3, :cond_3

    iget v2, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    if-gt v2, p1, :cond_3

    .line 133
    :cond_2
    iput p2, p0, Lcom/android/server/power/RampAnimator;->mRate:I

    .line 136
    :cond_3
    iget v2, p0, Lcom/android/server/power/RampAnimator;->mTargetValue:I

    if-eq v2, p1, :cond_4

    move v0, v1

    .line 137
    .local v0, changed:Z
    :cond_4
    iput p1, p0, Lcom/android/server/power/RampAnimator;->mTargetValue:I

    .line 140
    iget-boolean v2, p0, Lcom/android/server/power/RampAnimator;->mAnimating:Z

    if-nez v2, :cond_5

    iget v2, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    if-eq p1, v2, :cond_5

    .line 141
    iput-boolean v1, p0, Lcom/android/server/power/RampAnimator;->mAnimating:Z

    .line 142
    iget v1, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/power/RampAnimator;->mAnimatedValue:F

    .line 143
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/RampAnimator;->mLastFrameTimeNanos:J

    .line 144
    invoke-direct {p0}, Lcom/android/server/power/RampAnimator;->postCallback()V

    :cond_5
    move v1, v0

    .line 147
    goto :goto_0
.end method

.method public animateTo(IIFFZZ)Z
    .locals 4
    .parameter "target"
    .parameter "rate"
    .parameter "incScale"
    .parameter "decScale"
    .parameter "rateDiff"
    .parameter "immediate"

    .prologue
    .local p0, this:Lcom/android/server/power/RampAnimator;,"Lcom/android/server/power/RampAnimator<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 58
    iget-boolean v2, p0, Lcom/android/server/power/RampAnimator;->mFirstTime:Z

    if-eqz v2, :cond_0

    .line 59
    iput-boolean v0, p0, Lcom/android/server/power/RampAnimator;->mFirstTime:Z

    .line 60
    iget-object v2, p0, Lcom/android/server/power/RampAnimator;->mProperty:Landroid/util/IntProperty;

    iget-object v3, p0, Lcom/android/server/power/RampAnimator;->mObject:Ljava/lang/Object;

    invoke-virtual {v2, v3, p1}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    .line 61
    iput p1, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    .line 99
    :goto_0
    return v1

    .line 63
    :cond_0
    if-eqz p6, :cond_1

    iget v2, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    if-eq p1, v2, :cond_1

    .line 64
    iget-object v2, p0, Lcom/android/server/power/RampAnimator;->mProperty:Landroid/util/IntProperty;

    iget-object v3, p0, Lcom/android/server/power/RampAnimator;->mObject:Ljava/lang/Object;

    invoke-virtual {v2, v3, p1}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    .line 65
    iput p1, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    goto :goto_0

    .line 68
    :cond_1
    iput-boolean p5, p0, Lcom/android/server/power/RampAnimator;->mIsRateDiff:Z

    .line 69
    iget-boolean v2, p0, Lcom/android/server/power/RampAnimator;->mIsRateDiff:Z

    if-eqz v2, :cond_2

    .line 70
    iput p3, p0, Lcom/android/server/power/RampAnimator;->mIncScale:F

    .line 71
    iput p4, p0, Lcom/android/server/power/RampAnimator;->mDecScale:F

    .line 81
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/power/RampAnimator;->mAnimating:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/server/power/RampAnimator;->mRate:I

    if-gt p2, v2, :cond_4

    iget v2, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    if-gt p1, v2, :cond_3

    iget v2, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    iget v3, p0, Lcom/android/server/power/RampAnimator;->mTargetValue:I

    if-le v2, v3, :cond_4

    :cond_3
    iget v2, p0, Lcom/android/server/power/RampAnimator;->mTargetValue:I

    iget v3, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    if-gt v2, v3, :cond_5

    iget v2, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    if-gt v2, p1, :cond_5

    .line 85
    :cond_4
    iput p2, p0, Lcom/android/server/power/RampAnimator;->mRate:I

    .line 88
    :cond_5
    iget v2, p0, Lcom/android/server/power/RampAnimator;->mTargetValue:I

    if-eq v2, p1, :cond_6

    move v0, v1

    .line 89
    .local v0, changed:Z
    :cond_6
    iput p1, p0, Lcom/android/server/power/RampAnimator;->mTargetValue:I

    .line 92
    iget-boolean v2, p0, Lcom/android/server/power/RampAnimator;->mAnimating:Z

    if-nez v2, :cond_7

    iget v2, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    if-eq p1, v2, :cond_7

    .line 93
    iput-boolean v1, p0, Lcom/android/server/power/RampAnimator;->mAnimating:Z

    .line 94
    iget v1, p0, Lcom/android/server/power/RampAnimator;->mCurrentValue:I

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/power/RampAnimator;->mAnimatedValue:F

    .line 95
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/RampAnimator;->mLastFrameTimeNanos:J

    .line 96
    invoke-direct {p0}, Lcom/android/server/power/RampAnimator;->postCallback()V

    :cond_7
    move v1, v0

    .line 99
    goto :goto_0
.end method
