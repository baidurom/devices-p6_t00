.class public Lcom/huawei/android/hwpowermanager/LowPowerMessageActivity;
.super Landroid/app/Activity;
.source "LowPowerMessageActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v0, 0x7f090005

    invoke-virtual {p0, v0}, Lcom/huawei/android/hwpowermanager/LowPowerMessageActivity;->showDialog(I)V

    .line 19
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "resId"
    .parameter "bundle"

    .prologue
    .line 23
    packed-switch p1, :pswitch_data_0

    .line 51
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 25
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090005

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090008

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09000e

    new-instance v2, Lcom/huawei/android/hwpowermanager/LowPowerMessageActivity$2;

    invoke-direct {v2, p0}, Lcom/huawei/android/hwpowermanager/LowPowerMessageActivity$2;-><init>(Lcom/huawei/android/hwpowermanager/LowPowerMessageActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09000f

    new-instance v2, Lcom/huawei/android/hwpowermanager/LowPowerMessageActivity$1;

    invoke-direct {v2, p0}, Lcom/huawei/android/hwpowermanager/LowPowerMessageActivity$1;-><init>(Lcom/huawei/android/hwpowermanager/LowPowerMessageActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 23
    :pswitch_data_0
    .packed-switch 0x7f090005
        :pswitch_0
    .end packed-switch
.end method
