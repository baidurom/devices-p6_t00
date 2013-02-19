.class public Landroid/app/FragmentBreadCrumbs;
.super Landroid/view/ViewGroup;
.source "FragmentBreadCrumbs.java"

# interfaces
.implements Landroid/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_GRAVITY:I = 0x800013


# instance fields
.field private bArabic:Z

.field mActivity:Landroid/app/Activity;

.field mContainer:Landroid/widget/LinearLayout;

.field private mGravity:I

.field mInflater:Landroid/view/LayoutInflater;

.field mMaxVisible:I

.field private mOnBreadCrumbClickListener:Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mParentClickListener:Landroid/view/View$OnClickListener;

.field mParentEntry:Landroid/app/BackStackRecord;

.field mTopEntry:Landroid/app/BackStackRecord;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/FragmentBreadCrumbs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 86
    const v0, 0x1030089

    invoke-direct {p0, p1, p2, v0}, Landroid/app/FragmentBreadCrumbs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    const/4 v1, -0x1

    iput v1, p0, Landroid/app/FragmentBreadCrumbs;->mMaxVisible:I

    .line 57
    invoke-static {}, Landroid/os/SystemProperties;->getRTLFlag()Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/FragmentBreadCrumbs;->bArabic:Z

    .line 363
    new-instance v1, Landroid/app/FragmentBreadCrumbs$1;

    invoke-direct {v1, p0}, Landroid/app/FragmentBreadCrumbs$1;-><init>(Landroid/app/FragmentBreadCrumbs;)V

    iput-object v1, p0, Landroid/app/FragmentBreadCrumbs;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 92
    sget-object v1, Lcom/android/internal/R$styleable;->FragmentBreadCrumbs:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 95
    .local v0, a:Landroid/content/res/TypedArray;
    const v1, 0x800013

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/app/FragmentBreadCrumbs;->mGravity:I

    .line 98
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 99
    return-void
.end method

.method static synthetic access$000(Landroid/app/FragmentBreadCrumbs;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mParentClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Landroid/app/FragmentBreadCrumbs;)Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mOnBreadCrumbClickListener:Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;

    return-object v0
.end method

