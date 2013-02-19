.class Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImeSubtypeListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCheckedItem:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItemsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mTextColorPri:I

.field private final mTextColorSec:I

.field private final mTextViewResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;I)V
    .locals 4
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .parameter "checkedItem"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p3, itemsList:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;>;"
    const/4 v3, 0x0

    .line 2843
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 2844
    iput p2, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mTextViewResourceId:I

    .line 2845
    iput-object p3, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mItemsList:Ljava/util/List;

    .line 2846
    iput p4, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mCheckedItem:I

    .line 2847
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 2850
    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, v1, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2851
    .local v0, array:Landroid/content/res/TypedArray;
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mTextColorPri:I

    .line 2852
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mTextColorSec:I

    .line 2854
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    .line 2858
    if-eqz p2, :cond_1

    move-object v6, p2

    .line 2860
    .local v6, view:Landroid/view/View;
    :goto_0
    if-ltz p1, :cond_0

    iget-object v8, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mItemsList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lt p1, v8, :cond_2

    .line 2890
    :cond_0
    :goto_1
    return-object v6

    .line 2858
    .end local v6           #view:Landroid/view/View;
    :cond_1
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v9, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mTextViewResourceId:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    goto :goto_0

    .line 2861
    .restart local v6       #view:Landroid/view/View;
    :cond_2
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mItemsList:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;

    .line 2862
    .local v2, item:Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;
    iget-object v1, v2, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mImeName:Ljava/lang/CharSequence;

    .line 2863
    .local v1, imeName:Ljava/lang/CharSequence;
    iget-object v5, v2, Lcom/android/server/InputMethodManagerService$ImeSubtypeListItem;->mSubtypeName:Ljava/lang/CharSequence;

    .line 2864
    .local v5, subtypeName:Ljava/lang/CharSequence;
    const v8, 0x1020014

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2865
    .local v0, firstTextView:Landroid/widget/TextView;
    const v8, 0x1020015

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2868
    .local v4, secondTextView:Landroid/widget/TextView;
    iget v8, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mTextColorPri:I

    if-eqz v8, :cond_3

    .line 2869
    iget v8, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mTextColorPri:I

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2871
    :cond_3
    iget v8, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mTextColorSec:I

    if-eqz v8, :cond_4

    .line 2872
    iget v8, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mTextColorSec:I

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2876
    :cond_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2877
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2878
    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2884
    :goto_2
    const v8, 0x1020311

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 2889
    .local v3, radioButton:Landroid/widget/RadioButton;
    iget v8, p0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mCheckedItem:I

    if-ne p1, v8, :cond_5

    const/4 v7, 0x1

    :cond_5
    invoke-virtual {v3, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 2880
    .end local v3           #radioButton:Landroid/widget/RadioButton;
    :cond_6
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2881
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2882
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method
