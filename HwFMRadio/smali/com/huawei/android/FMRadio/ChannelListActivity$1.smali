.class Lcom/huawei/android/FMRadio/ChannelListActivity$1;
.super Ljava/lang/Object;
.source "ChannelListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/android/FMRadio/ChannelListActivity;->registerPlayListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;


# direct methods
.method constructor <init>(Lcom/huawei/android/FMRadio/ChannelListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$1;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "v"
    .parameter "pos"
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
    .line 154
    .local p1, list:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v1, "ChannelListActivity"

    const-string v2, "mListView : OnItemClick"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->getmStationList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/FMRadio/ItemHolder;

    .line 156
    .local v0, tmpHolder:Lcom/huawei/android/FMRadio/ItemHolder;
    invoke-virtual {v0}, Lcom/huawei/android/FMRadio/ItemHolder;->getmFrequency()I

    move-result v1

    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->getmCurFrequency()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 157
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$1;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/ChannelListActivity;->access$000(Lcom/huawei/android/FMRadio/ChannelListActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/huawei/android/FMRadio/ItemHolder;->getmFrequency()I

    move-result v2

    iget-object v3, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$1;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/huawei/android/FMRadio/ChannelListActivity;->access$100(Lcom/huawei/android/FMRadio/ChannelListActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$1;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/huawei/android/FMRadio/ChannelListActivity;->access$200(Lcom/huawei/android/FMRadio/ChannelListActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/huawei/android/FMRadio/FMRadioUtils;->play(Landroid/content/Context;ILandroid/app/ProgressDialog;Landroid/os/Handler;)Z

    .line 159
    :cond_0
    return-void
.end method
