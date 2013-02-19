.class public abstract Lcom/huawei/telephony/IHuaweiTelephony$Stub;
.super Landroid/os/Binder;
.source "IHuaweiTelephony.java"

# interfaces
.implements Lcom/huawei/telephony/IHuaweiTelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/telephony/IHuaweiTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/telephony/IHuaweiTelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.huawei.telephony.IHuaweiTelephony"

.field static final TRANSACTION_ATDirectChannel:I = 0x6

.field static final TRANSACTION_ATDirectChannelMain:I = 0x7

.field static final TRANSACTION_IgnoreManualSelectMode:I = 0x1d

.field static final TRANSACTION_IsReselectionEnabled:I = 0x18

.field static final TRANSACTION_IsSlot2Gsm:I = 0x1c

.field static final TRANSACTION_PowerOnCdmaModem:I = 0x14

.field static final TRANSACTION_PowerOnGsmModem:I = 0x17

.field static final TRANSACTION_ResetStatus:I = 0x19

.field static final TRANSACTION_SetCdmaCardTypeReady:I = 0x13

.field static final TRANSACTION_SetCdmaNetworkState:I = 0x15

.field static final TRANSACTION_SetGsmCardTypeReady:I = 0x16

.field static final TRANSACTION_SwitchModem:I = 0x1b

.field static final TRANSACTION_cdmaCardInGsmMode:I = 0x12

.field static final TRANSACTION_clearUserPrefWhenChangeMode:I = 0x10

.field static final TRANSACTION_getCardType:I = 0x5

.field static final TRANSACTION_getCdmaPrlVersion:I = 0xd

.field static final TRANSACTION_getDSDARadioState:I = 0xf

.field static final TRANSACTION_getDemoStringAsync:I = 0x1

.field static final TRANSACTION_getEsn:I = 0xb

.field static final TRANSACTION_getImsiForGSMSlot:I = 0x1f

.field static final TRANSACTION_getMin:I = 0xa

.field static final TRANSACTION_getServiceState:I = 0x9

.field static final TRANSACTION_getSignalStrength:I = 0x8

.field static final TRANSACTION_getSlotIdFromSubId:I = 0x4

.field static final TRANSACTION_getSubidFromSlotId:I = 0x3

.field static final TRANSACTION_getUimid:I = 0xc

.field static final TRANSACTION_isCTNationRoamingEnable:I = 0xe

.field static final TRANSACTION_isCardPresent:I = 0x2

.field static final TRANSACTION_isSubActive:I = 0x11

.field static final TRANSACTION_isSubDeactived:I = 0x1e

