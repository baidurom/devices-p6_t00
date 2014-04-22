.class Lcom/huawei/android/hwpowermanager/LowPowerMessageActivity$2;
.super Ljava/lang/Object;
.source "LowPowerMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/android/hwpowermanager/LowPowerMessageActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/hwpowermanager/LowPowerMessageActivity;


# direct methods
.method constructor <init>(Lcom/huawei/android/hwpowermanager/LowPowerMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/huawei/android/hwpowermanager/LowPowerMessageActivity$2;->this$0:Lcom/huawei/android/hwpowermanager/LowPowerMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 31
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/LowPowerMessageActivity$2;->this$0:Lcom/huawei/android/hwpowermanager/LowPowerMessageActivity;

    invoke-static {v3}, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->getInstance(Landroid/content/Context;)Lcom/huawei/android/hwpowermanager/model/ChangeMode;

    move-result-object v1

    .line 33
    .local v1, mChangeMode:Lcom/huawei/android/hwpowermanager/model/ChangeMode;
    invoke-virtual {v1}, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->readSaveMode()I

    move-result v2

    .line 34
    .local v2, mSaveMode:I
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->change(I)V

    .line 35
    invoke-virtual {v1, v2}, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->wirteLastSaveMode(I)V

    .line 36
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 37
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "com.huawei.power.low.battery"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/LowPowerMessageActivity$2;->this$0:Lcom/huawei/android/hwpowermanager/LowPowerMessageActivity;

    invoke-virtual {v3, v0}, Lcom/huawei/android/hwpowermanager/LowPowerMessageActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 39
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/LowPowerMessageActivity$2;->this$0:Lcom/huawei/android/hwpowermanager/LowPowerMessageActivity;

    invoke-virtual {v3}, Lcom/huawei/android/hwpowermanager/LowPowerMessageActivity;->finish()V

    .line 40
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/LowPowerMessageActivity$2;->this$0:Lcom/huawei/android/hwpowermanager/LowPowerMessageActivity;

    invoke-virtual {v3}, Lcom/huawei/android/hwpowermanager/LowPowerMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f09001c

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 42
    return-void
.end method
