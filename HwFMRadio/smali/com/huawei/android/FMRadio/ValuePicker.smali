.class public Lcom/huawei/android/FMRadio/ValuePicker;
.super Landroid/widget/LinearLayout;
.source "ValuePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/FMRadio/ValuePicker$AdjustScrollerCommand;,
        Lcom/huawei/android/FMRadio/ValuePicker$Formatter;,
        Lcom/huawei/android/FMRadio/ValuePicker$OnScrollListener;,
        Lcom/huawei/android/FMRadio/ValuePicker$OnValueChangeListener;
    }
.end annotation


# static fields
.field private static final SHOW_INPUT_CONTROLS_DELAY_MILLIS:I

.field public static final TWO_DIGIT_FORMATTER:Lcom/huawei/android/FMRadio/ValuePicker$Formatter;


# instance fields
.field private SELECTOR_MIDDLE_ITEM_INDEX:I

.field private final color:I

.field isEnable:Z

.field isTouch:Z

.field private final mAdjustScroller:Landroid/widget/Scroller;

.field private mAdjustScrollerCommand:Lcom/huawei/android/FMRadio/ValuePicker$AdjustScrollerCommand;

.field private mAdjustScrollerOnUpEvent:Z

.field private mBeginEditOnUpEvent:Z

.field private final mComputeMaxWidth:Z

.field private mCurrentScrollOffset:I

.field private final mDimSelectorWheelAnimator:Landroid/animation/Animator;

