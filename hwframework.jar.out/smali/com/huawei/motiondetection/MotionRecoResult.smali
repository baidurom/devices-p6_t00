.class public Lcom/huawei/motiondetection/MotionRecoResult;
.super Ljava/lang/Object;
.source "MotionRecoResult.java"


# instance fields
.field public mMotionDirection:I

.field public mMotionType:I

.field public mRecoResult:I


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .parameter "motion"
    .parameter "result"
    .parameter "direction"

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v0, p0, Lcom/huawei/motiondetection/MotionRecoResult;->mMotionType:I

    .line 38
    iput v0, p0, Lcom/huawei/motiondetection/MotionRecoResult;->mRecoResult:I

    .line 51
    iput v0, p0, Lcom/huawei/motiondetection/MotionRecoResult;->mMotionDirection:I

    .line 63
    iput p1, p0, Lcom/huawei/motiondetection/MotionRecoResult;->mMotionType:I

    .line 64
    iput p2, p0, Lcom/huawei/motiondetection/MotionRecoResult;->mRecoResult:I

    .line 65
    iput p3, p0, Lcom/huawei/motiondetection/MotionRecoResult;->mMotionDirection:I

    .line 66
    return-void
.end method
