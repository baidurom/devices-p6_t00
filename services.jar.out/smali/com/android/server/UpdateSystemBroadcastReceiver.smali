.class public Lcom/android/server/UpdateSystemBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UpdateSystemBroadcastReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UpdateSystemBroadcastReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 30
    const-string v0, "UpdateSystemBroadcastReceiver"

    const-string v1, "UpdateSystemBroadcastReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 36
    :try_start_0
    invoke-static {p1}, Landroid/os/RecoverySystem;->rebootSystemUpdate(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
