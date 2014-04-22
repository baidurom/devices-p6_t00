.class Lcom/huawei/android/hwpowermanager/ServiceReceiver$MyHandler;
.super Landroid/os/Handler;
.source "ServiceReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/hwpowermanager/ServiceReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/hwpowermanager/ServiceReceiver;


# direct methods
.method public constructor <init>(Lcom/huawei/android/hwpowermanager/ServiceReceiver;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/huawei/android/hwpowermanager/ServiceReceiver$MyHandler;->this$0:Lcom/huawei/android/hwpowermanager/ServiceReceiver;

    .line 109
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 110
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 114
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 115
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 117
    .local v4, mPackageName:Ljava/lang/String;
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 120
    :pswitch_0
    const-string v6, "ServiceReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "xxxx add or remove pkgName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v6, p0, Lcom/huawei/android/hwpowermanager/ServiceReceiver$MyHandler;->this$0:Lcom/huawei/android/hwpowermanager/ServiceReceiver;

    #getter for: Lcom/huawei/android/hwpowermanager/ServiceReceiver;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/huawei/android/hwpowermanager/ServiceReceiver;->access$000(Lcom/huawei/android/hwpowermanager/ServiceReceiver;)Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->PROTECTED_APPS_URI:Landroid/net/Uri;

    invoke-static {v6, v7, v4, v10}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->insertToSmartProviderDB(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)Landroid/net/Uri;

    .line 125
    iget-object v6, p0, Lcom/huawei/android/hwpowermanager/ServiceReceiver$MyHandler;->this$0:Lcom/huawei/android/hwpowermanager/ServiceReceiver;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    #calls: Lcom/huawei/android/hwpowermanager/ServiceReceiver;->updateRogueAppDB(Ljava/lang/String;ILjava/lang/Object;)V
    invoke-static {v6, v4, v9, v7}, Lcom/huawei/android/hwpowermanager/ServiceReceiver;->access$100(Lcom/huawei/android/hwpowermanager/ServiceReceiver;Ljava/lang/String;ILjava/lang/Object;)V

    .line 129
    const/4 v3, 0x0

    .line 130
    .local v3, isBootApp:Z
    iget-object v6, p0, Lcom/huawei/android/hwpowermanager/ServiceReceiver$MyHandler;->this$0:Lcom/huawei/android/hwpowermanager/ServiceReceiver;

    #getter for: Lcom/huawei/android/hwpowermanager/ServiceReceiver;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/huawei/android/hwpowermanager/ServiceReceiver;->access$000(Lcom/huawei/android/hwpowermanager/ServiceReceiver;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->queryAllBootApps(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 131
    .local v0, bootApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 132
    .local v5, temp:Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_3

    iget-object v1, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 134
    .local v1, ci:Landroid/content/pm/ComponentInfo;
    :goto_1
    iget-object v6, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 135
    const/4 v3, 0x1

    .line 139
    .end local v1           #ci:Landroid/content/pm/ComponentInfo;
    .end local v5           #temp:Landroid/content/pm/ResolveInfo;
    :cond_2
    iget-object v6, p0, Lcom/huawei/android/hwpowermanager/ServiceReceiver$MyHandler;->this$0:Lcom/huawei/android/hwpowermanager/ServiceReceiver;

    #getter for: Lcom/huawei/android/hwpowermanager/ServiceReceiver;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/huawei/android/hwpowermanager/ServiceReceiver;->access$000(Lcom/huawei/android/hwpowermanager/ServiceReceiver;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->isSystemApp(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v3, :cond_0

    .line 140
    iget-object v6, p0, Lcom/huawei/android/hwpowermanager/ServiceReceiver$MyHandler;->this$0:Lcom/huawei/android/hwpowermanager/ServiceReceiver;

    #getter for: Lcom/huawei/android/hwpowermanager/ServiceReceiver;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/huawei/android/hwpowermanager/ServiceReceiver;->access$000(Lcom/huawei/android/hwpowermanager/ServiceReceiver;)Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->FORBIDDEN_APPS_URI:Landroid/net/Uri;

    invoke-static {v6, v7, v4, v10}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->insertToDB(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)V

    goto :goto_0

    .line 132
    .restart local v5       #temp:Landroid/content/pm/ResolveInfo;
    :cond_3
    iget-object v1, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_1

    .line 146
    .end local v0           #bootApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #isBootApp:Z
    .end local v5           #temp:Landroid/content/pm/ResolveInfo;
    :pswitch_1
    iget-object v6, p0, Lcom/huawei/android/hwpowermanager/ServiceReceiver$MyHandler;->this$0:Lcom/huawei/android/hwpowermanager/ServiceReceiver;

    #getter for: Lcom/huawei/android/hwpowermanager/ServiceReceiver;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/huawei/android/hwpowermanager/ServiceReceiver;->access$000(Lcom/huawei/android/hwpowermanager/ServiceReceiver;)Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->PROTECTED_APPS_URI:Landroid/net/Uri;

    invoke-static {v6, v7, v4, v10}, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;->deleteFromSmartProviderDB(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)V

    .line 149
    iget-object v6, p0, Lcom/huawei/android/hwpowermanager/ServiceReceiver$MyHandler;->this$0:Lcom/huawei/android/hwpowermanager/ServiceReceiver;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    #calls: Lcom/huawei/android/hwpowermanager/ServiceReceiver;->updateRogueAppDB(Ljava/lang/String;ILjava/lang/Object;)V
    invoke-static {v6, v4, v9, v7}, Lcom/huawei/android/hwpowermanager/ServiceReceiver;->access$100(Lcom/huawei/android/hwpowermanager/ServiceReceiver;Ljava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
