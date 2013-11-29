.class Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment$2;
.super Ljava/lang/Object;
.source "GlobalDolbyEffectFragment.java"

# interfaces
.implements Landroid/media/dolby/DolbyMobileClientCallbacks;


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
    .line 56
    iput-object p1, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment$2;->this$0:Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEffectOnChanged(Z)V
    .locals 0
    .parameter "on"

    .prologue
    .line 70
    return-void
.end method

.method public onPresetChanged(II)V
    .locals 0
    .parameter "presetCategory"
    .parameter "preset"

    .prologue
    .line 73
    return-void
.end method

.method public onServiceConnected()V
    .locals 3

    .prologue
    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment$2;->this$0:Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;

    #calls: Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->updateUI()V
    invoke-static {v1}, Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;->access$100(Lcom/huawei/android/globaldolbyeffect/GlobalDolbyEffectFragment;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "GlobalDolbyEffectActivity"

    const-string v2, "updateUI() failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method
