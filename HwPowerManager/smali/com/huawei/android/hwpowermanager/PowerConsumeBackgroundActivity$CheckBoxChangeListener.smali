.class Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity$CheckBoxChangeListener;
.super Ljava/lang/Object;
.source "PowerConsumeBackgroundActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckBoxChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;


# direct methods
.method private constructor <init>(Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 386
    iput-object p1, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity$CheckBoxChangeListener;->this$0:Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 386
    invoke-direct {p0, p1}, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity$CheckBoxChangeListener;-><init>(Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 391
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    move-object v1, v2

    check-cast v1, [Ljava/lang/String;

    .line 393
    .local v1, mCheckBoxInfo:[Ljava/lang/String;
    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity$CheckBoxChangeListener;->this$0:Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->dataList:Ljava/util/List;
    invoke-static {v2}, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->access$100(Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;)Ljava/util/List;

    move-result-object v2

    aget-object v3, v1, v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 394
    .local v0, data:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "switcher"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    if-eqz p2, :cond_1

    .line 400
    const-string v2, "PowerConsumeBackgroundActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const-string v2, "PowerConsumeBackgroundActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "label is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity$CheckBoxChangeListener;->this$0:Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;

    aget-object v3, v1, v5

    #calls: Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->remarkCheckedItem(ZLjava/lang/String;)V
    invoke-static {v2, v5, v3}, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->access$400(Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;ZLjava/lang/String;)V

    .line 415
    :goto_0
    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity$CheckBoxChangeListener;->this$0:Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->mValidMenu:Landroid/view/MenuItem;
    invoke-static {v2}, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->access$500(Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 416
    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity$CheckBoxChangeListener;->this$0:Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->mValidMenu:Landroid/view/MenuItem;
    invoke-static {v2}, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->access$500(Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity$CheckBoxChangeListener;->this$0:Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;

    #calls: Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->getMenuTitle()Ljava/lang/String;
    invoke-static {v3}, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->access$600(Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 418
    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity$CheckBoxChangeListener;->this$0:Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;

    #calls: Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->getCheckedNumer()I
    invoke-static {v2}, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->access$700(Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;)I

    move-result v2

    if-nez v2, :cond_2

    .line 419
    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity$CheckBoxChangeListener;->this$0:Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->mValidMenu:Landroid/view/MenuItem;
    invoke-static {v2}, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->access$500(Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 424
    :cond_0
    :goto_1
    return-void

    .line 410
    :cond_1
    const-string v2, "PowerConsumeBackgroundActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const-string v2, "PowerConsumeBackgroundActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "label is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity$CheckBoxChangeListener;->this$0:Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;

    aget-object v3, v1, v5

    #calls: Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->remarkCheckedItem(ZLjava/lang/String;)V
    invoke-static {v2, v6, v3}, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->access$400(Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;ZLjava/lang/String;)V

    goto :goto_0

    .line 421
    :cond_2
    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity$CheckBoxChangeListener;->this$0:Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->mValidMenu:Landroid/view/MenuItem;
    invoke-static {v2}, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->access$500(Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method
