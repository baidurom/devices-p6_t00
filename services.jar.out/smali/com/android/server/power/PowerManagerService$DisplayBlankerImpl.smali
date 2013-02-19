.class final Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Lcom/android/server/power/DisplayBlanker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayBlankerImpl"
.end annotation


# instance fields
.field private mBlanked:Z

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 2987
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2987
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public blankAllDisplays()V
    .locals 1

    .prologue
    .line 2992
    monitor-enter p0

    .line 2993
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->mBlanked:Z

    .line 2994
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3700(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/display/DisplayManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService;->blankAllDisplaysFromPowerManager()V

    .line 2995
    const/4 v0, 0x0

    #calls: Lcom/android/server/power/PowerManagerService;->nativeSetInteractive(Z)V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3800(Z)V

    .line 2996
    const/4 v0, 0x1

    #calls: Lcom/android/server/power/PowerManagerService;->nativeSetAutoSuspend(Z)V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3900(Z)V

    .line 2997
    monitor-exit p0

    .line 2998
    return-void

    .line 2997
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3012
    monitor-enter p0

    .line 3013
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "blanked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->mBlanked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 3014
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unblankAllDisplays()V
    .locals 1

    .prologue
    .line 3002
    monitor-enter p0

    .line 3003
    const/4 v0, 0x0

    :try_start_0
    #calls: Lcom/android/server/power/PowerManagerService;->nativeSetAutoSuspend(Z)V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3900(Z)V

    .line 3004
    const/4 v0, 0x1

    #calls: Lcom/android/server/power/PowerManagerService;->nativeSetInteractive(Z)V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3800(Z)V

    .line 3005
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    #getter for: Lcom/android/server/power/PowerManagerService;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3700(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/display/DisplayManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService;->unblankAllDisplaysFromPowerManager()V

    .line 3006
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->mBlanked:Z

    .line 3007
    monitor-exit p0

    .line 3008
    return-void

    .line 3007
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
