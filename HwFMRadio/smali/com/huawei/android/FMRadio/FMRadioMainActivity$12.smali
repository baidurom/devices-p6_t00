.class Lcom/huawei/android/FMRadio/FMRadioMainActivity$12;
.super Ljava/lang/Object;
.source "FMRadioMainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/android/FMRadio/FMRadioMainActivity;->showChooserDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

.field final synthetic val$frequencyPicker:Lcom/huawei/android/FMRadio/FrequencyPicker;


# direct methods
.method constructor <init>(Lcom/huawei/android/FMRadio/FMRadioMainActivity;Lcom/huawei/android/FMRadio/FrequencyPicker;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 605
    iput-object p1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$12;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    iput-object p2, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$12;->val$frequencyPicker:Lcom/huawei/android/FMRadio/FrequencyPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 608
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$12;->val$frequencyPicker:Lcom/huawei/android/FMRadio/FrequencyPicker;

    invoke-virtual {v1}, Lcom/huawei/android/FMRadio/FrequencyPicker;->getCurrentFrequency()I

    move-result v0

    .line 609
    .local v0, frequency:I
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$12;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mCurFrequency:I
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$400(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 610
    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$12;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$000(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$12;->val$frequencyPicker:Lcom/huawei/android/FMRadio/FrequencyPicker;

    invoke-virtual {v2}, Lcom/huawei/android/FMRadio/FrequencyPicker;->getCurrentFrequency()I

    move-result v2

    iget-object v3, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$12;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mWaitingDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$200(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$12;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mMainHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$300(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/huawei/android/FMRadio/FMRadioUtils;->play(Landroid/content/Context;ILandroid/app/ProgressDialog;Landroid/os/Handler;)Z

    .line 613
    :cond_0
    return-void
.end method