.field public mDisplayedValues:[Ljava/lang/String;

.field private final mFlingScroller:Landroid/widget/Scroller;

.field private final mFlingable:Z

.field private mInitialScrollOffset:I

.field private final mInputText:Landroid/widget/TextView;

.field private mLargeScreen:Z

.field private mLastDownEventY:F

.field private mLastMotionEventY:F

.field private mLongPressUpdateInterval:J

.field private final mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private final mMinHeight:I

.field private mMinValue:I

.field private final mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mOnScrollListener:Lcom/huawei/android/FMRadio/ValuePicker$OnScrollListener;

.field private mOnValueChangeListener:Lcom/huawei/android/FMRadio/ValuePicker$OnValueChangeListener;

.field private mPreviousScrollerY:I

.field private mScrollState:I

.field private mScrollWheelAndFadingEdgesInitialized:Z

.field private final mSelectionDivider:Landroid/graphics/drawable/Drawable;

.field private final mSelectionDividerFactor:I

.field private final mSelectionDividerHeight:I

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private final mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mSelectorWheelState:I

.field private final mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

.field private final mSolidColor:I

.field private final mTextSize:I

.field private mTouchSlop:I

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWrapSelectorWheel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Lcom/huawei/android/FMRadio/ValuePicker;->SHOW_INPUT_CONTROLS_DELAY_MILLIS:I

    .line 157
    new-instance v0, Lcom/huawei/android/FMRadio/ValuePicker$1;

    invoke-direct {v0}, Lcom/huawei/android/FMRadio/ValuePicker$1;-><init>()V

    sput-object v0, Lcom/huawei/android/FMRadio/ValuePicker;->TWO_DIGIT_FORMATTER:Lcom/huawei/android/FMRadio/ValuePicker$Formatter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 495
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/huawei/android/FMRadio/ValuePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 496
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 506
    const v0, 0x10103de

    invoke-direct {p0, p1, p2, v0}, Lcom/huawei/android/FMRadio/ValuePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 507
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 518
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 260
    const-wide/16 v7, 0x12c

    iput-wide v7, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mLongPressUpdateInterval:J

    .line 265
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    iput-object v7, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 276
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mLargeScreen:Z

    .line 292
    const/high16 v7, -0x8000

    iput v7, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mInitialScrollOffset:I

    .line 412
    const/4 v7, 0x0

    iput v7, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mScrollState:I

    .line 423
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/huawei/android/FMRadio/ValuePicker;->isTouch:Z

    .line 424
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/huawei/android/FMRadio/ValuePicker;->isEnable:Z

    .line 520
    iput-object p1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mContext:Landroid/content/Context;

    .line 521
    iget-object v7, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f06000c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    iput v7, p0, Lcom/huawei/android/FMRadio/ValuePicker;->color:I

    .line 523
    sget-object v7, Lcom/android/internal/R$styleable;->NumberPicker:[I

    const/4 v8, 0x0

    invoke-virtual {p1, p2, v7, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 525
    .local v0, attributesArray:Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    iput v7, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mSolidColor:I

    .line 529
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mFlingable:Z

    .line 530
    invoke-virtual {p0}, Lcom/huawei/android/FMRadio/ValuePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020037

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    .line 531
    const/4 v7, 0x5

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMinHeight:I

    .line 533
    const/4 v7, 0x6

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMaxHeight:I

    .line 535
    iget v7, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMinHeight:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    iget v7, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMaxHeight:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    iget v7, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMinHeight:I

    iget v8, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMaxHeight:I

    if-le v7, v8, :cond_0

    .line 537
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 538
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "minHeight > maxHeight"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 542
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/android/FMRadio/ValuePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07002e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 543
    .local v6, screenHeight:I
    const/16 v7, 0x3c0

    if-ge v6, v7, :cond_1

    .line 544
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mLargeScreen:Z

    .line 545
    const/4 v7, 0x1

    iput v7, p0, Lcom/huawei/android/FMRadio/ValuePicker;->SELECTOR_MIDDLE_ITEM_INDEX:I

    .line 546
    const/4 v7, 0x3

    new-array v7, v7, [I

    fill-array-data v7, :array_0

    iput-object v7, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mSelectorIndices:[I

    .line 559
    :goto_0
    const/4 v7, 0x7

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMinWidth:I

    .line 561
    const/16 v7, 0x8

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMaxWidth:I

    .line 563
    iget v7, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMinWidth:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    iget v7, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMaxWidth:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    iget v7, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMinWidth:I

    iget v8, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMaxWidth:I

    if-le v7, v8, :cond_2

    .line 564
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 565
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "minWidth > maxWidth"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 550
    :cond_1
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mLargeScreen:Z

    .line 551
    const/4 v7, 0x2

    iput v7, p0, Lcom/huawei/android/FMRadio/ValuePicker;->SELECTOR_MIDDLE_ITEM_INDEX:I

    .line 552
    const/4 v7, 0x5

    new-array v7, v7, [I

    fill-array-data v7, :array_1

    iput-object v7, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mSelectorIndices:[I

    goto :goto_0

    .line 567
    :cond_2
    iget v7, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMaxWidth:I

    const v8, 0x7fffffff

    if-ne v7, v8, :cond_4

    const/4 v7, 0x1

    :goto_1
    iput-boolean v7, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mComputeMaxWidth:Z

    .line 568
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 570
    invoke-virtual {p0}, Lcom/huawei/android/FMRadio/ValuePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07002c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mSelectionDividerHeight:I

    .line 572
    invoke-virtual {p0}, Lcom/huawei/android/FMRadio/ValuePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07002d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mSelectionDividerFactor:I

    .line 574
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/huawei/android/FMRadio/ValuePicker;->setWillNotDraw(Z)V

    .line 575
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/huawei/android/FMRadio/ValuePicker;->setSelectorWheelState(I)V

    .line 577
    invoke-virtual {p0}, Lcom/huawei/android/FMRadio/ValuePicker;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 579
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v7, 0x7f03000c

    const/4 v8, 0x1

    invoke-virtual {v4, v7, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 582
    const v7, 0x7f0b0036

    invoke-virtual {p0, v7}, Lcom/huawei/android/FMRadio/ValuePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mInputText:Landroid/widget/TextView;

    .line 585
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v7

    iput v7, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mTouchSlop:I

    .line 586
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    .line 587
    .local v3, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v7

    iput v7, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mTouchSlop:I

    .line 588
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v7

    iput v7, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMinimumFlingVelocity:I

    .line 589
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v7

    div-int/lit8 v7, v7, 0x8

    iput v7, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMaximumFlingVelocity:I

    .line 591
    iget-object v7, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextSize()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mTextSize:I

    .line 594
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 595
    .local v5, paint:Landroid/graphics/Paint;
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 596
    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 597
    iget v7, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mTextSize:I

    int-to-float v7, v7

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 598
    iget-object v7, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 599
    iget-object v7, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 600
    .local v2, colors:Landroid/content/res/ColorStateList;
    sget-object v7, Lcom/huawei/android/FMRadio/ValuePicker;->ENABLED_STATE_SET:[I

    const/4 v8, -0x1

    invoke-virtual {v2, v7, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 601
    .local v1, color:I
    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 602
    iput-object v5, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 605
    const-string v7, "selectorPaintAlpha"

    const/4 v8, 0x2

    new-array v8, v8, [I

    fill-array-data v8, :array_2

    invoke-static {p0, v7, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iput-object v7, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mDimSelectorWheelAnimator:Landroid/animation/Animator;

    .line 607
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    .line 610
    new-instance v7, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/huawei/android/FMRadio/ValuePicker;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v7, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 611
    new-instance v7, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/huawei/android/FMRadio/ValuePicker;->getContext()Landroid/content/Context;

    move-result-object v8

    new-instance v9, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v10, 0x4020

    invoke-direct {v9, v10}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {v7, v8, v9}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v7, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 613
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/ValuePicker;->updateInputTextView()V

    .line 615
    iget-boolean v7, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mFlingable:Z

    if-eqz v7, :cond_3

    .line 616
    invoke-virtual {p0}, Lcom/huawei/android/FMRadio/ValuePicker;->isInEditMode()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 617
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/huawei/android/FMRadio/ValuePicker;->setSelectorWheelState(I)V

    .line 627
    :cond_3
    :goto_2
    return-void

    .line 567
    .end local v1           #color:I
    .end local v2           #colors:Landroid/content/res/ColorStateList;
    .end local v3           #configuration:Landroid/view/ViewConfiguration;
    .end local v4           #inflater:Landroid/view/LayoutInflater;
    .end local v5           #paint:Landroid/graphics/Paint;
    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 623
    .restart local v1       #color:I
    .restart local v2       #colors:Landroid/content/res/ColorStateList;
    .restart local v3       #configuration:Landroid/view/ViewConfiguration;
    .restart local v4       #inflater:Landroid/view/LayoutInflater;
    .restart local v5       #paint:Landroid/graphics/Paint;
    :cond_5
    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/huawei/android/FMRadio/ValuePicker;->setSelectorWheelState(I)V

    .line 624
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/ValuePicker;->hideInputControls()V

    goto :goto_2

    .line 546
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
    .end array-data

    .line 552
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
    .end array-data

    .line 605
    :array_2
    .array-data 0x4
        0x26t 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$002(Lcom/huawei/android/FMRadio/ValuePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mPreviousScrollerY:I

    return p1
.end method

.method static synthetic access$100(Lcom/huawei/android/FMRadio/ValuePicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mInitialScrollOffset:I

    return v0
.end method

.method static synthetic access$200(Lcom/huawei/android/FMRadio/ValuePicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mCurrentScrollOffset:I

    return v0
.end method

.method static synthetic access$300(Lcom/huawei/android/FMRadio/ValuePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/ValuePicker;->updateInputTextView()V

    return-void
.end method

.method static synthetic access$400(Lcom/huawei/android/FMRadio/ValuePicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mSelectorElementHeight:I

    return v0
.end method

.method static synthetic access$500(Lcom/huawei/android/FMRadio/ValuePicker;)Landroid/widget/Scroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mAdjustScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method private changeCurrent(I)V
    .locals 2
    .parameter "current"

    .prologue
    .line 1406
    iget v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mValue:I

    if-ne v1, p1, :cond_0

    .line 1416
    :goto_0
    return-void

    .line 1410
    :cond_0
    iget-boolean v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_1

    .line 1411
    invoke-direct {p0, p1}, Lcom/huawei/android/FMRadio/ValuePicker;->getWrappedSelectorIndex(I)I

    move-result p1

    .line 1413
    :cond_1
    iget v0, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mValue:I

    .line 1414
    .local v0, previous:I
    invoke-virtual {p0, p1}, Lcom/huawei/android/FMRadio/ValuePicker;->setValue(I)V

    .line 1415
    invoke-direct {p0, v0, p1}, Lcom/huawei/android/FMRadio/ValuePicker;->notifyChange(II)V

    goto :goto_0
.end method

.method private decrementSelectorIndices([I)V
    .locals 3
    .parameter "selectorIndices"

    .prologue
    .line 1608
    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-lez v0, :cond_0

    .line 1609
    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1608
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1611
    :cond_0
    const/4 v2, 0x1

    aget v2, p1, v2

    add-int/lit8 v1, v2, -0x1

    .line 1612
    .local v1, nextScrollSelectorIndex:I
    iget-boolean v2, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMinValue:I

    if-ge v1, v2, :cond_1

    .line 1613
    iget v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMaxValue:I

    .line 1615
    :cond_1
    const/4 v2, 0x0

    aput v1, p1, v2

    .line 1616
    invoke-direct {p0, v1}, Lcom/huawei/android/FMRadio/ValuePicker;->ensureCachedScrollSelectorValue(I)V

    .line 1617
    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 4
    .parameter "selectorIndex"

    .prologue
    .line 1624
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 1625
    .local v0, cache:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1626
    .local v2, scrollSelectorValue:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1640
    :goto_0
    return-void

    .line 1629
    :cond_0
    iget v3, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMinValue:I

    if-lt p1, v3, :cond_1

    iget v3, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMaxValue:I

    if-le p1, v3, :cond_2

    .line 1630
    :cond_1
    const-string v2, ""

    .line 1639
    :goto_1
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1632
    :cond_2
    iget-object v3, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 1633
    iget v3, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMinValue:I

    sub-int v1, p1, v3

    .line 1634
    .local v1, displayedValueIndex:I
    iget-object v3, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 1635
    goto :goto_1

    .line 1636
    .end local v1           #displayedValueIndex:I
    :cond_3
    invoke-direct {p0, p1}, Lcom/huawei/android/FMRadio/ValuePicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private fling(I)V
    .locals 9
    .parameter "velocityY"

    .prologue
    const v8, 0x7fffffff

    const/4 v1, 0x0

    .line 1553
    iput v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mPreviousScrollerY:I

    .line 1555
    if-lez p1, :cond_0

    .line 1556
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mFlingScroller:Landroid/widget/Scroller;

    move v2, v1

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1561
    :goto_0
    invoke-virtual {p0}, Lcom/huawei/android/FMRadio/ValuePicker;->invalidate()V

    .line 1562
    return-void

    .line 1558
    :cond_0
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mFlingScroller:Landroid/widget/Scroller;

    move v2, v8

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0
.end method

.method private forceCompleteChangeCurrentByOneViaScroll()V
    .locals 4

    .prologue
    .line 1455
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 1456
    .local v0, scroller:Landroid/widget/Scroller;
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1457
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 1458
    .local v1, yBeforeAbort:I
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1459
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    sub-int v2, v3, v1

    .line 1460
    .local v2, yDelta:I
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Lcom/huawei/android/FMRadio/ValuePicker;->scrollBy(II)V

    .line 1462
    .end local v1           #yBeforeAbort:I
    .end local v2           #yDelta:I
    :cond_0
    return-void
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 1643
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 4
    .parameter "selectorIndex"

    .prologue
    .line 1579
    iget v0, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMaxValue:I

    if-le p1, v0, :cond_1

    .line 1580
    iget v0, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMinValue:I

    iget v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMaxValue:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMaxValue:I

    iget v3, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 p1, v0, -0x1

    .line 1584
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 1581
    .restart local p1
    :cond_1
    iget v0, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMinValue:I

    if-ge p1, v0, :cond_0

    .line 1582
    iget v0, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMaxValue:I

    iget v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMinValue:I

    sub-int/2addr v1, p1

    iget v2, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMaxValue:I

    iget v3, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/lit8 p1, v0, 0x1

    goto :goto_0
.end method

.method private hideInputControls()V
    .locals 2

    .prologue
    .line 1568
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1569
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mInputText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1570
    return-void
.end method

.method private incrementSelectorIndices([I)V
    .locals 3
    .parameter "selectorIndices"

    .prologue
    .line 1592
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 1593
    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1592
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1595
    :cond_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    aget v2, p1, v2

    add-int/lit8 v1, v2, 0x1

    .line 1596
    .local v1, nextScrollSelectorIndex:I
    iget-boolean v2, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMaxValue:I

    if-le v1, v2, :cond_1

    .line 1597
    iget v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMinValue:I

    .line 1599
    :cond_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aput v1, p1, v2

    .line 1600
    invoke-direct {p0, v1}, Lcom/huawei/android/FMRadio/ValuePicker;->ensureCachedScrollSelectorValue(I)V

    .line 1601
    return-void
.end method

.method private initializeFadingEdges()V
    .locals 2

    .prologue
    .line 1516
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/huawei/android/FMRadio/ValuePicker;->setVerticalFadingEdgeEnabled(Z)V

    .line 1517
    iget v0, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mBottom:I

    iget v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/huawei/android/FMRadio/ValuePicker;->setFadingEdgeLength(I)V

    .line 1518
    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 7

    .prologue
    .line 1497
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/ValuePicker;->initializeSelectorWheelIndices()V

    .line 1498
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mSelectorIndices:[I

    .line 1499
    .local v1, selectorIndices:[I
    array-length v5, v1

    iget v6, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mTextSize:I

    mul-int v4, v5, v6

    .line 1500
    .local v4, totalTextHeight:I
    iget v5, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mBottom:I

    iget v6, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mTop:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    int-to-float v3, v5

    .line 1502
    .local v3, totalTextGapHeight:F
    iget-boolean v5, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mLargeScreen:Z

    if-eqz v5, :cond_0

    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    int-to-float v2, v5

    .line 1504
    .local v2, textGapCount:F
    :goto_0
    div-float v5, v3, v2

    const/high16 v6, 0x3f00

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mSelectorTextGapHeight:I

    .line 1505
    iget v5, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mTextSize:I

    iget v6, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mSelectorTextGapHeight:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mSelectorElementHeight:I

    .line 1508
    iget-object v5, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getBaseline()I

    move-result v5

    iget-object v6, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getTop()I

    move-result v6

    add-int v0, v5, v6

    .line 1509
    .local v0, editTextTextPosition:I
    iget v5, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mSelectorElementHeight:I

    iget v6, p0, Lcom/huawei/android/FMRadio/ValuePicker;->SELECTOR_MIDDLE_ITEM_INDEX:I

    mul-int/2addr v5, v6

    sub-int v5, v0, v5

    iput v5, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mInitialScrollOffset:I

    .line 1511
    iget v5, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mInitialScrollOffset:I

    iput v5, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mCurrentScrollOffset:I

    .line 1512
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/ValuePicker;->updateInputTextView()V

    .line 1513
    return-void

    .line 1502
    .end local v0           #editTextTextPosition:I
    .end local v2           #textGapCount:F
    :cond_0
    array-length v5, v1

    int-to-float v2, v5

    goto :goto_0
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    .prologue
    .line 1384
    iget-object v4, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 1385
    iget-object v2, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mSelectorIndices:[I

    .line 1386
    .local v2, selectorIdices:[I
    invoke-virtual {p0}, Lcom/huawei/android/FMRadio/ValuePicker;->getValue()I

    move-result v0

    .line 1387
    .local v0, current:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mSelectorIndices:[I

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 1388
    iget v4, p0, Lcom/huawei/android/FMRadio/ValuePicker;->SELECTOR_MIDDLE_ITEM_INDEX:I

    sub-int v4, v1, v4

    add-int v3, v0, v4

    .line 1389
    .local v3, selectorIndex:I
    iget-boolean v4, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_0

    .line 1390
    invoke-direct {p0, v3}, Lcom/huawei/android/FMRadio/ValuePicker;->getWrappedSelectorIndex(I)I

    move-result v3

    .line 1392
    :cond_0
    iget-object v4, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mSelectorIndices:[I

    aput v3, v4, v1

    .line 1393
    iget-object v4, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mSelectorIndices:[I

    aget v4, v4, v1

    invoke-direct {p0, v4}, Lcom/huawei/android/FMRadio/ValuePicker;->ensureCachedScrollSelectorValue(I)V

    .line 1387
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1395
    .end local v3           #selectorIndex:I
    :cond_1
    return-void
.end method

.method private makeMeasureSpec(II)I
    .locals 5
    .parameter "measureSpec"
    .parameter "maxSize"

    .prologue
    const/high16 v3, 0x4000

    .line 1342
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 1353
    .end local p1
    :goto_0
    :sswitch_0
    return p1

    .line 1345
    .restart local p1
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1346
    .local v1, size:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1347
    .local v0, mode:I
    sparse-switch v0, :sswitch_data_0

    .line 1355
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown measure mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1351
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 1353
    :sswitch_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 1347
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private notifyChange(II)V
    .locals 2
    .parameter "previous"
    .parameter "current"

    .prologue
    .line 1678
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mOnValueChangeListener:Lcom/huawei/android/FMRadio/ValuePicker$OnValueChangeListener;

    if-eqz v0, :cond_0

    .line 1679
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mOnValueChangeListener:Lcom/huawei/android/FMRadio/ValuePicker$OnValueChangeListener;

    iget v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mValue:I

    invoke-interface {v0, p0, p1, v1}, Lcom/huawei/android/FMRadio/ValuePicker$OnValueChangeListener;->onValueChange(Lcom/huawei/android/FMRadio/ValuePicker;II)V

    .line 1681
    :cond_0
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 1
    .parameter "scrollState"

    .prologue
    .line 1540
    iget v0, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mScrollState:I

    if-ne v0, p1, :cond_1

    .line 1547
    :cond_0
    :goto_0
    return-void

    .line 1543
    :cond_1
    iput p1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mScrollState:I

    .line 1544
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mOnScrollListener:Lcom/huawei/android/FMRadio/ValuePicker$OnScrollListener;

    if-eqz v0, :cond_0

    .line 1545
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mOnScrollListener:Lcom/huawei/android/FMRadio/ValuePicker$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/huawei/android/FMRadio/ValuePicker$OnScrollListener;->onScrollStateChange(Lcom/huawei/android/FMRadio/ValuePicker;I)V

    goto :goto_0
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .locals 3
    .parameter "scroller"

    .prologue
    const/4 v2, 0x0

    .line 1524
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_1

    .line 1525
    iget v0, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mSelectorWheelState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1526
    invoke-direct {p0, v2}, Lcom/huawei/android/FMRadio/ValuePicker;->postAdjustScrollerCommand(I)V

    .line 1527
    invoke-direct {p0, v2}, Lcom/huawei/android/FMRadio/ValuePicker;->onScrollStateChange(I)V

    .line 1534
    :goto_0
    return-void

    .line 1529
    :cond_0
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/ValuePicker;->updateInputTextView()V

    goto :goto_0

    .line 1532
    :cond_1
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/ValuePicker;->updateInputTextView()V

    goto :goto_0
.end method

.method private postAdjustScrollerCommand(I)V
    .locals 3
    .parameter "delayMillis"

    .prologue
    .line 1697
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mAdjustScrollerCommand:Lcom/huawei/android/FMRadio/ValuePicker$AdjustScrollerCommand;

    if-nez v0, :cond_0

    .line 1698
    new-instance v0, Lcom/huawei/android/FMRadio/ValuePicker$AdjustScrollerCommand;

    invoke-direct {v0, p0}, Lcom/huawei/android/FMRadio/ValuePicker$AdjustScrollerCommand;-><init>(Lcom/huawei/android/FMRadio/ValuePicker;)V

    iput-object v0, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mAdjustScrollerCommand:Lcom/huawei/android/FMRadio/ValuePicker$AdjustScrollerCommand;

    .line 1702
    :goto_0
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mAdjustScrollerCommand:Lcom/huawei/android/FMRadio/ValuePicker$AdjustScrollerCommand;

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/huawei/android/FMRadio/ValuePicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1703
    return-void

    .line 1700
    :cond_0
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mAdjustScrollerCommand:Lcom/huawei/android/FMRadio/ValuePicker$AdjustScrollerCommand;

    invoke-virtual {p0, v0}, Lcom/huawei/android/FMRadio/ValuePicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private removeAllCallbacks()V
    .locals 1

    .prologue
    .line 1687
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mAdjustScrollerCommand:Lcom/huawei/android/FMRadio/ValuePicker$AdjustScrollerCommand;

    if-eqz v0, :cond_0

    .line 1688
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mAdjustScrollerCommand:Lcom/huawei/android/FMRadio/ValuePicker$AdjustScrollerCommand;

    invoke-virtual {p0, v0}, Lcom/huawei/android/FMRadio/ValuePicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1690
    :cond_0
    return-void
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 2
    .parameter "minSize"
    .parameter "measuredSize"
    .parameter "measureSpec"

    .prologue
    .line 1370
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 1371
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1372
    .local v0, desiredWidth:I
    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Lcom/huawei/android/FMRadio/ValuePicker;->resolveSizeAndState(III)I

    move-result p2

    .line 1374
    .end local v0           #desiredWidth:I
    .end local p2
    :cond_0
    return p2
.end method

.method private setSelectorWheelState(I)V
    .locals 4
    .parameter "selectorWheelState"

    .prologue
    const/4 v3, 0x2

    .line 1480
    iput p1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mSelectorWheelState:I

    .line 1481
    if-ne p1, v3, :cond_0

    .line 1482
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1485
    :cond_0
    iget-boolean v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mFlingable:Z

    if-eqz v1, :cond_1

    if-ne p1, v3, :cond_1

    iget-object v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1487
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->interrupt()V

    .line 1488
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mContext:Landroid/content/Context;

    const v2, 0x10404be

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1490
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1491
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mInputText:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 1492
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mInputText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1494
    .end local v0           #text:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private tryComputeMaxWidth()V
    .locals 10

    .prologue
    .line 1010
    iget-boolean v8, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mComputeMaxWidth:Z

    if-nez v8, :cond_1

    .line 1047
    :cond_0
    :goto_0
    return-void

    .line 1013
    :cond_1
    const/4 v4, 0x0

    .line 1014
    .local v4, maxTextWidth:I
    iget-object v8, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v8, :cond_6

    .line 1015
    const/4 v3, 0x0

    .line 1016
    .local v3, maxDigitWidth:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    const/16 v8, 0x9

    if-gt v2, v8, :cond_3

    .line 1017
    iget-object v8, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 1018
    .local v1, digitWidth:F
    cmpl-float v8, v1, v3

    if-lez v8, :cond_2

    .line 1019
    move v3, v1

    .line 1016
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1022
    .end local v1           #digitWidth:F
    :cond_3
    const/4 v5, 0x0

    .line 1023
    .local v5, numberOfDigits:I
    iget v0, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMaxValue:I

    .line 1024
    .local v0, current:I
    :goto_2
    if-lez v0, :cond_4

    .line 1025
    add-int/lit8 v5, v5, 0x1

    .line 1026
    div-int/lit8 v0, v0, 0xa

    goto :goto_2

    .line 1028
    :cond_4
    int-to-float v8, v5

    mul-float/2addr v8, v3

    float-to-int v4, v8

    .line 1038
    .end local v0           #current:I
    .end local v3           #maxDigitWidth:F
    .end local v5           #numberOfDigits:I
    :cond_5
    iget-object v8, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v8

    iget-object v9, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v4, v8

    .line 1039
    iget v8, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMaxWidth:I

    if-eq v8, v4, :cond_0

    .line 1040
    iget v8, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMinWidth:I

    if-le v4, v8, :cond_8

    .line 1041
    iput v4, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMaxWidth:I

    .line 1045
    :goto_3
    invoke-virtual {p0}, Lcom/huawei/android/FMRadio/ValuePicker;->invalidate()V

    goto :goto_0

    .line 1030
    .end local v2           #i:I
    :cond_6
    iget-object v8, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v7, v8

    .line 1031
    .local v7, valueCount:I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    if-ge v2, v7, :cond_5

    .line 1032
    iget-object v8, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v9, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 1033
    .local v6, textWidth:F
    int-to-float v8, v4

    cmpl-float v8, v6, v8

    if-lez v8, :cond_7

    .line 1034
    float-to-int v4, v6

    .line 1031
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1043
    .end local v6           #textWidth:F
    .end local v7           #valueCount:I
    :cond_8
    iget v8, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMinWidth:I

    iput v8, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMaxWidth:I

    goto :goto_3
.end method

.method private updateInputTextView()V
    .locals 6

    .prologue
    .line 1659
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1660
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mInputText:Landroid/widget/TextView;

    iget v2, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mValue:I

    invoke-direct {p0, v2}, Lcom/huawei/android/FMRadio/ValuePicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1665
    :goto_0
    iget-boolean v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mFlingable:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1666
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mContext:Landroid/content/Context;

    const v2, 0x10404bd

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1669
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1671
    .end local v0           #text:Ljava/lang/String;
    :cond_0
    return-void

    .line 1662
    :cond_1
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mInputText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mDisplayedValues:[Ljava/lang/String;

    iget v3, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mValue:I

    iget v4, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMinValue:I

    sub-int/2addr v3, v4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .prologue
    .line 844
    iget v2, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mSelectorWheelState:I

    if-nez v2, :cond_1

    .line 866
    :cond_0
    :goto_0
    return-void

    .line 847
    :cond_1
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 848
    .local v1, scroller:Landroid/widget/Scroller;
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 849
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 850
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    .line 854
    :cond_2
    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 855
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 856
    .local v0, currentScrollerY:I
    iget v2, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mPreviousScrollerY:I

    if-nez v2, :cond_3

    .line 857
    invoke-virtual {v1}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mPreviousScrollerY:I

    .line 859
    :cond_3
    const/4 v2, 0x0

    iget v3, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mPreviousScrollerY:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v2, v3}, Lcom/huawei/android/FMRadio/ValuePicker;->scrollBy(II)V

    .line 860
    iput v0, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mPreviousScrollerY:I

    .line 861
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 862
    invoke-direct {p0, v1}, Lcom/huawei/android/FMRadio/ValuePicker;->onScrollerFinished(Landroid/widget/Scroller;)V

    goto :goto_0

    .line 864
    :cond_4
    invoke-virtual {p0}, Lcom/huawei/android/FMRadio/ValuePicker;->invalidate()V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 1233
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 826
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 827
    .local v0, keyCode:I
    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_1

    .line 828
    :cond_0
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/ValuePicker;->removeAllCallbacks()V

    .line 830
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 795
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 796
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 817
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 798
    :pswitch_0
    iget v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mSelectorWheelState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 799
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/ValuePicker;->removeAllCallbacks()V

    .line 800
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/ValuePicker;->forceCompleteChangeCurrentByOneViaScroll()V

    .line 802
    :cond_1
    iput-boolean v3, p0, Lcom/huawei/android/FMRadio/ValuePicker;->isTouch:Z

    goto :goto_0

    .line 805
    :pswitch_1
    iget-boolean v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->isEnable:Z

    if-eqz v1, :cond_0

    .line 806
    iput-boolean v3, p0, Lcom/huawei/android/FMRadio/ValuePicker;->isTouch:Z

    goto :goto_0

    .line 811
    :pswitch_2
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/ValuePicker;->removeAllCallbacks()V

    .line 812
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->isTouch:Z

    goto :goto_0

    .line 796
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 835
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 836
    .local v0, action:I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 837
    :cond_0
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/ValuePicker;->removeAllCallbacks()V

    .line 839
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 1245
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1249
    iget-object v5, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-nez v5, :cond_0

    iget v5, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mSelectorWheelState:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    .line 1251
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/android/FMRadio/ValuePicker;->getDrawingTime()J

    move-result-wide v2

    .line 1252
    .local v2, drawTime:J
    const/4 v4, 0x0

    .local v4, i:I
    invoke-virtual {p0}, Lcom/huawei/android/FMRadio/ValuePicker;->getChildCount()I

    move-result v1

    .local v1, count:I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 1253
    invoke-virtual {p0, v4}, Lcom/huawei/android/FMRadio/ValuePicker;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1254
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1252
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1257
    :cond_1
    invoke-virtual {p0, v4}, Lcom/huawei/android/FMRadio/ValuePicker;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, p1, v5, v2, v3}, Lcom/huawei/android/FMRadio/ValuePicker;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_1

    .line 1260
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #drawTime:J
    .end local v4           #i:I
    :cond_2
    return-void
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1211
    const v0, 0x3f666666

    return v0
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 1143
    iget v0, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMaxValue:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .prologue
    .line 1111
    iget v0, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMinValue:I

    return v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 920
    iget v0, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mSolidColor:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1206
    const v0, 0x3f666666

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 1102
    iget v0, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mValue:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1216
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 1219
    iget-boolean v0, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mFlingable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/huawei/android/FMRadio/ValuePicker;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1223
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1227
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/ValuePicker;->removeAllCallbacks()V

    .line 1228
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19
    .parameter "canvas"

    .prologue
    .line 1264
    move-object/from16 v0, p0

    iget v14, v0, Lcom/huawei/android/FMRadio/ValuePicker;->mSelectorWheelState:I

    if-nez v14, :cond_0

    .line 1326
    :goto_0
    return-void

    .line 1268
    :cond_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/huawei/android/FMRadio/ValuePicker;->mRight:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/huawei/android/FMRadio/ValuePicker;->mLeft:I

    sub-int/2addr v14, v15

    div-int/lit8 v14, v14, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->floatValue()F

    move-result v12

    .line 1269
    .local v12, x:F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/huawei/android/FMRadio/ValuePicker;->mCurrentScrollOffset:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->floatValue()F

    move-result v13

    .line 1271
    .local v13, y:F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 1273
    .local v7, restoreCount:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/huawei/android/FMRadio/ValuePicker;->mSelectorWheelState:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    .line 1274
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 1275
    .local v4, clipBounds:Landroid/graphics/Rect;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/huawei/android/FMRadio/ValuePicker;->mSelectorElementHeight:I

    invoke-virtual {v4, v14, v15}, Landroid/graphics/Rect;->inset(II)V

    .line 1276
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1280
    .end local v4           #clipBounds:Landroid/graphics/Rect;
    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/huawei/android/FMRadio/ValuePicker;->mSelectorIndices:[I

    .line 1282
    .local v10, selectorIndices:[I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    array-length v14, v10

    if-ge v5, v14, :cond_3

    .line 1283
    aget v9, v10, v5

    .line 1284
    .local v9, selectorIndex:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/android/FMRadio/ValuePicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v14, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1293
    .local v8, scrollSelectorValue:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/android/FMRadio/ValuePicker;->mSelectorIndices:[I

    array-length v14, v14

    div-int/lit8 v14, v14, 0x2

    aget v1, v10, v14

    .line 1295
    .local v1, Index:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/android/FMRadio/ValuePicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v14, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1296
    .local v2, Value:Ljava/lang/String;
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 1297
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/android/FMRadio/ValuePicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v12, v13, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1311
    :goto_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/huawei/android/FMRadio/ValuePicker;->mSelectorElementHeight:I

    int-to-float v14, v14

    add-float/2addr v13, v14

    .line 1282
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1300
    :cond_2
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 1301
    .local v6, paint:Landroid/graphics/Paint;
    const/4 v14, 0x1

    invoke-virtual {v6, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1302
    sget-object v14, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v14}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1303
    move-object/from16 v0, p0

    iget v14, v0, Lcom/huawei/android/FMRadio/ValuePicker;->mTextSize:I

    int-to-float v14, v14

    invoke-virtual {v6, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1304
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/android/FMRadio/ValuePicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v14

    invoke-virtual {v6, v14}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1306
    move-object/from16 v0, p0

    iget v14, v0, Lcom/huawei/android/FMRadio/ValuePicker;->color:I

    invoke-virtual {v6, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 1308
    move-object/from16 v0, p0

    iget v14, v0, Lcom/huawei/android/FMRadio/ValuePicker;->mTextSize:I

    int-to-float v14, v14

    const v15, 0x3f970a3d

    mul-float/2addr v14, v15

    invoke-virtual {v6, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1309
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v12, v13, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 1316
    .end local v1           #Index:I
    .end local v2           #Value:Ljava/lang/String;
    .end local v6           #paint:Landroid/graphics/Paint;
    .end local v8           #scrollSelectorValue:Ljava/lang/String;
    .end local v9           #selectorIndex:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/android/FMRadio/ValuePicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v14, :cond_4

    .line 1318
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/android/FMRadio/ValuePicker;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/huawei/android/FMRadio/ValuePicker;->mSelectionDividerHeight:I

    sub-int/2addr v14, v15

    div-int/lit8 v11, v14, 0x2

    .line 1319
    .local v11, top:I
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/android/FMRadio/ValuePicker;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/huawei/android/FMRadio/ValuePicker;->mSelectionDividerHeight:I

    add-int/2addr v14, v15

    div-int/lit8 v3, v14, 0x2

    .line 1320
    .local v3, bottom:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/android/FMRadio/ValuePicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/huawei/android/FMRadio/ValuePicker;->mSelectionDividerFactor:I

    move/from16 v16, v0

    add-int v16, v16, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/huawei/android/FMRadio/ValuePicker;->mRight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/huawei/android/FMRadio/ValuePicker;->mSelectionDividerFactor:I

    move/from16 v18, v0

    add-int v18, v18, v3

    invoke-virtual/range {v14 .. v18}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1322
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/huawei/android/FMRadio/ValuePicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1325
    .end local v3           #bottom:I
    .end local v11           #top:I
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 688
    invoke-virtual {p0}, Lcom/huawei/android/FMRadio/ValuePicker;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mFlingable:Z

    if-nez v5, :cond_1

    :cond_0
    move v3, v4

    .line 733
    :goto_0
    return v3

    .line 691
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_2
    :pswitch_0
    move v3, v4

    .line 733
    goto :goto_0

    .line 693
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mLastDownEventY:F

    iput v5, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mLastMotionEventY:F

    .line 694
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/ValuePicker;->removeAllCallbacks()V

    .line 695
    iget-object v5, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 696
    iget-object v5, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mDimSelectorWheelAnimator:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->cancel()V

    .line 697
    iput-boolean v4, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mBeginEditOnUpEvent:Z

    .line 698
    iput-boolean v3, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mAdjustScrollerOnUpEvent:Z

    .line 699
    iget v5, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mSelectorWheelState:I

    if-ne v5, v6, :cond_5

    .line 700
    iget-object v5, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    const/16 v6, 0x26

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 701
    iget-object v5, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_4

    move v2, v3

    .line 703
    .local v2, scrollersFinished:Z
    :goto_1
    if-nez v2, :cond_3

    .line 704
    iget-object v5, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v5, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 705
    iget-object v5, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v5, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 706
    invoke-direct {p0, v4}, Lcom/huawei/android/FMRadio/ValuePicker;->onScrollStateChange(I)V

    .line 708
    :cond_3
    iput-boolean v2, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mBeginEditOnUpEvent:Z

    .line 709
    iput-boolean v3, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mAdjustScrollerOnUpEvent:Z

    .line 710
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/ValuePicker;->hideInputControls()V

    goto :goto_0

    .end local v2           #scrollersFinished:Z
    :cond_4
    move v2, v4

    .line 701
    goto :goto_1

    .line 717
    :cond_5
    iput-boolean v4, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mAdjustScrollerOnUpEvent:Z

    .line 718
    invoke-direct {p0, v6}, Lcom/huawei/android/FMRadio/ValuePicker;->setSelectorWheelState(I)V

    .line 719
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/ValuePicker;->hideInputControls()V

    goto :goto_0

    .line 722
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 723
    .local v0, currentMoveY:F
    iget v5, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mLastDownEventY:F

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v1, v5

    .line 724
    .local v1, deltaDownY:I
    iget v5, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mTouchSlop:I

    if-le v1, v5, :cond_2

    .line 725
    iput-boolean v4, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mBeginEditOnUpEvent:Z

    .line 726
    invoke-direct {p0, v3}, Lcom/huawei/android/FMRadio/ValuePicker;->onScrollStateChange(I)V

    .line 727
    invoke-direct {p0, v6}, Lcom/huawei/android/FMRadio/ValuePicker;->setSelectorWheelState(I)V

    .line 728
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/ValuePicker;->hideInputControls()V

    goto :goto_0

    .line 691
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/huawei/android/FMRadio/ValuePicker;->getMeasuredWidth()I

    move-result v7

    .line 632
    .local v7, msrdWdth:I
    invoke-virtual {p0}, Lcom/huawei/android/FMRadio/ValuePicker;->getMeasuredHeight()I

    move-result v6

    .line 645
    .local v6, msrdHght:I
    iget-object v8, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    .line 646
    .local v3, inptTxtMsrdWdth:I
    iget-object v8, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    .line 647
    .local v2, inptTxtMsrdHght:I
    sub-int v8, v7, v3

    div-int/lit8 v1, v8, 0x2

    .line 648
    .local v1, inptTxtLeft:I
    sub-int v8, v6, v2

    div-int/lit8 v5, v8, 0x2

    .line 649
    .local v5, inptTxtTop:I
    add-int v4, v1, v3

    .line 650
    .local v4, inptTxtRight:I
    add-int v0, v5, v2

    .line 651
    .local v0, inptTxtBottom:I
    iget-object v8, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mInputText:Landroid/widget/TextView;

    invoke-virtual {v8, v1, v5, v4, v0}, Landroid/widget/TextView;->layout(IIII)V

    .line 663
    iget-boolean v8, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mScrollWheelAndFadingEdgesInitialized:Z

    if-nez v8, :cond_0

    .line 664
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mScrollWheelAndFadingEdgesInitialized:Z

    .line 666
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/ValuePicker;->initializeSelectorWheel()V

    .line 667
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/ValuePicker;->initializeFadingEdges()V

    .line 669
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 674
    iget v4, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMaxWidth:I

    invoke-direct {p0, p1, v4}, Lcom/huawei/android/FMRadio/ValuePicker;->makeMeasureSpec(II)I

    move-result v2

    .line 675
    .local v2, newWidthMeasureSpec:I
    iget v4, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMaxHeight:I

    invoke-direct {p0, p2, v4}, Lcom/huawei/android/FMRadio/ValuePicker;->makeMeasureSpec(II)I

    move-result v1

    .line 676
    .local v1, newHeightMeasureSpec:I
    invoke-super {p0, v2, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 679
    iget v4, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMinWidth:I

    invoke-virtual {p0}, Lcom/huawei/android/FMRadio/ValuePicker;->getMeasuredWidth()I

    move-result v5

    invoke-direct {p0, v4, v5, p1}, Lcom/huawei/android/FMRadio/ValuePicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v3

    .line 681
    .local v3, widthSize:I
    iget v4, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMinHeight:I

    invoke-virtual {p0}, Lcom/huawei/android/FMRadio/ValuePicker;->getMeasuredHeight()I

    move-result v5

    invoke-direct {p0, v4, v5, p2}, Lcom/huawei/android/FMRadio/ValuePicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v0

    .line 683
    .local v0, heightSize:I
    invoke-virtual {p0, v3, v0}, Lcom/huawei/android/FMRadio/ValuePicker;->setMeasuredDimension(II)V

    .line 684
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "ev"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 738
    invoke-virtual {p0}, Lcom/huawei/android/FMRadio/ValuePicker;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_0

    .line 790
    :goto_0
    return v6

    .line 741
    :cond_0
    iget-object v8, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v8, :cond_1

    .line 742
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v8

    iput-object v8, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 744
    :cond_1
    iget-object v8, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 745
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 746
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    :goto_1
    move v6, v7

    .line 790
    goto :goto_0

    .line 748
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 749
    .local v1, currentMoveY:F
    iget-boolean v8, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mBeginEditOnUpEvent:Z

    if-nez v8, :cond_2

    iget v8, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mScrollState:I

    if-eq v8, v7, :cond_3

    .line 751
    :cond_2
    iget v8, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mLastDownEventY:F

    sub-float v8, v1, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-int v2, v8

    .line 752
    .local v2, deltaDownY:I
    iget v8, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mTouchSlop:I

    if-le v2, v8, :cond_3

    .line 753
    iput-boolean v6, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mBeginEditOnUpEvent:Z

    .line 754
    invoke-direct {p0, v7}, Lcom/huawei/android/FMRadio/ValuePicker;->onScrollStateChange(I)V

    .line 757
    .end local v2           #deltaDownY:I
    :cond_3
    iget v8, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mLastMotionEventY:F

    sub-float v8, v1, v8

    float-to-int v3, v8

    .line 758
    .local v3, deltaMoveY:I
    invoke-virtual {p0, v6, v3}, Lcom/huawei/android/FMRadio/ValuePicker;->scrollBy(II)V

    .line 759
    invoke-virtual {p0}, Lcom/huawei/android/FMRadio/ValuePicker;->invalidate()V

    .line 760
    iput v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mLastMotionEventY:F

    goto :goto_1

    .line 763
    .end local v1           #currentMoveY:F
    .end local v3           #deltaMoveY:I
    :pswitch_1
    iget-boolean v8, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mBeginEditOnUpEvent:Z

    if-eqz v8, :cond_4

    .line 764
    invoke-direct {p0, v7}, Lcom/huawei/android/FMRadio/ValuePicker;->setSelectorWheelState(I)V

    move v6, v7

    .line 766
    goto :goto_0

    .line 768
    :cond_4
    iget-object v5, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 769
    .local v5, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v8, 0x3e8

    iget v9, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMaximumFlingVelocity:I

    int-to-float v9, v9

    invoke-virtual {v5, v8, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 770
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v8

    float-to-int v4, v8

    .line 771
    .local v4, initialVelocity:I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v9, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMinimumFlingVelocity:I

    if-le v8, v9, :cond_6

    .line 772
    invoke-direct {p0, v4}, Lcom/huawei/android/FMRadio/ValuePicker;->fling(I)V

    .line 773
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/huawei/android/FMRadio/ValuePicker;->onScrollStateChange(I)V

    .line 784
    :cond_5
    :goto_2
    iget-object v6, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->recycle()V

    .line 785
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1

    .line 775
    :cond_6
    iget-boolean v8, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mAdjustScrollerOnUpEvent:Z

    if-eqz v8, :cond_7

    .line 776
    iget-object v8, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->isFinished()Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->isFinished()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 777
    invoke-direct {p0, v6}, Lcom/huawei/android/FMRadio/ValuePicker;->postAdjustScrollerCommand(I)V

    .line 778
    invoke-direct {p0, v6}, Lcom/huawei/android/FMRadio/ValuePicker;->onScrollStateChange(I)V

    goto :goto_2

    .line 781
    :cond_7
    sget v6, Lcom/huawei/android/FMRadio/ValuePicker;->SHOW_INPUT_CONTROLS_DELAY_MILLIS:I

    invoke-direct {p0, v6}, Lcom/huawei/android/FMRadio/ValuePicker;->postAdjustScrollerCommand(I)V

    goto :goto_2

    .line 746
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public scrollBy(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 879
    iget v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mSelectorWheelState:I

    if-nez v1, :cond_1

    .line 916
    :cond_0
    :goto_0
    return-void

    .line 882
    :cond_1
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mSelectorIndices:[I

    .line 883
    .local v0, selectorIndices:[I
    iget-boolean v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_2

    if-lez p2, :cond_2

    iget v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->SELECTOR_MIDDLE_ITEM_INDEX:I

    aget v1, v0, v1

    iget v2, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMinValue:I

    if-gt v1, v2, :cond_2

    .line 885
    iget v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mInitialScrollOffset:I

    iput v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mCurrentScrollOffset:I

    goto :goto_0

    .line 888
    :cond_2
    iget-boolean v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_3

    if-gez p2, :cond_3

    iget v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->SELECTOR_MIDDLE_ITEM_INDEX:I

    aget v1, v0, v1

    iget v2, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMaxValue:I

    if-lt v1, v2, :cond_3

    .line 890
    iget v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mInitialScrollOffset:I

    iput v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mCurrentScrollOffset:I

    goto :goto_0

    .line 893
    :cond_3
    iget v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mCurrentScrollOffset:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mCurrentScrollOffset:I

    .line 895
    if-lez p2, :cond_5

    .line 896
    :cond_4
    :goto_1
    iget v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mSelectorTextGapHeight:I

    if-le v1, v2, :cond_5

    .line 897
    iget v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mSelectorElementHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mCurrentScrollOffset:I

    .line 898
    invoke-direct {p0, v0}, Lcom/huawei/android/FMRadio/ValuePicker;->decrementSelectorIndices([I)V

    .line 899
    iget v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->SELECTOR_MIDDLE_ITEM_INDEX:I

    aget v1, v0, v1

    invoke-direct {p0, v1}, Lcom/huawei/android/FMRadio/ValuePicker;->changeCurrent(I)V

    .line 900
    iget-boolean v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_4

    iget v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->SELECTOR_MIDDLE_ITEM_INDEX:I

    aget v1, v0, v1

    iget v2, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMinValue:I

    if-gt v1, v2, :cond_4

    .line 901
    iget v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mInitialScrollOffset:I

    iput v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mCurrentScrollOffset:I

    goto :goto_1

    .line 906
    :cond_5
    if-gez p2, :cond_0

    .line 907
    :cond_6
    :goto_2
    iget v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mSelectorTextGapHeight:I

    neg-int v2, v2

    if-ge v1, v2, :cond_0

    .line 908
    iget v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mSelectorElementHeight:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mCurrentScrollOffset:I

    .line 909
    invoke-direct {p0, v0}, Lcom/huawei/android/FMRadio/ValuePicker;->incrementSelectorIndices([I)V

    .line 910
    iget v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->SELECTOR_MIDDLE_ITEM_INDEX:I

    aget v1, v0, v1

    invoke-direct {p0, v1}, Lcom/huawei/android/FMRadio/ValuePicker;->changeCurrent(I)V

    .line 911
    iget-boolean v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_6

    iget v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->SELECTOR_MIDDLE_ITEM_INDEX:I

    aget v1, v0, v1

    iget v2, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMaxValue:I

    if-lt v1, v2, :cond_6

    .line 912
    iget v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mInitialScrollOffset:I

    iput v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mCurrentScrollOffset:I

    goto :goto_2
.end method

.method public sendAccessibilityEvent(I)V
    .locals 0
    .parameter "eventType"

    .prologue
    .line 1332
    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 2
    .parameter "displayedValues"

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    .line 1198
    :goto_0
    return-void

    .line 1187
    :cond_0
    invoke-virtual {p0, p1}, Lcom/huawei/android/FMRadio/ValuePicker;->setmDisplayedValues([Ljava/lang/String;)V

    .line 1188
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1190
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mInputText:Landroid/widget/TextView;

    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 1195
    :goto_1
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/ValuePicker;->updateInputTextView()V

    .line 1196
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/ValuePicker;->initializeSelectorWheelIndices()V

    .line 1197
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/ValuePicker;->tryComputeMaxWidth()V

    goto :goto_0

    .line 1193
    :cond_1
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mInputText:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setRawInputType(I)V

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 870
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 871
    iput-boolean p1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->isEnable:Z

    .line 875
    return-void
.end method

.method public setMaxValue(I)V
    .locals 3
    .parameter "maxValue"

    .prologue
    .line 1152
    iget v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMaxValue:I

    if-ne v1, p1, :cond_0

    .line 1167
    :goto_0
    return-void

    .line 1155
    :cond_0
    if-gez p1, :cond_1

    .line 1156
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1158
    :cond_1
    iput p1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMaxValue:I

    .line 1159
    iget v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMaxValue:I

    iget v2, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mValue:I

    if-ge v1, v2, :cond_2

    .line 1160
    iget v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMaxValue:I

    iput v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mValue:I

    .line 1162
    :cond_2
    iget v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMaxValue:I

    iget v2, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 1163
    .local v0, wrapSelectorWheel:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/huawei/android/FMRadio/ValuePicker;->setWrapSelectorWheel(Z)V

    .line 1164
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/ValuePicker;->initializeSelectorWheelIndices()V

    .line 1165
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/ValuePicker;->updateInputTextView()V

    .line 1166
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/ValuePicker;->tryComputeMaxWidth()V

    goto :goto_0

    .line 1162
    .end local v0           #wrapSelectorWheel:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setMinValue(I)V
    .locals 3
    .parameter "minValue"

    .prologue
    .line 1120
    iget v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMinValue:I

    if-ne v1, p1, :cond_0

    .line 1135
    :goto_0
    return-void

    .line 1123
    :cond_0
    if-gez p1, :cond_1

    .line 1124
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "minValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1126
    :cond_1
    iput p1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMinValue:I

    .line 1127
    iget v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMinValue:I

    iget v2, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mValue:I

    if-le v1, v2, :cond_2

    .line 1128
    iget v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMinValue:I

    iput v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mValue:I

    .line 1130
    :cond_2
    iget v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMaxValue:I

    iget v2, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 1131
    .local v0, wrapSelectorWheel:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/huawei/android/FMRadio/ValuePicker;->setWrapSelectorWheel(Z)V

    .line 1132
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/ValuePicker;->initializeSelectorWheelIndices()V

    .line 1133
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/ValuePicker;->updateInputTextView()V

    .line 1134
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/ValuePicker;->tryComputeMaxWidth()V

    goto :goto_0

    .line 1130
    .end local v0           #wrapSelectorWheel:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setOnValueChangedListener(Lcom/huawei/android/FMRadio/ValuePicker$OnValueChangeListener;)V
    .locals 0
    .parameter "onValueChangedListener"

    .prologue
    .line 929
    iput-object p1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mOnValueChangeListener:Lcom/huawei/android/FMRadio/ValuePicker$OnValueChangeListener;

    .line 930
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 990
    iget v0, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mValue:I

    if-ne v0, p1, :cond_0

    .line 1004
    :goto_0
    return-void

    .line 993
    :cond_0
    iget v0, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMinValue:I

    if-ge p1, v0, :cond_1

    .line 994
    iget-boolean v0, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_3

    iget p1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMaxValue:I

    .line 996
    :cond_1
    :goto_1
    iget v0, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMaxValue:I

    if-le p1, v0, :cond_2

    .line 997
    iget-boolean v0, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_4

    iget p1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMinValue:I

    .line 1000
    :cond_2
    :goto_2
    iput p1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mValue:I

    .line 1001
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/ValuePicker;->initializeSelectorWheelIndices()V

    .line 1002
    invoke-direct {p0}, Lcom/huawei/android/FMRadio/ValuePicker;->updateInputTextView()V

    .line 1003
    invoke-virtual {p0}, Lcom/huawei/android/FMRadio/ValuePicker;->invalidate()V

    goto :goto_0

    .line 994
    :cond_3
    iget p1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMinValue:I

    goto :goto_1

    .line 997
    :cond_4
    iget p1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMaxValue:I

    goto :goto_2
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 2
    .parameter "wrapSelectorWheel"

    .prologue
    .line 1073
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMaxValue:I

    iget v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mSelectorIndices:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1074
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Range less than selector items count."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1076
    :cond_0
    iget-boolean v0, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mWrapSelectorWheel:Z

    if-eq p1, v0, :cond_1

    .line 1077
    iput-boolean p1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mWrapSelectorWheel:Z

    .line 1080
    :cond_1
    return-void
.end method

.method public setmDisplayedValues([Ljava/lang/String;)V
    .locals 0
    .parameter "mDisplayedValues"

    .prologue
    .line 1201
    iput-object p1, p0, Lcom/huawei/android/FMRadio/ValuePicker;->mDisplayedValues:[Ljava/lang/String;

    .line 1202
    return-void
.end method
