.class public Lcom/huawei/android/hwpowermanager/model/ChangeMode;
.super Ljava/lang/Object;
.source "ChangeMode.java"


# static fields
.field private static sChangeMode:Lcom/huawei/android/hwpowermanager/model/ChangeMode;


# instance fields
.field private GENIE_NORMAL_MODE:I

.field private GENIE_SMART_MODE:I

.field private GENIE_SUPER_MODE:I

.field private IPERFORMANCE_MODE:I

.field private IPOWER_SAVE_MODE:I

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->sChangeMode:Lcom/huawei/android/hwpowermanager/model/ChangeMode;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x3

    iput v0, p0, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->GENIE_NORMAL_MODE:I

    .line 23
    const/4 v0, 0x2

    iput v0, p0, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->GENIE_SMART_MODE:I

    .line 24
    iput v1, p0, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->GENIE_SUPER_MODE:I

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->IPOWER_SAVE_MODE:I

    .line 28
    iput v1, p0, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->IPERFORMANCE_MODE:I

    .line 34
    iput-object p1, p0, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method private SetAlarmPolicyState(Landroid/content/Context;Z)V
    .locals 8
    .parameter "context"
    .parameter "flag"

    .prologue
    .line 197
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 198
    .local v0, am:Landroid/app/AlarmManager;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 199
    .local v1, amCls:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .line 201
    .local v3, getITelephonyMethod:Ljava/lang/reflect/Method;
    :try_start_0
    const-string v4, "setAlarmPolicyState"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 202
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 210
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v2

    .line 204
    .local v2, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 205
    .end local v2           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v2

    .line 206
    .local v2, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 207
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 208
    .local v2, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huawei/android/hwpowermanager/model/ChangeMode;
    .locals 2
    .parameter "context"

    .prologue
    .line 39
    sget-object v0, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->sChangeMode:Lcom/huawei/android/hwpowermanager/model/ChangeMode;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/huawei/android/hwpowermanager/model/ChangeMode;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/huawei/android/hwpowermanager/model/ChangeMode;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->sChangeMode:Lcom/huawei/android/hwpowermanager/model/ChangeMode;

    .line 44
    :cond_0
    sget-object v0, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->sChangeMode:Lcom/huawei/android/hwpowermanager/model/ChangeMode;

    return-object v0
.end method

.method private normalSpan(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "mSaveMode"

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0, p1, v1}, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->setSceneBacklight(Landroid/content/Context;Z)V

    .line 93
    iget v0, p0, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->IPERFORMANCE_MODE:I

    invoke-direct {p0, p1, v0}, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->setCpuFreq(Landroid/content/Context;I)V

    .line 95
    const-string v0, "min_level"

    invoke-direct {p0, p1, v0}, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->setConnect(Landroid/content/Context;Ljava/lang/String;)V

    .line 96
    invoke-direct {p0, p1, v1}, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->SetAlarmPolicyState(Landroid/content/Context;Z)V

    .line 99
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->setUseCtrlSocket(Landroid/content/Context;Z)V

    .line 103
    iget v0, p0, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->GENIE_NORMAL_MODE:I

    invoke-virtual {p0, v1, v0}, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->wirteSaveMode(II)V

    .line 105
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->wirteLastSaveMode(I)V

    .line 106
    return-void
.end method

