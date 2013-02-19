.class Lcom/android/server/power/RampAnimator$1;
.super Ljava/lang/Object;
.source "RampAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/RampAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/RampAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/power/RampAnimator;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    .local p0, this:Lcom/android/server/power/RampAnimator$1;,"Lcom/android/server/power/RampAnimator.1;"
    iput-object p1, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .local p0, this:Lcom/android/server/power/RampAnimator$1;,"Lcom/android/server/power/RampAnimator.1;"
    const/4 v10, 0x0

    .line 157
    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mChoreographer:Landroid/view/Choreographer;
    invoke-static {v6}, Lcom/android/server/power/RampAnimator;->access$000(Lcom/android/server/power/RampAnimator;)Landroid/view/Choreographer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v1

    .line 158
    .local v1, frameTimeNanos:J
    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mLastFrameTimeNanos:J
    invoke-static {v6}, Lcom/android/server/power/RampAnimator;->access$100(Lcom/android/server/power/RampAnimator;)J

    move-result-wide v6

    sub-long v6, v1, v6

    long-to-float v6, v6

    const v7, 0x3089705f

    mul-float v5, v6, v7

    .line 160
    .local v5, timeDelta:F
    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #setter for: Lcom/android/server/power/RampAnimator;->mLastFrameTimeNanos:J
    invoke-static {v6, v1, v2}, Lcom/android/server/power/RampAnimator;->access$102(Lcom/android/server/power/RampAnimator;J)J

    .line 166
    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v4

    .line 167
    .local v4, scale:F
    const/4 v6, 0x0

    cmpl-float v6, v4, v6

    if-nez v6, :cond_2

    .line 169
    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    iget-object v7, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mTargetValue:I
    invoke-static {v7}, Lcom/android/server/power/RampAnimator;->access$300(Lcom/android/server/power/RampAnimator;)I

    move-result v7

    int-to-float v7, v7

    #setter for: Lcom/android/server/power/RampAnimator;->mAnimatedValue:F
    invoke-static {v6, v7}, Lcom/android/server/power/RampAnimator;->access$202(Lcom/android/server/power/RampAnimator;F)F

    .line 190
    :goto_0
    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mCurrentValue:I
    invoke-static {v6}, Lcom/android/server/power/RampAnimator;->access$500(Lcom/android/server/power/RampAnimator;)I

    move-result v3

    .line 191
    .local v3, oldCurrentValue:I
    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    iget-object v7, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mAnimatedValue:F
    invoke-static {v7}, Lcom/android/server/power/RampAnimator;->access$200(Lcom/android/server/power/RampAnimator;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    #setter for: Lcom/android/server/power/RampAnimator;->mCurrentValue:I
    invoke-static {v6, v7}, Lcom/android/server/power/RampAnimator;->access$502(Lcom/android/server/power/RampAnimator;I)I

    .line 193
    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mCurrentValue:I
    invoke-static {v6}, Lcom/android/server/power/RampAnimator;->access$500(Lcom/android/server/power/RampAnimator;)I

    move-result v6

    if-eq v3, v6, :cond_0

    .line 194
    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mProperty:Landroid/util/IntProperty;
    invoke-static {v6}, Lcom/android/server/power/RampAnimator;->access$1000(Lcom/android/server/power/RampAnimator;)Landroid/util/IntProperty;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mObject:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/server/power/RampAnimator;->access$900(Lcom/android/server/power/RampAnimator;)Ljava/lang/Object;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mCurrentValue:I
    invoke-static {v8}, Lcom/android/server/power/RampAnimator;->access$500(Lcom/android/server/power/RampAnimator;)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    .line 197
    :cond_0
    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mTargetValue:I
    invoke-static {v6}, Lcom/android/server/power/RampAnimator;->access$300(Lcom/android/server/power/RampAnimator;)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mCurrentValue:I
    invoke-static {v7}, Lcom/android/server/power/RampAnimator;->access$500(Lcom/android/server/power/RampAnimator;)I

    move-result v7

    if-eq v6, v7, :cond_6

    .line 198
    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #calls: Lcom/android/server/power/RampAnimator;->postCallback()V
    invoke-static {v6}, Lcom/android/server/power/RampAnimator;->access$1100(Lcom/android/server/power/RampAnimator;)V

    .line 208
    :cond_1
    :goto_1
    return-void

    .line 171
    .end local v3           #oldCurrentValue:I
    :cond_2
    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mRate:I
    invoke-static {v6}, Lcom/android/server/power/RampAnimator;->access$400(Lcom/android/server/power/RampAnimator;)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v5

    div-float v0, v6, v4

    .line 172
    .local v0, amount:F
    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mTargetValue:I
    invoke-static {v6}, Lcom/android/server/power/RampAnimator;->access$300(Lcom/android/server/power/RampAnimator;)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mCurrentValue:I
    invoke-static {v7}, Lcom/android/server/power/RampAnimator;->access$500(Lcom/android/server/power/RampAnimator;)I

    move-result v7

    if-le v6, v7, :cond_4

    .line 174
    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mIsRateDiff:Z
    invoke-static {v6}, Lcom/android/server/power/RampAnimator;->access$600(Lcom/android/server/power/RampAnimator;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 175
    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    iget-object v7, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mAnimatedValue:F
    invoke-static {v7}, Lcom/android/server/power/RampAnimator;->access$200(Lcom/android/server/power/RampAnimator;)F

    move-result v7

    iget-object v8, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mIncScale:F
    invoke-static {v8}, Lcom/android/server/power/RampAnimator;->access$700(Lcom/android/server/power/RampAnimator;)F

    move-result v8

    mul-float/2addr v8, v0

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mTargetValue:I
    invoke-static {v8}, Lcom/android/server/power/RampAnimator;->access$300(Lcom/android/server/power/RampAnimator;)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    #setter for: Lcom/android/server/power/RampAnimator;->mAnimatedValue:F
    invoke-static {v6, v7}, Lcom/android/server/power/RampAnimator;->access$202(Lcom/android/server/power/RampAnimator;F)F

    goto/16 :goto_0

    .line 177
    :cond_3
    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    iget-object v7, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mAnimatedValue:F
    invoke-static {v7}, Lcom/android/server/power/RampAnimator;->access$200(Lcom/android/server/power/RampAnimator;)F

    move-result v7

    add-float/2addr v7, v0

    iget-object v8, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mTargetValue:I
    invoke-static {v8}, Lcom/android/server/power/RampAnimator;->access$300(Lcom/android/server/power/RampAnimator;)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    #setter for: Lcom/android/server/power/RampAnimator;->mAnimatedValue:F
    invoke-static {v6, v7}, Lcom/android/server/power/RampAnimator;->access$202(Lcom/android/server/power/RampAnimator;F)F

    goto/16 :goto_0

    .line 182
    :cond_4
    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mIsRateDiff:Z
    invoke-static {v6}, Lcom/android/server/power/RampAnimator;->access$600(Lcom/android/server/power/RampAnimator;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 183
    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    iget-object v7, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mAnimatedValue:F
    invoke-static {v7}, Lcom/android/server/power/RampAnimator;->access$200(Lcom/android/server/power/RampAnimator;)F

    move-result v7

    iget-object v8, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mAnimatedValue:F
    invoke-static {v8}, Lcom/android/server/power/RampAnimator;->access$200(Lcom/android/server/power/RampAnimator;)F

    move-result v8

    mul-float/2addr v8, v0

    iget-object v9, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mDecScale:F
    invoke-static {v9}, Lcom/android/server/power/RampAnimator;->access$800(Lcom/android/server/power/RampAnimator;)F

    move-result v9

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    iget-object v8, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mTargetValue:I
    invoke-static {v8}, Lcom/android/server/power/RampAnimator;->access$300(Lcom/android/server/power/RampAnimator;)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    #setter for: Lcom/android/server/power/RampAnimator;->mAnimatedValue:F
    invoke-static {v6, v7}, Lcom/android/server/power/RampAnimator;->access$202(Lcom/android/server/power/RampAnimator;F)F

    goto/16 :goto_0

    .line 185
    :cond_5
    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    iget-object v7, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mAnimatedValue:F
    invoke-static {v7}, Lcom/android/server/power/RampAnimator;->access$200(Lcom/android/server/power/RampAnimator;)F

    move-result v7

    sub-float/2addr v7, v0

    iget-object v8, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mTargetValue:I
    invoke-static {v8}, Lcom/android/server/power/RampAnimator;->access$300(Lcom/android/server/power/RampAnimator;)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    #setter for: Lcom/android/server/power/RampAnimator;->mAnimatedValue:F
    invoke-static {v6, v7}, Lcom/android/server/power/RampAnimator;->access$202(Lcom/android/server/power/RampAnimator;F)F

    goto/16 :goto_0

    .line 200
    .end local v0           #amount:F
    .restart local v3       #oldCurrentValue:I
    :cond_6
    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #setter for: Lcom/android/server/power/RampAnimator;->mAnimating:Z
    invoke-static {v6, v10}, Lcom/android/server/power/RampAnimator;->access$1202(Lcom/android/server/power/RampAnimator;Z)Z

    .line 202
    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #getter for: Lcom/android/server/power/RampAnimator;->mIsRateDiff:Z
    invoke-static {v6}, Lcom/android/server/power/RampAnimator;->access$600(Lcom/android/server/power/RampAnimator;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 203
    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    #setter for: Lcom/android/server/power/RampAnimator;->mIsRateDiff:Z
    invoke-static {v6, v10}, Lcom/android/server/power/RampAnimator;->access$602(Lcom/android/server/power/RampAnimator;Z)Z

    .line 204
    iget-object v6, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    iget-object v7, p0, Lcom/android/server/power/RampAnimator$1;->this$0:Lcom/android/server/power/RampAnimator;

    const/high16 v8, -0x4080

    #setter for: Lcom/android/server/power/RampAnimator;->mDecScale:F
    invoke-static {v7, v8}, Lcom/android/server/power/RampAnimator;->access$802(Lcom/android/server/power/RampAnimator;F)F

    move-result v7

    #setter for: Lcom/android/server/power/RampAnimator;->mIncScale:F
    invoke-static {v6, v7}, Lcom/android/server/power/RampAnimator;->access$702(Lcom/android/server/power/RampAnimator;F)F

    goto/16 :goto_1
.end method
