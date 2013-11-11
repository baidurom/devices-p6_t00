.class public Landroid/app/Instrumentation;
.super Ljava/lang/Object;
.source "Instrumentation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Instrumentation$1;,
        Landroid/app/Instrumentation$Idler;,
        Landroid/app/Instrumentation$ActivityGoing;,
        Landroid/app/Instrumentation$ActivityWaiter;,
        Landroid/app/Instrumentation$SyncRunnable;,
        Landroid/app/Instrumentation$EmptyRunnable;,
        Landroid/app/Instrumentation$InstrumentationThread;,
        Landroid/app/Instrumentation$ActivityResult;,
        Landroid/app/Instrumentation$ActivityMonitor;
    }
.end annotation


# static fields
.field public static final REPORT_KEY_IDENTIFIER:Ljava/lang/String; = "id"

.field public static final REPORT_KEY_STREAMRESULT:Ljava/lang/String; = "stream"

.field private static final TAG:Ljava/lang/String; = "Instrumentation"


# instance fields
.field private mActivityMonitors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Instrumentation$ActivityMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private mAppContext:Landroid/content/Context;

.field private mAutomaticPerformanceSnapshots:Z

.field private mComponent:Landroid/content/ComponentName;

.field private mInstrContext:Landroid/content/Context;

.field private mMessageQueue:Landroid/os/MessageQueue;

.field private mPerfMetrics:Landroid/os/Bundle;

.field private mPerformanceCollector:Landroid/os/PerformanceCollector;

.field private mRunner:Ljava/lang/Thread;

.field private final mSync:Ljava/lang/Object;

.field private mThread:Landroid/app/ActivityThread;

.field private mWaitingActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Instrumentation$ActivityWaiter;",
            ">;"
        }
    .end annotation
.end field

.field private mWatcher:Landroid/app/IInstrumentationWatcher;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    .line 80
    iput-object v1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    .line 81
    iput-object v1, p0, Landroid/app/Instrumentation;->mMessageQueue:Landroid/os/MessageQueue;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Instrumentation;->mAutomaticPerformanceSnapshots:Z

    .line 91
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/Instrumentation;->mPerfMetrics:Landroid/os/Bundle;

    .line 94
    return-void
.end method