.method private setConnect(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 180
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 183
    :try_start_0
    const-string v2, "setSmartKeyguardLevel"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 184
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 192
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v0

    .line 186
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 187
    :catch_1
    move-exception v0

    .line 188
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 189
    :catch_2
    move-exception v0

    .line 190
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method private setCpuFreq(Landroid/content/Context;I)V
    .locals 8
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 164
    .local v2, pm:Landroid/os/PowerManager;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 165
    .local v3, pmCls:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 167
    .local v1, getITelephonyMethod:Ljava/lang/reflect/Method;
    :try_start_0
    const-string v4, "setPowerSaveMode"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 168
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 176
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 171
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 172
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 173
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 174
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method private setSceneBacklight(Landroid/content/Context;Z)V
    .locals 8
    .parameter "context"
    .parameter "flag"

    .prologue
    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 147
    .local v2, pm:Landroid/os/PowerManager;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 148
    .local v3, pmCls:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 150
    .local v0, backlightSwitcher:Ljava/lang/reflect/Method;
    :try_start_0
    const-string v4, "setSceneBacklightSwitcher"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 151
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 159
    :goto_0
    return-void

    .line 152
    :catch_0
    move-exception v1

    .line 153
    .local v1, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 154
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 155
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 156
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 157
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method private setUseCtrlSocket(Landroid/content/Context;Z)V
    .locals 9
    .parameter "context"
    .parameter "state"

    .prologue
    .line 215
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 216
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 217
    .local v1, cmCls:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .line 219
    .local v3, getITelephonyMethod:Ljava/lang/reflect/Method;
    :try_start_0
    const-string v5, "setUseCtrlSocket"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 220
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    .line 230
    :goto_0
    return-void

    .line 221
    :catch_0
    move-exception v2

    .line 222
    .local v2, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 223
    .end local v2           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v2

    .line 224
    .local v2, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 225
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 226
    .local v2, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 227
    .end local v2           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v4

    .line 228
    .local v4, ne:Ljava/lang/NullPointerException;
    invoke-virtual {v4}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method private smartSpan(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "mSaveMode"

    .prologue
    const/4 v1, 0x1

    .line 109
    invoke-direct {p0, p1, v1}, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->setSceneBacklight(Landroid/content/Context;Z)V

    .line 110
    const-string v0, "normal_level"

    invoke-direct {p0, p1, v0}, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->setConnect(Landroid/content/Context;Ljava/lang/String;)V

    .line 112
    iget v0, p0, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->IPOWER_SAVE_MODE:I

    invoke-direct {p0, p1, v0}, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->setCpuFreq(Landroid/content/Context;I)V

    .line 114
    invoke-direct {p0, p1, v1}, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->SetAlarmPolicyState(Landroid/content/Context;Z)V

    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->setUseCtrlSocket(Landroid/content/Context;Z)V

    .line 121
    iget v0, p0, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->GENIE_SMART_MODE:I

    invoke-virtual {p0, v1, v0}, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->wirteSaveMode(II)V

    .line 123
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->wirteLastSaveMode(I)V

    .line 124
    return-void
.end method

.method private superSpan(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "mSaveMode"

    .prologue
    const/4 v1, 0x1

    .line 127
    invoke-direct {p0, p1, v1}, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->setSceneBacklight(Landroid/content/Context;Z)V

    .line 129
    iget v0, p0, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->IPOWER_SAVE_MODE:I

    invoke-direct {p0, p1, v0}, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->setCpuFreq(Landroid/content/Context;I)V

    .line 131
    const-string v0, "max_level"

    invoke-direct {p0, p1, v0}, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->setConnect(Landroid/content/Context;Ljava/lang/String;)V

    .line 132
    invoke-direct {p0, p1, v1}, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->SetAlarmPolicyState(Landroid/content/Context;Z)V

    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->setUseCtrlSocket(Landroid/content/Context;Z)V

    .line 139
    const/4 v0, 0x2

    iget v1, p0, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->GENIE_SUPER_MODE:I

    invoke-virtual {p0, v0, v1}, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->wirteSaveMode(II)V

    .line 141
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->wirteLastSaveMode(I)V

    .line 142
    return-void
.end method


# virtual methods
.method public change(I)V
    .locals 1
    .parameter "mSaveModeNum"

    .prologue
    .line 50
    if-nez p1, :cond_1

    .line 51
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->normalSpan(Landroid/content/Context;I)V

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 53
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->smartSpan(Landroid/content/Context;I)V

    goto :goto_0

    .line 54
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->superSpan(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public readSaveMode()I
    .locals 4

    .prologue
    .line 74
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->mContext:Landroid/content/Context;

    const-string v2, "hwpowermanager"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 75
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "saveMode"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public wirteLastSaveMode(I)V
    .locals 5
    .parameter "mLastSaveMode"

    .prologue
    .line 79
    iget-object v2, p0, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->mContext:Landroid/content/Context;

    const-string v3, "hwpowermanager"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 80
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 81
    .local v0, localEditor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "lastSaveMode"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 82
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 83
    return-void
.end method

.method public wirteSaveMode(II)V
    .locals 6
    .parameter "mSaveMode"
    .parameter "genieValue"

    .prologue
    .line 62
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->mContext:Landroid/content/Context;

    const-string v4, "hwpowermanager"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 63
    .local v2, settings:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 64
    .local v1, localEditor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "saveMode"

    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 65
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 67
    new-instance v0, Landroid/content/Intent;

    const-string v3, "huawei.intent.action.POWER_MODE_CHANGED_ACTION"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "state"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 69
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/model/ChangeMode;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 71
    return-void
.end method
