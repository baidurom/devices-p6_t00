.class Lcom/huawei/android/FMRadio/ChannelListActivity$6;
.super Landroid/content/BroadcastReceiver;
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
    .line 392
    iput-object p1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$6;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 396
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, action:Ljava/lang/String;
    const-string v1, "ChannelListActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBroadcastReceiver:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const-string v1, "com.huawei.android.FMRadio.autotunecomplete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.huawei.android.FMRadio.cancelautotune"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$6;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListActivity;->isAutoTune:Z
    invoke-static {v1}, Lcom/huawei/android/FMRadio/ChannelListActivity;->access$400(Lcom/huawei/android/FMRadio/ChannelListActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 401
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$6;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/ChannelListActivity;->access$000(Lcom/huawei/android/FMRadio/ChannelListActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$6;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/huawei/android/FMRadio/ChannelListActivity;->access$200(Lcom/huawei/android/FMRadio/ChannelListActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$6;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/huawei/android/FMRadio/ChannelListActivity;->access$500(Lcom/huawei/android/FMRadio/ChannelListActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/huawei/android/FMRadio/FMRadioUtils;->onFinishAutoTuning(Landroid/content/Context;Landroid/os/Handler;Landroid/app/ProgressDialog;)V

    .line 402
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$6;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    #setter for: Lcom/huawei/android/FMRadio/ChannelListActivity;->isAutoTune:Z
    invoke-static {v1, v4}, Lcom/huawei/android/FMRadio/ChannelListActivity;->access$402(Lcom/huawei/android/FMRadio/ChannelListActivity;Z)Z

    .line 452
    :cond_1
    :goto_0
    return-void

    .line 403
    :cond_2
    const-string v1, "com.huawei.android.FMRadio.playstatechanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 404
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$6;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/ChannelListActivity;->access$100(Lcom/huawei/android/FMRadio/ChannelListActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 405
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$6;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/ChannelListActivity;->access$100(Lcom/huawei/android/FMRadio/ChannelListActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->hide()V

    .line 407
    :cond_3
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$6;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    iget-object v1, v1, Lcom/huawei/android/FMRadio/ChannelListActivity;->mAdapter:Lcom/huawei/android/FMRadio/ChannelListAdapter;

    invoke-virtual {v1}, Lcom/huawei/android/FMRadio/ChannelListAdapter;->notifyDataSetChanged()V

    .line 409
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$6;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    invoke-virtual {v1}, Lcom/huawei/android/FMRadio/ChannelListActivity;->refreshStatus()V

    .line 411
    const-string v1, "ChannelListActivity"

    const-string v2, "play complete"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 412
    :cond_4
    const-string v1, "com.huawei.android.FMRadio.stopstatechanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 413
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$6;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/ChannelListActivity;->access$100(Lcom/huawei/android/FMRadio/ChannelListActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 414
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$6;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/ChannelListActivity;->access$100(Lcom/huawei/android/FMRadio/ChannelListActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->hide()V

    .line 416
    :cond_5
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$6;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    iget-object v1, v1, Lcom/huawei/android/FMRadio/ChannelListActivity;->mAdapter:Lcom/huawei/android/FMRadio/ChannelListAdapter;

    invoke-virtual {v1}, Lcom/huawei/android/FMRadio/ChannelListAdapter;->notifyDataSetChanged()V

    .line 418
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$6;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    invoke-virtual {v1}, Lcom/huawei/android/FMRadio/ChannelListActivity;->refreshStatus()V

    .line 420
    const-string v1, "ChannelListActivity"

    const-string v2, "stop fm complete"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 421
    :cond_6
    const-string v1, "com.huawei.android.FMRadio.headsetunplug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 422
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$6;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/ChannelListActivity;->access$500(Lcom/huawei/android/FMRadio/ChannelListActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$6;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/ChannelListActivity;->access$500(Lcom/huawei/android/FMRadio/ChannelListActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 423
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$6;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/ChannelListActivity;->access$500(Lcom/huawei/android/FMRadio/ChannelListActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 424
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$6;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/ChannelListActivity;->access$500(Lcom/huawei/android/FMRadio/ChannelListActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 425
    const-string v1, "ChannelListActivity"

    const-string v2, "during auto search unplug headset"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_7
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$6;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/ChannelListActivity;->access$100(Lcom/huawei/android/FMRadio/ChannelListActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 429
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$6;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/ChannelListActivity;->access$100(Lcom/huawei/android/FMRadio/ChannelListActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$6;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    const v3, 0x7f080030

    invoke-virtual {v2, v3}, Lcom/huawei/android/FMRadio/ChannelListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 430
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$6;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/ChannelListActivity;->access$100(Lcom/huawei/android/FMRadio/ChannelListActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 434
    :cond_8
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$6;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/ChannelListActivity;->access$000(Lcom/huawei/android/FMRadio/ChannelListActivity;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080039

    invoke-static {v1, v2, v4}, Lcom/huawei/android/FMRadio/CommonUI;->showToast(Landroid/content/Context;II)V

    goto/16 :goto_0

    .line 436
    :cond_9
    const-string v1, "com.huawei.android.FMRadio.headsetplug.play"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 437
    const-string v1, "ChannelListActivity"

    const-string v2, "receive headset plug event and do play"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$6;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListActivity;->mOnTop:Z
    invoke-static {v1}, Lcom/huawei/android/FMRadio/ChannelListActivity;->access$600(Lcom/huawei/android/FMRadio/ChannelListActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 439
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$6;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/ChannelListActivity;->access$100(Lcom/huawei/android/FMRadio/ChannelListActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 440
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$6;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/ChannelListActivity;->access$100(Lcom/huawei/android/FMRadio/ChannelListActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$6;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    const v3, 0x7f08002f

    invoke-virtual {v2, v3}, Lcom/huawei/android/FMRadio/ChannelListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 441
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$6;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/ChannelListActivity;->access$100(Lcom/huawei/android/FMRadio/ChannelListActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    goto/16 :goto_0

    .line 444
    :cond_a
    const-string v1, "com.huawei.android.FMRadio.headsetplug.search"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 445
    const-string v1, "ChannelListActivity"

    const-string v2, "receive headset plug event and do search"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$6;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListActivity;->mOnTop:Z
    invoke-static {v1}, Lcom/huawei/android/FMRadio/ChannelListActivity;->access$600(Lcom/huawei/android/FMRadio/ChannelListActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 447
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$6;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    invoke-virtual {v1, v4}, Lcom/huawei/android/FMRadio/ChannelListActivity;->startAutoTune(Z)V

    goto/16 :goto_0

    .line 449
    :cond_b
    const-string v1, "com.huawei.android.FMRadio.open"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 450
    iget-object v1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$6;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/ChannelListActivity;->access$000(Lcom/huawei/android/FMRadio/ChannelListActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$6;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/huawei/android/FMRadio/ChannelListActivity;->access$200(Lcom/huawei/android/FMRadio/ChannelListActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$6;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListActivity;->mAutoTuneDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/huawei/android/FMRadio/ChannelListActivity;->access$500(Lcom/huawei/android/FMRadio/ChannelListActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/huawei/android/FMRadio/FMRadioUtils;->enableCancelAutotune(Landroid/content/Context;Landroid/os/Handler;Landroid/app/ProgressDialog;)V

    goto/16 :goto_0
.end method
