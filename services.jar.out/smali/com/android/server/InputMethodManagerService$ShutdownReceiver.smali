.class Lcom/android/server/InputMethodManagerService$ShutdownReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShutdownReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 451
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$ShutdownReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 454
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$ShutdownReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iput-boolean v2, v0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    .line 457
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$ShutdownReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iput-boolean v2, v0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    .line 458
    const-string v0, "InputMethodManagerService"

    const-string v1, "ShutdownReceiver onReceive ACTION_SHUTDOWN----->mInputShown = false  mShowRequested = false"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_0
    return-void
.end method
