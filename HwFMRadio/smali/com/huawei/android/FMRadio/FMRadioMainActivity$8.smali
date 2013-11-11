.class Lcom/huawei/android/FMRadio/FMRadioMainActivity$8;
.super Ljava/lang/Object;
.source "FMRadioMainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/android/FMRadio/FMRadioMainActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;


# direct methods
.method constructor <init>(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$8;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 263
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$8;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mCollectAdapter:Lcom/huawei/android/FMRadio/CollectAdapter;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$700(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Lcom/huawei/android/FMRadio/CollectAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/huawei/android/FMRadio/CollectAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/FMRadio/ItemHolder;

    .line 264
    .local v0, itemHolder:Lcom/huawei/android/FMRadio/ItemHolder;
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$8;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #calls: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->onCollectItemClick(ILcom/huawei/android/FMRadio/ItemHolder;)V
    invoke-static {v1, p3, v0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$600(Lcom/huawei/android/FMRadio/FMRadioMainActivity;ILcom/huawei/android/FMRadio/ItemHolder;)V

    .line 265
    return-void
.end method
