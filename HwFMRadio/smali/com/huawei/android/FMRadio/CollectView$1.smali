.class Lcom/huawei/android/FMRadio/CollectView$1;
.super Ljava/lang/Object;
.source "CollectPager.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/android/FMRadio/CollectView;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/FMRadio/CollectView;


# direct methods
.method constructor <init>(Lcom/huawei/android/FMRadio/CollectView;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/huawei/android/FMRadio/CollectView$1;->this$0:Lcom/huawei/android/FMRadio/CollectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/huawei/android/FMRadio/CollectView$1;->this$0:Lcom/huawei/android/FMRadio/CollectView;

    #getter for: Lcom/huawei/android/FMRadio/CollectView;->mOnCollectListener:Lcom/huawei/android/FMRadio/CollectView$OnCollectListener;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/CollectView;->access$000(Lcom/huawei/android/FMRadio/CollectView;)Lcom/huawei/android/FMRadio/CollectView$OnCollectListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/huawei/android/FMRadio/CollectView$1;->this$0:Lcom/huawei/android/FMRadio/CollectView;

    #getter for: Lcom/huawei/android/FMRadio/CollectView;->mCollectAdapter:Lcom/huawei/android/FMRadio/CollectAdapter;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/CollectView;->access$100(Lcom/huawei/android/FMRadio/CollectView;)Lcom/huawei/android/FMRadio/CollectAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/huawei/android/FMRadio/CollectAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/FMRadio/ItemHolder;

    .line 105
    .local v0, itemHolder:Lcom/huawei/android/FMRadio/ItemHolder;
    iget-object v1, p0, Lcom/huawei/android/FMRadio/CollectView$1;->this$0:Lcom/huawei/android/FMRadio/CollectView;

    #getter for: Lcom/huawei/android/FMRadio/CollectView;->mOnCollectListener:Lcom/huawei/android/FMRadio/CollectView$OnCollectListener;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/CollectView;->access$000(Lcom/huawei/android/FMRadio/CollectView;)Lcom/huawei/android/FMRadio/CollectView$OnCollectListener;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/android/FMRadio/CollectView$1;->this$0:Lcom/huawei/android/FMRadio/CollectView;

    #getter for: Lcom/huawei/android/FMRadio/CollectView;->mStartIndex:I
    invoke-static {v2}, Lcom/huawei/android/FMRadio/CollectView;->access$200(Lcom/huawei/android/FMRadio/CollectView;)I

    move-result v2

    add-int/2addr v2, p3

    invoke-interface {v1, v2, v0}, Lcom/huawei/android/FMRadio/CollectView$OnCollectListener;->onItemClick(ILcom/huawei/android/FMRadio/ItemHolder;)V

    .line 107
    .end local v0           #itemHolder:Lcom/huawei/android/FMRadio/ItemHolder;
    :cond_0
    return-void
.end method