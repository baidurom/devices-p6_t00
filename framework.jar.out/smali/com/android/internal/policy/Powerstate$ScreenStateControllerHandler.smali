.class final Lcom/android/internal/policy/Powerstate$ScreenStateControllerHandler;
.super Landroid/os/Handler;
.source "Powerstate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/Powerstate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScreenStateControllerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/Powerstate;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/Powerstate;Landroid/os/Looper;)V
    .locals 2
    .parameter
    .parameter "looper"

    .prologue
    .line 966
    iput-object p1, p0, Lcom/android/internal/policy/Powerstate$ScreenStateControllerHandler;->this$0:Lcom/android/internal/policy/Powerstate;

    .line 967
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 968
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 972
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 977
    :goto_0
    return-void

    .line 974
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/Powerstate$ScreenStateControllerHandler;->this$0:Lcom/android/internal/policy/Powerstate;

    invoke-virtual {v0}, Lcom/android/internal/policy/Powerstate;->setInChargeScreenState()V

    goto :goto_0

    .line 972
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
