.class Lcom/android/server/power/PowerManagerService$5;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 3019
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3022
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "true"

    const-string v2, "ro.config.hw_quickpoweron"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3024
    const-string v1, "persist.sys.quickpoweron"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3025
    .local v0, strPower:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/internal/policy/Powerstate;->setPowerConnected(Z)V

    .line 3026
    const-string v1, "shutdown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3027
    const-string v1, "PowerManagerService"

    const-string v2, "onReceive::Power.shutdown E"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3028
    invoke-static {}, Lcom/android/internal/policy/Powerstate;->getInstance()Lcom/android/internal/policy/Powerstate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/Powerstate;->showPowerOffCharge()V

    .line 3029
    const-string v1, "PowerManagerService"

    const-string v2, "onReceive::Power.shutdown X"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3038
    .end local v0           #strPower:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 3031
    :cond_1
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "true"

    const-string v2, "ro.config.hw_quickpoweron"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3033
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/internal/policy/Powerstate;->setPowerConnected(Z)V

    .line 3034
    sget-object v1, Lcom/android/internal/policy/Powerstate;->animChargeProcess:Ljava/lang/Process;

    if-eqz v1, :cond_0

    .line 3035
    invoke-static {}, Lcom/android/internal/policy/Powerstate;->getInstance()Lcom/android/internal/policy/Powerstate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/Powerstate;->setInChargeScreenState()V

    goto :goto_0
.end method
