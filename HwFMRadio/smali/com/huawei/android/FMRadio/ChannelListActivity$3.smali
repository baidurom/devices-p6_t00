.class Lcom/huawei/android/FMRadio/ChannelListActivity$3;
.super Ljava/lang/Object;
.source "ChannelListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/android/FMRadio/ChannelListActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;


# direct methods
.method constructor <init>(Lcom/huawei/android/FMRadio/ChannelListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$3;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 318
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$3;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/huawei/android/FMRadio/ChannelListActivity;->startAutoTune(Z)V

    .line 319
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListActivity$3;->this$0:Lcom/huawei/android/FMRadio/ChannelListActivity;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListActivity;->mShowAutoTuneDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/huawei/android/FMRadio/ChannelListActivity;->access$300(Lcom/huawei/android/FMRadio/ChannelListActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 320
    return-void
.end method
