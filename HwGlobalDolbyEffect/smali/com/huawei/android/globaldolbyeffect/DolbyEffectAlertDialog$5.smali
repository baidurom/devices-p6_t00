.class Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$5;
.super Ljava/lang/Object;
.source "DolbyEffectAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->showDolbyEffectDialog()V
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
    .line 120
    iput-object p1, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$5;->this$0:Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    .line 124
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$5;->this$0:Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;

    #getter for: Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;
    invoke-static {v0}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->access$200(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;)Landroid/media/dolby/DolbyMobileAudioEffectClient;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->setDolbyEffectOn(Z)V

    .line 125
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$5;->this$0:Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;

    #getter for: Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mDolbyClient:Landroid/media/dolby/DolbyMobileAudioEffectClient;
    invoke-static {v0}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->access$200(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;)Landroid/media/dolby/DolbyMobileAudioEffectClient;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/media/dolby/DolbyMobileAudioEffectClient;->setGlobalEffectOn(Z)V

    .line 126
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$5;->this$0:Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;

    #getter for: Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mDolbyCategory:I
    invoke-static {v0}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->access$600(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;)I

    move-result v0

    if-nez v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$5;->this$0:Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;

    invoke-virtual {v0}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->showAudioEffectDialog()Z

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$5;->this$0:Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;

    #getter for: Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->mDolbyCategory:I
    invoke-static {v0}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->access$600(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 129
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$5;->this$0:Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;

    invoke-virtual {v0}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->showVideoEffectDialog()Z

    goto :goto_0
.end method
