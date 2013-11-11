.class public Lcom/huawei/android/FMRadio/CollectAdapter;
.super Landroid/widget/BaseAdapter;
.source "CollectAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mItemNumber:I

.field private mNormalColor:I

.field private mPlayColor:I

.field private mStartIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .parameter "context"
    .parameter "startIndex"
    .parameter "itemNumber"

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/huawei/android/FMRadio/CollectAdapter;->mContext:Landroid/content/Context;

    .line 35
    iput p2, p0, Lcom/huawei/android/FMRadio/CollectAdapter;->mStartIndex:I

    .line 36
    iput p3, p0, Lcom/huawei/android/FMRadio/CollectAdapter;->mItemNumber:I

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/huawei/android/FMRadio/CollectAdapter;->mPlayColor:I

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/huawei/android/FMRadio/CollectAdapter;->mNormalColor:I

    .line 41
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/huawei/android/FMRadio/CollectAdapter;->mItemNumber:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 52
    sget-object v0, Lcom/huawei/android/FMRadio/FMRadioUtils;->mCollectStation:[Lcom/huawei/android/FMRadio/ItemHolder;

    iget v1, p0, Lcom/huawei/android/FMRadio/CollectAdapter;->mStartIndex:I

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 58
    iget v0, p0, Lcom/huawei/android/FMRadio/CollectAdapter;->mStartIndex:I

    add-int/2addr v0, p1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 66
    if-nez p2, :cond_0

    .line 67
    iget-object v10, p0, Lcom/huawei/android/FMRadio/CollectAdapter;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 68
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v10, 0x7f030002

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v1, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 69
    const/4 v9, 0x0

    .line 70
    .local v9, minHeight:I
    const/4 v10, 0x1

    iget-object v11, p0, Lcom/huawei/android/FMRadio/CollectAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->orientation:I

    if-ne v10, v11, :cond_1

    .line 71
    iget-object v10, p0, Lcom/huawei/android/FMRadio/CollectAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f070017

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 78
    :goto_0
    invoke-virtual {p2, v9}, Landroid/view/View;->setMinimumHeight(I)V

    .line 81
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v9           #minHeight:I
    :cond_0
    const v10, 0x7f0b000c

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 82
    .local v4, mAddView:Landroid/widget/ImageView;
    const v10, 0x7f0b000d

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 83
    .local v8, mNoNameView:Landroid/widget/TextView;
    const v10, 0x7f0b000e

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 84
    .local v5, mExistNameView:Landroid/widget/LinearLayout;
    const v10, 0x7f0b000f

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 85
    .local v7, mNameView:Landroid/widget/TextView;
    const v10, 0x7f0b0007

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 88
    .local v6, mFrequencyView:Landroid/widget/TextView;
    sget-object v10, Lcom/huawei/android/FMRadio/FMRadioUtils;->mCollectStation:[Lcom/huawei/android/FMRadio/ItemHolder;

    iget v11, p0, Lcom/huawei/android/FMRadio/CollectAdapter;->mStartIndex:I

    add-int/2addr v11, p1

    aget-object v3, v10, v11

    .line 91
    .local v3, itemHolder:Lcom/huawei/android/FMRadio/ItemHolder;
    if-nez v3, :cond_2

    .line 92
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    const/4 v10, 0x4

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    const/4 v10, 0x4

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 131
    :goto_1
    return-object p2

    .line 74
    .end local v3           #itemHolder:Lcom/huawei/android/FMRadio/ItemHolder;
    .end local v4           #mAddView:Landroid/widget/ImageView;
    .end local v5           #mExistNameView:Landroid/widget/LinearLayout;
    .end local v6           #mFrequencyView:Landroid/widget/TextView;
    .end local v7           #mNameView:Landroid/widget/TextView;
    .end local v8           #mNoNameView:Landroid/widget/TextView;
    .restart local v1       #inflater:Landroid/view/LayoutInflater;
    .restart local v9       #minHeight:I
    :cond_1
    iget-object v10, p0, Lcom/huawei/android/FMRadio/CollectAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f070020

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    goto :goto_0

    .line 97
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v9           #minHeight:I
    .restart local v3       #itemHolder:Lcom/huawei/android/FMRadio/ItemHolder;
    .restart local v4       #mAddView:Landroid/widget/ImageView;
    .restart local v5       #mExistNameView:Landroid/widget/LinearLayout;
    .restart local v6       #mFrequencyView:Landroid/widget/TextView;
    .restart local v7       #mNameView:Landroid/widget/TextView;
    .restart local v8       #mNoNameView:Landroid/widget/TextView;
    :cond_2
    invoke-virtual {v3}, Lcom/huawei/android/FMRadio/ItemHolder;->getmFrequency()I

    move-result v10

    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->getmCurFrequency()I

    move-result v11

    if-ne v10, v11, :cond_3

    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v2, 0x1

    .line 100
    .local v2, isPlay:Z
    :goto_2
    invoke-virtual {v3}, Lcom/huawei/android/FMRadio/ItemHolder;->getmFrequency()I

    move-result v10

    invoke-static {v10}, Lcom/huawei/android/FMRadio/FMRadioUtils;->getDisplayFrequency(I)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, displayFrequency:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/huawei/android/FMRadio/ItemHolder;->getmStationName()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_5

    .line 103
    const/4 v10, 0x4

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 104
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    const/4 v10, 0x4

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 107
    if-eqz v2, :cond_4

    .line 108
    iget v10, p0, Lcom/huawei/android/FMRadio/CollectAdapter;->mPlayColor:I

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 97
    .end local v0           #displayFrequency:Ljava/lang/String;
    .end local v2           #isPlay:Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 110
    .restart local v0       #displayFrequency:Ljava/lang/String;
    .restart local v2       #isPlay:Z
    :cond_4
    iget v10, p0, Lcom/huawei/android/FMRadio/CollectAdapter;->mNormalColor:I

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 113
    :cond_5
    const/4 v10, 0x4

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    const/4 v10, 0x4

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 116
    invoke-virtual {v3}, Lcom/huawei/android/FMRadio/ItemHolder;->getmStationName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    if-eqz v2, :cond_6

    .line 122
    iget v10, p0, Lcom/huawei/android/FMRadio/CollectAdapter;->mPlayColor:I

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    iget v10, p0, Lcom/huawei/android/FMRadio/CollectAdapter;->mPlayColor:I

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 125
    :cond_6
    iget v10, p0, Lcom/huawei/android/FMRadio/CollectAdapter;->mNormalColor:I

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    iget v10, p0, Lcom/huawei/android/FMRadio/CollectAdapter;->mNormalColor:I

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method
