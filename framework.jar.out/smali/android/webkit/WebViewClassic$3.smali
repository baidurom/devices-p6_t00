.class Landroid/webkit/WebViewClassic$3;
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
    .line 2118
    iput-object p1, p0, Landroid/webkit/WebViewClassic$3;->this$0:Landroid/webkit/WebViewClassic;

    iput-object p2, p0, Landroid/webkit/WebViewClassic$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 2121
    new-instance v3, Landroid/content/ComponentName;

    const-string v6, "com.huawei.android.accelerator.client"

    const-string v7, "com.huawei.android.accelerator.client.service.ResponseService"

    invoke-direct {v3, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2123
    .local v3, notifyComponent:Landroid/content/ComponentName;
    #calls: Landroid/webkit/WebViewClassic;->nativeCheckTimeout()Z
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$2700()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2125
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 2126
    .local v5, reportIntent:Landroid/content/Intent;
    invoke-virtual {v5, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2127
    const-string/jumbo v6, "what"

    const/16 v7, 0xf

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2128
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyyMMddHHmmss"

    invoke-direct {v0, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2129
    .local v0, dateFormat:Ljava/text/SimpleDateFormat;
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 2130
    .local v2, formatTime:Ljava/lang/String;
    const-string v6, "exception_time"

    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2131
    const-string v6, "exception_reason"

    const-string v7, "1000"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2132
    const-string/jumbo v6, "network_type"

    invoke-static {}, Landroid/webkit/WebViewClassic;->access$2200()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2133
    const-string v6, "exception_address"

    const-string/jumbo v7, "www.fastascend.com:8080"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2135
    :try_start_0
    iget-object v6, p0, Landroid/webkit/WebViewClassic$3;->val$context:Landroid/content/Context;

    invoke-virtual {v6, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2140
    .end local v0           #dateFormat:Ljava/text/SimpleDateFormat;
    .end local v2           #formatTime:Ljava/lang/String;
    .end local v5           #reportIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    #calls: Landroid/webkit/WebViewClassic;->nativeCheckSpdyState()Z
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$2800()Z

    move-result v6

    if-nez v6, :cond_1

    .line 2142
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 2143
    .local v4, notifyIntent:Landroid/content/Intent;
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2144
    const-string/jumbo v6, "what"

    const/16 v7, 0xd

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2146
    :try_start_1
    iget-object v6, p0, Landroid/webkit/WebViewClassic$3;->val$context:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2151
    .end local v4           #notifyIntent:Landroid/content/Intent;
    :cond_1
    :goto_1
    invoke-static {}, Landroid/webkit/WebViewClassic;->access$2000()Landroid/os/Handler;

    move-result-object v6

    const-wide/16 v7, 0x7530

    invoke-virtual {v6, p0, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2152
    return-void

    .line 2136
    .restart local v0       #dateFormat:Ljava/text/SimpleDateFormat;
    .restart local v2       #formatTime:Ljava/lang/String;
    .restart local v5       #reportIntent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 2137
    .local v1, e:Ljava/lang/SecurityException;
    const-string/jumbo v6, "webview"

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2147
    .end local v0           #dateFormat:Ljava/text/SimpleDateFormat;
    .end local v1           #e:Ljava/lang/SecurityException;
    .end local v2           #formatTime:Ljava/lang/String;
    .end local v5           #reportIntent:Landroid/content/Intent;
    .restart local v4       #notifyIntent:Landroid/content/Intent;
    :catch_1
    move-exception v1

    .line 2148
    .restart local v1       #e:Ljava/lang/SecurityException;
    const-string/jumbo v6, "webview"

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
