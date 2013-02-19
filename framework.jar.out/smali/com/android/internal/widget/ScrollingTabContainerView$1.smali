.class Lcom/android/internal/widget/ScrollingTabContainerView$1;
.super Landroid/os/Handler;
.source "ScrollingTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/ScrollingTabContainerView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/ScrollingTabContainerView;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$1;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 114
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 115
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 116
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView$1;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    #getter for: Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/internal/widget/ScrollingTabContainerView;->access$000(Lcom/android/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 117
    .local v1, tabCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    add-int/lit8 v4, v1, -0x1

    if-ge v0, v4, :cond_1

    .line 118
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView$1;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    #getter for: Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/internal/widget/ScrollingTabContainerView;->access$000(Lcom/android/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 119
    .local v3, view:Landroid/view/View;
    instance-of v4, v3, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    if-eqz v4, :cond_0

    move-object v2, v3

    .line 120
    check-cast v2, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    .line 121
    .local v2, tabViewTmp:Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/widget/ScrollingTabContainerView$1;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    #getter for: Lcom/android/internal/widget/ScrollingTabContainerView;->mCurrentTabTextSize:F
    invoke-static {v5}, Lcom/android/internal/widget/ScrollingTabContainerView;->access$100(Lcom/android/internal/widget/ScrollingTabContainerView;)F

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setTextViewFontSizeOfHw(IF)V

    .line 117
    .end local v2           #tabViewTmp:Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    .end local v0           #i:I
    .end local v1           #tabCount:I
    .end local v3           #view:Landroid/view/View;
    :cond_1
    return-void
.end method
