.class Lcom/huawei/android/FMRadio/FMRadioMainActivity$11;
.super Ljava/lang/Object;
.source "FMRadioMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/android/FMRadio/FMRadioMainActivity;->onCollectItemLongClick(ILcom/huawei/android/FMRadio/ItemHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

.field final synthetic val$frequency:I

.field final synthetic val$mShowAutoTuneDialog:Landroid/app/AlertDialog;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/huawei/android/FMRadio/FMRadioMainActivity;IILandroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 340
    iput-object p1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$11;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    iput p2, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$11;->val$frequency:I

    iput p3, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$11;->val$position:I

    iput-object p4, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$11;->val$mShowAutoTuneDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$11;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$000(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$11;->val$frequency:I

    const/4 v2, 0x0

    iget v3, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$11;->val$position:I

    invoke-static {v0, v1, v2, v3}, Lcom/huawei/android/FMRadio/FMRadioUtils;->doUpdateCollectStatus(Landroid/content/Context;IZI)Z

    .line 345
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$11;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #calls: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->refreshCollect()V
    invoke-static {v0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$900(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)V

    .line 346
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$11;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$000(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080038

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/huawei/android/FMRadio/CommonUI;->showToast(Landroid/content/Context;II)V

    .line 348
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$11;->val$mShowAutoTuneDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 349
    return-void
.end method
