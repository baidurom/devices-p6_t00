.class Lcom/huawei/android/FMRadio/FMRadioMainActivity$6;
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
    .line 222
    iput-object p1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$6;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 225
    const-string v0, "FMRadioMainActivity"

    const-string v1, "mNextButton : OnClick"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$6;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->startManualTune(Z)V

    .line 227
    return-void
.end method
