.class synthetic Lcom/android/server/power/PowerManagerService$6;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$server$power$PowerManagerService$HandleType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 3206
    invoke-static {}, Lcom/android/server/power/PowerManagerService$HandleType;->values()[Lcom/android/server/power/PowerManagerService$HandleType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/power/PowerManagerService$6;->$SwitchMap$com$android$server$power$PowerManagerService$HandleType:[I

    :try_start_0
    sget-object v0, Lcom/android/server/power/PowerManagerService$6;->$SwitchMap$com$android$server$power$PowerManagerService$HandleType:[I

    sget-object v1, Lcom/android/server/power/PowerManagerService$HandleType;->WLDTOR_HT_TRANSFER:Lcom/android/server/power/PowerManagerService$HandleType;

    invoke-virtual {v1}, Lcom/android/server/power/PowerManagerService$HandleType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/server/power/PowerManagerService$6;->$SwitchMap$com$android$server$power$PowerManagerService$HandleType:[I

    sget-object v1, Lcom/android/server/power/PowerManagerService$HandleType;->WLDTOR_HT_RELEASE:Lcom/android/server/power/PowerManagerService$HandleType;

    invoke-virtual {v1}, Lcom/android/server/power/PowerManagerService$HandleType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
