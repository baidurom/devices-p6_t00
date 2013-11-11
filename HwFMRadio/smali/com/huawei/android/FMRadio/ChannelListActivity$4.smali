.class Lcom/huawei/android/FMRadio/ChannelListActivity$4;
.super Landroid/os/Handler;
.source "ChannelListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/FMRadio/ChannelListActivity;
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
    .line 355
    iput-object p1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$4;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 359
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 367
    :goto_0
    return-void

    .line 361
    :pswitch_0
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$4;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/huawei/android/FMRadio/ChannelListActivity;->access$000(Lcom/huawei/android/FMRadio/ChannelListActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/android/FMRadio/FMRadioUtils;->initStationRecord(Landroid/content/Context;)V

    .line 362
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$4;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    iget-object v0, v0, Lcom/huawei/android/FMRadio/ChannelListActivity;->mAdapter:Lcom/huawei/android/FMRadio/ChannelListAdapter;

    invoke-virtual {v0}, Lcom/huawei/android/FMRadio/ChannelListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 359
    nop

    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_0
    .end packed-switch
.end method
