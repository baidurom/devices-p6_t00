.class Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver$2;
.super Ljava/lang/Thread;
.source "BootBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;->makeSureDBReady(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;

.field final synthetic val$c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver$2;->this$0:Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver;

    iput-object p2, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver$2;->val$c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 151
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 155
    new-instance v0, Lcom/huawei/android/hwpowermanager/SavingSettingsData;

    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver$2;->val$c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/huawei/android/hwpowermanager/SavingSettingsData;-><init>(Landroid/content/Context;)V

    .line 156
    .local v0, ssd:Lcom/huawei/android/hwpowermanager/SavingSettingsData;
    invoke-virtual {v0}, Lcom/huawei/android/hwpowermanager/SavingSettingsData;->makeSureSaveDBReady()V

    .line 162
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/BootBroadcastReceiver$2;->val$c:Landroid/content/Context;

    invoke-static {v1}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->initStarupForbiddenAppDB(Landroid/content/Context;)V

    .line 163
    return-void
.end method
