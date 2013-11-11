.class Lcom/huawei/android/FMRadio/SleepDialog$1;
.super Ljava/lang/Object;
.source "SleepDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/android/FMRadio/SleepDialog;->initDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/FMRadio/SleepDialog;


# direct methods
.method constructor <init>(Lcom/huawei/android/FMRadio/SleepDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/huawei/android/FMRadio/SleepDialog$1;->this$0:Lcom/huawei/android/FMRadio/SleepDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 94
    iget-object v3, p0, Lcom/huawei/android/FMRadio/SleepDialog$1;->this$0:Lcom/huawei/android/FMRadio/SleepDialog;

    #getter for: Lcom/huawei/android/FMRadio/SleepDialog;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/huawei/android/FMRadio/SleepDialog;->access$000(Lcom/huawei/android/FMRadio/SleepDialog;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 97
    iget-object v3, p0, Lcom/huawei/android/FMRadio/SleepDialog$1;->this$0:Lcom/huawei/android/FMRadio/SleepDialog;

    #getter for: Lcom/huawei/android/FMRadio/SleepDialog;->mCurSeekTime:I
    invoke-static {v3}, Lcom/huawei/android/FMRadio/SleepDialog;->access$100(Lcom/huawei/android/FMRadio/SleepDialog;)I

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 98
    .local v1, time:I
    :goto_0
    iget-object v3, p0, Lcom/huawei/android/FMRadio/SleepDialog$1;->this$0:Lcom/huawei/android/FMRadio/SleepDialog;

    #getter for: Lcom/huawei/android/FMRadio/SleepDialog;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/huawei/android/FMRadio/SleepDialog;->access$200(Lcom/huawei/android/FMRadio/SleepDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v1}, Lcom/huawei/android/FMRadio/FMRadioUtils;->changeSleepMode(Landroid/content/Context;ZI)V

    .line 99
    iget-object v3, p0, Lcom/huawei/android/FMRadio/SleepDialog$1;->this$0:Lcom/huawei/android/FMRadio/SleepDialog;

    #getter for: Lcom/huawei/android/FMRadio/SleepDialog;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/huawei/android/FMRadio/SleepDialog;->access$200(Lcom/huawei/android/FMRadio/SleepDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f09

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v6

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, message:Ljava/lang/String;
    iget-object v2, p0, Lcom/huawei/android/FMRadio/SleepDialog$1;->this$0:Lcom/huawei/android/FMRadio/SleepDialog;

    #getter for: Lcom/huawei/android/FMRadio/SleepDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/huawei/android/FMRadio/SleepDialog;->access$200(Lcom/huawei/android/FMRadio/SleepDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v6}, Lcom/huawei/android/FMRadio/CommonUI;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 108
    .end local v0           #message:Ljava/lang/String;
    .end local v1           #time:I
    :goto_1
    return-void

    .line 97
    :cond_0
    iget-object v3, p0, Lcom/huawei/android/FMRadio/SleepDialog$1;->this$0:Lcom/huawei/android/FMRadio/SleepDialog;

    #getter for: Lcom/huawei/android/FMRadio/SleepDialog;->mCurSeekTime:I
    invoke-static {v3}, Lcom/huawei/android/FMRadio/SleepDialog;->access$100(Lcom/huawei/android/FMRadio/SleepDialog;)I

    move-result v1

    goto :goto_0

    .line 105
    :cond_1
    iget-object v2, p0, Lcom/huawei/android/FMRadio/SleepDialog$1;->this$0:Lcom/huawei/android/FMRadio/SleepDialog;

    #getter for: Lcom/huawei/android/FMRadio/SleepDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/huawei/android/FMRadio/SleepDialog;->access$200(Lcom/huawei/android/FMRadio/SleepDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6, v6}, Lcom/huawei/android/FMRadio/FMRadioUtils;->changeSleepMode(Landroid/content/Context;ZI)V

    goto :goto_1
.end method
