.class Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$1;
.super Ljava/lang/Object;
.source "HwPowerManagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;


# direct methods
.method constructor <init>(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$1;->this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 187
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$1;->this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    const/4 v2, 0x1

    #setter for: Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mFlagClearApps:Z
    invoke-static {v1, v2}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->access$002(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;Z)Z

    .line 189
    new-instance v0, Landroid/content/Intent;

    const-string v1, "huawei.intent.action.SMART_POWER_CLEAR_APPS_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 190
    .local v0, action:Landroid/content/Intent;
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$1;->this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    invoke-virtual {v1, v0}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 191
    return-void
.end method
