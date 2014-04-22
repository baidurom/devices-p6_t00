.class Lcom/huawei/android/hwpowermanager/PowerConsumptionDetailActivity$1;
.super Ljava/lang/Object;
.source "PowerConsumptionDetailActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/android/hwpowermanager/PowerConsumptionDetailActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/hwpowermanager/PowerConsumptionDetailActivity;


# direct methods
.method constructor <init>(Lcom/huawei/android/hwpowermanager/PowerConsumptionDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/huawei/android/hwpowermanager/PowerConsumptionDetailActivity$1;->this$0:Lcom/huawei/android/hwpowermanager/PowerConsumptionDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v4, p0, Lcom/huawei/android/hwpowermanager/PowerConsumptionDetailActivity$1;->this$0:Lcom/huawei/android/hwpowermanager/PowerConsumptionDetailActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/PowerConsumptionDetailActivity;->mServiceInfoList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/huawei/android/hwpowermanager/PowerConsumptionDetailActivity;->access$000(Lcom/huawei/android/hwpowermanager/PowerConsumptionDetailActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;

    invoke-virtual {v4}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->getPkgName()Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, mPkgName:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 86
    :goto_0
    return-void

    .line 77
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 78
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string v5, "package"

    iget-object v4, p0, Lcom/huawei/android/hwpowermanager/PowerConsumptionDetailActivity$1;->this$0:Lcom/huawei/android/hwpowermanager/PowerConsumptionDetailActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/PowerConsumptionDetailActivity;->mServiceInfoList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/huawei/android/hwpowermanager/PowerConsumptionDetailActivity;->access$000(Lcom/huawei/android/hwpowermanager/PowerConsumptionDetailActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;

    invoke-virtual {v4}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->getPkgName()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-static {v5, v4, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 80
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 82
    :try_start_0
    iget-object v4, p0, Lcom/huawei/android/hwpowermanager/PowerConsumptionDetailActivity$1;->this$0:Lcom/huawei/android/hwpowermanager/PowerConsumptionDetailActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/PowerConsumptionDetailActivity;->context:Landroid/content/Context;
    invoke-static {v4}, Lcom/huawei/android/hwpowermanager/PowerConsumptionDetailActivity;->access$100(Lcom/huawei/android/hwpowermanager/PowerConsumptionDetailActivity;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "PowerUsageSummary"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
