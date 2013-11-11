.class Lcom/huawei/android/FMRadio/FMRadioService$6;
.super Landroid/os/Handler;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/FMRadio/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/FMRadio/FMRadioService;


# direct methods
.method constructor <init>(Lcom/huawei/android/FMRadio/FMRadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 579
    iput-object p1, p0, Lcom/huawei/android/FMRadio/FMRadioService$6;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 584
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 597
    :goto_0
    return-void

    .line 586
    :pswitch_0
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioService$6;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/huawei/android/FMRadio/FMRadioService;->access$900(Lcom/huawei/android/FMRadio/FMRadioService;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080027

    invoke-static {v0, v1, v2}, Lcom/huawei/android/FMRadio/CommonUI;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 589
    :pswitch_1
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioService$6;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/huawei/android/FMRadio/FMRadioService;->access$900(Lcom/huawei/android/FMRadio/FMRadioService;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080047

    invoke-static {v0, v1, v2}, Lcom/huawei/android/FMRadio/CommonUI;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 592
    :pswitch_2
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioService$6;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/huawei/android/FMRadio/FMRadioService;->access$900(Lcom/huawei/android/FMRadio/FMRadioService;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080039

    invoke-static {v0, v1, v2}, Lcom/huawei/android/FMRadio/CommonUI;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 584
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
