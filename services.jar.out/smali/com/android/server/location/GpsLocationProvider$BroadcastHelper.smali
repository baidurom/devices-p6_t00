.class Lcom/android/server/location/GpsLocationProvider$BroadcastHelper;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BroadcastHelper"
.end annotation


# instance fields
.field innerBroadcastReciever:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 1
    .parameter

    .prologue
    .line 1838
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$BroadcastHelper;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1839
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$BroadcastHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/GpsLocationProvider$BroadcastHelper$1;-><init>(Lcom/android/server/location/GpsLocationProvider$BroadcastHelper;Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider$BroadcastHelper;->innerBroadcastReciever:Landroid/content/BroadcastReceiver;

    .line 1848
    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/location/GpsLocationProvider$BroadcastHelper;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1835
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider$BroadcastHelper;->checkAGpsServer(Landroid/content/Intent;)V

    return-void
.end method

.method private checkAGpsServer(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    .line 1864
    const-string v3, "supl_host"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1865
    .local v1, supl_host:Ljava/lang/String;
    const-string v3, "supl_port"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1868
    .local v2, supl_port:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1869
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$BroadcastHelper;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #setter for: Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;
    invoke-static {v3, v1}, Lcom/android/server/location/GpsLocationProvider;->access$2802(Lcom/android/server/location/GpsLocationProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 1871
    :try_start_0
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$BroadcastHelper;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    #setter for: Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I
    invoke-static {v3, v4}, Lcom/android/server/location/GpsLocationProvider;->access$2902(Lcom/android/server/location/GpsLocationProvider;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1875
    :goto_0
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$BroadcastHelper;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z
    invoke-static {v3}, Lcom/android/server/location/GpsLocationProvider;->access$3000(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v3

    if-ne v6, v3, :cond_0

    .line 1876
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$BroadcastHelper;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$BroadcastHelper;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/location/GpsLocationProvider;->access$2800(Lcom/android/server/location/GpsLocationProvider;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$BroadcastHelper;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$2900(Lcom/android/server/location/GpsLocationProvider;)I

    move-result v5

    #calls: Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V
    invoke-static {v3, v6, v4, v5}, Lcom/android/server/location/GpsLocationProvider;->access$3100(Lcom/android/server/location/GpsLocationProvider;ILjava/lang/String;I)V

    .line 1879
    :cond_0
    return-void

    .line 1872
    :catch_0
    move-exception v0

    .line 1873
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unable to parse SUPL_PORT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public init()V
    .locals 3

    .prologue
    .line 1851
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1852
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_AGPS_SERVERS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1853
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$BroadcastHelper;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/location/GpsLocationProvider;->access$400(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$BroadcastHelper;->innerBroadcastReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1854
    return-void
.end method
