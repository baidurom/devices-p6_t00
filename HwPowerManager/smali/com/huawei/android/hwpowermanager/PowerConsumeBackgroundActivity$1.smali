.class Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity$1;
.super Ljava/lang/Object;
.source "PowerConsumeBackgroundActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->setClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;


# direct methods
.method constructor <init>(Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity$1;->this$0:Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 121
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 122
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v4, "package"

    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity$1;->this$0:Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->dataList:Ljava/util/List;
    invoke-static {v3}, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->access$100(Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v5, "packageName"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 124
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 126
    :try_start_0
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity$1;->this$0:Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->access$200(Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, e:Landroid/content/ActivityNotFoundException;
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity$1;->this$0:Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;->access$200(Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "The target is unrearchable"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
