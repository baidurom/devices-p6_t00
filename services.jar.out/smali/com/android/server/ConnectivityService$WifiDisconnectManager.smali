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

    .line 3696
    iput-object p1, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3698
    const-string v0, "ro.config.hw_RemindWifiToPdp"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->REMIND_WIFI_TO_PDP:Z

    .line 3699
    iput-object v2, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->mWifiToPdpDialog:Landroid/app/AlertDialog;

    .line 3701
    iput-object v2, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->mSwitchToNet:Landroid/net/NetworkStateTracker;

    .line 3709
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->mShouldShutdownMobile:Z

    .line 3716
    iput-boolean v1, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->mIsWifiConnectedOrConnecting:Z

    .line 3732
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
    .line 3696
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
    .line 3696
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->reconnect(IILandroid/net/NetworkInfo;Landroid/net/NetworkStateTracker;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/ConnectivityService$WifiDisconnectManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3696
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->handleConnect(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/ConnectivityService$WifiDisconnectManager;Landroid/net/NetworkInfo;Landroid/net/NetworkInfo$State;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 3696
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->handleConnecting(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo$State;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/ConnectivityService$WifiDisconnectManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 3696
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->mShouldShutdownMobile:Z

    return v0
.end method

.method static synthetic access$4302(Lcom/android/server/ConnectivityService$WifiDisconnectManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3696
    iput-boolean p1, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->mShouldShutdownMobile:Z

    return p1
.end method

.method static synthetic access$4402(Lcom/android/server/ConnectivityService$WifiDisconnectManager;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3696
    iput-object p1, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->mWifiToPdpDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/android/server/ConnectivityService$WifiDisconnectManager;)Landroid/net/NetworkStateTracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3696
    iget-object v0, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->mSwitchToNet:Landroid/net/NetworkStateTracker;

    return-object v0
.end method

.method private createSwitchToPdpWarning()Landroid/app/AlertDialog;
    .locals 4

    .prologue
    .line 3758
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$1100(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x206005c

    invoke-direct {v0, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 3760
    .local v0, buider:Landroid/app/AlertDialog$Builder;
    const v2, 0x2020010

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3761
    const v2, 0x2020011

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 3762
    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 3763
    const v2, 0x104000a

    new-instance v3, Lcom/android/server/ConnectivityService$WifiDisconnectManager$2;

    invoke-direct {v3, p0}, Lcom/android/server/ConnectivityService$WifiDisconnectManager$2;-><init>(Lcom/android/server/ConnectivityService$WifiDisconnectManager;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3777
    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3778
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 3779
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 3780
    return-object v1
.end method

.method private getAirplaneModeEnable()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3719
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

    .line 3722
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

    .line 3724
    return v0

    .end local v0           #retVal:Z
    :cond_0
    move v0, v1

    .line 3719
    goto :goto_0
.end method

.method private handleConnect(I)V
    .locals 2
    .parameter "netType"

    .prologue
    const/4 v1, 0x1

    .line 3815
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->REMIND_WIFI_TO_PDP:Z

    if-eqz v0, :cond_1

    .line 3816
    if-ne p1, v1, :cond_1

    .line 3817
    iget-object v0, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->mWifiToPdpDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 3821
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->mShouldShutdownMobile:Z

    .line 3822
    iget-object v0, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->mWifiToPdpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3827
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->mIsWifiConnectedOrConnecting:Z

    .line 3830
    :cond_1
    return-void
.end method

.method private handleConnecting(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo$State;)V
    .locals 2
    .parameter "info"
    .parameter "state"

    .prologue
    const/4 v1, 0x1

    .line 3839
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->REMIND_WIFI_TO_PDP:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne p2, v0, :cond_0

    .line 3841
    iget-object v0, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->mWifiToPdpDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 3845
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->mShouldShutdownMobile:Z

    .line 3846
    iget-object v0, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->mWifiToPdpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3850
    iput-boolean v1, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->mIsWifiConnectedOrConnecting:Z

    .line 3853
    :cond_0
    return-void
.end method

.method private reconnect(IILandroid/net/NetworkInfo;Landroid/net/NetworkStateTracker;)V
    .locals 2
    .parameter "prevNetType"
    .parameter "checkType"
    .parameter "checkInfo"
    .parameter "checkTracker"

    .prologue
    .line 3788
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->REMIND_WIFI_TO_PDP:Z

    if-eqz v0, :cond_2

    .line 3789
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v0, v0, p2

    iget v0, v0, Landroid/net/NetworkConfig;->radio:I

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->getAirplaneModeEnable()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v0}, Lcom/android/server/ConnectivityService;->getMobileDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Landroid/net/NetworkInfo;->isConnectedOrConnectingOrSuspended()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3793
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->mIsWifiConnectedOrConnecting:Z

    if-eqz v0, :cond_0

    .line 3795
    iput-object p4, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->mSwitchToNet:Landroid/net/NetworkStateTracker;

    .line 3796
    invoke-direct {p0}, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->createSwitchToPdpWarning()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->mWifiToPdpDialog:Landroid/app/AlertDialog;

    .line 3797
    iget-object v0, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->mWifiToPdpDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->mSwitchPdpListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3798
    iget-object v0, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->mWifiToPdpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3800
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ConnectivityService$WifiDisconnectManager;->mIsWifiConnectedOrConnecting:Z

    .line 3809
    :cond_0
    :goto_0
    return-void

    .line 3804
    :cond_1
    invoke-interface {p4}, Landroid/net/NetworkStateTracker;->reconnect()Z

    goto :goto_0

    .line 3807
    :cond_2
    invoke-interface {p4}, Landroid/net/NetworkStateTracker;->reconnect()Z

    goto :goto_0
.end method
