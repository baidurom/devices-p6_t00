.class public Lcom/huawei/android/hwpowermanager/PowerManagerApp;
.super Landroid/app/Application;
.source "PowerManagerApp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 25
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 26
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.huawei.HwPowerManager.BgService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/huawei/android/hwpowermanager/PowerManagerApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 27
    return-void
.end method