.field static final TRANSACTION_setDualCardMode:I = 0x1a


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.huawei.telephony.IHuaweiTelephony"

    invoke-virtual {p0, p0, v0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/huawei/telephony/IHuaweiTelephony;
    .locals 2
    .parameter "obj"

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    .line 33
    :cond_0
    const-string v1, "com.huawei.telephony.IHuaweiTelephony"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/huawei/telephony/IHuaweiTelephony;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Lcom/huawei/telephony/IHuaweiTelephony;

    goto :goto_0

    .line 37
    :cond_1
    new-instance v0, Lcom/huawei/telephony/IHuaweiTelephony$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 337
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 49
    :sswitch_0
    const-string v2, "com.huawei.telephony.IHuaweiTelephony"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :sswitch_1
    const-string v2, "com.huawei.telephony.IHuaweiTelephony"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/telephony/IPhoneCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/telephony/IPhoneCallback;

    move-result-object v0

    .line 57
    .local v0, _arg0:Lcom/huawei/telephony/IPhoneCallback;
    invoke-virtual {p0, v0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;->getDemoStringAsync(Lcom/huawei/telephony/IPhoneCallback;)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 63
    .end local v0           #_arg0:Lcom/huawei/telephony/IPhoneCallback;
    :sswitch_2
    const-string v4, "com.huawei.telephony.IHuaweiTelephony"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 66
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;->isCardPresent(I)Z

    move-result v1

    .line 67
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 73
    .end local v0           #_arg0:I
    .end local v1           #_result:Z
    :sswitch_3
    const-string v2, "com.huawei.telephony.IHuaweiTelephony"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 76
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;->getSubidFromSlotId(I)I

    move-result v1

    .line 77
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 83
    .end local v0           #_arg0:I
    .end local v1           #_result:I
    :sswitch_4
    const-string v2, "com.huawei.telephony.IHuaweiTelephony"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 86
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;->getSlotIdFromSubId(I)I

    move-result v1

    .line 87
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 93
    .end local v0           #_arg0:I
    .end local v1           #_result:I
    :sswitch_5
    const-string v2, "com.huawei.telephony.IHuaweiTelephony"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 96
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;->getCardType(I)I

    move-result v1

    .line 97
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 103
    .end local v0           #_arg0:I
    .end local v1           #_result:I
    :sswitch_6
    const-string v2, "com.huawei.telephony.IHuaweiTelephony"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;->ATDirectChannel(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 113
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_result:[Ljava/lang/String;
    :sswitch_7
    const-string v2, "com.huawei.telephony.IHuaweiTelephony"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, _arg0:[Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;->ATDirectChannelMain([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 117
    .restart local v1       #_result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 123
    .end local v0           #_arg0:[Ljava/lang/String;
    .end local v1           #_result:[Ljava/lang/String;
    :sswitch_8
    const-string v4, "com.huawei.telephony.IHuaweiTelephony"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;->getSignalStrength()Landroid/os/Bundle;

    move-result-object v1

    .line 125
    .local v1, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    if-eqz v1, :cond_1

    .line 127
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    invoke-virtual {v1, p3, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 131
    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 137
    .end local v1           #_result:Landroid/os/Bundle;
    :sswitch_9
    const-string v4, "com.huawei.telephony.IHuaweiTelephony"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;->getServiceState()Landroid/os/Bundle;

    move-result-object v1

    .line 139
    .restart local v1       #_result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    if-eqz v1, :cond_2

    .line 141
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    invoke-virtual {v1, p3, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 145
    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 151
    .end local v1           #_result:Landroid/os/Bundle;
    :sswitch_a
    const-string v2, "com.huawei.telephony.IHuaweiTelephony"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;->getMin()Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 159
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_b
    const-string v2, "com.huawei.telephony.IHuaweiTelephony"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;->getEsn()Ljava/lang/String;

    move-result-object v1

    .line 161
    .restart local v1       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 167
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_c
    const-string v2, "com.huawei.telephony.IHuaweiTelephony"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;->getUimid()Ljava/lang/String;

    move-result-object v1

    .line 169
    .restart local v1       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 175
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_d
    const-string v2, "com.huawei.telephony.IHuaweiTelephony"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v1

    .line 177
    .restart local v1       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 183
    .end local v1           #_result:Ljava/lang/String;
    :sswitch_e
    const-string v4, "com.huawei.telephony.IHuaweiTelephony"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;->isCTNationRoamingEnable()Z

    move-result v1

    .line 185
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    if-eqz v1, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 191
    .end local v1           #_result:Z
    :sswitch_f
    const-string v4, "com.huawei.telephony.IHuaweiTelephony"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 194
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;->getDSDARadioState(I)Z

    move-result v1

    .line 195
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    if-eqz v1, :cond_4

    move v2, v3

    :cond_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 201
    .end local v0           #_arg0:I
    .end local v1           #_result:Z
    :sswitch_10
    const-string v2, "com.huawei.telephony.IHuaweiTelephony"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 204
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;->clearUserPrefWhenChangeMode(I)V

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 210
    .end local v0           #_arg0:I
    :sswitch_11
    const-string v4, "com.huawei.telephony.IHuaweiTelephony"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 213
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;->isSubActive(I)Z

    move-result v1

    .line 214
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    if-eqz v1, :cond_5

    move v2, v3

    :cond_5
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 220
    .end local v0           #_arg0:I
    .end local v1           #_result:Z
    :sswitch_12
    const-string v4, "com.huawei.telephony.IHuaweiTelephony"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 223
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;->cdmaCardInGsmMode(I)Z

    move-result v1

    .line 224
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    if-eqz v1, :cond_6

    move v2, v3

    :cond_6
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 230
    .end local v0           #_arg0:I
    .end local v1           #_result:Z
    :sswitch_13
    const-string v2, "com.huawei.telephony.IHuaweiTelephony"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;->SetCdmaCardTypeReady()V

    .line 232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 237
    :sswitch_14
    const-string v4, "com.huawei.telephony.IHuaweiTelephony"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    move v0, v3

    .line 240
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;->PowerOnCdmaModem(Z)V

    .line 241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_7
    move v0, v2

    .line 239
    goto :goto_1

    .line 246
    :sswitch_15
    const-string v2, "com.huawei.telephony.IHuaweiTelephony"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 249
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;->SetCdmaNetworkState(I)V

    .line 250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 255
    .end local v0           #_arg0:I
    :sswitch_16
    const-string v2, "com.huawei.telephony.IHuaweiTelephony"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;->SetGsmCardTypeReady()V

    .line 257
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 262
    :sswitch_17
    const-string v4, "com.huawei.telephony.IHuaweiTelephony"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    move v0, v3

    .line 265
    .local v0, _arg0:Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;->PowerOnGsmModem(Z)V

    .line 266
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_8
    move v0, v2

    .line 264
    goto :goto_2

    .line 271
    :sswitch_18
    const-string v4, "com.huawei.telephony.IHuaweiTelephony"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;->IsReselectionEnabled()Z

    move-result v1

    .line 273
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    if-eqz v1, :cond_9

    move v2, v3

    :cond_9
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 279
    .end local v1           #_result:Z
    :sswitch_19
    const-string v2, "com.huawei.telephony.IHuaweiTelephony"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;->ResetStatus()V

    .line 281
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 286
    :sswitch_1a
    const-string v2, "com.huawei.telephony.IHuaweiTelephony"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 289
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;->setDualCardMode(I)V

    .line 290
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 295
    .end local v0           #_arg0:I
    :sswitch_1b
    const-string v2, "com.huawei.telephony.IHuaweiTelephony"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 298
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;->SwitchModem(I)V

    .line 299
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 304
    .end local v0           #_arg0:I
    :sswitch_1c
    const-string v4, "com.huawei.telephony.IHuaweiTelephony"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;->IsSlot2Gsm()Z

    move-result v1

    .line 306
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    if-eqz v1, :cond_a

    move v2, v3

    :cond_a
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 312
    .end local v1           #_result:Z
    :sswitch_1d
    const-string v4, "com.huawei.telephony.IHuaweiTelephony"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;->IgnoreManualSelectMode()Z

    move-result v1

    .line 314
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    if-eqz v1, :cond_b

    move v2, v3

    :cond_b
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 320
    .end local v1           #_result:Z
    :sswitch_1e
    const-string v4, "com.huawei.telephony.IHuaweiTelephony"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 323
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;->isSubDeactived(I)Z

    move-result v1

    .line 324
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    if-eqz v1, :cond_c

    move v2, v3

    :cond_c
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 330
    .end local v0           #_arg0:I
    .end local v1           #_result:Z
    :sswitch_1f
    const-string v2, "com.huawei.telephony.IHuaweiTelephony"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;->getImsiForGSMSlot()Ljava/lang/String;

    move-result-object v1

    .line 332
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 45
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
