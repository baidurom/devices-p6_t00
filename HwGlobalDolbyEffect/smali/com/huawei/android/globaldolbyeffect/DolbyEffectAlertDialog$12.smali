.class Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$12;
.super Ljava/lang/Object;
.source "DolbyEffectAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->showVideoEffectDialog()Z
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
    .line 284
    iput-object p1, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$12;->this$0:Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 288
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$12;->this$0:Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;

    #getter for: Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mIsHeadset:I
    invoke-static {v0}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->access$000(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 289
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$12;->this$0:Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;

    #getter for: Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mCurrentPreset:I
    invoke-static {v0}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->access$700(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;)I

    move-result v0

    if-nez v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$12;->this$0:Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;

    #getter for: Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;
    invoke-static {v0}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->access$200(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;)Landroid/media/dolby/DolbyMobileAudioEffectClient;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->setGlobalVideoHeadsetByPass(Z)V

    .line 302
    :goto_0
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$12;->this$0:Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;

    invoke-virtual {v0}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->finish()V

    .line 303
    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$12;->this$0:Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;

    #getter for: Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;
    invoke-static {v0}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->access$200(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;)Landroid/media/dolby/DolbyMobileAudioEffectClient;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->setGlobalVideoHeadsetByPass(Z)V

    .line 293
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$12;->this$0:Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;

    #getter for: Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;
    invoke-static {v0}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->access$200(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;)Landroid/media/dolby/DolbyMobileAudioEffectClient;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$12;->this$0:Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;

    #getter for: Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mCurrentPreset:I
    invoke-static {v1}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->access$700(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->setGlobalVideoPreset(I)V

    goto :goto_0

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$12;->this$0:Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;

    #getter for: Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mCurrentPreset:I
    invoke-static {v0}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->access$700(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;)I

    move-result v0

    if-nez v0, :cond_2

    .line 297
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$12;->this$0:Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;

    #getter for: Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;
    invoke-static {v0}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->access$200(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;)Landroid/media/dolby/DolbyMobileAudioEffectClient;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->setGlobalVideoSpeakerByPass(Z)V

    goto :goto_0

    .line 299
    :cond_2
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$12;->this$0:Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;

    #getter for: Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;
    invoke-static {v0}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->access$200(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;)Landroid/media/dolby/DolbyMobileAudioEffectClient;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->setGlobalVideoSpeakerByPass(Z)V

    goto :goto_0
.end method
