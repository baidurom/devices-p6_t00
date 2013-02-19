.class Landroid/webkit/WebViewClassic$TextSelectWindow;
.super Landroid/app/Dialog;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextSelectWindow"
.end annotation


# instance fields
.field private displayMetrics:Landroid/util/DisplayMetrics;

.field isCut:Z

.field protected mContentView:Landroid/widget/RelativeLayout;

.field private mCopyTextView:Landroid/widget/TextView;

.field private mCutTextView:Landroid/widget/TextView;

.field private mPointDown:Landroid/widget/ImageView;

.field private mPointUp:Landroid/widget/ImageView;

.field protected mPopWinLin:Landroid/widget/LinearLayout;

.field private mSearchTextView:Landroid/widget/TextView;

.field private mShareTextView:Landroid/widget/TextView;

.field private mSplitText0:Landroid/widget/TextView;

.field private mSplitText1:Landroid/widget/TextView;

.field private mSplitText2:Landroid/widget/TextView;

.field private mSplitText3:Landroid/widget/TextView;

.field private mTransTextView:Landroid/widget/TextView;

.field final synthetic this$0:Landroid/webkit/WebViewClassic;

.field private window:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 705
    iput-object p1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->this$0:Landroid/webkit/WebViewClassic;

    .line 706
    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/webkit/WebViewClassic;->access$600(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x206002d

    invoke-direct {p0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 701
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 703
    iput-boolean v0, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->isCut:Z

    .line 707
    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/webkit/WebViewClassic;->access$600(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 708
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$TextSelectWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->window:Landroid/view/Window;

    .line 709
    invoke-virtual {p1}, Landroid/webkit/WebViewClassic;->focusCandidateIsEditableText()Z

    move-result v1

    if-eqz v1, :cond_0

    #getter for: Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z
    invoke-static {p1}, Landroid/webkit/WebViewClassic;->access$900(Landroid/webkit/WebViewClassic;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->isCut:Z

    .line 710
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$TextSelectWindow;->initContentView()V

    .line 711
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$TextSelectWindow;->createPopupDialog()V

    .line 712
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$TextSelectWindow;->setListener()V

    .line 713
    return-void
.end method

.method private isInWebViewRegion(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 920
    const/4 v6, 0x2

    new-array v3, v6, [I

    .line 921
    .local v3, location:[I
    iget-object v6, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v6}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/webkit/WebView;->getLocationOnScreen([I)V

    .line 922
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 923
    .local v4, r:Landroid/graphics/Rect;
    iget-object v6, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v6}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/webkit/WebView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 925
    aget v6, v3, v5

    iget-object v7, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int v0, v6, v7

    .line 926
    .local v0, dif:I
    iget-object v6, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->window:Landroid/view/Window;

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    add-float/2addr v6, v7

    float-to-int v1, v6

    .line 928
    .local v1, eventX:I
    iget-object v6, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->window:Landroid/view/Window;

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    add-float/2addr v6, v7

    int-to-float v7, v0

    sub-float/2addr v6, v7

    float-to-int v2, v6

    .line 930
    .local v2, eventY:I
    iget-object v6, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v6}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebView;->getTop()I

    move-result v6

    iget-object v7, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v7

    add-int/2addr v6, v7

    if-ge v6, v2, :cond_0

    iget-object v6, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v6}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebView;->getBottom()I

    move-result v6

    if-ge v2, v6, :cond_0

    iget-object v6, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v6}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebView;->getLeft()I

    move-result v6

    if-ge v6, v1, :cond_0

    iget-object v6, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v6}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebView;->getRight()I

    move-result v6

    if-ge v1, v6, :cond_0

    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private replaceSpecStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"
    .parameter "spec"

    .prologue
    .line 902
    const-string v2, "\\s*|\t|\r|\n"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 903
    .local v1, p:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 904
    .local v0, m:Ljava/util/regex/Matcher;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 905
    return-object p1
.end method

.method private updatePosition(ZII)V
    .locals 2
    .parameter "shouldDrawRotImg"
    .parameter "parentPositionX"
    .parameter "parentPositionY"

    .prologue
    .line 879
    iget-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->window:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 880
    .local v0, layoutParams:Landroid/view/WindowManager$LayoutParams;
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 881
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 882
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 883
    iget-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->window:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 884
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$TextSelectWindow;->show()V

    .line 885
    return-void
.end method


# virtual methods
.method protected createPopupDialog()V
    .locals 3

    .prologue
    .line 750
    iget-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mContentView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic$TextSelectWindow;->setContentView(Landroid/view/View;)V

    .line 751
    iget-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->window:Landroid/view/Window;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 752
    iget-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->window:Landroid/view/Window;

    const/high16 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 753
    iget-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->window:Landroid/view/Window;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 754
    iget-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->window:Landroid/view/Window;

    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 755
    iget-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->window:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 756
    .local v0, layoutParams:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x64

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 757
    const/16 v1, 0xc8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 758
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 759
    iget-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->window:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 760
    new-instance v1, Landroid/webkit/WebViewClassic$TextSelectWindow$1;

    invoke-direct {v1, p0}, Landroid/webkit/WebViewClassic$TextSelectWindow$1;-><init>(Landroid/webkit/WebViewClassic$TextSelectWindow;)V

    invoke-virtual {p0, v1}, Landroid/webkit/WebViewClassic$TextSelectWindow;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 775
    return-void
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 888
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$TextSelectWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 889
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$TextSelectWindow;->dismiss()V

    .line 891
    :cond_0
    return-void
.end method

.method protected initContentView()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, -0x2

    const v4, 0x20300ec

    .line 716
    iget-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$600(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 717
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x2070019

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mContentView:Landroid/widget/RelativeLayout;

    .line 718
    iget-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mContentView:Landroid/widget/RelativeLayout;

    const v3, 0x20d0013

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mPopWinLin:Landroid/widget/LinearLayout;

    .line 719
    iget-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mPopWinLin:Landroid/widget/LinearLayout;

    const v3, 0x20d0014

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mCutTextView:Landroid/widget/TextView;

    .line 720
    iget-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mCutTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 721
    iget-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mPopWinLin:Landroid/widget/LinearLayout;

    const v3, 0x20d0015

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mSplitText0:Landroid/widget/TextView;

    .line 722
    iget-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mSplitText0:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 723
    iget-boolean v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->isCut:Z

    if-eqz v2, :cond_0

    .line 724
    iget-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mCutTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 725
    iget-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mSplitText0:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 727
    :cond_0
    iget-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mPopWinLin:Landroid/widget/LinearLayout;

    const v3, 0x20d0016

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mCopyTextView:Landroid/widget/TextView;

    .line 728
    iget-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mCopyTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 729
    iget-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mPopWinLin:Landroid/widget/LinearLayout;

    const v3, 0x20d0017

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mSplitText1:Landroid/widget/TextView;

    .line 730
    iget-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mSplitText1:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 731
    iget-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mPopWinLin:Landroid/widget/LinearLayout;

    const v3, 0x20d0018

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mShareTextView:Landroid/widget/TextView;

    .line 732
    iget-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mShareTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 733
    iget-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mPopWinLin:Landroid/widget/LinearLayout;

    const v3, 0x20d0019

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mSplitText2:Landroid/widget/TextView;

    .line 734
    iget-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mSplitText2:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 735
    iget-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mPopWinLin:Landroid/widget/LinearLayout;

    const v3, 0x20d001a

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mSearchTextView:Landroid/widget/TextView;

    .line 736
    iget-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mSearchTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 737
    iget-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mPopWinLin:Landroid/widget/LinearLayout;

    const v3, 0x20d001b

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mSplitText3:Landroid/widget/TextView;

    .line 738
    iget-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mSplitText3:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 739
    iget-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mPopWinLin:Landroid/widget/LinearLayout;

    const v3, 0x20d001c

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mTransTextView:Landroid/widget/TextView;

    .line 740
    iget-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mTransTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 741
    iget-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mContentView:Landroid/widget/RelativeLayout;

    const v3, 0x20d0012

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mPointUp:Landroid/widget/ImageView;

    .line 742
    iget-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mPointUp:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 743
    iget-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mContentView:Landroid/widget/RelativeLayout;

    const v3, 0x20d001d

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mPointDown:Landroid/widget/ImageView;

    .line 744
    iget-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mPointDown:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 745
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 746
    .local v1, wrapContent:Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mContentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 747
    return-void
.end method

.method protected measureContent()V
    .locals 4

    .prologue
    const/high16 v3, -0x8000

    .line 870
    iget-object v0, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mContentView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->measure(II)V

    .line 875
    return-void
.end method

.method public measurePopHeight()I
    .locals 1

    .prologue
    .line 898
    iget-object v0, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mContentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public measurePopWidth()I
    .locals 1

    .prologue
    .line 894
    iget-object v0, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mPopWinLin:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 843
    iget-object v4, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mCutTextView:Landroid/widget/TextView;

    if-ne p1, v4, :cond_1

    .line 844
    iget-object v4, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->cutSelection()V

    .line 866
    :cond_0
    :goto_0
    iget-object v4, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 867
    return-void

    .line 845
    :cond_1
    iget-object v4, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mCopyTextView:Landroid/widget/TextView;

    if-ne p1, v4, :cond_2

    .line 846
    iget-object v4, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->copySelection()Z

    goto :goto_0

    .line 847
    :cond_2
    iget-object v4, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mShareTextView:Landroid/widget/TextView;

    if-ne p1, v4, :cond_3

    .line 848
    iget-object v4, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/webkit/WebViewClassic;->access$600(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getSelection()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/provider/Browser;->sendString(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 849
    :cond_3
    iget-object v4, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mSearchTextView:Landroid/widget/TextView;

    if-ne p1, v4, :cond_4

    .line 850
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.WEB_SEARCH"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 851
    .local v2, i:Landroid/content/Intent;
    const-string/jumbo v4, "new_search"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 852
    const-string/jumbo v4, "query"

    iget-object v5, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->getSelection()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 853
    const/high16 v4, 0x1000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 854
    iget-object v4, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/webkit/WebViewClassic;->access$600(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 855
    .end local v2           #i:Landroid/content/Intent;
    :cond_4
    iget-object v4, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mTransTextView:Landroid/widget/TextView;

    if-ne p1, v4, :cond_0

    .line 857
    :try_start_0
    iget-object v4, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getSelection()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\n"

    invoke-direct {p0, v4, v5}, Landroid/webkit/WebViewClassic$TextSelectWindow;->replaceSpecStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 858
    .local v0, content:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://translate.google.cn/m/translate?hl=zh-CN&ie=UTF8&prev=_t&sl=auto&tl=en&q="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#submit"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 860
    .local v3, url:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 861
    .restart local v2       #i:Landroid/content/Intent;
    iget-object v4, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/webkit/WebViewClassic;->access$600(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 862
    .end local v0           #content:Ljava/lang/String;
    .end local v2           #i:Landroid/content/Intent;
    .end local v3           #url:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 863
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 910
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 911
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic$TextSelectWindow;->isInWebViewRegion(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 912
    iget-object v0, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 913
    const/4 v0, 0x1

    .line 916
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected setListener()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 778
    iget-object v0, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mContentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    .line 779
    iget-object v0, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mContentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setFocusableInTouchMode(Z)V

    .line 780
    iget-object v0, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mContentView:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/webkit/WebViewClassic$TextSelectWindow$2;

    invoke-direct {v1, p0}, Landroid/webkit/WebViewClassic$TextSelectWindow$2;-><init>(Landroid/webkit/WebViewClassic$TextSelectWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 794
    return-void
.end method

.method public show(ZIII)V
    .locals 5
    .parameter "shouldDrawRotImg"
    .parameter "left"
    .parameter "top"
    .parameter "point"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 797
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$TextSelectWindow;->measureContent()V

    .line 798
    iget-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$TextSelectWindow;->measurePopWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 799
    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 800
    iget-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$TextSelectWindow;->measurePopHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 801
    invoke-static {v3, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 803
    iget-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getScale()F

    move-result v1

    iget-object v2, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getDefaultZoomScale()F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3

    .line 804
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$TextSelectWindow;->measurePopWidth()I

    move-result v1

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x19

    if-le p4, v1, :cond_2

    .line 805
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$TextSelectWindow;->measurePopWidth()I

    move-result v1

    add-int/lit8 p4, v1, -0x3c

    .line 815
    :cond_0
    :goto_0
    const/16 v1, 0x14

    if-gt p4, v1, :cond_1

    .line 816
    const/16 p4, 0x14

    .line 818
    :cond_1
    const/4 v0, 0x0

    .line 819
    .local v0, parms:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mContentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 820
    if-eqz p1, :cond_4

    .line 821
    iget-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mPopWinLin:Landroid/widget/LinearLayout;

    const v2, 0x20300e8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 822
    iget-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mPointDown:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 823
    iget-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mPointUp:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 824
    iget-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mPointUp:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->bringToFront()V

    .line 825
    iget-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mPointUp:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #parms:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 826
    .restart local v0       #parms:Landroid/widget/RelativeLayout$LayoutParams;
    iput p4, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 827
    iget-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mPointUp:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 828
    iget-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mPointUp:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    .line 839
    :goto_1
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewClassic$TextSelectWindow;->updatePosition(ZII)V

    .line 840
    return-void

    .line 807
    .end local v0           #parms:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    sub-int v1, p4, p2

    add-int/lit8 p4, v1, -0x14

    goto :goto_0

    .line 810
    :cond_3
    sub-int v1, p4, p2

    add-int/lit8 p4, v1, -0x14

    .line 811
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$TextSelectWindow;->measurePopWidth()I

    move-result v1

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x19

    if-le p4, v1, :cond_0

    .line 812
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$TextSelectWindow;->measurePopWidth()I

    move-result v1

    add-int/lit8 p4, v1, -0x3c

    goto :goto_0

    .line 830
    .restart local v0       #parms:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    iget-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mPopWinLin:Landroid/widget/LinearLayout;

    const v2, 0x20300e7

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 831
    iget-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mPointUp:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 832
    iget-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mPointDown:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 833
    iget-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mPointDown:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #parms:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 834
    .restart local v0       #parms:Landroid/widget/RelativeLayout$LayoutParams;
    iput p4, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 835
    iget-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mPointDown:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 836
    iget-object v1, p0, Landroid/webkit/WebViewClassic$TextSelectWindow;->mPointDown:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_1
.end method
