.class Lcom/huawei/android/hwpowermanager/SavingSettingActivity$2;
.super Ljava/lang/Object;
.source "SavingSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->contentResolverOnDestory()V
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
    .line 406
    iput-object p1, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$2;->this$0:Lcom/huawei/android/hwpowermanager/SavingSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 409
    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$2;->this$0:Lcom/huawei/android/hwpowermanager/SavingSettingActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->mData:Lcom/huawei/android/hwpowermanager/SavingSettingsData;
    invoke-static {v2}, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->access$000(Lcom/huawei/android/hwpowermanager/SavingSettingActivity;)Lcom/huawei/android/hwpowermanager/SavingSettingsData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/android/hwpowermanager/SavingSettingsData;->getAllApps()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 410
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, ifor:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 411
    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$2;->this$0:Lcom/huawei/android/hwpowermanager/SavingSettingActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->access$400(Lcom/huawei/android/hwpowermanager/SavingSettingActivity;)Landroid/content/Context;

    move-result-object v3

    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$2;->this$0:Lcom/huawei/android/hwpowermanager/SavingSettingActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->mData:Lcom/huawei/android/hwpowermanager/SavingSettingsData;
    invoke-static {v2}, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->access$000(Lcom/huawei/android/hwpowermanager/SavingSettingActivity;)Lcom/huawei/android/hwpowermanager/SavingSettingsData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/android/hwpowermanager/SavingSettingsData;->getAllApps()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;

    iget-object v4, v2, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$2;->this$0:Lcom/huawei/android/hwpowermanager/SavingSettingActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->mData:Lcom/huawei/android/hwpowermanager/SavingSettingsData;
    invoke-static {v2}, Lcom/huawei/android/hwpowermanager/SavingSettingActivity;->access$000(Lcom/huawei/android/hwpowermanager/SavingSettingActivity;)Lcom/huawei/android/hwpowermanager/SavingSettingsData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/android/hwpowermanager/SavingSettingsData;->getAllApps()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;

    iget-boolean v2, v2, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;->isChecked:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->updateProtectedAppsDB(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 410
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 413
    :cond_0
    return-void
.end method
