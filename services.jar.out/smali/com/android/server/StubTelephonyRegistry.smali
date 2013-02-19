.class Lcom/android/server/StubTelephonyRegistry;
.super Lcom/android/server/TelephonyRegistry;
.source "StubTelephonyRegistry.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StubTelephonyRegistry"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLocationPermission:Lcom/huawei/permission/LocationPermission;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object p1, p0, Lcom/android/server/StubTelephonyRegistry;->mContext:Landroid/content/Context;

    .line 30
    new-instance v0, Lcom/huawei/permission/LocationPermission;

    iget-object v1, p0, Lcom/android/server/StubTelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/huawei/permission/LocationPermission;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/StubTelephonyRegistry;->mLocationPermission:Lcom/huawei/permission/LocationPermission;

    .line 31
    return-void
.end method


# virtual methods
.method public listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    .locals 1
    .parameter "pkgForDebug"
    .parameter "callback"
    .parameter "events"
    .parameter "notifyNow"

    .prologue
    .line 36
    and-int/lit8 v0, p3, 0x10

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/android/server/StubTelephonyRegistry;->mLocationPermission:Lcom/huawei/permission/LocationPermission;

    invoke-virtual {v0}, Lcom/huawei/permission/LocationPermission;->isLocationBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    and-int/lit8 p3, p3, -0x11

    .line 44
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/TelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    .line 45
    return-void
.end method
