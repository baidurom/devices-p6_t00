.class Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "GlobalDolbyEffectFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;


# direct methods
.method constructor <init>(Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment$1;->this$0:Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    iget-object v2, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment$1;->this$0:Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;

    const-string v3, "state"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    #setter for: Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->mIsHeadset:I
    invoke-static {v2, v3}, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->access$002(Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;I)I

    .line 48
    :try_start_0
    iget-object v2, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment$1;->this$0:Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;

    #calls: Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->updateUI()V
    invoke-static {v2}, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->access$100(Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v1

    .line 50
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "GlobalDolbyEffectActivity"

    const-string v3, "updateUI() failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
