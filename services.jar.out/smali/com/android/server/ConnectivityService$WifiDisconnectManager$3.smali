.class Lcom/android/server/ConnectivityService$WifiDisconnectManager$3;
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

.field final synthetic val$checkBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService$WifiDisconnectManager;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3804
    iput-object p1, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager$3;->this$1:Lcom/android/server/ConnectivityService$WifiDisconnectManager;

    iput-object p2, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager$3;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialoginterface"
    .parameter "i"

    .prologue
    .line 3807
    const-string v0, "you have chose to disconnect Mobile data service!"

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$300(Ljava/lang/String;)V

    .line 3810
    iget-object v0, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager$3;->this$1:Lcom/android/server/ConnectivityService$WifiDisconnectManager;

    iget-object v1, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager$3;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    const/4 v2, 0x0

    #calls: Lcom/android/server/ConnectivityService$WifiDisconnectManager;->checkUserChoice(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->access$4600(Lcom/android/server/ConnectivityService$WifiDisconnectManager;ZZ)V

    .line 3811
    return-void
.end method
