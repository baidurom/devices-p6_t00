.class Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$11;
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
    .line 306
    iput-object p1, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$11;->this$0:Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 310
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$11;->this$0:Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;

    #getter for: Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;
    invoke-static {v0}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->access$200(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;)Landroid/media/dolby/DolbyMobileAudioEffectClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->getPresetCategory()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 311
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$11;->this$0:Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;

    #getter for: Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mPrePreset:I
    invoke-static {v0}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->access$300(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;)I

    move-result v0

    if-nez v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$11;->this$0:Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;

    #getter for: Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;
    invoke-static {v0}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->access$200(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;)Landroid/media/dolby/DolbyMobileAudioEffectClient;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->setDolbyEffectByPass(Z)V

    .line 318
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$11;->this$0:Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;

    invoke-virtual {v0}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->finish()V

    .line 319
    return-void

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$11;->this$0:Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;

    #getter for: Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;
    invoke-static {v0}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->access$200(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;)Landroid/media/dolby/DolbyMobileAudioEffectClient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->setDolbyEffectByPass(Z)V

    .line 315
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$11;->this$0:Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;

    #getter for: Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;
    invoke-static {v0}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->access$200(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;)Landroid/media/dolby/DolbyMobileAudioEffectClient;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$11;->this$0:Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;

    #getter for: Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mPrePreset:I
    invoke-static {v1}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->access$300(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->setDolbyEffect(II)V

    goto :goto_0
.end method
