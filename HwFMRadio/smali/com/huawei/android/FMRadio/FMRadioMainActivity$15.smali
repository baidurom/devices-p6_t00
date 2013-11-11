.class Lcom/huawei/android/FMRadio/FMRadioMainActivity$15;
.super Ljava/lang/Object;
.source "FMRadioMainActivity.java"

# interfaces
.implements Lcom/huawei/android/FMRadio/RenameDialog$OnInputResultListener;


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
    .line 802
    iput-object p1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$15;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRenameResult(ILjava/lang/String;)V
    .locals 5
    .parameter "frequency"
    .parameter "name"

    .prologue
    const/4 v4, 0x0

    .line 807
    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$15;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$000(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lcom/huawei/android/FMRadio/FMRadioUtils;->doRenameStation(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v1

    .line 809
    .local v1, result:Z
    if-nez v1, :cond_0

    .line 810
    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$15;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$000(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080024

    invoke-static {v2, v3, v4}, Lcom/huawei/android/FMRadio/CommonUI;->showToast(Landroid/content/Context;II)V

    .line 821
    :goto_0
    return-void

    .line 814
    :cond_0
    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$15;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$300(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x67

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 815
    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$15;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$000(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080023

    invoke-static {v2, v3, v4}, Lcom/huawei/android/FMRadio/CommonUI;->showToast(Landroid/content/Context;II)V

    .line 817
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.huawei.android.FMRadio.namechanged"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 818
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$15;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    invoke-virtual {v2, v0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 820
    const-string v2, "FMRadioMainActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New name is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
