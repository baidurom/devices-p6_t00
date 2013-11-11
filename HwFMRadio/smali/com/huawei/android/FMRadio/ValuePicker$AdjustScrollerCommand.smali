.class Lcom/huawei/android/FMRadio/ValuePicker$AdjustScrollerCommand;
.super Ljava/lang/Object;
.source "ValuePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/FMRadio/ValuePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdjustScrollerCommand"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/FMRadio/ValuePicker;


# direct methods
.method constructor <init>(Lcom/huawei/android/FMRadio/ValuePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1709
    iput-object p1, p0, Lcom/huawei/android/FMRadio/ValuePicker$AdjustScrollerCommand;->this$0:Lcom/huawei/android/FMRadio/ValuePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1711
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ValuePicker$AdjustScrollerCommand;->this$0:Lcom/huawei/android/FMRadio/ValuePicker;

    #setter for: Lcom/huawei/android/FMRadio/ValuePicker;->mPreviousScrollerY:I
    invoke-static {v0, v1}, Lcom/huawei/android/FMRadio/ValuePicker;->access$002(Lcom/huawei/android/FMRadio/ValuePicker;I)I

    .line 1712
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ValuePicker$AdjustScrollerCommand;->this$0:Lcom/huawei/android/FMRadio/ValuePicker;

    #getter for: Lcom/huawei/android/FMRadio/ValuePicker;->mInitialScrollOffset:I
    invoke-static {v0}, Lcom/huawei/android/FMRadio/ValuePicker;->access$100(Lcom/huawei/android/FMRadio/ValuePicker;)I

    move-result v0

    iget-object v2, p0, Lcom/huawei/android/FMRadio/ValuePicker$AdjustScrollerCommand;->this$0:Lcom/huawei/android/FMRadio/ValuePicker;

    #getter for: Lcom/huawei/android/FMRadio/ValuePicker;->mCurrentScrollOffset:I
    invoke-static {v2}, Lcom/huawei/android/FMRadio/ValuePicker;->access$200(Lcom/huawei/android/FMRadio/ValuePicker;)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 1713
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ValuePicker$AdjustScrollerCommand;->this$0:Lcom/huawei/android/FMRadio/ValuePicker;

    #calls: Lcom/huawei/android/FMRadio/ValuePicker;->updateInputTextView()V
    invoke-static {v0}, Lcom/huawei/android/FMRadio/ValuePicker;->access$300(Lcom/huawei/android/FMRadio/ValuePicker;)V

    .line 1723
    :goto_0
    return-void

    .line 1717
    :cond_0
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ValuePicker$AdjustScrollerCommand;->this$0:Lcom/huawei/android/FMRadio/ValuePicker;

    #getter for: Lcom/huawei/android/FMRadio/ValuePicker;->mInitialScrollOffset:I
    invoke-static {v0}, Lcom/huawei/android/FMRadio/ValuePicker;->access$100(Lcom/huawei/android/FMRadio/ValuePicker;)I

    move-result v0

    iget-object v2, p0, Lcom/huawei/android/FMRadio/ValuePicker$AdjustScrollerCommand;->this$0:Lcom/huawei/android/FMRadio/ValuePicker;

    #getter for: Lcom/huawei/android/FMRadio/ValuePicker;->mCurrentScrollOffset:I
    invoke-static {v2}, Lcom/huawei/android/FMRadio/ValuePicker;->access$200(Lcom/huawei/android/FMRadio/ValuePicker;)I

    move-result v2

    sub-int v4, v0, v2

    .line 1718
    .local v4, deltaY:I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v2, p0, Lcom/huawei/android/FMRadio/ValuePicker$AdjustScrollerCommand;->this$0:Lcom/huawei/android/FMRadio/ValuePicker;

    #getter for: Lcom/huawei/android/FMRadio/ValuePicker;->mSelectorElementHeight:I
    invoke-static {v2}, Lcom/huawei/android/FMRadio/ValuePicker;->access$400(Lcom/huawei/android/FMRadio/ValuePicker;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_1

    .line 1719
    if-lez v4, :cond_2

    iget-object v0, p0, Lcom/huawei/android/FMRadio/ValuePicker$AdjustScrollerCommand;->this$0:Lcom/huawei/android/FMRadio/ValuePicker;

    #getter for: Lcom/huawei/android/FMRadio/ValuePicker;->mSelectorElementHeight:I
    invoke-static {v0}, Lcom/huawei/android/FMRadio/ValuePicker;->access$400(Lcom/huawei/android/FMRadio/ValuePicker;)I

    move-result v0

    neg-int v0, v0

    :goto_1
    add-int/2addr v4, v0

    .line 1721
    :cond_1
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ValuePicker$AdjustScrollerCommand;->this$0:Lcom/huawei/android/FMRadio/ValuePicker;

    #getter for: Lcom/huawei/android/FMRadio/ValuePicker;->mAdjustScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/huawei/android/FMRadio/ValuePicker;->access$500(Lcom/huawei/android/FMRadio/ValuePicker;)Landroid/widget/Scroller;

    move-result-object v0

    const/16 v5, 0x320

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1722
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ValuePicker$AdjustScrollerCommand;->this$0:Lcom/huawei/android/FMRadio/ValuePicker;

    invoke-virtual {v0}, Lcom/huawei/android/FMRadio/ValuePicker;->invalidate()V

    goto :goto_0

    .line 1719
    :cond_2
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ValuePicker$AdjustScrollerCommand;->this$0:Lcom/huawei/android/FMRadio/ValuePicker;

    #getter for: Lcom/huawei/android/FMRadio/ValuePicker;->mSelectorElementHeight:I
    invoke-static {v0}, Lcom/huawei/android/FMRadio/ValuePicker;->access$400(Lcom/huawei/android/FMRadio/ValuePicker;)I

    move-result v0

    goto :goto_1
.end method
