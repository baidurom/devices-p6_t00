.class Lcom/android/server/power/ShutdownThread$8;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field final synthetic val$done:[Z

.field final synthetic val$endTime:J


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;J[Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 751
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$8;->this$0:Lcom/android/server/power/ShutdownThread;

    iput-wide p2, p0, Lcom/android/server/power/ShutdownThread$8;->val$endTime:J

    iput-object p4, p0, Lcom/android/server/power/ShutdownThread$8;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 757
    const-string v11, "nfc"

    invoke-static {v11}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v5

    .line 759
    .local v5, nfc:Landroid/nfc/INfcAdapter;
    const-string v11, "phone"

    invoke-static {v11}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v7

    .line 761
    .local v7, phone:Lcom/android/internal/telephony/ITelephony;
    const-string v11, "bluetooth_manager"

    invoke-static {v11}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    .line 766
    .local v0, bluetooth:Landroid/bluetooth/IBluetoothManager;
    if-eqz v5, :cond_0

    :try_start_0
    invoke-interface {v5}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v11

    if-ne v11, v9, :cond_5

    :cond_0
    move v6, v9

    .line 768
    .local v6, nfcOff:Z
    :goto_0
    if-nez v6, :cond_1

    .line 769
    const-string v11, "ShutdownThread"

    const-string v12, "Turning off NFC..."

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    const/4 v11, 0x0

    invoke-interface {v5, v11}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 778
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->isEnabled()Z

    move-result v11

    if-nez v11, :cond_6

    :cond_2
    move v1, v9

    .line 779
    .local v1, bluetoothOff:Z
    :goto_2
    if-nez v1, :cond_3

    .line 780
    const-string v11, "ShutdownThread"

    const-string v12, "Disabling Bluetooth..."

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    const/4 v11, 0x0

    invoke-interface {v0, v11}, Landroid/bluetooth/IBluetoothManager;->disable(Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 790
    :cond_3
    :goto_3
    const/4 v8, 0x1

    .line 791
    .local v8, radioOff:Z
    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 792
    const-string v11, "phone_msim"

    invoke-static {v11}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v4

    .line 794
    .local v4, mphone:Lcom/android/internal/telephony/msim/ITelephonyMSim;
    if-eqz v4, :cond_a

    .line 796
    const-string v11, "ShutdownThread"

    const-string v12, "mphone is not null"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    const/4 v3, 0x0

    .local v3, i:I
    :goto_4
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v11

    if-ge v3, v11, :cond_a

    .line 798
    if-eqz v8, :cond_7

    invoke-interface {v4, v3}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->isRadioOn(I)Z

    move-result v11

    if-nez v11, :cond_7

    move v8, v9

    .line 799
    :goto_5
    invoke-interface {v4, v3}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->isRadioOn(I)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 800
    const-string v11, "ShutdownThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Turning off radio on Subscription :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    const/4 v11, 0x0

    invoke-interface {v4, v11, v3}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->setRadio(ZI)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 797
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .end local v1           #bluetoothOff:Z
    .end local v3           #i:I
    .end local v4           #mphone:Lcom/android/internal/telephony/msim/ITelephonyMSim;
    .end local v6           #nfcOff:Z
    .end local v8           #radioOff:Z
    :cond_5
    move v6, v10

    .line 766
    goto :goto_0

    .line 772
    :catch_0
    move-exception v2

    .line 773
    .local v2, ex:Landroid/os/RemoteException;
    const-string v11, "ShutdownThread"

    const-string v12, "RemoteException during NFC shutdown"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 774
    const/4 v6, 0x1

    .restart local v6       #nfcOff:Z
    goto :goto_1

    .end local v2           #ex:Landroid/os/RemoteException;
    :cond_6
    move v1, v10

    .line 778
    goto :goto_2

    .line 783
    :catch_1
    move-exception v2

    .line 784
    .restart local v2       #ex:Landroid/os/RemoteException;
    const-string v11, "ShutdownThread"

    const-string v12, "RemoteException during bluetooth shutdown"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 785
    const/4 v1, 0x1

    .restart local v1       #bluetoothOff:Z
    goto :goto_3

    .end local v2           #ex:Landroid/os/RemoteException;
    .restart local v3       #i:I
    .restart local v4       #mphone:Lcom/android/internal/telephony/msim/ITelephonyMSim;
    .restart local v8       #radioOff:Z
    :cond_7
    move v8, v10

    .line 798
    goto :goto_5

    .line 806
    .end local v3           #i:I
    .end local v4           #mphone:Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :cond_8
    if-eqz v7, :cond_9

    :try_start_3
    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v11

    if-nez v11, :cond_f

    :cond_9
    move v8, v9

    .line 807
    :goto_6
    if-nez v8, :cond_a

    .line 808
    const-string v11, "ShutdownThread"

    const-string v12, "Turning off radio..."

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    const/4 v11, 0x0

    invoke-interface {v7, v11}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 818
    :cond_a
    :goto_7
    const-string v11, "ShutdownThread"

    const-string v12, "Waiting for NFC, Bluetooth and Radio..."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    :goto_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    iget-wide v13, p0, Lcom/android/server/power/ShutdownThread$8;->val$endTime:J

    cmp-long v11, v11, v13

    if-gez v11, :cond_e

    .line 821
    if-nez v1, :cond_b

    .line 823
    :try_start_4
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->isEnabled()Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v11

    if-nez v11, :cond_10

    move v1, v9

    .line 828
    :goto_9
    if-eqz v1, :cond_b

    .line 829
    const-string v11, "ShutdownThread"

    const-string v12, "Bluetooth turned off."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    :cond_b
    if-nez v8, :cond_c

    .line 834
    :try_start_5
    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    move-result v11

    if-nez v11, :cond_11

    move v8, v9

    .line 839
    :goto_a
    if-eqz v8, :cond_c

    .line 840
    const-string v11, "ShutdownThread"

    const-string v12, "Radio turned off."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    :cond_c
    if-nez v6, :cond_d

    .line 845
    :try_start_6
    invoke-interface {v5}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_5

    move-result v11

    if-ne v11, v9, :cond_12

    move v6, v9

    .line 850
    :goto_b
    if-eqz v8, :cond_d

    .line 851
    const-string v11, "ShutdownThread"

    const-string v12, "NFC turned off."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    :cond_d
    if-eqz v8, :cond_13

    if-eqz v1, :cond_13

    if-eqz v6, :cond_13

    .line 856
    const-string v11, "ShutdownThread"

    const-string v12, "NFC, Radio and Bluetooth shutdown complete."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    iget-object v11, p0, Lcom/android/server/power/ShutdownThread$8;->val$done:[Z

    aput-boolean v9, v11, v10

    .line 862
    :cond_e
    return-void

    :cond_f
    move v8, v10

    .line 806
    goto :goto_6

    .line 813
    :catch_2
    move-exception v2

    .line 814
    .restart local v2       #ex:Landroid/os/RemoteException;
    const-string v11, "ShutdownThread"

    const-string v12, "RemoteException during radio shutdown"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 815
    const/4 v8, 0x1

    goto :goto_7

    .end local v2           #ex:Landroid/os/RemoteException;
    :cond_10
    move v1, v10

    .line 823
    goto :goto_9

    .line 824
    :catch_3
    move-exception v2

    .line 825
    .restart local v2       #ex:Landroid/os/RemoteException;
    const-string v11, "ShutdownThread"

    const-string v12, "RemoteException during bluetooth shutdown"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 826
    const/4 v1, 0x1

    goto :goto_9

    .end local v2           #ex:Landroid/os/RemoteException;
    :cond_11
    move v8, v10

    .line 834
    goto :goto_a

    .line 835
    :catch_4
    move-exception v2

    .line 836
    .restart local v2       #ex:Landroid/os/RemoteException;
    const-string v11, "ShutdownThread"

    const-string v12, "RemoteException during radio shutdown"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 837
    const/4 v8, 0x1

    goto :goto_a

    .end local v2           #ex:Landroid/os/RemoteException;
    :cond_12
    move v6, v10

    .line 845
    goto :goto_b

    .line 846
    :catch_5
    move-exception v2

    .line 847
    .restart local v2       #ex:Landroid/os/RemoteException;
    const-string v11, "ShutdownThread"

    const-string v12, "RemoteException during NFC shutdown"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 848
    const/4 v6, 0x1

    goto :goto_b

    .line 860
    .end local v2           #ex:Landroid/os/RemoteException;
    :cond_13
    const-wide/16 v11, 0x1f4

    invoke-static {v11, v12}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_8
.end method
