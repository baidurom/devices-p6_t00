.class public final Lcom/huawei/motiondetection/MRUtils;
.super Ljava/lang/Object;
.source "MRUtils.java"


# static fields
.field public static final MOTION_ENABLE_STATE_KEY:Ljava/lang/String; = "motion_enable_state"

.field public static final MOTION_PROXY_VERSION_CODE:I = 0xeeae

.field public static final MOTION_PROXY_VERSION_NAME:Ljava/lang/String; = "6.1.102"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static getMotionEnableState(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, -0x1

    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_enable_state"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 95
    .local v0, enabled:I
    if-ne v0, v3, :cond_0

    .line 96
    const/4 v0, 0x1

    .line 98
    :cond_0
    return v0
.end method

.method public static getMotionEnableState(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .parameter "context"
    .parameter "motionitemkey"

    .prologue
    const/4 v2, -0x1

    .line 126
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 129
    .local v0, enabled:I
    if-ne v0, v2, :cond_0

    .line 130
    const/4 v0, 0x1

    .line 133
    :cond_0
    return v0
.end method

.method public static isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "serviceProcess"

    .prologue
    .line 144
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 146
    .local v1, manager:Landroid/app/ActivityManager;
    const v3, 0x7fffffff

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 147
    .local v2, service:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v3, v2, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 148
    const/4 v3, 0x1

    .line 151
    .end local v2           #service:Landroid/app/ActivityManager$RunningServiceInfo;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static localProcess(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "orgStr"

    .prologue
    .line 65
    if-nez p0, :cond_0

    .line 66
    const-string v0, ""

    .line 69
    :goto_0
    return-object v0

    .line 68
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, localStr:Ljava/lang/String;
    goto :goto_0
.end method

.method public static setMotionEnableState(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "enable"

    .prologue
    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_enable_state"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 81
    return-void
.end method

.method public static setMotionEnableState(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .parameter "context"
    .parameter "motionitemkey"
    .parameter "enable"

    .prologue
    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 113
    return-void
.end method
