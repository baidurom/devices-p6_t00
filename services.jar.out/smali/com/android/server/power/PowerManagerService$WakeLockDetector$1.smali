.class Lcom/android/server/power/PowerManagerService$WakeLockDetector$1;
.super Ljava/util/TimerTask;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/PowerManagerService$WakeLockDetector;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/power/PowerManagerService$WakeLockDetector;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService$WakeLockDetector;)V
    .locals 0
    .parameter

    .prologue
    .line 3148
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector$1;->this$1:Lcom/android/server/power/PowerManagerService$WakeLockDetector;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3152
    const-string v1, "PowerManagerService"

    const-string v2, "WakeLockDetector schedule is running"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3155
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector$1;->this$1:Lcom/android/server/power/PowerManagerService$WakeLockDetector;

    #calls: Lcom/android/server/power/PowerManagerService$WakeLockDetector;->generateTarget()I
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->access$4000(Lcom/android/server/power/PowerManagerService$WakeLockDetector;)I

    .line 3156
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$WakeLockDetector$1;->this$1:Lcom/android/server/power/PowerManagerService$WakeLockDetector;

    #calls: Lcom/android/server/power/PowerManagerService$WakeLockDetector;->handleTarget()V
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService$WakeLockDetector;->access$4100(Lcom/android/server/power/PowerManagerService$WakeLockDetector;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3160
    :goto_0
    return-void

    .line 3157
    :catch_0
    move-exception v0

    .line 3158
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
