.class public Lcom/android/server/PPPOEStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "PPPOEStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PPPOEStateMachine$1;,
        Lcom/android/server/PPPOEStateMachine$StopFailedState;,
        Lcom/android/server/PPPOEStateMachine$DisconnectedState;,
        Lcom/android/server/PPPOEStateMachine$DisconnectingState;,
        Lcom/android/server/PPPOEStateMachine$StartFailedState;,
        Lcom/android/server/PPPOEStateMachine$ConnectedState;,
        Lcom/android/server/PPPOEStateMachine$ConnectingState;,
        Lcom/android/server/PPPOEStateMachine$InitialState;,
        Lcom/android/server/PPPOEStateMachine$DefaultState;,
        Lcom/android/server/PPPOEStateMachine$NativeDaemonConnectorCallbacks;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field public static final MAX_LOG_SIZE:I = 0x19

.field public static final PHASE_AUTHENTICATE:Ljava/lang/String; = "5"

.field public static final PHASE_CALLBACK:Ljava/lang/String; = "6"

.field public static final PHASE_DEAD:Ljava/lang/String; = "0"

.field public static final PHASE_DISCONNECT:Ljava/lang/String; = "10"

.field public static final PHASE_DORMANT:Ljava/lang/String; = "3"

.field public static final PHASE_ESTABLISH:Ljava/lang/String; = "4"

.field public static final PHASE_HOLDOFF:Ljava/lang/String; = "11"

.field public static final PHASE_INITIALIZE:Ljava/lang/String; = "1"

.field public static final PHASE_MASTER:Ljava/lang/String; = "12"

.field public static final PHASE_NETWORK:Ljava/lang/String; = "7"

.field public static final PHASE_RUNNING:Ljava/lang/String; = "8"

.field public static final PHASE_SERIALCONN:Ljava/lang/String; = "2"

.field public static final PHASE_TERMINATE:Ljava/lang/String; = "9"

.field public static final PPPOE_EVENT_CODE:I = 0x28c

.field private static final PPPOE_TAG:Ljava/lang/String; = "PPPOEConnector"

.field public static final RESPONSE_QUEUE_SIZE:I = 0xa

.field private static final TAG:Ljava/lang/String; = "PPPOEStateMachine"

.field public static final stateCode:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mConnectedState:Lcom/android/server/PPPOEStateMachine$ConnectedState;

.field private final mConnectedTimeAtomicLong:Ljava/util/concurrent/atomic/AtomicLong;

.field private mConnectingState:Lcom/android/server/PPPOEStateMachine$ConnectingState;

.field private mContext:Landroid/content/Context;

.field private mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private mDefRoute:Landroid/net/RouteInfo;

.field private mDefaultState:Lcom/android/server/PPPOEStateMachine$DefaultState;

.field private mDisconnectedState:Lcom/android/server/PPPOEStateMachine$DisconnectedState;

.field private mDisconnectingState:Lcom/android/server/PPPOEStateMachine$DisconnectingState;

.field private mInitialState:Lcom/android/server/PPPOEStateMachine$InitialState;

.field private mNativeConnetor:Lcom/android/server/NativeDaemonConnector;

.field private final mPPPOEState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mStartFailedState:Lcom/android/server/PPPOEStateMachine$StartFailedState;

