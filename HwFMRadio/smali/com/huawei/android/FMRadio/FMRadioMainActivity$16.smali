.class Lcom/huawei/android/FMRadio/FMRadioMainActivity$16;
.super Ljava/lang/Object;
.source "FMRadioMainActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/FMRadio/FMRadioMainActivity;
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
    .line 824
    iput-object p1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$16;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "classname"
    .parameter "obj"

    .prologue
    const/4 v3, 0x0

    .line 828
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$16;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    check-cast p2, Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;

    .end local p2
    #setter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mService:Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;
    invoke-static {v0, p2}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$1602(Lcom/huawei/android/FMRadio/FMRadioMainActivity;Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;)Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;

    .line 829
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$16;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mService:Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;
    invoke-static {v0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$1600(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/android/FMRadio/FMRadioUtils;->setmService(Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;)V

    .line 830
    const-string v0, "FMRadioMainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected mService == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$16;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mService:Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;
    invoke-static {v2}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$1600(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$16;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$000(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/android/FMRadio/FMRadioUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 834
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$16;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$000(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080047

    invoke-static {v0, v1, v3}, Lcom/huawei/android/FMRadio/CommonUI;->showToast(Landroid/content/Context;II)V

    .line 853
    :cond_0
    :goto_0
    return-void

    .line 836
    :cond_1
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$16;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$000(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/android/FMRadio/FMRadioUtils;->isWiredHeadsetAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 837
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 839
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$16;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mCurFrequency:I
    invoke-static {v0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$400(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)I

    move-result v0

    invoke-static {v0}, Lcom/huawei/android/FMRadio/FMRadioUtils;->isFreqValid(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 840
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$16;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$000(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$16;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mCurFrequency:I
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$400(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$16;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$200(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$16;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mMainHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$300(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/android/FMRadio/FMRadioUtils;->play(Landroid/content/Context;ILandroid/app/ProgressDialog;Landroid/os/Handler;)Z

    goto :goto_0

    .line 842
    :cond_2
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$16;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    invoke-virtual {v0, v3}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->startAutoTune(Z)V

    goto :goto_0

    .line 847
    :cond_3
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 848
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$16;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mService:Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;
    invoke-static {v0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$1600(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;->fmStop()V

    .line 850
    :cond_4
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$16;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$000(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080039

    invoke-static {v0, v1, v3}, Lcom/huawei/android/FMRadio/CommonUI;->showToast(Landroid/content/Context;II)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "classname"

    .prologue
    .line 856
    const-string v0, "FMRadioMainActivity"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    return-void
.end method
