.class final Lcom/broadcom/bt/service/gatt/BluetoothGattID$1;
.super Ljava/lang/Object;
.source "BluetoothGattID.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/gatt/BluetoothGattID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/broadcom/bt/service/gatt/BluetoothGattID;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .locals 2
    .parameter "source"

    .prologue
    .line 41
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattID$1;->createFromParcel(Landroid/os/Parcel;)Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/broadcom/bt/service/gatt/BluetoothGattID;
    .locals 2
    .parameter "size"

    .prologue
    .line 45
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/gatt/BluetoothGattID$1;->newArray(I)[Lcom/broadcom/bt/service/gatt/BluetoothGattID;

    move-result-object v0

    return-object v0
.end method
