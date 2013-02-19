.class public Lcom/huawei/android/bluetooth/BluetoothDeviceEx;
.super Ljava/lang/Object;
.source "BluetoothDeviceEx.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothDevice"


# instance fields
.field private mDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .parameter "device"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/huawei/android/bluetooth/BluetoothDeviceEx;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 74
    return-void
.end method


# virtual methods
.method public authorizeService(Ljava/lang/String;ZZ)Z
    .locals 7
    .parameter "service"
    .parameter "authorized"
    .parameter "always"

    .prologue
    .line 81
    :try_start_0
    const-string v3, "android.bluetooth.BluetoothDevice"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 82
    .local v0, bluetoothDeviceExClass:Ljava/lang/Class;
    const-string v3, "authorizeService"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 84
    .local v2, testMethod:Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/huawei/android/bluetooth/BluetoothDeviceEx;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    move-result v3

    return v3

    .line 85
    .end local v0           #bluetoothDeviceExClass:Ljava/lang/Class;
    .end local v2           #testMethod:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 86
    .local v1, e:Ljava/lang/ClassNotFoundException;
    new-instance v3, Lcom/huawei/android/util/NoExtAPIException;

    const-string v4, "method not supported."

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 87
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 88
    .local v1, e:Ljava/lang/NoSuchMethodException;
    new-instance v3, Lcom/huawei/android/util/NoExtAPIException;

    const-string v4, "method not supported."

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 89
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 90
    .local v1, e:Ljava/lang/IllegalArgumentException;
    new-instance v3, Lcom/huawei/android/util/NoExtAPIException;

    const-string v4, "method not supported."

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 91
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 92
    .local v1, e:Ljava/lang/IllegalAccessException;
    new-instance v3, Lcom/huawei/android/util/NoExtAPIException;

    const-string v4, "method not supported."

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 93
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v1

    .line 94
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Lcom/huawei/android/util/NoExtAPIException;

    const-string v4, "method not supported."

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public getBlockedState()Z
    .locals 6

    .prologue
    .line 108
    :try_start_0
    const-string v3, "android.bluetooth.BluetoothDevice"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 109
    .local v0, bluetoothDeviceExClass:Ljava/lang/Class;
    const-string v3, "getBlockedState"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 110
    .local v2, testMethod:Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/huawei/android/bluetooth/BluetoothDeviceEx;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    move-result v3

    return v3

    .line 111
    .end local v0           #bluetoothDeviceExClass:Ljava/lang/Class;
    .end local v2           #testMethod:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 112
    .local v1, e:Ljava/lang/ClassNotFoundException;
    new-instance v3, Lcom/huawei/android/util/NoExtAPIException;

    const-string v4, "method not supported."

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 113
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 114
    .local v1, e:Ljava/lang/NoSuchMethodException;
    new-instance v3, Lcom/huawei/android/util/NoExtAPIException;

    const-string v4, "method not supported."

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 115
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 116
    .local v1, e:Ljava/lang/IllegalArgumentException;
    new-instance v3, Lcom/huawei/android/util/NoExtAPIException;

    const-string v4, "method not supported."

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 117
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 118
    .local v1, e:Ljava/lang/IllegalAccessException;
    new-instance v3, Lcom/huawei/android/util/NoExtAPIException;

    const-string v4, "method not supported."

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 119
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v1

    .line 120
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Lcom/huawei/android/util/NoExtAPIException;

    const-string v4, "method not supported."

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getDeviceType()B
    .locals 6

    .prologue
    .line 133
    :try_start_0
    const-string v3, "android.bluetooth.BluetoothDevice"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 134
    .local v0, bluetoothDeviceExClass:Ljava/lang/Class;
    const-string v3, "getDeviceType"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 135
    .local v2, testMethod:Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/huawei/android/bluetooth/BluetoothDeviceEx;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    move-result v3

    return v3

    .line 136
    .end local v0           #bluetoothDeviceExClass:Ljava/lang/Class;
    .end local v2           #testMethod:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 137
    .local v1, e:Ljava/lang/ClassNotFoundException;
    new-instance v3, Lcom/huawei/android/util/NoExtAPIException;

    const-string v4, "method not supported."

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 138
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 139
    .local v1, e:Ljava/lang/NoSuchMethodException;
    new-instance v3, Lcom/huawei/android/util/NoExtAPIException;

    const-string v4, "method not supported."

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 140
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 141
    .local v1, e:Ljava/lang/IllegalArgumentException;
    new-instance v3, Lcom/huawei/android/util/NoExtAPIException;

    const-string v4, "method not supported."

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 142
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 143
    .local v1, e:Ljava/lang/IllegalAccessException;
    new-instance v3, Lcom/huawei/android/util/NoExtAPIException;

    const-string v4, "method not supported."

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 144
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v1

    .line 145
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Lcom/huawei/android/util/NoExtAPIException;

    const-string v4, "method not supported."

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public setBlockedState(I)Z
    .locals 7
    .parameter "value"

    .prologue
    .line 160
    :try_start_0
    const-string v3, "android.bluetooth.BluetoothDevice"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 161
    .local v0, bluetoothDeviceExClass:Ljava/lang/Class;
    const-string v3, "setBlockedState"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 162
    .local v2, testMethod:Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/huawei/android/bluetooth/BluetoothDeviceEx;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    move-result v3

    return v3

    .line 163
    .end local v0           #bluetoothDeviceExClass:Ljava/lang/Class;
    .end local v2           #testMethod:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 164
    .local v1, e:Ljava/lang/ClassNotFoundException;
    new-instance v3, Lcom/huawei/android/util/NoExtAPIException;

    const-string v4, "method not supported."

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 165
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 166
    .local v1, e:Ljava/lang/NoSuchMethodException;
    new-instance v3, Lcom/huawei/android/util/NoExtAPIException;

    const-string v4, "method not supported."

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 167
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 168
    .local v1, e:Ljava/lang/IllegalArgumentException;
    new-instance v3, Lcom/huawei/android/util/NoExtAPIException;

    const-string v4, "method not supported."

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 169
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 170
    .local v1, e:Ljava/lang/IllegalAccessException;
    new-instance v3, Lcom/huawei/android/util/NoExtAPIException;

    const-string v4, "method not supported."

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 171
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v1

    .line 172
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Lcom/huawei/android/util/NoExtAPIException;

    const-string v4, "method not supported."

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/huawei/android/bluetooth/BluetoothDeviceEx;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    return-void
.end method