.method private createBackStackEntry(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/BackStackRecord;
    .locals 2
    .parameter "title"
    .parameter "shortTitle"

    .prologue
    .line 157
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 163
    :goto_0
    return-object v0

    .line 159
    :cond_0
    new-instance v0, Landroid/app/BackStackRecord;

    iget-object v1, p0, Landroid/app/FragmentBreadCrumbs;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    check-cast v1, Landroid/app/FragmentManagerImpl;

    invoke-direct {v0, v1}, Landroid/app/BackStackRecord;-><init>(Landroid/app/FragmentManagerImpl;)V

    .line 161
    .local v0, entry:Landroid/app/BackStackRecord;
    invoke-virtual {v0, p1}, Landroid/app/BackStackRecord;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    .line 162
    invoke-virtual {v0, p2}, Landroid/app/BackStackRecord;->setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method private getPreEntry(I)Landroid/app/FragmentManager$BackStackEntry;
    .locals 1
    .parameter "index"

    .prologue
    .line 278
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mParentEntry:Landroid/app/BackStackRecord;

    if-eqz v0, :cond_1

    .line 279
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mParentEntry:Landroid/app/BackStackRecord;

    .line 281
    :goto_0
    return-object v0

    .line 279
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mTopEntry:Landroid/app/BackStackRecord;

    goto :goto_0

    .line 281
    :cond_1
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mTopEntry:Landroid/app/BackStackRecord;

    goto :goto_0
.end method

.method private getPreEntryCount()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 267
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mTopEntry:Landroid/app/BackStackRecord;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Landroid/app/FragmentBreadCrumbs;->mParentEntry:Landroid/app/BackStackRecord;

    if-eqz v3, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public onBackStackChanged()V
    .locals 0

    .prologue
    .line 259
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->updateCrumbs()V

    .line 260
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 180
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->getChildCount()I

    move-result v2

    .line 181
    .local v2, childCount:I
    if-nez v2, :cond_0

    .line 222
    :goto_0
    return-void

    .line 185
    :cond_0
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/app/FragmentBreadCrumbs;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 187
    .local v0, child:Landroid/view/View;
    iget v5, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingTop:I

    .line 188
    .local v5, childTop:I
    iget v8, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingTop:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingBottom:I

    sub-int v1, v8, v9

    .line 193
    .local v1, childBottom:I
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->getLayoutDirection()I

    move-result v7

    .line 194
    .local v7, layoutDirection:I
    iget v8, p0, Landroid/app/FragmentBreadCrumbs;->mGravity:I

    const v9, 0x800007

    and-int v6, v8, v9

    .line 195
    .local v6, horizontalGravity:I
    invoke-static {v6, v7}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 208
    iget v3, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingLeft:I

    .line 209
    .local v3, childLeft:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int v4, v3, v8

    .line 213
    .local v4, childRight:I
    :goto_1
    iget v8, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingLeft:I

    if-ge v3, v8, :cond_1

    .line 214
    iget v3, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingLeft:I

    .line 217
    :cond_1
    iget v8, p0, Landroid/app/FragmentBreadCrumbs;->mRight:I

    iget v9, p0, Landroid/app/FragmentBreadCrumbs;->mLeft:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingRight:I

    sub-int/2addr v8, v9

    if-le v4, v8, :cond_2

    .line 218
    iget v8, p0, Landroid/app/FragmentBreadCrumbs;->mRight:I

    iget v9, p0, Landroid/app/FragmentBreadCrumbs;->mLeft:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingRight:I

    sub-int v4, v8, v9

    .line 221
    :cond_2
    invoke-virtual {v0, v3, v5, v4, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 197
    .end local v3           #childLeft:I
    .end local v4           #childRight:I
    :sswitch_0
    iget v8, p0, Landroid/app/FragmentBreadCrumbs;->mRight:I

    iget v9, p0, Landroid/app/FragmentBreadCrumbs;->mLeft:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingRight:I

    sub-int v4, v8, v9

    .line 198
    .restart local v4       #childRight:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int v3, v4, v8

    .line 199
    .restart local v3       #childLeft:I
    goto :goto_1

    .line 202
    .end local v3           #childLeft:I
    .end local v4           #childRight:I
    :sswitch_1
    iget v8, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingLeft:I

    iget v9, p0, Landroid/app/FragmentBreadCrumbs;->mRight:I

    iget v10, p0, Landroid/app/FragmentBreadCrumbs;->mLeft:I

    sub-int/2addr v9, v10

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int v3, v8, v9

    .line 203
    .restart local v3       #childLeft:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int v4, v3, v8

    .line 204
    .restart local v4       #childRight:I
    goto :goto_1

    .line 195
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 226
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->getChildCount()I

    move-result v1

    .line 228
    .local v1, count:I
    const/4 v3, 0x0

    .line 229
    .local v3, maxHeight:I
    const/4 v4, 0x0

    .line 230
    .local v4, maxWidth:I
    const/4 v5, 0x0

    .line 233
    .local v5, measuredChildState:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 234
    invoke-virtual {p0, v2}, Landroid/app/FragmentBreadCrumbs;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 235
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    .line 236
    invoke-virtual {p0, v0, p1, p2}, Landroid/app/FragmentBreadCrumbs;->measureChild(Landroid/view/View;II)V

    .line 237
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 238
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 239
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredState()I

    move-result v6

    invoke-static {v5, v6}, Landroid/app/FragmentBreadCrumbs;->combineMeasuredStates(II)I

    move-result v5

    .line 233
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 245
    .end local v0           #child:Landroid/view/View;
    :cond_1
    iget v6, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingLeft:I

    iget v7, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingRight:I

    add-int/2addr v6, v7

    add-int/2addr v4, v6

    .line 246
    iget v6, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingTop:I

    iget v7, p0, Landroid/app/FragmentBreadCrumbs;->mPaddingBottom:I

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    .line 249
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->getSuggestedMinimumHeight()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 250
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->getSuggestedMinimumWidth()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 252
    invoke-static {v4, p1, v5}, Landroid/app/FragmentBreadCrumbs;->resolveSizeAndState(III)I

    move-result v6

    shl-int/lit8 v7, v5, 0x10

    invoke-static {v3, p2, v7}, Landroid/app/FragmentBreadCrumbs;->resolveSizeAndState(III)I

    move-result v7

    invoke-virtual {p0, v6, v7}, Landroid/app/FragmentBreadCrumbs;->setMeasuredDimension(II)V

    .line 255
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 3
    .parameter "a"

    .prologue
    .line 106
    iput-object p1, p0, Landroid/app/FragmentBreadCrumbs;->mActivity:Landroid/app/Activity;

    .line 107
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mInflater:Landroid/view/LayoutInflater;

    .line 108
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x1090042

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    .line 111
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/app/FragmentBreadCrumbs;->addView(Landroid/view/View;)V

    .line 112
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 113
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->updateCrumbs()V

    .line 114
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/FragmentBreadCrumbs;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 115
    return-void
.end method

.method public setMaxVisible(I)V
    .locals 2
    .parameter "visibleCrumbs"

    .prologue
    .line 122
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "visibleCrumbs must be greater than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_0
    iput p1, p0, Landroid/app/FragmentBreadCrumbs;->mMaxVisible:I

    .line 126
    return-void
.end method

.method public setOnBreadCrumbClickListener(Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 153
    iput-object p1, p0, Landroid/app/FragmentBreadCrumbs;->mOnBreadCrumbClickListener:Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;

    .line 154
    return-void
.end method

.method public setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "title"
    .parameter "shortTitle"
    .parameter "listener"

    .prologue
    .line 141
    invoke-direct {p0, p1, p2}, Landroid/app/FragmentBreadCrumbs;->createBackStackEntry(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/BackStackRecord;

    move-result-object v0

    iput-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mParentEntry:Landroid/app/BackStackRecord;

    .line 142
    iput-object p3, p0, Landroid/app/FragmentBreadCrumbs;->mParentClickListener:Landroid/view/View$OnClickListener;

    .line 143
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->updateCrumbs()V

    .line 144
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"
    .parameter "shortTitle"

    .prologue
    .line 172
    invoke-direct {p0, p1, p2}, Landroid/app/FragmentBreadCrumbs;->createBackStackEntry(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/BackStackRecord;

    move-result-object v0

    iput-object v0, p0, Landroid/app/FragmentBreadCrumbs;->mTopEntry:Landroid/app/BackStackRecord;

    .line 173
    invoke-virtual {p0}, Landroid/app/FragmentBreadCrumbs;->updateCrumbs()V

    .line 174
    return-void
.end method

.method updateCrumbs()V
    .locals 21

    .prologue
    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    .line 287
    .local v6, fm:Landroid/app/FragmentManager;
    invoke-virtual {v6}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v11

    .line 288
    .local v11, numEntries:I
    invoke-direct/range {p0 .. p0}, Landroid/app/FragmentBreadCrumbs;->getPreEntryCount()I

    move-result v12

    .line 289
    .local v12, numPreEntries:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v13

    .line 290
    .local v13, numViews:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    add-int v18, v11, v12

    move/from16 v0, v18

    if-ge v7, v0, :cond_8

    .line 291
    if-ge v7, v12, :cond_0

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/app/FragmentBreadCrumbs;->getPreEntry(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v4

    .line 294
    .local v4, bse:Landroid/app/FragmentManager$BackStackEntry;
    :goto_1
    if-ge v7, v13, :cond_4

    .line 297
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/app/FragmentBreadCrumbs;->bArabic:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 302
    .local v16, v:Landroid/view/View;
    :goto_2
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    .line 303
    .local v14, tag:Ljava/lang/Object;
    if-eq v14, v4, :cond_4

    .line 304
    move v9, v7

    .local v9, j:I
    :goto_3
    if-ge v9, v13, :cond_3

    .line 305
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/app/FragmentBreadCrumbs;->bArabic:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 304
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 291
    .end local v4           #bse:Landroid/app/FragmentManager$BackStackEntry;
    .end local v9           #j:I
    .end local v14           #tag:Ljava/lang/Object;
    .end local v16           #v:Landroid/view/View;
    :cond_0
    sub-int v18, v7, v12

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v4

    goto :goto_1

    .line 300
    .restart local v4       #bse:Landroid/app/FragmentManager$BackStackEntry;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .restart local v16       #v:Landroid/view/View;
    goto :goto_2

    .line 308
    .restart local v9       #j:I
    .restart local v14       #tag:Ljava/lang/Object;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    goto :goto_4

    .line 311
    :cond_3
    move v13, v7

    .line 315
    .end local v9           #j:I
    .end local v14           #tag:Ljava/lang/Object;
    .end local v16           #v:Landroid/view/View;
    :cond_4
    if-lt v7, v13, :cond_6

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v18, v0

    const v19, 0x1090041

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, p0

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 319
    .local v8, item:Landroid/view/View;
    const v18, 0x1020016

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 320
    .local v15, text:Landroid/widget/TextView;
    invoke-interface {v4}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitle()Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 322
    if-nez v7, :cond_5

    .line 323
    const v18, 0x102023d

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 326
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/app/FragmentBreadCrumbs;->bArabic:Z

    move/from16 v18, v0

    if-eqz v18, :cond_7

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 332
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    .end local v8           #item:Landroid/view/View;
    .end local v15           #text:Landroid/widget/TextView;
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 329
    .restart local v8       #item:Landroid/view/View;
    .restart local v15       #text:Landroid/widget/TextView;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_5

    .line 335
    .end local v4           #bse:Landroid/app/FragmentManager$BackStackEntry;
    .end local v8           #item:Landroid/view/View;
    .end local v15           #text:Landroid/widget/TextView;
    :cond_8
    add-int v17, v11, v12

    .line 336
    .local v17, viewI:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v13

    .line 337
    :goto_6
    move/from16 v0, v17

    if-le v13, v0, :cond_9

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    add-int/lit8 v19, v13, -0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 339
    add-int/lit8 v13, v13, -0x1

    goto :goto_6

    .line 342
    :cond_9
    const/4 v7, 0x0

    :goto_7
    if-ge v7, v13, :cond_10

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/FragmentBreadCrumbs;->mContainer:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 346
    .local v5, child:Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/app/FragmentBreadCrumbs;->bArabic:Z

    move/from16 v18, v0

    if-eqz v18, :cond_c

    .line 347
    const v18, 0x1020016

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    if-eqz v7, :cond_b

    const/16 v18, 0x1

    :goto_8
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 352
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/app/FragmentBreadCrumbs;->mMaxVisible:I

    move/from16 v18, v0

    if-lez v18, :cond_a

    .line 354
    move-object/from16 v0, p0

    iget v0, v0, Landroid/app/FragmentBreadCrumbs;->mMaxVisible:I

    move/from16 v18, v0

    sub-int v18, v13, v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_e

    const/16 v18, 0x8

    :goto_a
    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 355
    const v18, 0x102023d

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 357
    .local v10, leftIcon:Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/app/FragmentBreadCrumbs;->mMaxVisible:I

    move/from16 v18, v0

    sub-int v18, v13, v18

    move/from16 v0, v18

    if-le v7, v0, :cond_f

    if-eqz v7, :cond_f

    const/16 v18, 0x0

    :goto_b
    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    .line 342
    .end local v10           #leftIcon:Landroid/view/View;
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 347
    :cond_b
    const/16 v18, 0x0

    goto :goto_8

    .line 349
    :cond_c
    const v18, 0x1020016

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    add-int/lit8 v18, v13, -0x1

    move/from16 v0, v18

    if-ge v7, v0, :cond_d

    const/16 v18, 0x1

    :goto_c
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_9

    :cond_d
    const/16 v18, 0x0

    goto :goto_c

    .line 354
    :cond_e
    const/16 v18, 0x0

    goto :goto_a

    .line 357
    .restart local v10       #leftIcon:Landroid/view/View;
    :cond_f
    const/16 v18, 0x8

    goto :goto_b

    .line 361
    .end local v5           #child:Landroid/view/View;
    .end local v10           #leftIcon:Landroid/view/View;
    :cond_10
    return-void
.end method
