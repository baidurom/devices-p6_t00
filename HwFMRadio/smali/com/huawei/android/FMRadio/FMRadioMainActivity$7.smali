.class Lcom/huawei/android/FMRadio/FMRadioMainActivity$7;
.super Ljava/lang/Object;
.source "FMRadioMainActivity.java"

# interfaces
.implements Lcom/huawei/android/FMRadio/CollectView$OnCollectListener;


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
    .line 234
    iput-object p1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$7;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(ILcom/huawei/android/FMRadio/ItemHolder;)V
    .locals 2
    .parameter "position"
    .parameter "itemHolder"

    .prologue
    .line 246
    const-string v0, "FMRadioMainActivity"

    const-string v1, "mGridView : OnItemClick"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$7;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #calls: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->onCollectItemClick(ILcom/huawei/android/FMRadio/ItemHolder;)V
    invoke-static {v0, p1, p2}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$600(Lcom/huawei/android/FMRadio/FMRadioMainActivity;ILcom/huawei/android/FMRadio/ItemHolder;)V

    .line 248
    return-void
.end method

.method public onItemLongClick(ILcom/huawei/android/FMRadio/ItemHolder;)V
    .locals 1
    .parameter "position"
    .parameter "itemHolder"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$7;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #calls: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->onCollectItemLongClick(ILcom/huawei/android/FMRadio/ItemHolder;)V
    invoke-static {v0, p1, p2}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$500(Lcom/huawei/android/FMRadio/FMRadioMainActivity;ILcom/huawei/android/FMRadio/ItemHolder;)V

    .line 240
    return-void
.end method