.method static synthetic access$100(Landroid/app/Instrumentation;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Landroid/app/Instrumentation;->mAutomaticPerformanceSnapshots:Z

    return v0
.end method

.method static synthetic access$200(Landroid/app/Instrumentation;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Landroid/app/Instrumentation;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    return-object v0
.end method

.method private addValue(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3
    .parameter "key"
    .parameter "value"
    .parameter "results"

    .prologue
    .line 1284
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1285
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1286
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    .line 1287
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1294
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    return-void

    .line 1290
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1291
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1292
    invoke-virtual {p3, p1, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method static checkStartActivityResult(ILjava/lang/Object;)V
    .locals 3
    .parameter "res"
    .parameter "intent"

    .prologue
    .line 1621
    if-ltz p0, :cond_0

    .line 1622
    return-void

    .line 1625
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 1645
    new-instance v0, Landroid/util/AndroidRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when starting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1628
    :pswitch_0
    instance-of v0, p1, Landroid/content/Intent;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1629
    new-instance v0, Landroid/content/ActivityNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find explicit activity class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast p1, Landroid/content/Intent;

    .end local p1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; have you declared this activity in your AndroidManifest.xml?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1633
    .restart local p1
    :cond_1
    new-instance v0, Landroid/content/ActivityNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No Activity found to handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1636
    :pswitch_1
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not allowed to start activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1639
    :pswitch_2
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "FORWARD_RESULT_FLAG used while also requesting a result"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1642
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PendingIntent is not an activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1625
    nop

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;
    .locals 1
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/content/Context;",
            ")",
            "Landroid/app/Application;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 984
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 985
    .local v0, app:Landroid/app/Application;
    invoke-virtual {v0, p1}, Landroid/app/Application;->attach(Landroid/content/Context;)V

    .line 986
    return-object v0
.end method

.method private final validateNotAppThread()V
    .locals 2

    .prologue
    .line 1651
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1652
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This method can not be called from the main application thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1655
    :cond_0
    return-void
.end method


# virtual methods
.method public addMonitor(Landroid/content/IntentFilter;Landroid/app/Instrumentation$ActivityResult;Z)Landroid/app/Instrumentation$ActivityMonitor;
    .locals 1
    .parameter "filter"
    .parameter "result"
    .parameter "block"

    .prologue
    .line 626
    new-instance v0, Landroid/app/Instrumentation$ActivityMonitor;

    invoke-direct {v0, p1, p2, p3}, Landroid/app/Instrumentation$ActivityMonitor;-><init>(Landroid/content/IntentFilter;Landroid/app/Instrumentation$ActivityResult;Z)V

    .line 627
    .local v0, am:Landroid/app/Instrumentation$ActivityMonitor;
    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->addMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V

    .line 628
    return-object v0
.end method

.method public addMonitor(Ljava/lang/String;Landroid/app/Instrumentation$ActivityResult;Z)Landroid/app/Instrumentation$ActivityMonitor;
    .locals 1
    .parameter "cls"
    .parameter "result"
    .parameter "block"

    .prologue
    .line 649
    new-instance v0, Landroid/app/Instrumentation$ActivityMonitor;

    invoke-direct {v0, p1, p2, p3}, Landroid/app/Instrumentation$ActivityMonitor;-><init>(Ljava/lang/String;Landroid/app/Instrumentation$ActivityResult;Z)V

    .line 650
    .local v0, am:Landroid/app/Instrumentation$ActivityMonitor;
    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->addMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V

    .line 651
    return-object v0
.end method

.method public addMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V
    .locals 2
    .parameter "monitor"

    .prologue
    .line 599
    iget-object v1, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 600
    :try_start_0
    iget-object v0, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-nez v0, :cond_0

    .line 601
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    .line 603
    :cond_0
    iget-object v0, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 604
    monitor-exit v1

    .line 605
    return-void

    .line 604
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 8
    .parameter "activity"
    .parameter "icicle"

    .prologue
    .line 1069
    iget-object v5, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    if-eqz v5, :cond_2

    .line 1070
    iget-object v6, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v6

    .line 1071
    :try_start_0
    iget-object v5, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 1072
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 1073
    iget-object v5, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Instrumentation$ActivityWaiter;

    .line 1074
    .local v2, aw:Landroid/app/Instrumentation$ActivityWaiter;
    iget-object v4, v2, Landroid/app/Instrumentation$ActivityWaiter;->intent:Landroid/content/Intent;

    .line 1075
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1076
    iput-object p1, v2, Landroid/app/Instrumentation$ActivityWaiter;->activity:Landroid/app/Activity;

    .line 1077
    iget-object v5, p0, Landroid/app/Instrumentation;->mMessageQueue:Landroid/os/MessageQueue;

    new-instance v7, Landroid/app/Instrumentation$ActivityGoing;

    invoke-direct {v7, p0, v2}, Landroid/app/Instrumentation$ActivityGoing;-><init>(Landroid/app/Instrumentation;Landroid/app/Instrumentation$ActivityWaiter;)V

    invoke-virtual {v5, v7}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 1072
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1080
    .end local v2           #aw:Landroid/app/Instrumentation$ActivityWaiter;
    .end local v4           #intent:Landroid/content/Intent;
    :cond_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1083
    .end local v0           #N:I
    .end local v3           #i:I
    :cond_2
    invoke-virtual {p1, p2}, Landroid/app/Activity;->performCreate(Landroid/os/Bundle;)V

    .line 1085
    iget-object v5, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-eqz v5, :cond_4

    .line 1086
    iget-object v6, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v6

    .line 1087
    :try_start_1
    iget-object v5, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 1088
    .restart local v0       #N:I
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_1
    if-ge v3, v0, :cond_3

    .line 1089
    iget-object v5, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Instrumentation$ActivityMonitor;

    .line 1090
    .local v1, am:Landroid/app/Instrumentation$ActivityMonitor;
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v1, p1, p1, v5}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1088
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1080
    .end local v0           #N:I
    .end local v1           #am:Landroid/app/Instrumentation$ActivityMonitor;
    .end local v3           #i:I
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 1092
    .restart local v0       #N:I
    .restart local v3       #i:I
    :cond_3
    :try_start_3
    monitor-exit v6

    .line 1094
    .end local v0           #N:I
    .end local v3           #i:I
    :cond_4
    return-void

    .line 1092
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5
.end method

.method public callActivityOnDestroy(Landroid/app/Activity;)V
    .locals 5
    .parameter "activity"

    .prologue
    .line 1113
    invoke-virtual {p1}, Landroid/app/Activity;->performDestroy()V

    .line 1115
    iget-object v3, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 1116
    iget-object v4, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v4

    .line 1117
    :try_start_0
    iget-object v3, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 1118
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1119
    iget-object v3, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Instrumentation$ActivityMonitor;

    .line 1120
    .local v1, am:Landroid/app/Instrumentation$ActivityMonitor;
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, p1, p1, v3}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    .line 1118
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1122
    .end local v1           #am:Landroid/app/Instrumentation$ActivityMonitor;
    :cond_0
    monitor-exit v4

    .line 1124
    .end local v0           #N:I
    .end local v2           #i:I
    :cond_1
    return-void

    .line 1122
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public callActivityOnNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0
    .parameter "activity"
    .parameter "intent"

    .prologue
    .line 1157
    invoke-virtual {p1, p2}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 1158
    return-void
.end method

.method public callActivityOnPause(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 1237
    invoke-virtual {p1}, Landroid/app/Activity;->performPause()V

    .line 1238
    return-void
.end method

.method public callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .parameter "activity"
    .parameter "icicle"

    .prologue
    .line 1146
    invoke-virtual {p1, p2}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 1147
    return-void
.end method

.method public callActivityOnRestart(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    const-wide/16 v1, 0x40

    .line 1179
    const-string/jumbo v0, "onRestart"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1180
    invoke-virtual {p1}, Landroid/app/Activity;->onRestart()V

    .line 1181
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1182
    return-void
.end method

.method public callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .parameter "activity"
    .parameter "savedInstanceState"

    .prologue
    .line 1134
    invoke-virtual {p1, p2}, Landroid/app/Activity;->performRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1135
    return-void
.end method

.method public callActivityOnResume(Landroid/app/Activity;)V
    .locals 6
    .parameter "activity"

    .prologue
    const-wide/16 v4, 0x40

    .line 1191
    const/4 v3, 0x1

    iput-boolean v3, p1, Landroid/app/Activity;->mResumed:Z

    .line 1192
    const-string/jumbo v3, "onResume"

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1193
    invoke-virtual {p1}, Landroid/app/Activity;->onResume()V

    .line 1194
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1196
    iget-object v3, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 1197
    iget-object v4, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v4

    .line 1198
    :try_start_0
    iget-object v3, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 1199
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1200
    iget-object v3, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Instrumentation$ActivityMonitor;

    .line 1201
    .local v1, am:Landroid/app/Instrumentation$ActivityMonitor;
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, p1, p1, v3}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    .line 1199
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1203
    .end local v1           #am:Landroid/app/Instrumentation$ActivityMonitor;
    :cond_0
    monitor-exit v4

    .line 1205
    .end local v0           #N:I
    .end local v2           #i:I
    :cond_1
    return-void

    .line 1203
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .parameter "activity"
    .parameter "outState"

    .prologue
    .line 1227
    invoke-virtual {p1, p2}, Landroid/app/Activity;->performSaveInstanceState(Landroid/os/Bundle;)V

    .line 1228
    return-void
.end method

.method public callActivityOnStart(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    const-wide/16 v1, 0x40

    .line 1167
    const-string/jumbo v0, "onStart"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1168
    invoke-virtual {p1}, Landroid/app/Activity;->onStart()V

    .line 1169
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1170
    return-void
.end method

.method public callActivityOnStop(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    const-wide/16 v1, 0x40

    .line 1214
    const-string/jumbo v0, "onStop"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1215
    invoke-virtual {p1}, Landroid/app/Activity;->onStop()V

    .line 1216
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1217
    return-void
.end method

.method public callActivityOnUserLeaving(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 1247
    invoke-virtual {p1}, Landroid/app/Activity;->performUserLeaving()V

    .line 1248
    return-void
.end method

.method public callApplicationOnCreate(Landroid/app/Application;)V
    .locals 3
    .parameter "app"

    .prologue
    const-wide/16 v1, 0x40

    .line 1001
    const-string/jumbo v0, "onCreate"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1002
    invoke-virtual {p1}, Landroid/app/Application;->onCreate()V

    .line 1003
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1004
    return-void
.end method

.method public checkMonitorHit(Landroid/app/Instrumentation$ActivityMonitor;I)Z
    .locals 2
    .parameter "monitor"
    .parameter "minHits"

    .prologue
    .line 668
    invoke-virtual {p0}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 669
    iget-object v1, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 670
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Instrumentation$ActivityMonitor;->getHits()I

    move-result v0

    if-ge v0, p2, :cond_0

    .line 671
    const/4 v0, 0x0

    monitor-exit v1

    .line 675
    :goto_0
    return v0

    .line 673
    :cond_0
    iget-object v0, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 674
    monitor-exit v1

    .line 675
    const/4 v0, 0x1

    goto :goto_0

    .line 674
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public endPerformanceSnapshot()V
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Landroid/app/Instrumentation;->isProfiling()Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Landroid/app/Instrumentation;->mPerformanceCollector:Landroid/os/PerformanceCollector;

    invoke-virtual {v0}, Landroid/os/PerformanceCollector;->endSnapshot()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Instrumentation;->mPerfMetrics:Landroid/os/Bundle;

    .line 208
    :cond_0
    return-void
.end method

.method public execStartActivities(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 8
    .parameter "who"
    .parameter "contextThread"
    .parameter "token"
    .parameter "target"
    .parameter "intents"
    .parameter "options"

    .prologue
    .line 1444
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/app/Instrumentation;->execStartActivitiesAsUser(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;I)V

    .line 1446
    return-void
.end method

.method public execStartActivitiesAsUser(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;I)V
    .locals 14
    .parameter "who"
    .parameter "contextThread"
    .parameter "token"
    .parameter "target"
    .parameter "intents"
    .parameter "options"
    .parameter "userId"

    .prologue
    .line 1458
    move-object/from16 v2, p2

    check-cast v2, Landroid/app/IApplicationThread;

    .line 1459
    .local v2, whoThread:Landroid/app/IApplicationThread;
    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 1460
    iget-object v3, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v3

    .line 1461
    :try_start_0
    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    .line 1462
    .local v8, N:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v8, :cond_2

    .line 1463
    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/Instrumentation$ActivityMonitor;

    .line 1464
    .local v9, am:Landroid/app/Instrumentation$ActivityMonitor;
    const/4 v1, 0x0

    const/4 v5, 0x0

    aget-object v5, p5, v5

    invoke-virtual {v9, p1, v1, v5}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1465
    iget v1, v9, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v9, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 1466
    invoke-virtual {v9}, Landroid/app/Instrumentation$ActivityMonitor;->isBlocking()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1467
    monitor-exit v3

    .line 1498
    .end local v8           #N:I
    .end local v9           #am:Landroid/app/Instrumentation$ActivityMonitor;
    .end local v11           #i:I
    :cond_0
    :goto_1
    return-void

    .line 1462
    .restart local v8       #N:I
    .restart local v9       #am:Landroid/app/Instrumentation$ActivityMonitor;
    .restart local v11       #i:I
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1472
    .end local v9           #am:Landroid/app/Instrumentation$ActivityMonitor;
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1476
    .end local v8           #N:I
    .end local v11           #i:I
    :cond_3
    invoke-static {p1}, Lcom/baidu/server/dp/DynamicPermissionManager;->getInstance(Landroid/content/Context;)Lcom/baidu/server/dp/DynamicPermissionManager;

    move-result-object v10

    .line 1477
    .local v10, dpm:Lcom/baidu/server/dp/DynamicPermissionManager;
    const/4 v1, 0x1

    new-array v12, v1, [[Landroid/content/Intent;

    .line 1478
    .local v12, intentsContainer:[[Landroid/content/Intent;
    move-object/from16 v0, p5

    invoke-virtual {v10, v0, v12}, Lcom/baidu/server/dp/DynamicPermissionManager;->checkCallPermission([Landroid/content/Intent;[[Landroid/content/Intent;)I

    move-result v1

    if-eqz v1, :cond_4

    .line 1479
    const/4 v1, 0x0

    aget-object p5, v12, v1

    .line 1480
    move-object/from16 v0, p5

    array-length v1, v0

    if-eqz v1, :cond_0

    .line 1487
    :cond_4
    :try_start_1
    move-object/from16 v0, p5

    array-length v1, v0

    new-array v4, v1, [Ljava/lang/String;

    .line 1488
    .local v4, resolvedTypes:[Ljava/lang/String;
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_2
    move-object/from16 v0, p5

    array-length v1, v0

    if-ge v11, v1, :cond_5

    .line 1489
    aget-object v1, p5, v11

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAllowFds(Z)V

    .line 1490
    aget-object v1, p5, v11

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v11
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1488
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1472
    .end local v4           #resolvedTypes:[Ljava/lang/String;
    .end local v10           #dpm:Lcom/baidu/server/dp/DynamicPermissionManager;
    .end local v11           #i:I
    .end local v12           #intentsContainer:[[Landroid/content/Intent;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1492
    .restart local v4       #resolvedTypes:[Ljava/lang/String;
    .restart local v10       #dpm:Lcom/baidu/server/dp/DynamicPermissionManager;
    .restart local v11       #i:I
    .restart local v12       #intentsContainer:[[Landroid/content/Intent;
    :cond_5
    :try_start_3
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    move-object/from16 v3, p5

    move-object/from16 v5, p3

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-interface/range {v1 .. v7}, Landroid/app/IActivityManager;->startActivities(Landroid/app/IApplicationThread;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I

    move-result v13

    .line 1495
    .local v13, result:I
    const/4 v1, 0x0

    aget-object v1, p5, v1

    invoke-static {v13, v1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 1496
    .end local v4           #resolvedTypes:[Ljava/lang/String;
    .end local v11           #i:I
    .end local v13           #result:I
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .locals 18
    .parameter "who"
    .parameter "contextThread"
    .parameter "token"
    .parameter "target"
    .parameter "intent"
    .parameter "requestCode"
    .parameter "options"

    .prologue
    .line 1395
    move-object/from16 v3, p2

    check-cast v3, Landroid/app/IApplicationThread;

    .line 1396
    .local v3, whoThread:Landroid/app/IApplicationThread;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 1397
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v4

    .line 1398
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    .line 1399
    .local v13, N:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    move/from16 v0, v16

    if-ge v0, v13, :cond_2

    .line 1400
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    move/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/Instrumentation$ActivityMonitor;

    .line 1401
    .local v14, am:Landroid/app/Instrumentation$ActivityMonitor;
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v14, v0, v2, v1}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1402
    iget v2, v14, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v14, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 1403
    invoke-virtual {v14}, Landroid/app/Instrumentation$ActivityMonitor;->isBlocking()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1404
    if-ltz p6, :cond_0

    invoke-virtual {v14}, Landroid/app/Instrumentation$ActivityMonitor;->getResult()Landroid/app/Instrumentation$ActivityResult;

    move-result-object v2

    :goto_1
    monitor-exit v4

    .line 1430
    .end local v13           #N:I
    .end local v14           #am:Landroid/app/Instrumentation$ActivityMonitor;
    .end local v16           #i:I
    :goto_2
    return-object v2

    .line 1404
    .restart local v13       #N:I
    .restart local v14       #am:Landroid/app/Instrumentation$ActivityMonitor;
    .restart local v16       #i:I
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 1399
    :cond_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 1409
    .end local v14           #am:Landroid/app/Instrumentation$ActivityMonitor;
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1413
    .end local v13           #N:I
    .end local v16           #i:I
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/baidu/server/dp/DynamicPermissionManager;->getInstance(Landroid/content/Context;)Lcom/baidu/server/dp/DynamicPermissionManager;

    move-result-object v15

    .line 1414
    .local v15, dpm:Lcom/baidu/server/dp/DynamicPermissionManager;
    move-object/from16 v0, p5

    invoke-virtual {v15, v0}, Lcom/baidu/server/dp/DynamicPermissionManager;->checkCallPermission(Landroid/content/Intent;)I

    move-result v2

    if-eqz v2, :cond_4

    .line 1415
    const/4 v2, 0x0

    goto :goto_2

    .line 1409
    .end local v15           #dpm:Lcom/baidu/server/dp/DynamicPermissionManager;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1420
    .restart local v15       #dpm:Lcom/baidu/server/dp/DynamicPermissionManager;
    :cond_4
    const/4 v2, 0x0

    :try_start_2
    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAllowFds(Z)V

    .line 1421
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    .line 1422
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    if-eqz p4, :cond_5

    move-object/from16 v0, p4

    iget-object v7, v0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    :goto_3
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p5

    move-object/from16 v6, p3

    move/from16 v8, p6

    move-object/from16 v12, p7

    invoke-interface/range {v2 .. v12}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;)I

    move-result v17

    .line 1427
    .local v17, result:I
    move/from16 v0, v17

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1430
    .end local v17           #result:I
    :goto_4
    const/4 v2, 0x0

    goto :goto_2

    .line 1422
    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    .line 1428
    :catch_0
    move-exception v2

    goto :goto_4
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/Instrumentation$ActivityResult;
    .locals 18
    .parameter "who"
    .parameter "contextThread"
    .parameter "token"
    .parameter "target"
    .parameter "intent"
    .parameter "requestCode"
    .parameter "options"
    .parameter "user"

    .prologue
    .line 1579
    move-object/from16 v3, p2

    check-cast v3, Landroid/app/IApplicationThread;

    .line 1580
    .local v3, whoThread:Landroid/app/IApplicationThread;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 1581
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v4

    .line 1582
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v14

    .line 1583
    .local v14, N:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    move/from16 v0, v16

    if-ge v0, v14, :cond_2

    .line 1584
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    move/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/Instrumentation$ActivityMonitor;

    .line 1585
    .local v15, am:Landroid/app/Instrumentation$ActivityMonitor;
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v15, v0, v2, v1}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1586
    iget v2, v15, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v15, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 1587
    invoke-virtual {v15}, Landroid/app/Instrumentation$ActivityMonitor;->isBlocking()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1588
    if-ltz p6, :cond_0

    invoke-virtual {v15}, Landroid/app/Instrumentation$ActivityMonitor;->getResult()Landroid/app/Instrumentation$ActivityResult;

    move-result-object v2

    :goto_1
    monitor-exit v4

    .line 1606
    .end local v14           #N:I
    .end local v15           #am:Landroid/app/Instrumentation$ActivityMonitor;
    .end local v16           #i:I
    :goto_2
    return-object v2

    .line 1588
    .restart local v14       #N:I
    .restart local v15       #am:Landroid/app/Instrumentation$ActivityMonitor;
    .restart local v16       #i:I
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 1583
    :cond_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 1593
    .end local v15           #am:Landroid/app/Instrumentation$ActivityMonitor;
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1596
    .end local v14           #N:I
    .end local v16           #i:I
    :cond_3
    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAllowFds(Z)V

    .line 1597
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    .line 1598
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    if-eqz p4, :cond_4

    move-object/from16 v0, p4

    iget-object v7, v0, Landroid/app/Activity;->mEmbeddedID:Ljava/lang/String;

    :goto_3
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {p8 .. p8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v13

    move-object/from16 v4, p5

    move-object/from16 v6, p3

    move/from16 v8, p6

    move-object/from16 v12, p7

    invoke-interface/range {v2 .. v13}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;I)I

    move-result v17

    .line 1603
    .local v17, result:I
    move/from16 v0, v17

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1606
    .end local v17           #result:I
    :goto_4
    const/4 v2, 0x0

    goto :goto_2

    .line 1593
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1598
    :cond_4
    const/4 v7, 0x0

    goto :goto_3

    .line 1604
    :catch_0
    move-exception v2

    goto :goto_4
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .locals 18
    .parameter "who"
    .parameter "contextThread"
    .parameter "token"
    .parameter "target"
    .parameter "intent"
    .parameter "requestCode"
    .parameter "options"

    .prologue
    .line 1530
    move-object/from16 v3, p2

    check-cast v3, Landroid/app/IApplicationThread;

    .line 1531
    .local v3, whoThread:Landroid/app/IApplicationThread;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 1532
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v4

    .line 1533
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    .line 1534
    .local v13, N:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    move/from16 v0, v16

    if-ge v0, v13, :cond_2

    .line 1535
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    move/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/Instrumentation$ActivityMonitor;

    .line 1536
    .local v14, am:Landroid/app/Instrumentation$ActivityMonitor;
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v14, v0, v2, v1}, Landroid/app/Instrumentation$ActivityMonitor;->match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1537
    iget v2, v14, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v14, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 1538
    invoke-virtual {v14}, Landroid/app/Instrumentation$ActivityMonitor;->isBlocking()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1539
    if-ltz p6, :cond_0

    invoke-virtual {v14}, Landroid/app/Instrumentation$ActivityMonitor;->getResult()Landroid/app/Instrumentation$ActivityResult;

    move-result-object v2

    :goto_1
    monitor-exit v4

    .line 1565
    .end local v13           #N:I
    .end local v14           #am:Landroid/app/Instrumentation$ActivityMonitor;
    .end local v16           #i:I
    :goto_2
    return-object v2

    .line 1539
    .restart local v13       #N:I
    .restart local v14       #am:Landroid/app/Instrumentation$ActivityMonitor;
    .restart local v16       #i:I
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 1534
    :cond_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 1544
    .end local v14           #am:Landroid/app/Instrumentation$ActivityMonitor;
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1548
    .end local v13           #N:I
    .end local v16           #i:I
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/baidu/server/dp/DynamicPermissionManager;->getInstance(Landroid/content/Context;)Lcom/baidu/server/dp/DynamicPermissionManager;

    move-result-object v15

    .line 1549
    .local v15, dpm:Lcom/baidu/server/dp/DynamicPermissionManager;
    move-object/from16 v0, p5

    invoke-virtual {v15, v0}, Lcom/baidu/server/dp/DynamicPermissionManager;->checkCallPermission(Landroid/content/Intent;)I

    move-result v2

    if-eqz v2, :cond_4

    .line 1550
    const/4 v2, 0x0

    goto :goto_2

    .line 1544
    .end local v15           #dpm:Lcom/baidu/server/dp/DynamicPermissionManager;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1555
    .restart local v15       #dpm:Lcom/baidu/server/dp/DynamicPermissionManager;
    :cond_4
    const/4 v2, 0x0

    :try_start_2
    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAllowFds(Z)V

    .line 1556
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    .line 1557
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    if-eqz p4, :cond_5

    move-object/from16 v0, p4

    iget-object v7, v0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    :goto_3
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p5

    move-object/from16 v6, p3

    move/from16 v8, p6

    move-object/from16 v12, p7

    invoke-interface/range {v2 .. v12}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;)I

    move-result v17

    .line 1562
    .local v17, result:I
    move/from16 v0, v17

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1565
    .end local v17           #result:I
    :goto_4
    const/4 v2, 0x0

    goto :goto_2

    .line 1557
    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    .line 1563
    :catch_0
    move-exception v2

    goto :goto_4
.end method

.method public finish(ILandroid/os/Bundle;)V
    .locals 1
    .parameter "resultCode"
    .parameter "results"

    .prologue
    .line 184
    iget-boolean v0, p0, Landroid/app/Instrumentation;->mAutomaticPerformanceSnapshots:Z

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p0}, Landroid/app/Instrumentation;->endPerformanceSnapshot()V

    .line 187
    :cond_0
    iget-object v0, p0, Landroid/app/Instrumentation;->mPerfMetrics:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Landroid/app/Instrumentation;->mPerfMetrics:Landroid/os/Bundle;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 190
    :cond_1
    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v0, p1, p2}, Landroid/app/ActivityThread;->finishInstrumentation(ILandroid/os/Bundle;)V

    .line 191
    return-void
.end method

.method public getAllocCounts()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 1300
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1301
    .local v0, results:Landroid/os/Bundle;
    const-string v1, "global_alloc_count"

    invoke-static {}, Landroid/os/Debug;->getGlobalAllocCount()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1302
    const-string v1, "global_alloc_size"

    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1303
    const-string v1, "global_freed_count"

    invoke-static {}, Landroid/os/Debug;->getGlobalFreedCount()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1304
    const-string v1, "global_freed_size"

    invoke-static {}, Landroid/os/Debug;->getGlobalFreedSize()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1305
    const-string v1, "gc_invocation_count"

    invoke-static {}, Landroid/os/Debug;->getGlobalGcInvocationCount()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1306
    return-object v0
.end method

.method public getBinderCounts()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 1314
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1315
    .local v0, results:Landroid/os/Bundle;
    const-string/jumbo v1, "sent_transactions"

    invoke-static {}, Landroid/os/Debug;->getBinderSentTransactions()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1316
    const-string/jumbo v1, "received_transactions"

    invoke-static {}, Landroid/os/Debug;->getBinderReceivedTransactions()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1317
    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Landroid/app/Instrumentation;->mComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Landroid/app/Instrumentation;->mInstrContext:Landroid/content/Context;

    return-object v0
.end method

.method public getTargetContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Landroid/app/Instrumentation;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method final init(Landroid/app/ActivityThread;Landroid/content/Context;Landroid/content/Context;Landroid/content/ComponentName;Landroid/app/IInstrumentationWatcher;)V
    .locals 1
    .parameter "thread"
    .parameter "instrContext"
    .parameter "appContext"
    .parameter "component"
    .parameter "watcher"

    .prologue
    .line 1612
    iput-object p1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    .line 1613
    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getLooper()Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Instrumentation;->mMessageQueue:Landroid/os/MessageQueue;

    .line 1614
    iput-object p2, p0, Landroid/app/Instrumentation;->mInstrContext:Landroid/content/Context;

    .line 1615
    iput-object p3, p0, Landroid/app/Instrumentation;->mAppContext:Landroid/content/Context;

    .line 1616
    iput-object p4, p0, Landroid/app/Instrumentation;->mComponent:Landroid/content/ComponentName;

    .line 1617
    iput-object p5, p0, Landroid/app/Instrumentation;->mWatcher:Landroid/app/IInstrumentationWatcher;

    .line 1618
    return-void
.end method

.method public invokeContextMenuAction(Landroid/app/Activity;II)Z
    .locals 8
    .parameter "targetActivity"
    .parameter "id"
    .parameter "flag"

    .prologue
    const/16 v7, 0x17

    const/4 v4, 0x0

    .line 778
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 784
    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v4, v7}, Landroid/view/KeyEvent;-><init>(II)V

    .line 785
    .local v1, downEvent:Landroid/view/KeyEvent;
    invoke-virtual {p0, v1}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 788
    invoke-virtual {p0}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 790
    :try_start_0
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 796
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v7}, Landroid/view/KeyEvent;-><init>(II)V

    .line 797
    .local v3, upEvent:Landroid/view/KeyEvent;
    invoke-virtual {p0, v3}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 800
    invoke-virtual {p0}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 824
    new-instance v0, Landroid/app/Instrumentation$1ContextMenuRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/app/Instrumentation$1ContextMenuRunnable;-><init>(Landroid/app/Instrumentation;Landroid/app/Activity;II)V

    .line 825
    .local v0, cmr:Landroid/app/Instrumentation$1ContextMenuRunnable;
    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 826
    iget-boolean v4, v0, Landroid/app/Instrumentation$1ContextMenuRunnable;->returnValue:Z

    .end local v0           #cmr:Landroid/app/Instrumentation$1ContextMenuRunnable;
    .end local v3           #upEvent:Landroid/view/KeyEvent;
    :goto_0
    return v4

    .line 791
    :catch_0
    move-exception v2

    .line 792
    .local v2, e:Ljava/lang/InterruptedException;
    const-string v5, "Instrumentation"

    const-string v6, "Could not sleep for long press timeout"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public invokeMenuActionSync(Landroid/app/Activity;II)Z
    .locals 2
    .parameter "targetActivity"
    .parameter "id"
    .parameter "flag"

    .prologue
    .line 762
    new-instance v0, Landroid/app/Instrumentation$1MenuRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/app/Instrumentation$1MenuRunnable;-><init>(Landroid/app/Instrumentation;Landroid/app/Activity;II)V

    .line 763
    .local v0, mr:Landroid/app/Instrumentation$1MenuRunnable;
    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 764
    iget-boolean v1, v0, Landroid/app/Instrumentation$1MenuRunnable;->returnValue:Z

    return v1
.end method

.method public isProfiling()Z
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->isProfiling()Z

    move-result v0

    return v0
.end method

.method public newActivity(Ljava/lang/Class;Landroid/content/Context;Landroid/os/IBinder;Landroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Landroid/app/Activity;
    .locals 13
    .parameter
    .parameter "context"
    .parameter "token"
    .parameter "application"
    .parameter "intent"
    .parameter "info"
    .parameter "title"
    .parameter "parent"
    .parameter "id"
    .parameter "lastNonConfigurationInstance"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/content/Context;",
            "Landroid/os/IBinder;",
            "Landroid/app/Application;",
            "Landroid/content/Intent;",
            "Landroid/content/pm/ActivityInfo;",
            "Ljava/lang/CharSequence;",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/app/Activity;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 1032
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1033
    .local v0, activity:Landroid/app/Activity;
    const/4 v2, 0x0

    .local v2, aThread:Landroid/app/ActivityThread;
    move-object/from16 v11, p10

    .line 1034
    check-cast v11, Landroid/app/Activity$NonConfigurationInstances;

    new-instance v12, Landroid/content/res/Configuration;

    invoke-direct {v12}, Landroid/content/res/Configuration;-><init>()V

    move-object v1, p2

    move-object v3, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v12}, Landroid/app/Activity;->attach(Landroid/content/Context;Landroid/app/ActivityThread;Landroid/app/Instrumentation;Landroid/os/IBinder;Landroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Landroid/app/Activity$NonConfigurationInstances;Landroid/content/res/Configuration;)V

    .line 1038
    return-object v0
.end method

.method public newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;
    .locals 1
    .parameter "cl"
    .parameter "className"
    .parameter "intent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1057
    invoke-virtual {p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;
    .locals 1
    .parameter "cl"
    .parameter "className"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 969
    invoke-virtual {p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/app/Instrumentation;->newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "arguments"

    .prologue
    .line 112
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 215
    return-void
.end method

.method public onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .locals 1
    .parameter "obj"
    .parameter "e"

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method public removeMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V
    .locals 2
    .parameter "monitor"

    .prologue
    .line 723
    iget-object v1, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v1

    .line 724
    :try_start_0
    iget-object v0, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 725
    monitor-exit v1

    .line 726
    return-void

    .line 725
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public runOnMainSync(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "runner"

    .prologue
    .line 338
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 339
    new-instance v0, Landroid/app/Instrumentation$SyncRunnable;

    invoke-direct {v0, p1}, Landroid/app/Instrumentation$SyncRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 340
    .local v0, sr:Landroid/app/Instrumentation$SyncRunnable;
    iget-object v1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 341
    invoke-virtual {v0}, Landroid/app/Instrumentation$SyncRunnable;->waitForComplete()V

    .line 342
    return-void
.end method

.method public sendCharacterSync(I)V
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 911
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 912
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 913
    return-void
.end method

.method public sendKeyDownUpSync(I)V
    .locals 2
    .parameter "key"

    .prologue
    .line 898
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 899
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 900
    return-void
.end method

.method public sendKeySync(Landroid/view/KeyEvent;)V
    .locals 16
    .parameter "event"

    .prologue
    .line 865
    invoke-direct/range {p0 .. p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 867
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    .line 868
    .local v1, downTime:J
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    .line 869
    .local v3, eventTime:J
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    .line 870
    .local v5, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    .line 871
    .local v6, code:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    .line 872
    .local v7, repeatCount:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v8

    .line 873
    .local v8, metaState:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v9

    .line 874
    .local v9, deviceId:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v10

    .line 875
    .local v10, scancode:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v12

    .line 876
    .local v12, source:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v13

    .line 877
    .local v13, flags:I
    if-nez v12, :cond_0

    .line 878
    const/16 v12, 0x101

    .line 880
    :cond_0
    const-wide/16 v14, 0x0

    cmp-long v11, v3, v14

    if-nez v11, :cond_1

    .line 881
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 883
    :cond_1
    const-wide/16 v14, 0x0

    cmp-long v11, v1, v14

    if-nez v11, :cond_2

    .line 884
    move-wide v1, v3

    .line 886
    :cond_2
    new-instance v0, Landroid/view/KeyEvent;

    or-int/lit8 v11, v13, 0x8

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 888
    .local v0, newEvent:Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v11

    const/4 v14, 0x2

    invoke-virtual {v11, v0, v14}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 890
    return-void
.end method

.method public sendPointerSync(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 927
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 928
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 929
    const/16 v0, 0x1002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 931
    :cond_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 933
    return-void
.end method

.method public sendStatus(ILandroid/os/Bundle;)V
    .locals 3
    .parameter "resultCode"
    .parameter "results"

    .prologue
    .line 164
    iget-object v1, p0, Landroid/app/Instrumentation;->mWatcher:Landroid/app/IInstrumentationWatcher;

    if-eqz v1, :cond_0

    .line 166
    :try_start_0
    iget-object v1, p0, Landroid/app/Instrumentation;->mWatcher:Landroid/app/IInstrumentationWatcher;

    iget-object v2, p0, Landroid/app/Instrumentation;->mComponent:Landroid/content/ComponentName;

    invoke-interface {v1, v2, p1, p2}, Landroid/app/IInstrumentationWatcher;->instrumentationStatus(Landroid/content/ComponentName;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/Instrumentation;->mWatcher:Landroid/app/IInstrumentationWatcher;

    goto :goto_0
.end method

.method public sendStringSync(Ljava/lang/String;)V
    .locals 7
    .parameter "text"

    .prologue
    .line 836
    if-nez p1, :cond_1

    .line 853
    :cond_0
    return-void

    .line 839
    :cond_1
    const/4 v3, -0x1

    invoke-static {v3}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    .line 841
    .local v2, keyCharacterMap:Landroid/view/KeyCharacterMap;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v0

    .line 843
    .local v0, events:[Landroid/view/KeyEvent;
    if-eqz v0, :cond_0

    .line 844
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 850
    aget-object v3, v0, v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 844
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public sendTrackballEventSync(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 947
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 948
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 949
    const v0, 0x10004

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 951
    :cond_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 953
    return-void
.end method

.method public setAutomaticPerformanceSnapshots()V
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Instrumentation;->mAutomaticPerformanceSnapshots:Z

    .line 195
    new-instance v0, Landroid/os/PerformanceCollector;

    invoke-direct {v0}, Landroid/os/PerformanceCollector;-><init>()V

    iput-object v0, p0, Landroid/app/Instrumentation;->mPerformanceCollector:Landroid/os/PerformanceCollector;

    .line 196
    return-void
.end method

.method public setInTouchMode(Z)V
    .locals 1
    .parameter "inTouch"

    .prologue
    .line 298
    :try_start_0
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->setInTouchMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :goto_0
    return-void

    .line 300
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public start()V
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Landroid/app/Instrumentation;->mRunner:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 121
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Instrumentation already started"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_0
    new-instance v0, Landroid/app/Instrumentation$InstrumentationThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/app/Instrumentation$InstrumentationThread;-><init>(Landroid/app/Instrumentation;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/app/Instrumentation;->mRunner:Ljava/lang/Thread;

    .line 124
    iget-object v0, p0, Landroid/app/Instrumentation;->mRunner:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 125
    return-void
.end method

.method public startActivitySync(Landroid/content/Intent;)Landroid/app/Activity;
    .locals 8
    .parameter "intent"

    .prologue
    .line 365
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 367
    iget-object v5, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v5

    .line 368
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 370
    .end local p1
    .local v2, intent:Landroid/content/Intent;
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 372
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_0

    .line 373
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to resolve activity for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 403
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    :catchall_0
    move-exception v4

    move-object p1, v2

    .end local v2           #intent:Landroid/content/Intent;
    .restart local p1
    :goto_0
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 375
    .end local p1
    .restart local v0       #ai:Landroid/content/pm/ActivityInfo;
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_0
    :try_start_3
    iget-object v4, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v4}, Landroid/app/ActivityThread;->getProcessName()Ljava/lang/String;

    move-result-object v3

    .line 376
    .local v3, myProc:Ljava/lang/String;
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 379
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Intent in process "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " resolved to different process "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 384
    :cond_1
    new-instance v4, Landroid/content/ComponentName;

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 386
    new-instance v1, Landroid/app/Instrumentation$ActivityWaiter;

    invoke-direct {v1, v2}, Landroid/app/Instrumentation$ActivityWaiter;-><init>(Landroid/content/Intent;)V

    .line 388
    .local v1, aw:Landroid/app/Instrumentation$ActivityWaiter;
    iget-object v4, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    if-nez v4, :cond_2

    .line 389
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    .line 391
    :cond_2
    iget-object v4, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    invoke-virtual {p0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 397
    :cond_3
    :try_start_4
    iget-object v4, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 400
    :goto_1
    :try_start_5
    iget-object v4, p0, Landroid/app/Instrumentation;->mWaitingActivities:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 402
    iget-object v4, v1, Landroid/app/Instrumentation$ActivityWaiter;->activity:Landroid/app/Activity;

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-object v4

    .line 403
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v1           #aw:Landroid/app/Instrumentation$ActivityWaiter;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #myProc:Ljava/lang/String;
    .restart local p1
    :catchall_1
    move-exception v4

    goto :goto_0

    .line 398
    .end local p1
    .restart local v0       #ai:Landroid/content/pm/ActivityInfo;
    .restart local v1       #aw:Landroid/app/Instrumentation$ActivityWaiter;
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v3       #myProc:Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public startAllocCounting()V
    .locals 1

    .prologue
    .line 1258
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 1259
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->runFinalization()V

    .line 1260
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 1262
    invoke-static {}, Landroid/os/Debug;->resetAllCounts()V

    .line 1265
    invoke-static {}, Landroid/os/Debug;->startAllocCounting()V

    .line 1266
    return-void
.end method

.method public startPerformanceSnapshot()V
    .locals 2

    .prologue
    .line 199
    invoke-virtual {p0}, Landroid/app/Instrumentation;->isProfiling()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Landroid/app/Instrumentation;->mPerformanceCollector:Landroid/os/PerformanceCollector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PerformanceCollector;->beginSnapshot(Ljava/lang/String;)V

    .line 202
    :cond_0
    return-void
.end method

.method public startProfiling()V
    .locals 3

    .prologue
    .line 272
    iget-object v1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->isProfiling()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getProfileFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 275
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x80

    invoke-static {v1, v2}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;I)V

    .line 277
    .end local v0           #file:Ljava/io/File;
    :cond_0
    return-void
.end method

.method public stopAllocCounting()V
    .locals 1

    .prologue
    .line 1272
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 1273
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->runFinalization()V

    .line 1274
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 1275
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    .line 1276
    return-void
.end method

.method public stopProfiling()V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->isProfiling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 286
    :cond_0
    return-void
.end method

.method public waitForIdle(Ljava/lang/Runnable;)V
    .locals 3
    .parameter "recipient"

    .prologue
    .line 313
    iget-object v0, p0, Landroid/app/Instrumentation;->mMessageQueue:Landroid/os/MessageQueue;

    new-instance v1, Landroid/app/Instrumentation$Idler;

    invoke-direct {v1, p1}, Landroid/app/Instrumentation$Idler;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 314
    iget-object v0, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/app/Instrumentation$EmptyRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/app/Instrumentation$EmptyRunnable;-><init>(Landroid/app/Instrumentation$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 315
    return-void
.end method

.method public waitForIdleSync()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 323
    invoke-direct {p0}, Landroid/app/Instrumentation;->validateNotAppThread()V

    .line 324
    new-instance v0, Landroid/app/Instrumentation$Idler;

    invoke-direct {v0, v3}, Landroid/app/Instrumentation$Idler;-><init>(Ljava/lang/Runnable;)V

    .line 325
    .local v0, idler:Landroid/app/Instrumentation$Idler;
    iget-object v1, p0, Landroid/app/Instrumentation;->mMessageQueue:Landroid/os/MessageQueue;

    invoke-virtual {v1, v0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 326
    iget-object v1, p0, Landroid/app/Instrumentation;->mThread:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/app/Instrumentation$EmptyRunnable;

    invoke-direct {v2, v3}, Landroid/app/Instrumentation$EmptyRunnable;-><init>(Landroid/app/Instrumentation$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 327
    invoke-virtual {v0}, Landroid/app/Instrumentation$Idler;->waitForIdle()V

    .line 328
    return-void
.end method

.method public waitForMonitor(Landroid/app/Instrumentation$ActivityMonitor;)Landroid/app/Activity;
    .locals 3
    .parameter "monitor"

    .prologue
    .line 688
    invoke-virtual {p1}, Landroid/app/Instrumentation$ActivityMonitor;->waitForActivity()Landroid/app/Activity;

    move-result-object v0

    .line 689
    .local v0, activity:Landroid/app/Activity;
    iget-object v2, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v2

    .line 690
    :try_start_0
    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 691
    monitor-exit v2

    .line 692
    return-object v0

    .line 691
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public waitForMonitorWithTimeout(Landroid/app/Instrumentation$ActivityMonitor;J)Landroid/app/Activity;
    .locals 3
    .parameter "monitor"
    .parameter "timeOut"

    .prologue
    .line 707
    invoke-virtual {p1, p2, p3}, Landroid/app/Instrumentation$ActivityMonitor;->waitForActivityWithTimeout(J)Landroid/app/Activity;

    move-result-object v0

    .line 708
    .local v0, activity:Landroid/app/Activity;
    iget-object v2, p0, Landroid/app/Instrumentation;->mSync:Ljava/lang/Object;

    monitor-enter v2

    .line 709
    :try_start_0
    iget-object v1, p0, Landroid/app/Instrumentation;->mActivityMonitors:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 710
    monitor-exit v2

    .line 711
    return-object v0

    .line 710
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
