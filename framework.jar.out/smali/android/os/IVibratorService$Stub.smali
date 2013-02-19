.class public abstract Landroid/os/IVibratorService$Stub;
.super Landroid/os/Binder;
.source "IVibratorService.java"

# interfaces
.implements Landroid/os/IVibratorService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IVibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IVibratorService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IVibratorService"

.field static final TRANSACTION_cancelVibrate:I = 0x4

.field static final TRANSACTION_hasVibrator:I = 0x1

.field static final TRANSACTION_vibrate:I = 0x2

.field static final TRANSACTION_vibrateEffect:I = 0x7

.field static final TRANSACTION_vibrateEffectSequence:I = 0x8

.field static final TRANSACTION_vibrateHWEffect:I = 0x9

.field static final TRANSACTION_vibratePattern:I = 0x3

.field static final TRANSACTION_vibratePatternStrength:I = 0x6

.field static final TRANSACTION_vibrateStrength:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.os.IVibratorService"

    invoke-virtual {p0, p0, v0}, Landroid/os/IVibratorService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "android.os.IVibratorService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IVibratorService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/os/IVibratorService;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Landroid/os/IVibratorService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/IVibratorService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
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
    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 159
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 43
    :sswitch_0
    const-string v1, "android.os.IVibratorService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v1, 0x1

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v1, "android.os.IVibratorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVibratorService$Stub;->hasVibrator()Z

    move-result v16

    .line 50
    .local v16, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    if-eqz v16, :cond_0

    const/4 v1, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    const/4 v1, 0x1

    goto :goto_0

    .line 51
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 56
    .end local v16           #_result:Z
    :sswitch_2
    const-string v1, "android.os.IVibratorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 60
    .local v14, _arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 61
    .local v3, _arg1:Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15, v3}, Landroid/os/IVibratorService$Stub;->vibrate(JLandroid/os/IBinder;)V

    .line 62
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    const/4 v1, 0x1

    goto :goto_0

    .line 67
    .end local v3           #_arg1:Landroid/os/IBinder;
    .end local v14           #_arg0:J
    :sswitch_3
    const-string v1, "android.os.IVibratorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v2

    .line 71
    .local v2, _arg0:[J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 73
    .local v3, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 74
    .local v5, _arg2:Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v5}, Landroid/os/IVibratorService$Stub;->vibratePattern([JILandroid/os/IBinder;)V

    .line 75
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    const/4 v1, 0x1

    goto :goto_0

    .line 80
    .end local v2           #_arg0:[J
    .end local v3           #_arg1:I
    .end local v5           #_arg2:Landroid/os/IBinder;
    :sswitch_4
    const-string v1, "android.os.IVibratorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 83
    .local v2, _arg0:Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/os/IVibratorService$Stub;->cancelVibrate(Landroid/os/IBinder;)V

    .line 84
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    const/4 v1, 0x1

    goto :goto_0

    .line 89
    .end local v2           #_arg0:Landroid/os/IBinder;
    :sswitch_5
    const-string v1, "android.os.IVibratorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 93
    .restart local v14       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 95
    .restart local v3       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 96
    .restart local v5       #_arg2:Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15, v3, v5}, Landroid/os/IVibratorService$Stub;->vibrateStrength(JILandroid/os/IBinder;)V

    .line 97
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 102
    .end local v3           #_arg1:I
    .end local v5           #_arg2:Landroid/os/IBinder;
    .end local v14           #_arg0:J
    :sswitch_6
    const-string v1, "android.os.IVibratorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v2

    .line 106
    .local v2, _arg0:[J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 108
    .restart local v3       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 110
    .local v5, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 111
    .local v6, _arg3:Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v5, v6}, Landroid/os/IVibratorService$Stub;->vibratePatternStrength([JIILandroid/os/IBinder;)V

    .line 112
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 117
    .end local v2           #_arg0:[J
    .end local v3           #_arg1:I
    .end local v5           #_arg2:I
    .end local v6           #_arg3:Landroid/os/IBinder;
    :sswitch_7
    const-string v1, "android.os.IVibratorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 121
    .local v2, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 123
    .local v3, _arg1:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 125
    .restart local v5       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .restart local v6       #_arg3:Landroid/os/IBinder;
    move-object/from16 v1, p0

    .line 126
    invoke-virtual/range {v1 .. v6}, Landroid/os/IVibratorService$Stub;->vibrateEffect(IJILandroid/os/IBinder;)V

    .line 127
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 132
    .end local v2           #_arg0:I
    .end local v3           #_arg1:J
    .end local v5           #_arg2:I
    .end local v6           #_arg3:Landroid/os/IBinder;
    :sswitch_8
    const-string v1, "android.os.IVibratorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 136
    .local v2, _arg0:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 138
    .local v3, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 140
    .local v10, _arg2:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 142
    .local v6, _arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v13

    .local v13, _arg4:Landroid/os/IBinder;
    move-object/from16 v7, p0

    move-object v8, v2

    move v9, v3

    move v12, v6

    .line 143
    invoke-virtual/range {v7 .. v13}, Landroid/os/IVibratorService$Stub;->vibrateEffectSequence([BIJILandroid/os/IBinder;)V

    .line 144
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 149
    .end local v2           #_arg0:[B
    .end local v3           #_arg1:I
    .end local v6           #_arg3:I
    .end local v10           #_arg2:J
    .end local v13           #_arg4:Landroid/os/IBinder;
    :sswitch_9
    const-string v1, "android.os.IVibratorService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 153
    .local v2, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 154
    .local v3, _arg1:Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/os/IVibratorService$Stub;->vibrateHWEffect(ILandroid/os/IBinder;)V

    .line 155
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 39
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
