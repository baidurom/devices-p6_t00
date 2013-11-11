.class Lcom/huawei/android/FMRadio/RenameDialog$1;
.super Ljava/lang/Object;
.source "RenameDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/FMRadio/RenameDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/FMRadio/RenameDialog;


# direct methods
.method constructor <init>(Lcom/huawei/android/FMRadio/RenameDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/huawei/android/FMRadio/RenameDialog$1;->this$0:Lcom/huawei/android/FMRadio/RenameDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 110
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 98
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 101
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/huawei/android/FMRadio/RenameDialog$1;->this$0:Lcom/huawei/android/FMRadio/RenameDialog;

    #getter for: Lcom/huawei/android/FMRadio/RenameDialog;->mOkButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/huawei/android/FMRadio/RenameDialog;->access$000(Lcom/huawei/android/FMRadio/RenameDialog;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/huawei/android/FMRadio/RenameDialog$1;->this$0:Lcom/huawei/android/FMRadio/RenameDialog;

    #getter for: Lcom/huawei/android/FMRadio/RenameDialog;->mOkButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/huawei/android/FMRadio/RenameDialog;->access$000(Lcom/huawei/android/FMRadio/RenameDialog;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
