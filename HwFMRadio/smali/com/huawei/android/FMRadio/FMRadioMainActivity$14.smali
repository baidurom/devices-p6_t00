.class Lcom/huawei/android/FMRadio/FMRadioMainActivity$14;
.super Landroid/os/Handler;
.source "FMRadioMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/FMRadio/FMRadioMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;


# direct methods
.method constructor <init>(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 785
    iput-object p1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$14;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 788
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 799
    :cond_0
    :goto_0
    return-void

    .line 791
    :pswitch_0
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$14;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mOnTop:Z
    invoke-static {v0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$1300(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$14;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #calls: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->refreshViews()V
    invoke-static {v0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$1500(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)V

    goto :goto_0

    .line 788
    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_0
    .end packed-switch
.end method
