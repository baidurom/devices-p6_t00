.class Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$2;
.super Ljava/lang/Object;
.source "DolbyEffectAlertDialog.java"

# interfaces
.implements Landroid/media/dolby/DolbyMobileClientCallbacks;


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
    .line 75
    iput-object p1, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$2;->this$0:Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEffectOnChanged(Z)V
    .locals 0
    .parameter "on"

    .prologue
    .line 84
    return-void
.end method

.method public onPresetChanged(II)V
    .locals 0
    .parameter "presetCategory"
    .parameter "preset"

    .prologue
    .line 87
    return-void
.end method

.method public onServiceConnected()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog$2;->this$0:Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;

    #calls: Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->showDolbyEffectDialog()V
    invoke-static {v0}, Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;->access$500(Lcom/huawei/android/globaldolbyeffect/DolbyEffectAlertDialog;)V

    .line 78
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method
