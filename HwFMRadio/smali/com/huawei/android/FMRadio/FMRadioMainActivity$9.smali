.class Lcom/huawei/android/FMRadio/FMRadioMainActivity$9;
.super Ljava/lang/Object;
.source "FMRadioMainActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


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
    .line 268
    iput-object p1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$9;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .parameter "menu"
    .parameter "child1View"
    .parameter "menuInfo"

    .prologue
    .line 271
    const-string v3, "FMRadioMainActivity"

    const-string v4, "mGridView : OnCreateContextMenu"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p3

    .line 272
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 273
    .local v0, contextMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 274
    .local v2, position:I
    iget-object v3, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$9;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mCollectAdapter:Lcom/huawei/android/FMRadio/CollectAdapter;
    invoke-static {v3}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$700(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Lcom/huawei/android/FMRadio/CollectAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/huawei/android/FMRadio/CollectAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/FMRadio/ItemHolder;

    .line 276
    .local v1, itemHolder:Lcom/huawei/android/FMRadio/ItemHolder;
    iget-object v3, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$9;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #calls: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->onCollectItemLongClick(ILcom/huawei/android/FMRadio/ItemHolder;)V
    invoke-static {v3, v2, v1}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$500(Lcom/huawei/android/FMRadio/FMRadioMainActivity;ILcom/huawei/android/FMRadio/ItemHolder;)V

    .line 278
    return-void
.end method
