.class Lcom/android/server/ConnectivityService$WifiDisconnectManager$2;
.super Ljava/lang/Object;
.source "ConnectivityService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ConnectivityService$WifiDisconnectManager;->createSwitchToPdpWarning()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/ConnectivityService$WifiDisconnectManager;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService$WifiDisconnectManager;)V
    .locals 0
    .parameter

    .prologue
    .line 3763
    iput-object p1, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager$2;->this$1:Lcom/android/server/ConnectivityService$WifiDisconnectManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialoginterface"
    .parameter "i"

    .prologue
    .line 3766
    iget-object v0, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager$2;->this$1:Lcom/android/server/ConnectivityService$WifiDisconnectManager;

    #getter for: Lcom/android/server/ConnectivityService$WifiDisconnectManager;->mSwitchToNet:Landroid/net/NetworkStateTracker;
    invoke-static {v0}, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->access$4500(Lcom/android/server/ConnectivityService$WifiDisconnectManager;)Landroid/net/NetworkStateTracker;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->reconnect()Z

    .line 3770
    iget-object v0, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager$2;->this$1:Lcom/android/server/ConnectivityService$WifiDisconnectManager;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/ConnectivityService$WifiDisconnectManager;->mShouldShutdownMobile:Z
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->access$4302(Lcom/android/server/ConnectivityService$WifiDisconnectManager;Z)Z

    .line 3772
    const-string v0, "you have chose to switch to Mobile data service!"

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$300(Ljava/lang/String;)V

    .line 3774
    return-void
.end method
