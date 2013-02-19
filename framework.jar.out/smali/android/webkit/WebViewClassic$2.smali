.class Landroid/webkit/WebViewClassic$2;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebViewClassic;->setupAcceleratorListener(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebViewClassic;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewClassic;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2096
    iput-object p1, p0, Landroid/webkit/WebViewClassic$2;->this$0:Landroid/webkit/WebViewClassic;

    iput-object p2, p0, Landroid/webkit/WebViewClassic$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 2099
    const-wide/16 v0, 0x0

    .line 2100
    .local v0, count:J
    #calls: Landroid/webkit/WebViewClassic;->nativeGetFlowCounts()J
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$2500()J

    move-result-wide v0

    .line 2101
    const-wide/16 v5, 0x0

    cmp-long v5, v5, v0

    if-gez v5, :cond_0

    .line 2102
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 2103
    .local v4, reportIntent:Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v5, "com.huawei.android.accelerator.client"

    const-string v6, "com.huawei.android.accelerator.client.service.ResponseService"

    invoke-direct {v3, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2105
    .local v3, reportComponent:Landroid/content/ComponentName;
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2106
    const-string/jumbo v5, "what"

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2107
    const-string v5, "count"

    invoke-virtual {v4, v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2109
    :try_start_0
    iget-object v5, p0, Landroid/webkit/WebViewClassic$2;->val$context:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2113
    :goto_0
    #calls: Landroid/webkit/WebViewClassic;->nativeResetFlowCounts()V
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$2600()V

    .line 2115
    .end local v3           #reportComponent:Landroid/content/ComponentName;
    .end local v4           #reportIntent:Landroid/content/Intent;
    :cond_0
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$2000()Landroid/os/Handler;

    move-result-object v5

    const-wide/16 v6, 0x1388

    invoke-virtual {v5, p0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2116
    return-void

    .line 2110
    .restart local v3       #reportComponent:Landroid/content/ComponentName;
    .restart local v4       #reportIntent:Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 2111
    .local v2, e:Ljava/lang/SecurityException;
    const-string/jumbo v5, "webview"

    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
