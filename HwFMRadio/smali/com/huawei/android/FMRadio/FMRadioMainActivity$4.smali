.class Lcom/huawei/android/FMRadio/FMRadioMainActivity$4;
.super Ljava/lang/Object;
.source "FMRadioMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 189
    iput-object p1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$4;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 192
    const-string v1, "FMRadioMainActivity"

    const-string v2, "mPowerButton : OnClick"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$4;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$000(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$4;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$200(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$4;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mMainHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$300(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/huawei/android/FMRadio/FMRadioUtils;->stop(Landroid/content/Context;Landroid/app/ProgressDialog;Landroid/os/Handler;)Z

    .line 195
    const-string v1, "FMRadioMainActivity"

    const-string v2, "start to stop fm"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$4;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mCurFrequency:I
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$400(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)I

    move-result v1

    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioUtils;->isFreqValid(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$4;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mCurFrequency:I
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$400(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)I

    move-result v0

    .line 199
    .local v0, frequency:I
    :goto_1
    invoke-static {v0}, Lcom/huawei/android/FMRadio/FMRadioUtils;->isFreqValid(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 201
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$4;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$000(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$4;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$200(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$4;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mMainHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$300(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/huawei/android/FMRadio/FMRadioUtils;->play(Landroid/content/Context;ILandroid/app/ProgressDialog;Landroid/os/Handler;)Z

    .line 203
    const-string v1, "FMRadioMainActivity"

    const-string v2, "start to play fm"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 197
    .end local v0           #frequency:I
    :cond_1
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$4;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$000(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioUtils;->getLastPlayValidFrequency(Landroid/content/Context;)I

    move-result v0

    goto :goto_1

    .line 205
    .restart local v0       #frequency:I
    :cond_2
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$4;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->startAutoTune(Z)V

    .line 206
    const-string v1, "FMRadioMainActivity"

    const-string v2, "start to auto search"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
