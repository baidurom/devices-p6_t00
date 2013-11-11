.class Lcom/huawei/android/FMRadio/SleepDialog$3;
.super Ljava/lang/Object;
.source "SleepDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 142
    iput-object p1, p0, Lcom/huawei/android/FMRadio/SleepDialog$3;->this$0:Lcom/huawei/android/FMRadio/SleepDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/huawei/android/FMRadio/SleepDialog$3;->this$0:Lcom/huawei/android/FMRadio/SleepDialog;

    #getter for: Lcom/huawei/android/FMRadio/SleepDialog;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/huawei/android/FMRadio/SleepDialog;->access$400(Lcom/huawei/android/FMRadio/SleepDialog;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 147
    return-void
.end method
