.class public Lcom/huawei/android/FMRadio/ChannelListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChannelListAdapter.java"


# instance fields
.field private centerAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private leftAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private mAnimationHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mItemHolderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/FMRadio/ItemHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private rightAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListAdapter;->mItemHolderList:Ljava/util/List;

    .line 55
    new-instance v0, Lcom/huawei/android/FMRadio/ChannelListAdapter$1;

    invoke-direct {v0, p0}, Lcom/huawei/android/FMRadio/ChannelListAdapter$1;-><init>(Lcom/huawei/android/FMRadio/ChannelListAdapter;)V

    iput-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListAdapter;->mAnimationHandler:Landroid/os/Handler;

    .line 78
    iput-object p1, p0, Lcom/huawei/android/FMRadio/ChannelListAdapter;->mContext:Landroid/content/Context;

    .line 79
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/huawei/android/FMRadio/ChannelListAdapter;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListAdapter;->leftAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/huawei/android/FMRadio/ChannelListAdapter;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListAdapter;->rightAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/huawei/android/FMRadio/ChannelListAdapter;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListAdapter;->centerAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/huawei/android/FMRadio/ChannelListAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListAdapter;->mItemHolderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListAdapter;->mItemHolderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 90
    const-string v0, "ChannelListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", actual size is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/android/FMRadio/ChannelListAdapter;->mItemHolderList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/4 v0, 0x0

    .line 95
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListAdapter;->mItemHolderList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 102
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 107
    iget-object v11, p0, Lcom/huawei/android/FMRadio/ChannelListAdapter;->mItemHolderList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-gt v11, p1, :cond_0

    .line 108
    const/4 v5, 0x0

    .line 222
    :goto_0
    return-object v5

    .line 114
    :cond_0
    if-nez p2, :cond_1

    .line 115
    iget-object v11, p0, Lcom/huawei/android/FMRadio/ChannelListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v12, 0x7f030006

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 120
    .local v5, layout:Landroid/widget/LinearLayout;
    :goto_1
    const v11, 0x7f0b0018

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 121
    .local v3, defaultNameView:Landroid/widget/TextView;
    const v11, 0x7f0b0006

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 122
    .local v10, stationNameView:Landroid/widget/TextView;
    const v11, 0x7f0b001a

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 123
    .local v9, stationFrequncyView:Landroid/widget/TextView;
    const v11, 0x7f0b0019

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 124
    .local v4, existNameLayout:Landroid/widget/LinearLayout;
    const v11, 0x7f0b001e

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 127
    .local v1, collectStatus:Landroid/widget/ImageView;
    iget-object v11, p0, Lcom/huawei/android/FMRadio/ChannelListAdapter;->mItemHolderList:Ljava/util/List;

    invoke-interface {v11, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/huawei/android/FMRadio/ItemHolder;

    .line 129
    .local v7, mItemHolder:Lcom/huawei/android/FMRadio/ItemHolder;
    new-instance v11, Lcom/huawei/android/FMRadio/ChannelListAdapter$2;

    invoke-direct {v11, p0, v7}, Lcom/huawei/android/FMRadio/ChannelListAdapter$2;-><init>(Lcom/huawei/android/FMRadio/ChannelListAdapter;Lcom/huawei/android/FMRadio/ItemHolder;)V

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    invoke-virtual {v7}, Lcom/huawei/android/FMRadio/ItemHolder;->ismCollected()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 175
    const v11, 0x7f020053

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 180
    :goto_2
    iget-object v11, p0, Lcom/huawei/android/FMRadio/ChannelListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Lcom/huawei/android/FMRadio/ItemHolder;->getmFrequency()I

    move-result v12

    invoke-static {v11, v12}, Lcom/huawei/android/FMRadio/FMRadioUtils;->getDefaultStationName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, defaultName:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/huawei/android/FMRadio/ItemHolder;->getmStationName()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_3

    .line 183
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    const/4 v11, 0x4

    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 194
    :goto_3
    const v11, 0x7f0b001b

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 195
    .local v6, leftStatusView:Landroid/widget/ImageView;
    const v11, 0x7f0b001d

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 196
    .local v8, rightStatusView:Landroid/widget/ImageView;
    const v11, 0x7f0b001c

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 198
    .local v0, centerStatusView:Landroid/widget/ImageView;
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v7}, Lcom/huawei/android/FMRadio/ItemHolder;->getmFrequency()I

    move-result v11

    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->getmCurFrequency()I

    move-result v12

    if-ne v11, v12, :cond_4

    .line 200
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 201
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 202
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 203
    const v11, 0x7f020005

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 204
    const v11, 0x7f020006

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 205
    const v11, 0x7f020004

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 208
    invoke-virtual {v6}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    check-cast v11, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v11, p0, Lcom/huawei/android/FMRadio/ChannelListAdapter;->leftAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 209
    invoke-virtual {v8}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    check-cast v11, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v11, p0, Lcom/huawei/android/FMRadio/ChannelListAdapter;->rightAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 210
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    check-cast v11, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v11, p0, Lcom/huawei/android/FMRadio/ChannelListAdapter;->centerAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 211
    iget-object v11, p0, Lcom/huawei/android/FMRadio/ChannelListAdapter;->mAnimationHandler:Landroid/os/Handler;

    const/16 v12, 0x65

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .end local v0           #centerStatusView:Landroid/widget/ImageView;
    .end local v1           #collectStatus:Landroid/widget/ImageView;
    .end local v2           #defaultName:Ljava/lang/String;
    .end local v3           #defaultNameView:Landroid/widget/TextView;
    .end local v4           #existNameLayout:Landroid/widget/LinearLayout;
    .end local v5           #layout:Landroid/widget/LinearLayout;
    .end local v6           #leftStatusView:Landroid/widget/ImageView;
    .end local v7           #mItemHolder:Lcom/huawei/android/FMRadio/ItemHolder;
    .end local v8           #rightStatusView:Landroid/widget/ImageView;
    .end local v9           #stationFrequncyView:Landroid/widget/TextView;
    .end local v10           #stationNameView:Landroid/widget/TextView;
    :cond_1
    move-object/from16 v5, p2

    .line 117
    check-cast v5, Landroid/widget/LinearLayout;

    .restart local v5       #layout:Landroid/widget/LinearLayout;
    goto/16 :goto_1

    .line 177
    .restart local v1       #collectStatus:Landroid/widget/ImageView;
    .restart local v3       #defaultNameView:Landroid/widget/TextView;
    .restart local v4       #existNameLayout:Landroid/widget/LinearLayout;
    .restart local v7       #mItemHolder:Lcom/huawei/android/FMRadio/ItemHolder;
    .restart local v9       #stationFrequncyView:Landroid/widget/TextView;
    .restart local v10       #stationNameView:Landroid/widget/TextView;
    :cond_2
    const v11, 0x7f020052

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 188
    .restart local v2       #defaultName:Ljava/lang/String;
    :cond_3
    const/4 v11, 0x4

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    invoke-virtual {v7}, Lcom/huawei/android/FMRadio/ItemHolder;->getmStationName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_3

    .line 214
    .restart local v0       #centerStatusView:Landroid/widget/ImageView;
    .restart local v6       #leftStatusView:Landroid/widget/ImageView;
    .restart local v8       #rightStatusView:Landroid/widget/ImageView;
    :cond_4
    const/16 v11, 0x8

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 215
    const/16 v11, 0x8

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 216
    const/16 v11, 0x8

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 217
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 218
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 219
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListAdapter;->mItemHolderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 229
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListAdapter;->mItemHolderList:Ljava/util/List;

    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->getmStationList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 230
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 231
    return-void
.end method
