.class Lcom/android/server/ConnectivityService$WifiDisconnectManager;
.super Ljava/lang/Object;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiDisconnectManager"
.end annotation


# static fields
.field private static final WIFI_TO_PDP:Ljava/lang/String; = "wifi_to_pdp"

.field private static final WIFI_TO_PDP_AUTO:I = 0x1

.field private static final WIFI_TO_PDP_NEVER:I = 0x2

.field private static final WIFI_TO_PDP_NOTIFY:I


# instance fields
.field private final REMIND_WIFI_TO_PDP:Z

.field private mIsWifiConnectedOrConnecting:Z

.field private mShouldShutdownMobile:Z

.field private mSwitchPdpListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mSwitchToNet:Landroid/net/NetworkStateTracker;

.field private mWifiToPdpDialog:Landroid/app/AlertDialog;

.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method private constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 3703
    iput-object p1, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3705
    const-string v0, "ro.config.hw_RemindWifiToPdp"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->REMIND_WIFI_TO_PDP:Z

    .line 3717
    iput-object v2, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->mWifiToPdpDialog:Landroid/app/AlertDialog;

    .line 3719
    iput-object v2, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->mSwitchToNet:Landroid/net/NetworkStateTracker;

    .line 3727
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->mShouldShutdownMobile:Z

    .line 3734
    iput-boolean v1, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->mIsWifiConnectedOrConnecting:Z

    .line 3750
    new-instance v0, Lcom/android/server/ConnectivityService$WifiDisconnectManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/ConnectivityService$WifiDisconnectManager$1;-><init>(Lcom/android/server/ConnectivityService$WifiDisconnectManager;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->mSwitchPdpListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3703
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$WifiDisconnectManager;-><init>(Lcom/android/server/ConnectivityService;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/ConnectivityService$WifiDisconnectManager;IILandroid/net/NetworkInfo;Landroid/net/NetworkStateTracker;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 3703
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->reconnect(IILandroid/net/NetworkInfo;Landroid/net/NetworkStateTracker;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/ConnectivityService$WifiDisconnectManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3703
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->handleConnect(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/ConnectivityService$WifiDisconnectManager;Landroid/net/NetworkInfo;Landroid/net/NetworkInfo$State;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 3703
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->handleConnecting(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo$State;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/ConnectivityService$WifiDisconnectManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 3703
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->mShouldShutdownMobile:Z

    return v0
.end method

.method static synthetic access$4302(Lcom/android/server/ConnectivityService$WifiDisconnectManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3703
    iput-boolean p1, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->mShouldShutdownMobile:Z

    return p1
.end method

.method static synthetic access$4402(Lcom/android/server/ConnectivityService$WifiDisconnectManager;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3703
    iput-object p1, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->mWifiToPdpDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/android/server/ConnectivityService$WifiDisconnectManager;)Landroid/net/NetworkStateTracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3703
    iget-object v0, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->mSwitchToNet:Landroid/net/NetworkStateTracker;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/server/ConnectivityService$WifiDisconnectManager;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 3703
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->checkUserChoice(ZZ)V

    return-void
.end method

.method private checkUserChoice(ZZ)V
    .locals 3
    .parameter "rememberChoice"
    .parameter "enableDataConnect"

    .prologue
    .line 3825
    const/4 v0, 0x0

    .line 3826
    .local v0, showPopState:I
    if-eqz p1, :cond_1

    .line 3827
    if-eqz p2, :cond_0

    .line 3829
    const/4 v0, 0x1

    .line 3838
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkUserChoice showPopState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", enableDataConnect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$300(Ljava/lang/String;)V

    .line 3841
    iget-object v1, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$1100(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_to_pdp"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3842
    return-void

    .line 3832
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 3835
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createSwitchToPdpWarning()Landroid/app/AlertDialog;
    .locals 7

    .prologue
    .line 3777
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$1100(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x206005c

    invoke-direct {v0, v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 3780
    .local v0, buider:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x207001e

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 3782
    .local v3, view:Landroid/view/View;
    const v4, 0x20d001e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 3784
    .local v1, checkBox:Landroid/widget/CheckBox;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 3786
    const v4, 0x2020010

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3787
    const v4, 0x1080027

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 3788
    const v4, 0x104000a

    new-instance v5, Lcom/android/server/ConnectivityService$WifiDisconnectManager$2;

    invoke-direct {v5, p0, v1}, Lcom/android/server/ConnectivityService$WifiDisconnectManager$2;-><init>(Lcom/android/server/ConnectivityService$WifiDisconnectManager;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3804
    const/high16 v4, 0x104

    new-instance v5, Lcom/android/server/ConnectivityService$WifiDisconnectManager$3;

    invoke-direct {v5, p0, v1}, Lcom/android/server/ConnectivityService$WifiDisconnectManager$3;-><init>(Lcom/android/server/ConnectivityService$WifiDisconnectManager;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3813
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 3814
    .local v2, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d8

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 3815
    return-object v2
.end method

.method private getAirplaneModeEnable()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3737
    iget-object v2, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$1100(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 3740
    .local v0, retVal:Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAirplaneModeEnable returning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$300(Ljava/lang/String;)V

    .line 3742
    return v0

    .end local v0           #retVal:Z
    :cond_0
    move v0, v1

    .line 3737
    goto :goto_0
.end method

.method private handleConnect(I)V
    .locals 2
    .parameter "netType"

    .prologue
    const/4 v1, 0x1

    .line 3889
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->REMIND_WIFI_TO_PDP:Z

    if-eqz v0, :cond_1

    .line 3890
    if-ne p1, v1, :cond_1

    .line 3891
    iget-object v0, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->mWifiToPdpDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 3895
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->mShouldShutdownMobile:Z

    .line 3896
    iget-object v0, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->mWifiToPdpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3901
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->mIsWifiConnectedOrConnecting:Z

    .line 3904
    :cond_1
    return-void
.end method

.method private handleConnecting(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo$State;)V
    .locals 2
    .parameter "info"
    .parameter "state"

    .prologue
    const/4 v1, 0x1

    .line 3913
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->REMIND_WIFI_TO_PDP:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne p2, v0, :cond_0

    .line 3915
    iget-object v0, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->mWifiToPdpDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 3919
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->mShouldShutdownMobile:Z

    .line 3920
    iget-object v0, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->mWifiToPdpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3924
    iput-boolean v1, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->mIsWifiConnectedOrConnecting:Z

    .line 3927
    :cond_0
    return-void
.end method

.method private reconnect(IILandroid/net/NetworkInfo;Landroid/net/NetworkStateTracker;)V
    .locals 5
    .parameter "prevNetType"
    .parameter "checkType"
    .parameter "checkInfo"
    .parameter "checkTracker"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3849
    iget-boolean v1, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->REMIND_WIFI_TO_PDP:Z

    if-eqz v1, :cond_4

    .line 3850
    if-ne p1, v4, :cond_3

    iget-object v1, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, v1, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v1, v1, p2

    iget v1, v1, Landroid/net/NetworkConfig;->radio:I

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->getAirplaneModeEnable()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v1}, Lcom/android/server/ConnectivityService;->getMobileDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p3}, Landroid/net/NetworkInfo;->isConnectedOrConnectingOrSuspended()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3854
    iget-boolean v1, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->mIsWifiConnectedOrConnecting:Z

    if-eqz v1, :cond_0

    .line 3855
    iget-object v1, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$1100(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_to_pdp"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3857
    .local v0, value:I
    if-nez v0, :cond_1

    .line 3859
    iput-object p4, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->mSwitchToNet:Landroid/net/NetworkStateTracker;

    .line 3860
    invoke-direct {p0}, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->createSwitchToPdpWarning()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->mWifiToPdpDialog:Landroid/app/AlertDialog;

    .line 3861
    iget-object v1, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->mWifiToPdpDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->mSwitchPdpListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3862
    iget-object v1, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->mWifiToPdpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 3864
    iput-boolean v3, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->mIsWifiConnectedOrConnecting:Z

    .line 3882
    .end local v0           #value:I
    :cond_0
    :goto_0
    return-void

    .line 3865
    .restart local v0       #value:I
    :cond_1
    if-ne v0, v4, :cond_2

    .line 3866
    invoke-interface {p4}, Landroid/net/NetworkStateTracker;->reconnect()Z

    goto :goto_0

    .line 3871
    :cond_2
    iget-object v1, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v1

    aget-object v1, v1, v3

    check-cast v1, Landroid/net/MobileDataStateTracker;

    invoke-virtual {v1}, Landroid/net/MobileDataStateTracker;->resetApn()V

    .line 3872
    iget-object v1, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v1, v3}, Lcom/android/server/ConnectivityService;->setMobileDataEnabled(Z)V

    goto :goto_0

    .line 3877
    .end local v0           #value:I
    :cond_3
    invoke-interface {p4}, Landroid/net/NetworkStateTracker;->reconnect()Z

    goto :goto_0

    .line 3880
    :cond_4
    invoke-interface {p4}, Landroid/net/NetworkStateTracker;->reconnect()Z

    goto :goto_0
.end method
