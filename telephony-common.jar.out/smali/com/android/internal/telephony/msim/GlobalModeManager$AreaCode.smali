.class final enum Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;
.super Ljava/lang/Enum;
.source "GlobalModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/msim/GlobalModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AreaCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

.field public static final enum AREA_A:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

.field public static final enum AREA_B:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

.field public static final enum AREA_C:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

.field public static final enum AREA_X:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 131
    new-instance v0, Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    const-string v1, "AREA_X"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;->AREA_X:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    .line 132
    new-instance v0, Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    const-string v1, "AREA_A"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;->AREA_A:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    .line 133
    new-instance v0, Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    const-string v1, "AREA_B"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;->AREA_B:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    .line 134
    new-instance v0, Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    const-string v1, "AREA_C"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;->AREA_C:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    .line 130
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    sget-object v1, Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;->AREA_X:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;->AREA_A:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;->AREA_B:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;->AREA_C:Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;->$VALUES:[Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

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
    .line 130
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;
    .locals 1
    .parameter "name"

    .prologue
    .line 130
    const-class v0, Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;->$VALUES:[Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/msim/GlobalModeManager$AreaCode;

    return-object v0
.end method
