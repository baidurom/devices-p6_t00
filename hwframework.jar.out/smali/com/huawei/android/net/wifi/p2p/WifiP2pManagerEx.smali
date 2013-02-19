.class public Lcom/huawei/android/net/wifi/p2p/WifiP2pManagerEx;
.super Ljava/lang/Object;
.source "WifiP2pManagerEx.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setP2pDeviceName(Landroid/net/wifi/p2p/WifiP2pManager;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V
    .locals 2
    .parameter "obj"
    .parameter "name"
    .parameter "c"

    .prologue
    .line 111
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