.field private mStopFailedState:Lcom/android/server/PPPOEStateMachine$StopFailedState;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/PPPOEStateMachine;->stateCode:Ljava/util/Set;

    .line 62
    sget-object v0, Lcom/android/server/PPPOEStateMachine;->stateCode:Ljava/util/Set;

    const-string v1, "0"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lcom/android/server/PPPOEStateMachine;->stateCode:Ljava/util/Set;

    const-string v1, "1"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lcom/android/server/PPPOEStateMachine;->stateCode:Ljava/util/Set;

    const-string v1, "2"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lcom/android/server/PPPOEStateMachine;->stateCode:Ljava/util/Set;

    const-string v1, "3"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lcom/android/server/PPPOEStateMachine;->stateCode:Ljava/util/Set;

    const-string v1, "4"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lcom/android/server/PPPOEStateMachine;->stateCode:Ljava/util/Set;

    const-string v1, "5"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lcom/android/server/PPPOEStateMachine;->stateCode:Ljava/util/Set;

    const-string v1, "6"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lcom/android/server/PPPOEStateMachine;->stateCode:Ljava/util/Set;

    const-string v1, "7"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lcom/android/server/PPPOEStateMachine;->stateCode:Ljava/util/Set;

    const-string v1, "8"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lcom/android/server/PPPOEStateMachine;->stateCode:Ljava/util/Set;

    const-string v1, "9"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lcom/android/server/PPPOEStateMachine;->stateCode:Ljava/util/Set;

    const-string v1, "10"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lcom/android/server/PPPOEStateMachine;->stateCode:Ljava/util/Set;

    const-string v1, "11"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lcom/android/server/PPPOEStateMachine;->stateCode:Ljava/util/Set;

    const-string v1, "12"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "name"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 139
    invoke-direct {p0, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 93
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v1, Landroid/net/wifi/PPPOEInfo$Status;->OFFLINE:Landroid/net/wifi/PPPOEInfo$Status;

    invoke-virtual {v1}, Landroid/net/wifi/PPPOEInfo$Status;->ordinal()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/PPPOEStateMachine;->mPPPOEState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 94
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/PPPOEStateMachine;->mConnectedTimeAtomicLong:Ljava/util/concurrent/atomic/AtomicLong;

    .line 98
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/PPPOEStateMachine;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 99
    new-instance v0, Lcom/android/server/PPPOEStateMachine$DefaultState;

    invoke-direct {v0, p0, v3}, Lcom/android/server/PPPOEStateMachine$DefaultState;-><init>(Lcom/android/server/PPPOEStateMachine;Lcom/android/server/PPPOEStateMachine$1;)V

    iput-object v0, p0, Lcom/android/server/PPPOEStateMachine;->mDefaultState:Lcom/android/server/PPPOEStateMachine$DefaultState;

    .line 100
    new-instance v0, Lcom/android/server/PPPOEStateMachine$InitialState;

    invoke-direct {v0, p0, v3}, Lcom/android/server/PPPOEStateMachine$InitialState;-><init>(Lcom/android/server/PPPOEStateMachine;Lcom/android/server/PPPOEStateMachine$1;)V

    iput-object v0, p0, Lcom/android/server/PPPOEStateMachine;->mInitialState:Lcom/android/server/PPPOEStateMachine$InitialState;

    .line 101
    new-instance v0, Lcom/android/server/PPPOEStateMachine$ConnectingState;

    invoke-direct {v0, p0, v3}, Lcom/android/server/PPPOEStateMachine$ConnectingState;-><init>(Lcom/android/server/PPPOEStateMachine;Lcom/android/server/PPPOEStateMachine$1;)V

    iput-object v0, p0, Lcom/android/server/PPPOEStateMachine;->mConnectingState:Lcom/android/server/PPPOEStateMachine$ConnectingState;

    .line 102
    new-instance v0, Lcom/android/server/PPPOEStateMachine$ConnectedState;

    invoke-direct {v0, p0, v3}, Lcom/android/server/PPPOEStateMachine$ConnectedState;-><init>(Lcom/android/server/PPPOEStateMachine;Lcom/android/server/PPPOEStateMachine$1;)V

    iput-object v0, p0, Lcom/android/server/PPPOEStateMachine;->mConnectedState:Lcom/android/server/PPPOEStateMachine$ConnectedState;

    .line 103
    new-instance v0, Lcom/android/server/PPPOEStateMachine$StartFailedState;

    invoke-direct {v0, p0, v3}, Lcom/android/server/PPPOEStateMachine$StartFailedState;-><init>(Lcom/android/server/PPPOEStateMachine;Lcom/android/server/PPPOEStateMachine$1;)V

    iput-object v0, p0, Lcom/android/server/PPPOEStateMachine;->mStartFailedState:Lcom/android/server/PPPOEStateMachine$StartFailedState;

    .line 104
    new-instance v0, Lcom/android/server/PPPOEStateMachine$DisconnectingState;

    invoke-direct {v0, p0, v3}, Lcom/android/server/PPPOEStateMachine$DisconnectingState;-><init>(Lcom/android/server/PPPOEStateMachine;Lcom/android/server/PPPOEStateMachine$1;)V

    iput-object v0, p0, Lcom/android/server/PPPOEStateMachine;->mDisconnectingState:Lcom/android/server/PPPOEStateMachine$DisconnectingState;

    .line 105
    new-instance v0, Lcom/android/server/PPPOEStateMachine$DisconnectedState;

    invoke-direct {v0, p0, v3}, Lcom/android/server/PPPOEStateMachine$DisconnectedState;-><init>(Lcom/android/server/PPPOEStateMachine;Lcom/android/server/PPPOEStateMachine$1;)V

    iput-object v0, p0, Lcom/android/server/PPPOEStateMachine;->mDisconnectedState:Lcom/android/server/PPPOEStateMachine$DisconnectedState;

    .line 106
    new-instance v0, Lcom/android/server/PPPOEStateMachine$StopFailedState;

    invoke-direct {v0, p0, v3}, Lcom/android/server/PPPOEStateMachine$StopFailedState;-><init>(Lcom/android/server/PPPOEStateMachine;Lcom/android/server/PPPOEStateMachine$1;)V

    iput-object v0, p0, Lcom/android/server/PPPOEStateMachine;->mStopFailedState:Lcom/android/server/PPPOEStateMachine$StopFailedState;

    .line 109
    iput-object v3, p0, Lcom/android/server/PPPOEStateMachine;->mDefRoute:Landroid/net/RouteInfo;

    .line 140
    const-string v0, "PPPOEStateMachine"

    const-string v1, " create PPPOE state Machine"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iput-object p1, p0, Lcom/android/server/PPPOEStateMachine;->mContext:Landroid/content/Context;

    .line 142
    iget-object v0, p0, Lcom/android/server/PPPOEStateMachine;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 143
    .local v6, powerManager:Landroid/os/PowerManager;
    const-string v0, "PPPOEStateMachine"

    invoke-virtual {v6, v4, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PPPOEStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 145
    iget-object v0, p0, Lcom/android/server/PPPOEStateMachine;->mDefaultState:Lcom/android/server/PPPOEStateMachine$DefaultState;

    invoke-virtual {p0, v0}, Lcom/android/server/PPPOEStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 146
    iget-object v0, p0, Lcom/android/server/PPPOEStateMachine;->mInitialState:Lcom/android/server/PPPOEStateMachine$InitialState;

    iget-object v1, p0, Lcom/android/server/PPPOEStateMachine;->mDefaultState:Lcom/android/server/PPPOEStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/PPPOEStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 147
    iget-object v0, p0, Lcom/android/server/PPPOEStateMachine;->mConnectingState:Lcom/android/server/PPPOEStateMachine$ConnectingState;

    iget-object v1, p0, Lcom/android/server/PPPOEStateMachine;->mDefaultState:Lcom/android/server/PPPOEStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/PPPOEStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 148
    iget-object v0, p0, Lcom/android/server/PPPOEStateMachine;->mConnectedState:Lcom/android/server/PPPOEStateMachine$ConnectedState;

    iget-object v1, p0, Lcom/android/server/PPPOEStateMachine;->mDefaultState:Lcom/android/server/PPPOEStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/PPPOEStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 149
    iget-object v0, p0, Lcom/android/server/PPPOEStateMachine;->mStartFailedState:Lcom/android/server/PPPOEStateMachine$StartFailedState;

    iget-object v1, p0, Lcom/android/server/PPPOEStateMachine;->mDefaultState:Lcom/android/server/PPPOEStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/PPPOEStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 150
    iget-object v0, p0, Lcom/android/server/PPPOEStateMachine;->mDisconnectingState:Lcom/android/server/PPPOEStateMachine$DisconnectingState;

    iget-object v1, p0, Lcom/android/server/PPPOEStateMachine;->mDefaultState:Lcom/android/server/PPPOEStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/PPPOEStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 151
    iget-object v0, p0, Lcom/android/server/PPPOEStateMachine;->mDisconnectedState:Lcom/android/server/PPPOEStateMachine$DisconnectedState;

    iget-object v1, p0, Lcom/android/server/PPPOEStateMachine;->mDefaultState:Lcom/android/server/PPPOEStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/PPPOEStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 152
    iget-object v0, p0, Lcom/android/server/PPPOEStateMachine;->mStopFailedState:Lcom/android/server/PPPOEStateMachine$StopFailedState;

    iget-object v1, p0, Lcom/android/server/PPPOEStateMachine;->mDefaultState:Lcom/android/server/PPPOEStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/PPPOEStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 153
    iget-object v0, p0, Lcom/android/server/PPPOEStateMachine;->mInitialState:Lcom/android/server/PPPOEStateMachine$InitialState;

    invoke-virtual {p0, v0}, Lcom/android/server/PPPOEStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 156
    new-instance v0, Lcom/android/server/NativeDaemonConnector;

    new-instance v1, Lcom/android/server/PPPOEStateMachine$NativeDaemonConnectorCallbacks;

    invoke-direct {v1, p0}, Lcom/android/server/PPPOEStateMachine$NativeDaemonConnectorCallbacks;-><init>(Lcom/android/server/PPPOEStateMachine;)V

    const-string v2, "netd"

    const/16 v3, 0xa

    const-string v4, "PPPOEConnector"

    const/16 v5, 0x19

    invoke-direct/range {v0 .. v5}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/PPPOEStateMachine;->mNativeConnetor:Lcom/android/server/NativeDaemonConnector;

    .line 158
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/PPPOEStateMachine;)Lcom/android/server/PPPOEStateMachine$ConnectingState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/PPPOEStateMachine;->mConnectingState:Lcom/android/server/PPPOEStateMachine$ConnectingState;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/PPPOEStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/android/server/PPPOEStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/PPPOEStateMachine;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/PPPOEStateMachine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/PPPOEStateMachine;)Lcom/android/server/PPPOEStateMachine$DisconnectingState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/PPPOEStateMachine;->mDisconnectingState:Lcom/android/server/PPPOEStateMachine$DisconnectingState;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/PPPOEStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/android/server/PPPOEStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/PPPOEStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/android/server/PPPOEStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/PPPOEStateMachine;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/android/server/PPPOEStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/PPPOEStateMachine;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/PPPOEStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/PPPOEStateMachine;Landroid/net/wifi/PPPOEConfig;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/server/PPPOEStateMachine;->startPPPOE(Landroid/net/wifi/PPPOEConfig;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/PPPOEStateMachine;)Lcom/android/server/PPPOEStateMachine$StartFailedState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/PPPOEStateMachine;->mStartFailedState:Lcom/android/server/PPPOEStateMachine$StartFailedState;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/PPPOEStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/android/server/PPPOEStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/PPPOEStateMachine;)Lcom/android/server/PPPOEStateMachine$ConnectedState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/PPPOEStateMachine;->mConnectedState:Lcom/android/server/PPPOEStateMachine$ConnectedState;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/PPPOEStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/android/server/PPPOEStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/PPPOEStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/android/server/PPPOEStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/PPPOEStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/android/server/PPPOEStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/PPPOEStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/android/server/PPPOEStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/PPPOEStateMachine;)Landroid/net/RouteInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/PPPOEStateMachine;->mDefRoute:Landroid/net/RouteInfo;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/server/PPPOEStateMachine;Landroid/net/RouteInfo;)Landroid/net/RouteInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/server/PPPOEStateMachine;->mDefRoute:Landroid/net/RouteInfo;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/server/PPPOEStateMachine;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/PPPOEStateMachine;->mConnectedTimeAtomicLong:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/PPPOEStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/android/server/PPPOEStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/PPPOEStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/android/server/PPPOEStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/PPPOEStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/server/PPPOEStateMachine;->stopPPPOE()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/android/server/PPPOEStateMachine;)Lcom/android/server/PPPOEStateMachine$InitialState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/PPPOEStateMachine;->mInitialState:Lcom/android/server/PPPOEStateMachine$InitialState;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/PPPOEStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/android/server/PPPOEStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/PPPOEStateMachine;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/android/server/PPPOEStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/PPPOEStateMachine;)Lcom/android/server/PPPOEStateMachine$StopFailedState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/PPPOEStateMachine;->mStopFailedState:Lcom/android/server/PPPOEStateMachine$StopFailedState;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/PPPOEStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/android/server/PPPOEStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/PPPOEStateMachine;)Lcom/android/server/PPPOEStateMachine$DisconnectedState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/PPPOEStateMachine;->mDisconnectedState:Lcom/android/server/PPPOEStateMachine$DisconnectedState;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/PPPOEStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/android/server/PPPOEStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/PPPOEStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/android/server/PPPOEStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/PPPOEStateMachine;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/PPPOEStateMachine;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/PPPOEStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/PPPOEStateMachine;->mPPPOEState:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private startPPPOE(Landroid/net/wifi/PPPOEConfig;)Z
    .locals 4
    .parameter "serverConfig"

    .prologue
    .line 621
    const-string v1, "PPPOEStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startPPPOE username "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/net/wifi/PPPOEConfig;->username:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :try_start_0
    iget-object v1, p0, Lcom/android/server/PPPOEStateMachine;->mNativeConnetor:Lcom/android/server/NativeDaemonConnector;

    const-string v2, "pppoed start"

    invoke-virtual {p1}, Landroid/net/wifi/PPPOEConfig;->getArgs()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 624
    :catch_0
    move-exception v0

    .line 625
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "PPPOEStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to start PPPOE with username "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/net/wifi/PPPOEConfig;->username:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 626
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private stopPPPOE()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 603
    const-string v2, "PPPOEStateMachine"

    const-string v3, "execute stop PPPOE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PPPOEStateMachine;->mNativeConnetor:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "pppoed stop"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 606
    :catch_0
    move-exception v0

    .line 607
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "PPPOEStateMachine"

    const-string v3, "Failed to stop PPPOE."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getPPPOEInfo()Landroid/net/wifi/PPPOEInfo;
    .locals 8

    .prologue
    .line 632
    const-string v4, "PPPOEStateMachine"

    const-string v5, "getPPPOEInfo"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iget-object v4, p0, Lcom/android/server/PPPOEStateMachine;->mPPPOEState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-static {v4}, Landroid/net/wifi/PPPOEInfo$Status;->fromInt(I)Landroid/net/wifi/PPPOEInfo$Status;

    move-result-object v3

    .line 634
    .local v3, status:Landroid/net/wifi/PPPOEInfo$Status;
    const-wide/16 v1, 0x0

    .line 635
    .local v1, onLineTime:J
    sget-object v4, Landroid/net/wifi/PPPOEInfo$Status;->ONLINE:Landroid/net/wifi/PPPOEInfo$Status;

    invoke-virtual {v3, v4}, Landroid/net/wifi/PPPOEInfo$Status;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 636
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/PPPOEStateMachine;->mConnectedTimeAtomicLong:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long v1, v4, v6

    .line 638
    :cond_0
    new-instance v0, Landroid/net/wifi/PPPOEInfo;

    invoke-direct {v0, v3, v1, v2}, Landroid/net/wifi/PPPOEInfo;-><init>(Landroid/net/wifi/PPPOEInfo$Status;J)V

    .line 639
    .local v0, info:Landroid/net/wifi/PPPOEInfo;
    return-object v0
.end method

.method public start()V
    .locals 4

    .prologue
    .line 162
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/android/server/PPPOEStateMachine;->mNativeConnetor:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "PPPOEConnector"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 163
    .local v1, th:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 165
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PPPOEStateMachine;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    invoke-super {p0}, Lcom/android/internal/util/StateMachine;->start()V

    .line 171
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 168
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
