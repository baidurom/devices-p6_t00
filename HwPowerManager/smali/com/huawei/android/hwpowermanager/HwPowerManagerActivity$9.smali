.class Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$9;
.super Ljava/lang/Object;
.source "HwPowerManagerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->actionModeChanged(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

.field final synthetic val$modeNum:I


# direct methods
.method constructor <init>(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 359
    iput-object p1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$9;->this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    iput p2, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$9;->val$modeNum:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 365
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$9;->this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    iget v2, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$9;->val$modeNum:I

    #calls: Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->changeModeRadioView(I)V
    invoke-static {v1, v2}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->access$200(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;I)V

    .line 368
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$9;->this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    invoke-static {v1}, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->getInstance(Landroid/content/Context;)Lcom/huawei/android/hwpowermanager/model/ChangeMode;

    move-result-object v0

    .line 369
    .local v0, changeMode:Lcom/huawei/android/hwpowermanager/model/ChangeMode;
    iget v1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$9;->val$modeNum:I

    invoke-virtual {v0, v1}, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->change(I)V

    .line 370
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$9;->this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    iget v2, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$9;->val$modeNum:I

    #setter for: Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mSaveMode:I
    invoke-static {v1, v2}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->access$302(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;I)I

    .line 371
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$9;->this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    #calls: Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->updateTime()V
    invoke-static {v1}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->access$400(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)V

    .line 372
    return-void
.end method
