.class final enum Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;
.super Ljava/lang/Enum;
.source "GlobalModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/msim/GlobalModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CRegStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

.field public static final enum CREG_DENIED:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

.field public static final enum CREG_HOME:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

.field public static final enum CREG_NOT_REGISTERED:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

.field public static final enum CREG_ROAMING:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

.field public static final enum CREG_SEARCHING:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

.field public static final enum CREG_SEARCHING_DEFAULT:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

.field public static final enum CREG_UNKNOWN:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 109
    new-instance v0, Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    const-string v1, "CREG_NOT_REGISTERED"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;->CREG_NOT_REGISTERED:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    .line 110
    new-instance v0, Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    const-string v1, "CREG_HOME"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;->CREG_HOME:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    .line 111
    new-instance v0, Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    const-string v1, "CREG_SEARCHING"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;->CREG_SEARCHING:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    .line 112
    new-instance v0, Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    const-string v1, "CREG_DENIED"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;->CREG_DENIED:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    .line 113
    new-instance v0, Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    const-string v1, "CREG_UNKNOWN"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;->CREG_UNKNOWN:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    .line 114
    new-instance v0, Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    const-string v1, "CREG_ROAMING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;->CREG_ROAMING:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    .line 115
    new-instance v0, Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    const-string v1, "CREG_SEARCHING_DEFAULT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;->CREG_SEARCHING_DEFAULT:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    .line 108
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    sget-object v1, Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;->CREG_NOT_REGISTERED:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;->CREG_HOME:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;->CREG_SEARCHING:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;->CREG_DENIED:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;->CREG_UNKNOWN:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;->CREG_ROAMING:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;->CREG_SEARCHING_DEFAULT:Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;->$VALUES:[Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;
    .locals 1
    .parameter "name"

    .prologue
    .line 108
    const-class v0, Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;->$VALUES:[Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/msim/GlobalModeManager$CRegStatus;

    return-object v0
.end method
