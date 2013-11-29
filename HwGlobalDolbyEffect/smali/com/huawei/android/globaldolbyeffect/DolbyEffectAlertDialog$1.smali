.class Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "DolbyEffectAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;


# direct methods
.method constructor <init>(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$1;->this$0:Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    iget-object v1, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$1;->this$0:Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;

    const-string v2, "state"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mIsHeadset:I
    invoke-static {v1, v2}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->access$002(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;I)I

    .line 47
    iget-object v1, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$1;->this$0:Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;

    #getter for: Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mAudioDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->access$100(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$1;->this$0:Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;

    #getter for: Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mAudioDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->access$100(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 48
    iget-object v1, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$1;->this$0:Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;

    #getter for: Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;
    invoke-static {v1}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->access$200(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;)Landroid/media/dolby/DolbyMobileAudioEffectClient;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->getPresetCategory()I

    move-result v1

    if-nez v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$1;->this$0:Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;

    #getter for: Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mPrePreset:I
    invoke-static {v1}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->access$300(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;)I

    move-result v1

    if-nez v1, :cond_2

    .line 50
    iget-object v1, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$1;->this$0:Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;

    #getter for: Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;
    invoke-static {v1}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->access$200(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;)Landroid/media/dolby/DolbyMobileAudioEffectClient;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->setDolbyEffectByPass(Z)V

    .line 56
    :cond_0
    :goto_0
    const-string v1, "DolbyEffectAlertDialog"

    const-string v2, "dismiss()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v1, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$1;->this$0:Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;

    #getter for: Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mAudioDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->access$100(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 58
    iget-object v1, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$1;->this$0:Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;

    invoke-virtual {v1}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->showAudioEffectDialog()Z

    .line 72
    :cond_1
    :goto_1
    return-void

    .line 52
    :cond_2
    iget-object v1, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$1;->this$0:Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;

    #getter for: Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;
    invoke-static {v1}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->access$200(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;)Landroid/media/dolby/DolbyMobileAudioEffectClient;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->setDolbyEffectByPass(Z)V

    .line 53
    iget-object v1, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$1;->this$0:Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;

    #getter for: Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;
    invoke-static {v1}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->access$200(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;)Landroid/media/dolby/DolbyMobileAudioEffectClient;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$1;->this$0:Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;

    #getter for: Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mPrePreset:I
    invoke-static {v2}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->access$300(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v3, v2}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->setDolbyEffect(II)V

    goto :goto_0

    .line 59
    :cond_3
    iget-object v1, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$1;->this$0:Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;

    #getter for: Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mVideoDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->access$400(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$1;->this$0:Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;

    #getter for: Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mVideoDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->access$400(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    iget-object v1, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$1;->this$0:Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;

    #getter for: Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;
    invoke-static {v1}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->access$200(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;)Landroid/media/dolby/DolbyMobileAudioEffectClient;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->getPresetCategory()I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 61
    iget-object v1, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$1;->this$0:Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;

    #getter for: Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mPrePreset:I
    invoke-static {v1}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->access$300(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;)I

    move-result v1

    if-nez v1, :cond_5

    .line 62
    iget-object v1, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$1;->this$0:Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;

    #getter for: Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;
    invoke-static {v1}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->access$200(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;)Landroid/media/dolby/DolbyMobileAudioEffectClient;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->setDolbyEffectByPass(Z)V

    .line 68
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$1;->this$0:Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;

    #getter for: Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mVideoDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->access$400(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 69
    iget-object v1, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$1;->this$0:Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;

    invoke-virtual {v1}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->showVideoEffectDialog()Z

    goto :goto_1

    .line 64
    :cond_5
    iget-object v1, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$1;->this$0:Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;

    #getter for: Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;
    invoke-static {v1}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->access$200(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;)Landroid/media/dolby/DolbyMobileAudioEffectClient;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->setDolbyEffectByPass(Z)V

    .line 65
    iget-object v1, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$1;->this$0:Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;

    #getter for: Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;
    invoke-static {v1}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->access$200(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;)Landroid/media/dolby/DolbyMobileAudioEffectClient;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$1;->this$0:Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;

    #getter for: Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mPrePreset:I
    invoke-static {v2}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->access$300(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v4, v2}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->setDolbyEffect(II)V

    goto :goto_2
.end method
