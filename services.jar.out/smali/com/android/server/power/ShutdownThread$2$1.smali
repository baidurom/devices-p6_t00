.class Lcom/android/server/power/ShutdownThread$2$1;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread$2;

.field final synthetic val$done:[Z


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread$2;[Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 276
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$2$1;->this$0:Lcom/android/server/power/ShutdownThread$2;

    iput-object p2, p0, Lcom/android/server/power/ShutdownThread$2$1;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 279
    const-string v2, "ShutdownThread"

    const-string v3, " before setModemPower(false)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 282
    .local v1, modePhone:Lcom/android/internal/telephony/ITelephony;
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->setModemPower(Z)V

    .line 283
    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$2$1;->val$done:[Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput-boolean v4, v2, v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :goto_0
    const-string v2, "ShutdownThread"

    const-string v3, " after setModemPower(false)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return-void

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
