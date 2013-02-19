.class public Lcom/broadcom/bt/service/framework/BluetoothAccessResponse;
.super Ljava/lang/Object;
.source "BluetoothAccessResponse.java"

# interfaces
.implements Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothAccessResponse"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public onProxyAvailable(Ljava/lang/Object;)V
    .locals 2
    .parameter "proxyObject"

    .prologue
    .line 49
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public process(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 2
    .parameter "ctx"
    .parameter "intent"
    .parameter "allow"

    .prologue
    .line 45
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
