.class Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$5;
.super Ljava/lang/Object;
.source "HwPowerManagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->setupConfigManagerView()V
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
    .line 291
    iput-object p1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$5;->this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$5;->this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    const-class v1, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;

    invoke-virtual {v0, v1}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->jumpToTargetActivity(Ljava/lang/Class;)V

    .line 296
    return-void
.end method
