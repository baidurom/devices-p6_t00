.class Lcom/huawei/android/hwpowermanager/SavingSettingActivity$1;
.super Ljava/lang/Object;
.source "SavingSettingActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/hwpowermanager/SavingSettingActivity;


# direct methods
.method constructor <init>(Lcom/huawei/android/hwpowermanager/SavingSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$1;->this$0:Lcom/huawei/android/hwpowermanager/SavingSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 297
    if-eqz p2, :cond_0

    .line 298
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$1;->this$0:Lcom/huawei/android/hwpowermanager/SavingSettingActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->changeSwitchStatus(Z)V

    .line 303
    :goto_0
    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$1;->this$0:Lcom/huawei/android/hwpowermanager/SavingSettingActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->changeSwitchStatus(Z)V

    goto :goto_0
.end method
