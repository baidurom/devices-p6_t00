.class Lcom/huawei/android/hwpowermanager/SavingSettingActivity$SwitchChangeListener;
.super Ljava/lang/Object;
.source "SavingSettingActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/hwpowermanager/SavingSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwitchChangeListener"
.end annotation


# instance fields
.field private mPos:I

.field final synthetic this$0:Lcom/huawei/android/hwpowermanager/SavingSettingActivity;


# direct methods
.method public constructor <init>(Lcom/huawei/android/hwpowermanager/SavingSettingActivity;ILcom/huawei/android/hwpowermanager/SavingSettingActivity$ViewHolder;)V
    .locals 0
    .parameter
    .parameter "pos"
    .parameter "vHolder"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$SwitchChangeListener;->this$0:Lcom/huawei/android/hwpowermanager/SavingSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput p2, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$SwitchChangeListener;->mPos:I

    .line 153
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v5, 0x1

    .line 161
    move-object v2, p1

    check-cast v2, Landroid/widget/Switch;

    .line 163
    .local v2, switchTab:Landroid/widget/Switch;
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$SwitchChangeListener;->this$0:Lcom/huawei/android/hwpowermanager/SavingSettingActivity;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v3, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->mIschecked:Ljava/lang/Boolean;

    .line 164
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$SwitchChangeListener;->this$0:Lcom/huawei/android/hwpowermanager/SavingSettingActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->mData:Lcom/huawei/android/hwpowermanager/SavingSettingsData;
    invoke-static {v3}, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->access$000(Lcom/huawei/android/hwpowermanager/SavingSettingActivity;)Lcom/huawei/android/hwpowermanager/SavingSettingsData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/android/hwpowermanager/SavingSettingsData;->getAllApps()Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$SwitchChangeListener;->mPos:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;

    .line 165
    .local v0, item:Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$SwitchChangeListener;->this$0:Lcom/huawei/android/hwpowermanager/SavingSettingActivity;

    iget-object v3, v3, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->mIschecked:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-boolean v4, v0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;->isChecked:Z

    if-ne v3, v4, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-object v1, v0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;->packageName:Ljava/lang/String;

    .line 168
    .local v1, packageName:Ljava/lang/String;
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$SwitchChangeListener;->this$0:Lcom/huawei/android/hwpowermanager/SavingSettingActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->mData:Lcom/huawei/android/hwpowermanager/SavingSettingsData;
    invoke-static {v3}, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->access$000(Lcom/huawei/android/hwpowermanager/SavingSettingActivity;)Lcom/huawei/android/hwpowermanager/SavingSettingsData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/android/hwpowermanager/SavingSettingsData;->getAllApps()Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$SwitchChangeListener;->mPos:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;

    iget-object v4, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$SwitchChangeListener;->this$0:Lcom/huawei/android/hwpowermanager/SavingSettingActivity;

    iget-object v4, v4, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->mIschecked:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v3, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;->isChecked:Z

    .line 170
    if-nez p2, :cond_3

    .line 171
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$SwitchChangeListener;->this$0:Lcom/huawei/android/hwpowermanager/SavingSettingActivity;

    invoke-virtual {v3}, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->allUnchecked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 172
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$SwitchChangeListener;->this$0:Lcom/huawei/android/hwpowermanager/SavingSettingActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->mSelectAllSwitch:Landroid/widget/Switch;
    invoke-static {v3}, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->access$300(Lcom/huawei/android/hwpowermanager/SavingSettingActivity;)Landroid/widget/Switch;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 181
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$SwitchChangeListener;->this$0:Lcom/huawei/android/hwpowermanager/SavingSettingActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->access$400(Lcom/huawei/android/hwpowermanager/SavingSettingActivity;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$SwitchChangeListener;->this$0:Lcom/huawei/android/hwpowermanager/SavingSettingActivity;

    iget-object v4, v4, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->mIschecked:Ljava/lang/Boolean;

    invoke-static {v3, v1, v4}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->updateProtectedAppsDB(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 183
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$SwitchChangeListener;->this$0:Lcom/huawei/android/hwpowermanager/SavingSettingActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->mValidMenu:Landroid/view/MenuItem;
    invoke-static {v3}, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->access$500(Lcom/huawei/android/hwpowermanager/SavingSettingActivity;)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$SwitchChangeListener;->this$0:Lcom/huawei/android/hwpowermanager/SavingSettingActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->mInvalidMenu:Landroid/view/MenuItem;
    invoke-static {v3}, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->access$600(Lcom/huawei/android/hwpowermanager/SavingSettingActivity;)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 184
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$SwitchChangeListener;->this$0:Lcom/huawei/android/hwpowermanager/SavingSettingActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->mValidMenu:Landroid/view/MenuItem;
    invoke-static {v3}, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->access$500(Lcom/huawei/android/hwpowermanager/SavingSettingActivity;)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 185
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$SwitchChangeListener;->this$0:Lcom/huawei/android/hwpowermanager/SavingSettingActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->mInvalidMenu:Landroid/view/MenuItem;
    invoke-static {v3}, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->access$600(Lcom/huawei/android/hwpowermanager/SavingSettingActivity;)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 175
    :cond_3
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$SwitchChangeListener;->this$0:Lcom/huawei/android/hwpowermanager/SavingSettingActivity;

    invoke-virtual {v3}, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->allChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 176
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$SwitchChangeListener;->this$0:Lcom/huawei/android/hwpowermanager/SavingSettingActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->mSelectAllSwitch:Landroid/widget/Switch;
    invoke-static {v3}, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->access$300(Lcom/huawei/android/hwpowermanager/SavingSettingActivity;)Landroid/widget/Switch;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1
.end method
