.class final enum Lcom/android/server/power/PowerManagerService$GenerateType;
.super Ljava/lang/Enum;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "GenerateType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/power/PowerManagerService$GenerateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/power/PowerManagerService$GenerateType;

.field public static final enum WLDTOR_GT_ALL:Lcom/android/server/power/PowerManagerService$GenerateType;

.field public static final enum WLDTOR_GT_HISTORY:Lcom/android/server/power/PowerManagerService$GenerateType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3079
    new-instance v0, Lcom/android/server/power/PowerManagerService$GenerateType;

    const-string v1, "WLDTOR_GT_HISTORY"

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/PowerManagerService$GenerateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/PowerManagerService$GenerateType;->WLDTOR_GT_HISTORY:Lcom/android/server/power/PowerManagerService$GenerateType;

    .line 3080
    new-instance v0, Lcom/android/server/power/PowerManagerService$GenerateType;

    const-string v1, "WLDTOR_GT_ALL"

    invoke-direct {v0, v1, v3}, Lcom/android/server/power/PowerManagerService$GenerateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/PowerManagerService$GenerateType;->WLDTOR_GT_ALL:Lcom/android/server/power/PowerManagerService$GenerateType;

    .line 3078
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/server/power/PowerManagerService$GenerateType;

    sget-object v1, Lcom/android/server/power/PowerManagerService$GenerateType;->WLDTOR_GT_HISTORY:Lcom/android/server/power/PowerManagerService$GenerateType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/power/PowerManagerService$GenerateType;->WLDTOR_GT_ALL:Lcom/android/server/power/PowerManagerService$GenerateType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/power/PowerManagerService$GenerateType;->$VALUES:[Lcom/android/server/power/PowerManagerService$GenerateType;

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
    .line 3078
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/power/PowerManagerService$GenerateType;
    .locals 1
    .parameter "name"

    .prologue
    .line 3078
    const-class v0, Lcom/android/server/power/PowerManagerService$GenerateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/PowerManagerService$GenerateType;

    return-object v0
.end method

.method public static values()[Lcom/android/server/power/PowerManagerService$GenerateType;
    .locals 1

    .prologue
    .line 3078
    sget-object v0, Lcom/android/server/power/PowerManagerService$GenerateType;->$VALUES:[Lcom/android/server/power/PowerManagerService$GenerateType;

    invoke-virtual {v0}, [Lcom/android/server/power/PowerManagerService$GenerateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/power/PowerManagerService$GenerateType;

    return-object v0
.end method
