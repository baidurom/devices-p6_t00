.class Lcom/huawei/android/FMRadio/FMRadioMainActivity$2;
.super Ljava/lang/Object;
.source "FMRadioMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/android/FMRadio/FMRadioMainActivity;->initViews()V
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
    .line 168
    iput-object p1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$2;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 171
    const-string v0, "FMRadioMainActivity"

    const-string v1, "mHeadsetButton : OnClick"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$2;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #calls: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->switchSoundMode()V
    invoke-static {v0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$100(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)V

    .line 173
    return-void
.end method
