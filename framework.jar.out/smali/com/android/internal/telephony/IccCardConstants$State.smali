.class public final enum Lcom/android/internal/telephony/IccCardConstants$State;
.super Ljava/lang/Enum;
.source "IccCardConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccCardConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/IccCardConstants$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum DEACTIVED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum READY:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum RUIM_CORPORATE_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum RUIM_HRPD_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum RUIM_NETWORK1_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum RUIM_NETWORK2_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum RUIM_RUIM_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum RUIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum SIM_CORPORATE_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum SIM_CORPORATE_LOCKED_PUK:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum SIM_NETWORK_LOCKED_PUK:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum SIM_NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum SIM_NETWORK_SUBSET_LOCKED_PUK:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum SIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum SIM_SERVICE_PROVIDER_LOCKED_PUK:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum SIM_SIM_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

.field public static final enum UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 97
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 98
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v1, "ABSENT"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 99
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v1, "PIN_REQUIRED"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 100
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v1, "PUK_REQUIRED"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 101
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v1, "NETWORK_LOCKED"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 103
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v1, "SIM_NETWORK_SUBSET_LOCKED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->SIM_NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 104
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v1, "SIM_CORPORATE_LOCKED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->SIM_CORPORATE_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 105
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v1, "SIM_SERVICE_PROVIDER_LOCKED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->SIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 106
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v1, "SIM_SIM_LOCKED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->SIM_SIM_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 107
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v1, "RUIM_NETWORK1_LOCKED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->RUIM_NETWORK1_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 108
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v1, "RUIM_NETWORK2_LOCKED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->RUIM_NETWORK2_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 109
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v1, "RUIM_HRPD_LOCKED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->RUIM_HRPD_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 110
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v1, "RUIM_CORPORATE_LOCKED"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->RUIM_CORPORATE_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 111
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v1, "RUIM_SERVICE_PROVIDER_LOCKED"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->RUIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 112
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v1, "RUIM_RUIM_LOCKED"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->RUIM_RUIM_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 113
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v1, "SIM_NETWORK_LOCKED_PUK"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->SIM_NETWORK_LOCKED_PUK:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 114
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v1, "SIM_NETWORK_SUBSET_LOCKED_PUK"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->SIM_NETWORK_SUBSET_LOCKED_PUK:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 115
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v1, "SIM_CORPORATE_LOCKED_PUK"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->SIM_CORPORATE_LOCKED_PUK:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 116
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v1, "SIM_SERVICE_PROVIDER_LOCKED_PUK"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->SIM_SERVICE_PROVIDER_LOCKED_PUK:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 118
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v1, "READY"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 119
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v1, "NOT_READY"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 120
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v1, "CARD_IO_ERROR"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 121
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v1, "DEACTIVED"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->DEACTIVED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 122
    new-instance v0, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v1, "PERM_DISABLED"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccCardConstants$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 96
    const/16 v0, 0x18

    new-array v0, v0, [Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->SIM_NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->SIM_CORPORATE_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->SIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->SIM_SIM_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->RUIM_NETWORK1_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->RUIM_NETWORK2_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->RUIM_HRPD_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->RUIM_CORPORATE_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->RUIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->RUIM_RUIM_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->SIM_NETWORK_LOCKED_PUK:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->SIM_NETWORK_SUBSET_LOCKED_PUK:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->SIM_CORPORATE_LOCKED_PUK:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->SIM_SERVICE_PROVIDER_LOCKED_PUK:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->DEACTIVED:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->$VALUES:[Lcom/android/internal/telephony/IccCardConstants$State;

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
    .line 96
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 1
    .parameter "name"

    .prologue
    .line 96
    const-class v0, Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->$VALUES:[Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/IccCardConstants$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0
.end method


# virtual methods
.method public getIntentString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 139
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$1;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 168
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 140
    :pswitch_0
    const-string v0, "ABSENT"

    goto :goto_0

    .line 141
    :pswitch_1
    const-string v0, "LOCKED"

    goto :goto_0

    .line 142
    :pswitch_2
    const-string v0, "LOCKED"

    goto :goto_0

    .line 159
    :pswitch_3
    const-string v0, "LOCKED"

    goto :goto_0

    .line 161
    :pswitch_4
    const-string v0, "READY"

    goto :goto_0

    .line 162
    :pswitch_5
    const-string v0, "NOT_READY"

    goto :goto_0

    .line 163
    :pswitch_6
    const-string v0, "LOCKED"

    goto :goto_0

    .line 164
    :pswitch_7
    const-string v0, "CARD_IO_ERROR"

    goto :goto_0

    .line 166
    :pswitch_8
    const-string v0, "DEACTIVED"

    goto :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public getReason()Ljava/lang/String;
    .locals 2

    .prologue
    .line 177
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$1;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 199
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 178
    :pswitch_1
    const-string v0, "PIN"

    goto :goto_0

    .line 179
    :pswitch_2
    const-string v0, "PUK"

    goto :goto_0

    .line 180
    :pswitch_3
    const-string v0, "NETWORK"

    goto :goto_0

    .line 182
    :pswitch_4
    const-string v0, "SIM NETWORK SUBSET"

    goto :goto_0

    .line 183
    :pswitch_5
    const-string v0, "SIM CORPORATE"

    goto :goto_0

    .line 184
    :pswitch_6
    const-string v0, "SIM SERVICE PROVIDER"

    goto :goto_0

    .line 185
    :pswitch_7
    const-string v0, "SIM SIM"

    goto :goto_0

    .line 186
    :pswitch_8
    const-string v0, "RUIM NETWORK1"

    goto :goto_0

    .line 187
    :pswitch_9
    const-string v0, "RUIM NETWORK2"

    goto :goto_0

    .line 188
    :pswitch_a
    const-string v0, "RUIM HRPD"

    goto :goto_0

    .line 189
    :pswitch_b
    const-string v0, "RUIM CORPORATE"

    goto :goto_0

    .line 190
    :pswitch_c
    const-string v0, "RUIM SERVICE PROVIDER"

    goto :goto_0

    .line 191
    :pswitch_d
    const-string v0, "RUIM RUIM"

    goto :goto_0

    .line 192
    :pswitch_e
    const-string v0, "SIM LOCK BLOCK"

    goto :goto_0

    .line 193
    :pswitch_f
    const-string v0, "SIM LOCK NETWORK SUBSET BLOCK"

    goto :goto_0

    .line 194
    :pswitch_10
    const-string v0, "SIM LOCK CORPORATE BLOCK"

    goto :goto_0

    .line 195
    :pswitch_11
    const-string v0, "SIM LOCK SERVICE PROVIDERBLOCK"

    goto :goto_0

    .line 197
    :pswitch_12
    const-string v0, "PERM_DISABLED"

    goto :goto_0

    .line 198
    :pswitch_13
    const-string v0, "CARD_IO_ERROR"

    goto :goto_0

    .line 177
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method public iccCardExist()Z
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPinLocked()Z
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPukLocked()Z
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
