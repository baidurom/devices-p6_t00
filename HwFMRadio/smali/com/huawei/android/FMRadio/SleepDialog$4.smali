.class Lcom/huawei/android/FMRadio/SleepDialog$4;
.super Ljava/lang/Object;
.source "SleepDialog.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/android/FMRadio/SleepDialog;->initDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/FMRadio/SleepDialog;


# direct methods
.method constructor <init>(Lcom/huawei/android/FMRadio/SleepDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/huawei/android/FMRadio/SleepDialog$4;->this$0:Lcom/huawei/android/FMRadio/SleepDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 165
    if-eqz p3, :cond_0

    .line 167
    iget-object v0, p0, Lcom/huawei/android/FMRadio/SleepDialog$4;->this$0:Lcom/huawei/android/FMRadio/SleepDialog;

    #setter for: Lcom/huawei/android/FMRadio/SleepDialog;->mCurSeekTime:I
    invoke-static {v0, p2}, Lcom/huawei/android/FMRadio/SleepDialog;->access$102(Lcom/huawei/android/FMRadio/SleepDialog;I)I

    .line 169
    iget-object v0, p0, Lcom/huawei/android/FMRadio/SleepDialog$4;->this$0:Lcom/huawei/android/FMRadio/SleepDialog;

    #calls: Lcom/huawei/android/FMRadio/SleepDialog;->refreshCurTextView()V
    invoke-static {v0}, Lcom/huawei/android/FMRadio/SleepDialog;->access$500(Lcom/huawei/android/FMRadio/SleepDialog;)V

    .line 171
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 160
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 155
    return-void
.end method
