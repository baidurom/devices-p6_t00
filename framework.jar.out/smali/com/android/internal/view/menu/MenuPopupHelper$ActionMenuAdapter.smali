.class Lcom/android/internal/view/menu/MenuPopupHelper$ActionMenuAdapter;
.super Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;
.source "MenuPopupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/MenuPopupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionMenuAdapter"
.end annotation


# static fields
.field private static final ITEM_VIEW_TYPE_FOOTER:I = 0x1

.field private static final ITEM_VIEW_TYPE_ITEM:I = 0x0

.field public static final MAX_ACTIVITY_COUNT_UNLIMITED:I = 0x7fffffff


# instance fields
.field private mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mShowFooterView:Z

.field final synthetic this$0:Lcom/android/internal/view/menu/MenuPopupHelper;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/MenuPopupHelper;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 1
    .parameter
    .parameter "menu"

    .prologue
    .line 523
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$ActionMenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    .line 524
    invoke-direct {p0, p1, p2}, Lcom/android/internal/view/menu/MenuPopupHelper$MenuAdapter;-><init>(Lcom/android/internal/view/menu/MenuPopupHelper;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 521
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper$ActionMenuAdapter;->mShowFooterView:Z

    .line 525
    iput-object p2, p0, Lcom/android/internal/view/menu/MenuPopupHelper$ActionMenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 526
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    .line 537
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$ActionMenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 538
    .local v0, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    iget-boolean v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$ActionMenuAdapter;->mShowFooterView:Z

    if-eqz v1, :cond_0

    .line 539
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/view/menu/MenuPopupHelper$ActionMenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    #getter for: Lcom/android/internal/view/menu/MenuPopupHelper;->mMaxNonActionMenuCount:I
    invoke-static {v2}, Lcom/android/internal/view/menu/MenuPopupHelper;->access$500(Lcom/android/internal/view/menu/MenuPopupHelper;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 541
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0
.end method

.method public getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;
    .locals 2
    .parameter "position"

    .prologue
    .line 554
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuPopupHelper$ActionMenuAdapter;->getItemViewType(I)I

    move-result v0

    .line 555
    .local v0, itemViewType:I
    packed-switch v0, :pswitch_data_0

    .line 561
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 557
    :pswitch_0
    const/4 v1, 0x0

    .line 559
    :goto_0
    return-object v1

    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$ActionMenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    goto :goto_0

    .line 555
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 515
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuPopupHelper$ActionMenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 568
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 529
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper$ActionMenuAdapter;->mShowFooterView:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper$ActionMenuAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 530
    const/4 v0, 0x1

    .line 532
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNonActionItemsCount()I
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper$ActionMenuAdapter;->mAdapterMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v9, 0x7fffffff

    const v8, 0x207000b

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 572
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuPopupHelper$ActionMenuAdapter;->getItemViewType(I)I

    move-result v2

    .line 573
    .local v2, itemViewType:I
    packed-switch v2, :pswitch_data_0

    .line 610
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 576
    :pswitch_0
    if-nez p2, :cond_0

    .line 577
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper$ActionMenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    #getter for: Lcom/android/internal/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v5}, Lcom/android/internal/view/menu/MenuPopupHelper;->access$200(Lcom/android/internal/view/menu/MenuPopupHelper;)Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v5, v8, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v3, p2

    .line 580
    check-cast v3, Lcom/android/internal/view/menu/ListMenuItemView;

    .line 582
    .local v3, moreView:Lcom/android/internal/view/menu/ListMenuItemView;
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper$ActionMenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    #getter for: Lcom/android/internal/view/menu/MenuPopupHelper;->mMaxNonActionMenuCount:I
    invoke-static {v5}, Lcom/android/internal/view/menu/MenuPopupHelper;->access$500(Lcom/android/internal/view/menu/MenuPopupHelper;)I

    move-result v5

    if-eq v9, v5, :cond_1

    .line 584
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper$ActionMenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    #getter for: Lcom/android/internal/view/menu/MenuPopupHelper;->mFontSize:F
    invoke-static {v5}, Lcom/android/internal/view/menu/MenuPopupHelper;->access$600(Lcom/android/internal/view/menu/MenuPopupHelper;)F

    move-result v5

    invoke-virtual {v3, v6, v5}, Lcom/android/internal/view/menu/ListMenuItemView;->setTextSizeOfHW(IF)V

    .line 588
    :cond_1
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper$ActionMenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    #getter for: Lcom/android/internal/view/menu/MenuPopupHelper;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/internal/view/menu/MenuPopupHelper;->access$700(Lcom/android/internal/view/menu/MenuPopupHelper;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x104039b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/internal/view/menu/ListMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 589
    invoke-virtual {v3, v7}, Lcom/android/internal/view/menu/ListMenuItemView;->setCheckable(Z)V

    .line 590
    invoke-virtual {v3, v7, v7}, Lcom/android/internal/view/menu/ListMenuItemView;->setShortcut(ZC)V

    move-object v0, p2

    .line 608
    .end local v3           #moreView:Lcom/android/internal/view/menu/ListMenuItemView;
    .end local p2
    .local v0, convertView:Landroid/view/View;
    :goto_0
    return-object v0

    .line 594
    .end local v0           #convertView:Landroid/view/View;
    .restart local p2
    :pswitch_1
    if-nez p2, :cond_2

    .line 595
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper$ActionMenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    #getter for: Lcom/android/internal/view/menu/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v5}, Lcom/android/internal/view/menu/MenuPopupHelper;->access$200(Lcom/android/internal/view/menu/MenuPopupHelper;)Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v5, v8, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_2
    move-object v1, p2

    .line 598
    check-cast v1, Lcom/android/internal/view/menu/MenuView$ItemView;

    .line 599
    .local v1, itemView:Lcom/android/internal/view/menu/MenuView$ItemView;
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuPopupHelper$ActionMenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v5

    invoke-interface {v1, v5, v7}, Lcom/android/internal/view/menu/MenuView$ItemView;->initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V

    .line 601
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper$ActionMenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    #getter for: Lcom/android/internal/view/menu/MenuPopupHelper;->mMaxNonActionMenuCount:I
    invoke-static {v5}, Lcom/android/internal/view/menu/MenuPopupHelper;->access$500(Lcom/android/internal/view/menu/MenuPopupHelper;)I

    move-result v5

    if-eq v9, v5, :cond_3

    .line 602
    const v5, 0x1020016

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 604
    .local v4, textView:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/internal/view/menu/MenuPopupHelper$ActionMenuAdapter;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    #getter for: Lcom/android/internal/view/menu/MenuPopupHelper;->mFontSize:F
    invoke-static {v5}, Lcom/android/internal/view/menu/MenuPopupHelper;->access$600(Lcom/android/internal/view/menu/MenuPopupHelper;)F

    move-result v5

    invoke-virtual {v4, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .end local v4           #textView:Landroid/widget/TextView;
    :cond_3
    move-object v0, p2

    .line 608
    .end local p2
    .restart local v0       #convertView:Landroid/view/View;
    goto :goto_0

    .line 573
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setShowFooterView(Z)V
    .locals 1
    .parameter "showFooterView"

    .prologue
    .line 616
    iget-boolean v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper$ActionMenuAdapter;->mShowFooterView:Z

    if-eq v0, p1, :cond_0

    .line 617
    iput-boolean p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$ActionMenuAdapter;->mShowFooterView:Z

    .line 618
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuPopupHelper$ActionMenuAdapter;->notifyDataSetChanged()V

    .line 620
    :cond_0
    return-void
.end method
