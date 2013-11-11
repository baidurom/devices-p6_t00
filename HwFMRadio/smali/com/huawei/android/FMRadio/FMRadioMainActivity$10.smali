.class Lcom/huawei/android/FMRadio/FMRadioMainActivity$10;
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

.field final synthetic val$stationName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/huawei/android/FMRadio/FMRadioMainActivity;ILjava/lang/String;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$10;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    iput p2, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$10;->val$frequency:I

    iput-object p3, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$10;->val$stationName:Ljava/lang/String;

    iput-object p4, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$10;->val$mShowAutoTuneDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 333
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$10;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$000(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$10;->val$frequency:I

    iget-object v2, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$10;->val$stationName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/huawei/android/FMRadio/RenameDialog;->newInstance(Landroid/content/Context;ILjava/lang/String;)Lcom/huawei/android/FMRadio/RenameDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$10;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #getter for: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->mInputResultListener:Lcom/huawei/android/FMRadio/RenameDialog$OnInputResultListener;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$800(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)Lcom/huawei/android/FMRadio/RenameDialog$OnInputResultListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/FMRadio/RenameDialog;->setOnInputResultListener(Lcom/huawei/android/FMRadio/RenameDialog$OnInputResultListener;)V

    .line 335
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$10;->this$0:Lcom/huawei/android/FMRadio/FMRadioMainActivity;

    #calls: Lcom/huawei/android/FMRadio/FMRadioMainActivity;->refreshCollect()V
    invoke-static {v0}, Lcom/huawei/android/FMRadio/FMRadioMainActivity;->access$900(Lcom/huawei/android/FMRadio/FMRadioMainActivity;)V

    .line 336
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioMainActivity$10;->val$mShowAutoTuneDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 337
    return-void
.end method
