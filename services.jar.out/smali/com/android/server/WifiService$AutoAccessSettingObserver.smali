.class Lcom/android/server/WifiService$AutoAccessSettingObserver;
.super Landroid/database/ContentObserver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoAccessSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method public constructor <init>(Lcom/android/server/WifiService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 782
    iput-object p1, p0, Lcom/android/server/WifiService$AutoAccessSettingObserver;->this$0:Lcom/android/server/WifiService;

    .line 783
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 784
    return-void
.end method

.method private GetScanMode()I
    .locals 1

    .prologue
    .line 805
    invoke-direct {p0}, Lcom/android/server/WifiService$AutoAccessSettingObserver;->getValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method static synthetic access$3600(Lcom/android/server/WifiService$AutoAccessSettingObserver;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 781
    invoke-direct {p0}, Lcom/android/server/WifiService$AutoAccessSettingObserver;->GetScanMode()I

    move-result v0

    return v0
.end method

.method private getValue()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 798
    :try_start_0
    iget-object v2, p0, Lcom/android/server/WifiService$AutoAccessSettingObserver;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "connect_networks_automatic"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v2, v1, :cond_0

    .line 801
    :goto_0
    return v1

    .line 798
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 799
    :catch_0
    move-exception v0

    .line 800
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "WifiService"

    const-string v3, "Error AutoAccessSetting"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 792
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 793
    iget-object v0, p0, Lcom/android/server/WifiService$AutoAccessSettingObserver;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->updateWifiState()V
    invoke-static {v0}, Lcom/android/server/WifiService;->access$2000(Lcom/android/server/WifiService;)V

    .line 794
    const-string v0, "WifiService"

    const-string v1, "AutoAccessSettingObserver"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    return-void
.end method

.method public register()V
    .locals 3

    .prologue
    .line 786
    iget-object v1, p0, Lcom/android/server/WifiService$AutoAccessSettingObserver;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 787
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "connect_networks_automatic"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 789
    return-void
.end method
