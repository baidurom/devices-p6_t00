.class Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$11;
.super Ljava/lang/Object;
.source "HwPowerManagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;
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
    .line 759
    iput-object p1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$11;->this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 763
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$11;->this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    #calls: Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->showBatteryInfoDialog()V
    invoke-static {v0}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->access$2000(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)V

    .line 765
    return-void
.end method
