.class Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter$SwitchChangeListener;
.super Ljava/lang/Object;
.source "BootApplicationActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwitchChangeListener"
.end annotation


# instance fields
.field private mPos:I

.field final synthetic this$1:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;


# direct methods
.method public constructor <init>(Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "pos"
    .parameter "name"

    .prologue
    .line 242
    iput-object p1, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter$SwitchChangeListener;->this$1:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput p2, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter$SwitchChangeListener;->mPos:I

    .line 247
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 252
    move-object v0, p1

    check-cast v0, Landroid/widget/Switch;

    .line 253
    .local v0, switchTab:Landroid/widget/Switch;
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter$SwitchChangeListener;->this$1:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;

    iget-object v1, v1, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;->this$0:Lcom/huawei/android/hwpowermanager/BootApplicationActivity;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    #setter for: Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mIschecked:Z
    invoke-static {v1, v2}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->access$102(Lcom/huawei/android/hwpowermanager/BootApplicationActivity;Z)Z

    .line 254
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter$SwitchChangeListener;->this$1:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;

    iget-object v1, v1, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;->this$0:Lcom/huawei/android/hwpowermanager/BootApplicationActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mIschecked:Z
    invoke-static {v1}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->access$100(Lcom/huawei/android/hwpowermanager/BootApplicationActivity;)Z

    move-result v2

    invoke-static {}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    iget v3, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter$SwitchChangeListener;->mPos:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;

    iget-boolean v1, v1, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mNewEnable:Z

    if-eq v2, v1, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    if-nez p2, :cond_3

    .line 260
    invoke-static {}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter$SwitchChangeListener;->mPos:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;

    iput-boolean v4, v1, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mNewEnable:Z

    .line 262
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter$SwitchChangeListener;->this$1:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;

    iget-object v1, v1, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;->this$0:Lcom/huawei/android/hwpowermanager/BootApplicationActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mBootAppAdapter:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;
    invoke-static {v1}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->access$200(Lcom/huawei/android/hwpowermanager/BootApplicationActivity;)Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;->allUnchecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 263
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter$SwitchChangeListener;->this$1:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;

    iget-object v1, v1, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;->this$0:Lcom/huawei/android/hwpowermanager/BootApplicationActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mSelectAllSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->access$300(Lcom/huawei/android/hwpowermanager/BootApplicationActivity;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 275
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter$SwitchChangeListener;->this$1:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;

    iget-object v1, v1, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;->this$0:Lcom/huawei/android/hwpowermanager/BootApplicationActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mValidMenu:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->access$400(Lcom/huawei/android/hwpowermanager/BootApplicationActivity;)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter$SwitchChangeListener;->this$1:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;

    iget-object v1, v1, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;->this$0:Lcom/huawei/android/hwpowermanager/BootApplicationActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mInvalidMenu:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->access$500(Lcom/huawei/android/hwpowermanager/BootApplicationActivity;)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter$SwitchChangeListener;->this$1:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;

    iget-object v1, v1, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;->this$0:Lcom/huawei/android/hwpowermanager/BootApplicationActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mValidMenu:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->access$400(Lcom/huawei/android/hwpowermanager/BootApplicationActivity;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 277
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter$SwitchChangeListener;->this$1:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;

    iget-object v1, v1, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;->this$0:Lcom/huawei/android/hwpowermanager/BootApplicationActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mInvalidMenu:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->access$500(Lcom/huawei/android/hwpowermanager/BootApplicationActivity;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 266
    :cond_3
    invoke-static {}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter$SwitchChangeListener;->mPos:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;

    iput-boolean v5, v1, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mNewEnable:Z

    .line 268
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter$SwitchChangeListener;->this$1:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;

    iget-object v1, v1, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;->this$0:Lcom/huawei/android/hwpowermanager/BootApplicationActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mBootAppAdapter:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;
    invoke-static {v1}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->access$200(Lcom/huawei/android/hwpowermanager/BootApplicationActivity;)Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;->allChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 269
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter$SwitchChangeListener;->this$1:Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;

    iget-object v1, v1, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$BootAppAdapter;->this$0:Lcom/huawei/android/hwpowermanager/BootApplicationActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->mSelectAllSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->access$300(Lcom/huawei/android/hwpowermanager/BootApplicationActivity;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1
.end method
