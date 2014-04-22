.class Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$2;
.super Ljava/lang/Object;
.source "HwPowerManagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->setupModeView()V
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
    .line 220
    iput-object p1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$2;->this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$2;->this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    #calls: Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->actionModeChanged(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->access$100(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;Landroid/view/View;)V

    .line 223
    return-void
.end method
