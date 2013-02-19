.class final enum Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;
.super Ljava/lang/Enum;
.source "GlobalModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/msim/GlobalModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RacStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

.field public static final enum RAC_ATTEMPT_TO_UPDATE:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

.field public static final enum RAC_ERROR:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

.field public static final enum RAC_INVALID_SIM:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

.field public static final enum RAC_LIMITED_SERVICE:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

.field public static final enum RAC_NO_CELL:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

.field public static final enum RAC_NULL:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

.field public static final enum RAC_OK:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

.field public static final enum RAC_SEARCHING:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

.field public static final enum RAC_SEARCHING_DEFAULT:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 119
    new-instance v0, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    const-string v1, "RAC_OK"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;->RAC_OK:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    .line 120
    new-instance v0, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    const-string v1, "RAC_NO_CELL"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;->RAC_NO_CELL:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    .line 121
    new-instance v0, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    const-string v1, "RAC_LIMITED_SERVICE"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;->RAC_LIMITED_SERVICE:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    .line 122
    new-instance v0, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    const-string v1, "RAC_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;->RAC_ERROR:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    .line 123
    new-instance v0, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    const-string v1, "RAC_INVALID_SIM"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;->RAC_INVALID_SIM:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    .line 124
    new-instance v0, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    const-string v1, "RAC_ATTEMPT_TO_UPDATE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;->RAC_ATTEMPT_TO_UPDATE:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    .line 125
    new-instance v0, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    const-string v1, "RAC_SEARCHING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;->RAC_SEARCHING:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    .line 126
    new-instance v0, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    const-string v1, "RAC_NULL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;->RAC_NULL:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    .line 127
    new-instance v0, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    const-string v1, "RAC_SEARCHING_DEFAULT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;->RAC_SEARCHING_DEFAULT:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    .line 118
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    sget-object v1, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;->RAC_OK:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;->RAC_NO_CELL:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;->RAC_LIMITED_SERVICE:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;->RAC_ERROR:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;->RAC_INVALID_SIM:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;->RAC_ATTEMPT_TO_UPDATE:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;->RAC_SEARCHING:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;->RAC_NULL:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;->RAC_SEARCHING_DEFAULT:Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;->$VALUES:[Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

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
    .line 118
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;
    .locals 1
    .parameter "name"

    .prologue
    .line 118
    const-class v0, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;->$VALUES:[Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/msim/GlobalModeManager$RacStatus;

    return-object v0
.end method
