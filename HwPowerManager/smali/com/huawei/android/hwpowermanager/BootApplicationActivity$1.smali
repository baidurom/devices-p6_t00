.class Lcom/huawei/android/hwpowermanager/BootApplicationActivity$1;
.super Ljava/lang/Object;
.source "BootApplicationActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/hwpowermanager/BootApplicationActivity;


# direct methods
.method constructor <init>(Lcom/huawei/android/hwpowermanager/BootApplicationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$1;->this$0:Lcom/huawei/android/hwpowermanager/BootApplicationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 126
    if-eqz p2, :cond_0

    .line 127
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$1;->this$0:Lcom/huawei/android/hwpowermanager/BootApplicationActivity;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->changeSwitchStatus(Ljava/lang/Boolean;)V

    .line 132
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$1;->this$0:Lcom/huawei/android/hwpowermanager/BootApplicationActivity;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity;->changeSwitchStatus(Ljava/lang/Boolean;)V

    goto :goto_0
.end method
