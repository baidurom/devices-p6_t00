.class Landroid/webkit/WebViewClassic$AcceleratorListener;
.super Landroid/content/BroadcastReceiver;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AcceleratorListener"
.end annotation


# instance fields
.field deviceImei:Ljava/lang/String;

.field imageQuality:I

.field mExtraInfo:Ljava/lang/StringBuffer;

.field proxyAddress:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2024
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2029
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewClassic$AcceleratorListener;->mExtraInfo:Ljava/lang/StringBuffer;

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebViewClassic$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2024
    invoke-direct {p0}, Landroid/webkit/WebViewClassic$AcceleratorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 2033
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.huawei.android.accelerator.client.status"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2034
    const-string/jumbo v0, "what"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_2

    .line 2036
    #calls: Landroid/webkit/WebViewClassic;->nativeSetSpdy(ZZ)V
    invoke-static {v2, v4}, Landroid/webkit/WebViewClassic;->access$1800(ZZ)V

    .line 2037
    sput-boolean v2, Landroid/webkit/WebViewClassic;->IS_ACCELERATOR_OPEN:Z

    .line 2038
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$2000()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Landroid/webkit/WebViewClassic;->access$1900()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2039
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$2000()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Landroid/webkit/WebViewClassic;->access$2100()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2041
    const-string v0, "image_quality"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebViewClassic$AcceleratorListener;->imageQuality:I

    .line 2042
    const-string v0, "acc_server_addr_port"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebViewClassic$AcceleratorListener;->proxyAddress:Ljava/lang/String;

    .line 2043
    const-string/jumbo v0, "network_type"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$2202(Ljava/lang/String;)Ljava/lang/String;

    .line 2044
    const-string v0, "device_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebViewClassic$AcceleratorListener;->deviceImei:Ljava/lang/String;

    .line 2045
    iget-object v0, p0, Landroid/webkit/WebViewClassic$AcceleratorListener;->proxyAddress:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/webkit/WebViewClassic;->access$2200()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/WebViewClassic$AcceleratorListener;->deviceImei:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2047
    iget-object v0, p0, Landroid/webkit/WebViewClassic$AcceleratorListener;->mExtraInfo:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 2048
    iget-object v0, p0, Landroid/webkit/WebViewClassic$AcceleratorListener;->mExtraInfo:Ljava/lang/StringBuffer;

    invoke-static {}, Landroid/webkit/WebViewClassic;->access$2200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2049
    iget-object v0, p0, Landroid/webkit/WebViewClassic$AcceleratorListener;->mExtraInfo:Ljava/lang/StringBuffer;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2050
    iget-object v0, p0, Landroid/webkit/WebViewClassic$AcceleratorListener;->mExtraInfo:Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/webkit/WebViewClassic$AcceleratorListener;->deviceImei:Ljava/lang/String;

    #calls: Landroid/webkit/WebViewClassic;->getMD5(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$2300(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2051
    const-string v0, "InitalParams"

    iget-object v1, p0, Landroid/webkit/WebViewClassic$AcceleratorListener;->mExtraInfo:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    iget v0, p0, Landroid/webkit/WebViewClassic$AcceleratorListener;->imageQuality:I

    iget-object v1, p0, Landroid/webkit/WebViewClassic$AcceleratorListener;->proxyAddress:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/WebViewClassic$AcceleratorListener;->mExtraInfo:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/webkit/WebViewClassic;->nativeSetClientParams(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Landroid/webkit/WebViewClassic;->access$2400(ILjava/lang/String;Ljava/lang/String;)V

    .line 2083
    :cond_0
    :goto_0
    return-void

    .line 2054
    :cond_1
    const-string/jumbo v0, "webview"

    const-string v1, "Inital Client Params Error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2056
    :cond_2
    const-string/jumbo v0, "what"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    .line 2058
    #calls: Landroid/webkit/WebViewClassic;->nativeSetSpdy(ZZ)V
    invoke-static {v4, v2}, Landroid/webkit/WebViewClassic;->access$1800(ZZ)V

    .line 2059
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$2000()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Landroid/webkit/WebViewClassic;->access$1900()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2060
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$2000()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Landroid/webkit/WebViewClassic;->access$2100()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2061
    sput-boolean v4, Landroid/webkit/WebViewClassic;->IS_ACCELERATOR_OPEN:Z

    goto :goto_0

    .line 2063
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.huawei.android.accelerator.client.param"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2064
    const-string/jumbo v0, "what"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x66

    if-ne v0, v1, :cond_0

    .line 2065
    const-string v0, "image_quality"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebViewClassic$AcceleratorListener;->imageQuality:I

    .line 2066
    const-string v0, "acc_server_addr_port"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebViewClassic$AcceleratorListener;->proxyAddress:Ljava/lang/String;

    .line 2067
    const-string/jumbo v0, "network_type"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$2202(Ljava/lang/String;)Ljava/lang/String;

    .line 2068
    const-string v0, "device_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebViewClassic$AcceleratorListener;->deviceImei:Ljava/lang/String;

    .line 2069
    iget-object v0, p0, Landroid/webkit/WebViewClassic$AcceleratorListener;->proxyAddress:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/webkit/WebViewClassic;->access$2200()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/webkit/WebViewClassic$AcceleratorListener;->deviceImei:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 2071
    iget-object v0, p0, Landroid/webkit/WebViewClassic$AcceleratorListener;->mExtraInfo:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 2072
    iget-object v0, p0, Landroid/webkit/WebViewClassic$AcceleratorListener;->mExtraInfo:Ljava/lang/StringBuffer;

    invoke-static {}, Landroid/webkit/WebViewClassic;->access$2200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2073
    iget-object v0, p0, Landroid/webkit/WebViewClassic$AcceleratorListener;->mExtraInfo:Ljava/lang/StringBuffer;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2074
    iget-object v0, p0, Landroid/webkit/WebViewClassic$AcceleratorListener;->mExtraInfo:Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/webkit/WebViewClassic$AcceleratorListener;->deviceImei:Ljava/lang/String;

    #calls: Landroid/webkit/WebViewClassic;->getMD5(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$2300(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2077
    iget v0, p0, Landroid/webkit/WebViewClassic$AcceleratorListener;->imageQuality:I

    iget-object v1, p0, Landroid/webkit/WebViewClassic$AcceleratorListener;->proxyAddress:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/WebViewClassic$AcceleratorListener;->mExtraInfo:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/webkit/WebViewClassic;->nativeSetClientParams(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Landroid/webkit/WebViewClassic;->access$2400(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2079
    :cond_4
    const-string/jumbo v0, "webview"

    const-string v1, "Change Client Params Error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
