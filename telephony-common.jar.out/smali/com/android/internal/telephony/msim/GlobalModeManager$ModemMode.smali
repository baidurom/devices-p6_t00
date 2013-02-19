.class public final enum Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;
.super Ljava/lang/Enum;
.source "GlobalModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/msim/GlobalModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ModemMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

.field public static final enum MODEM_MODE_CDMA:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

.field public static final enum MODEM_MODE_GSM:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 104
    new-instance v0, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    const-string v1, "MODEM_MODE_CDMA"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_CDMA:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    .line 105
    new-instance v0, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    const-string v1, "MODEM_MODE_GSM"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_GSM:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    .line 103
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    sget-object v1, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_CDMA:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->MODEM_MODE_GSM:Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->$VALUES:[Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

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
    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 103
    const-class v0, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->$VALUES:[Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/msim/GlobalModeManager$ModemMode;

    return-object v0
.end method
