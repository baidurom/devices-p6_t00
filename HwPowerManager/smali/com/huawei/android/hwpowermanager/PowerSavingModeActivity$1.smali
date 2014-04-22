.class Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "PowerSavingModeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->batteryLevel(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;


# direct methods
.method constructor <init>(Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity$1;->this$0:Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 73
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 74
    .local v6, action:Ljava/lang/String;
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity$1;->this$0:Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;

    const-string v1, "level"

    invoke-virtual {p2, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    #setter for: Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->mRawlevel:I
    invoke-static {v0, v1}, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->access$002(Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;I)I

    .line 76
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity$1;->this$0:Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;

    #calls: Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->createListItem()V
    invoke-static {v0}, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->access$100(Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;)V

    .line 77
    iget-object v7, p0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity$1;->this$0:Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;

    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity$1;->this$0:Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;

    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity$1;->this$0:Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->mListItem:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->access$300(Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;)Ljava/util/ArrayList;

    move-result-object v2

    const v3, 0x7f03000a

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "ItemImage"

    aput-object v5, v4, v8

    const/4 v5, 0x1

    const-string v8, "ItemText"

    aput-object v8, v4, v5

    const/4 v5, 0x2

    const-string v8, "ItemTitle"

    aput-object v8, v4, v5

    new-array v5, v9, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    #setter for: Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->mListItemAdapter:Landroid/widget/SimpleAdapter;
    invoke-static {v7, v0}, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->access$202(Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;Landroid/widget/SimpleAdapter;)Landroid/widget/SimpleAdapter;

    .line 81
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity$1;->this$0:Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->mList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->access$400(Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity$1;->this$0:Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->mListItemAdapter:Landroid/widget/SimpleAdapter;
    invoke-static {v1}, Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;->access$200(Lcom/huawei/android/hwpowermanager/PowerSavingModeActivity;)Landroid/widget/SimpleAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 83
    :cond_0
    return-void

    .line 77
    :array_0
    .array-data 0x4
        0x3bt 0x0t 0xbt 0x7ft
        0x3dt 0x0t 0xbt 0x7ft
        0x3ct 0x0t 0xbt 0x7ft
    .end array-data
.end method
