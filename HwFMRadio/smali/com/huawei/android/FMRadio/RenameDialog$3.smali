.class Lcom/huawei/android/FMRadio/RenameDialog$3;
.super Ljava/util/TimerTask;
.source "RenameDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/android/FMRadio/RenameDialog;->openInputMethod()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/FMRadio/RenameDialog;


# direct methods
.method constructor <init>(Lcom/huawei/android/FMRadio/RenameDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/huawei/android/FMRadio/RenameDialog$3;->this$0:Lcom/huawei/android/FMRadio/RenameDialog;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 169
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 171
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/huawei/android/FMRadio/RenameDialog$3;->this$0:Lcom/huawei/android/FMRadio/RenameDialog;

    #getter for: Lcom/huawei/android/FMRadio/RenameDialog;->mEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/huawei/android/FMRadio/RenameDialog;->access$100(Lcom/huawei/android/FMRadio/RenameDialog;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 173
    return-void
.end method
