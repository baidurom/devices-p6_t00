.class public Lcom/huawei/android/FMRadio/CommonUI;
.super Ljava/lang/Object;
.source "CommonUI.java"


# static fields
.field private static mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initAutoTuneDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;
    .locals 2
    .parameter "context"

    .prologue
    .line 44
    new-instance v0, Lcom/huawei/android/FMRadio/CommonUI$2;

    invoke-direct {v0, p0}, Lcom/huawei/android/FMRadio/CommonUI$2;-><init>(Landroid/content/Context;)V

    .line 54
    .local v0, autoTuneDialog:Landroid/app/ProgressDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 55
    const v1, 0x7f080041

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 56
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 57
    new-instance v1, Lcom/huawei/android/FMRadio/CommonUI$3;

    invoke-direct {v1}, Lcom/huawei/android/FMRadio/CommonUI$3;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 74
    return-object v0
.end method

.method public static initManualTuneDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;
    .locals 2
    .parameter "context"

    .prologue
    .line 79
    new-instance v0, Lcom/huawei/android/FMRadio/CommonUI$4;

    invoke-direct {v0, p0}, Lcom/huawei/android/FMRadio/CommonUI$4;-><init>(Landroid/content/Context;)V

    .line 89
    .local v0, manualTuneDialog:Landroid/app/ProgressDialog;
    const v1, 0x7f080008

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 90
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 91
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 93
    return-object v0
.end method

.method public static initWaitProgressDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;
    .locals 2
    .parameter "context"

    .prologue
    .line 25
    new-instance v0, Lcom/huawei/android/FMRadio/CommonUI$1;

    invoke-direct {v0, p0}, Lcom/huawei/android/FMRadio/CommonUI$1;-><init>(Landroid/content/Context;)V

    .line 35
    .local v0, waitingDialog:Landroid/app/ProgressDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 36
    const v1, 0x7f08002f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 37
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 39
    return-object v0
.end method

.method public static showToast(Landroid/content/Context;II)V
    .locals 1
    .parameter "context"
    .parameter "resId"
    .parameter "duration"

    .prologue
    .line 98
    sget-object v0, Lcom/huawei/android/FMRadio/CommonUI;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/huawei/android/FMRadio/CommonUI;->mToast:Landroid/widget/Toast;

    .line 103
    :goto_0
    sget-object v0, Lcom/huawei/android/FMRadio/CommonUI;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 104
    return-void

    .line 101
    :cond_0
    sget-object v0, Lcom/huawei/android/FMRadio/CommonUI;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .parameter "context"
    .parameter "string"
    .parameter "duration"

    .prologue
    .line 107
    sget-object v0, Lcom/huawei/android/FMRadio/CommonUI;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/huawei/android/FMRadio/CommonUI;->mToast:Landroid/widget/Toast;

    .line 112
    :goto_0
    sget-object v0, Lcom/huawei/android/FMRadio/CommonUI;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 113
    return-void

    .line 110
    :cond_0
    sget-object v0, Lcom/huawei/android/FMRadio/CommonUI;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
