.class Lcom/huawei/android/FMRadio/ChannelListAdapter$2;
.super Ljava/lang/Object;
.source "ChannelListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/android/FMRadio/ChannelListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/FMRadio/ChannelListAdapter;

.field final synthetic val$mItemHolder:Lcom/huawei/android/FMRadio/ItemHolder;


# direct methods
.method constructor <init>(Lcom/huawei/android/FMRadio/ChannelListAdapter;Lcom/huawei/android/FMRadio/ItemHolder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/huawei/android/FMRadio/ChannelListAdapter$2;->this$0:Lcom/huawei/android/FMRadio/ChannelListAdapter;

    iput-object p2, p0, Lcom/huawei/android/FMRadio/ChannelListAdapter$2;->val$mItemHolder:Lcom/huawei/android/FMRadio/ItemHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v7, 0x0

    .line 134
    iget-object v6, p0, Lcom/huawei/android/FMRadio/ChannelListAdapter$2;->val$mItemHolder:Lcom/huawei/android/FMRadio/ItemHolder;

    invoke-virtual {v6}, Lcom/huawei/android/FMRadio/ItemHolder;->getmFrequency()I

    move-result v2

    .line 135
    .local v2, frequency:I
    iget-object v6, p0, Lcom/huawei/android/FMRadio/ChannelListAdapter$2;->val$mItemHolder:Lcom/huawei/android/FMRadio/ItemHolder;

    invoke-virtual {v6}, Lcom/huawei/android/FMRadio/ItemHolder;->ismCollected()Z

    move-result v1

    .line 136
    .local v1, collected:Z
    sget-object v6, Lcom/huawei/android/FMRadio/FMRadioUtils;->mCollectStation:[Lcom/huawei/android/FMRadio/ItemHolder;

    array-length v5, v6

    .line 137
    .local v5, size:I
    const/4 v0, -0x1

    .line 138
    .local v0, collectId:I
    iget-object v6, p0, Lcom/huawei/android/FMRadio/ChannelListAdapter$2;->val$mItemHolder:Lcom/huawei/android/FMRadio/ItemHolder;

    invoke-virtual {v6}, Lcom/huawei/android/FMRadio/ItemHolder;->ismCollected()Z

    move-result v6

    if-nez v6, :cond_2

    .line 139
    const/4 v3, 0x0

    .line 141
    .local v3, hasEmpty:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 142
    sget-object v6, Lcom/huawei/android/FMRadio/FMRadioUtils;->mCollectStation:[Lcom/huawei/android/FMRadio/ItemHolder;

    aget-object v6, v6, v4

    if-nez v6, :cond_1

    .line 143
    const/4 v3, 0x1

    .line 144
    move v0, v4

    .line 149
    :cond_0
    if-nez v3, :cond_3

    .line 151
    iget-object v6, p0, Lcom/huawei/android/FMRadio/ChannelListAdapter$2;->this$0:Lcom/huawei/android/FMRadio/ChannelListAdapter;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/huawei/android/FMRadio/ChannelListAdapter;->access$300(Lcom/huawei/android/FMRadio/ChannelListAdapter;)Landroid/content/Context;

    move-result-object v6

    const v8, 0x7f08003c

    invoke-static {v6, v8, v7}, Lcom/huawei/android/FMRadio/CommonUI;->showToast(Landroid/content/Context;II)V

    .line 171
    .end local v3           #hasEmpty:Z
    .end local v4           #i:I
    :goto_1
    return-void

    .line 141
    .restart local v3       #hasEmpty:Z
    .restart local v4       #i:I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 157
    .end local v3           #hasEmpty:Z
    .end local v4           #i:I
    :cond_2
    iget-object v6, p0, Lcom/huawei/android/FMRadio/ChannelListAdapter$2;->val$mItemHolder:Lcom/huawei/android/FMRadio/ItemHolder;

    invoke-virtual {v6}, Lcom/huawei/android/FMRadio/ItemHolder;->getmCollectId()I

    move-result v0

    .line 160
    :cond_3
    iget-object v6, p0, Lcom/huawei/android/FMRadio/ChannelListAdapter$2;->this$0:Lcom/huawei/android/FMRadio/ChannelListAdapter;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/huawei/android/FMRadio/ChannelListAdapter;->access$300(Lcom/huawei/android/FMRadio/ChannelListAdapter;)Landroid/content/Context;

    move-result-object v8

    if-nez v1, :cond_4

    const/4 v6, 0x1

    :goto_2
    invoke-static {v8, v2, v6, v0}, Lcom/huawei/android/FMRadio/FMRadioUtils;->doUpdateCollectStatus(Landroid/content/Context;IZI)Z

    .line 162
    iget-object v6, p0, Lcom/huawei/android/FMRadio/ChannelListAdapter$2;->this$0:Lcom/huawei/android/FMRadio/ChannelListAdapter;

    invoke-virtual {v6}, Lcom/huawei/android/FMRadio/ChannelListAdapter;->notifyDataSetChanged()V

    .line 164
    if-eqz v1, :cond_5

    .line 165
    iget-object v6, p0, Lcom/huawei/android/FMRadio/ChannelListAdapter$2;->this$0:Lcom/huawei/android/FMRadio/ChannelListAdapter;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/huawei/android/FMRadio/ChannelListAdapter;->access$300(Lcom/huawei/android/FMRadio/ChannelListAdapter;)Landroid/content/Context;

    move-result-object v6

    const v8, 0x7f080038

    invoke-static {v6, v8, v7}, Lcom/huawei/android/FMRadio/CommonUI;->showToast(Landroid/content/Context;II)V

    goto :goto_1

    :cond_4
    move v6, v7

    .line 160
    goto :goto_2

    .line 168
    :cond_5
    iget-object v6, p0, Lcom/huawei/android/FMRadio/ChannelListAdapter$2;->this$0:Lcom/huawei/android/FMRadio/ChannelListAdapter;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/huawei/android/FMRadio/ChannelListAdapter;->access$300(Lcom/huawei/android/FMRadio/ChannelListAdapter;)Landroid/content/Context;

    move-result-object v6

    const v8, 0x7f08003a

    invoke-static {v6, v8, v7}, Lcom/huawei/android/FMRadio/CommonUI;->showToast(Landroid/content/Context;II)V

    goto :goto_1
.end method
