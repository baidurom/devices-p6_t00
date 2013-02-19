.class public Lcom/huawei/android/hardware/fmradio/FmTransceiver;
.super Ljava/lang/Object;
.source "FmTransceiver.java"


# static fields
.field public static final FM_CHSPACE_100_KHZ:I = 0x1

.field public static final FM_CHSPACE_200_KHZ:I = 0x0

.field public static final FM_CHSPACE_50_KHZ:I = 0x2

.field public static final FM_DE_EMP50:I = 0x1

.field public static final FM_DE_EMP75:I = 0x0

.field public static final FM_EU_BAND:I = 0x1

.field public static final FM_JAPAN_STANDARD_BAND:I = 0x3

.field public static final FM_JAPAN_WIDE_BAND:I = 0x2

.field public static final FM_RDS_STD_NONE:I = 0x2

.field public static final FM_RDS_STD_RBDS:I = 0x0

.field public static final FM_RDS_STD_RDS:I = 0x1

.field protected static final FM_RX:I = 0x1

.field protected static final FM_TX:I = 0x2

.field public static final FM_USER_DEFINED_BAND:I = 0x4

.field public static final FM_US_BAND:I = 0x0

.field private static final MUTE_EVENT:I = 0x4

.field private static final RDS_EVENT:I = 0x8

.field private static final READY_EVENT:I = 0x1

.field private static final SEEK_COMPLETE_EVENT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "FmTransceiver"

.field private static final TUNE_EVENT:I = 0x2

.field private static final V4L2_CID_PRIVATE_BASE:I = 0x8000000

.field private static final V4L2_CID_PRIVATE_TAVARUA_ANTENNA:I = 0x8000012

.field private static final V4L2_DEVICE:Ljava/lang/String; = "/dev/radio0"

.field static sFd:I


# instance fields
.field protected mControl:Lcom/huawei/android/hardware/fmradio/FmRxControls;

.field protected mPowerMode:I

.field protected mRdsData:Lcom/huawei/android/hardware/fmradio/FmRxRdsData;

.field protected mRxEvents:Lcom/huawei/android/hardware/fmradio/FmRxEventListner;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected acquire(Ljava/lang/String;)Z
    .locals 4
    .parameter "device"

    .prologue
    .line 139
    const/4 v0, 0x1

    .line 140
    .local v0, bStatus:Z
    sget v1, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->sFd:I

    if-gtz v1, :cond_1

    .line 142
    const-string v1, "/dev/radio0"

    invoke-static {v1}, Lcom/huawei/android/hardware/fmradio/FmReceiverJNI;->acquireFdNative(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->sFd:I

    .line 144
    sget v1, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->sFd:I

    if-lez v1, :cond_0

    .line 145
    const-string v1, "FmTransceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Opened "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/4 v0, 0x1

    .line 163
    :goto_0
    return v0

    .line 149
    :cond_0
    const-string v1, "FmTransceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to Open "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/4 v0, 0x0

    goto :goto_0

    .line 154
    :cond_1
    const-string v1, "FmTransceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already Opened:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public configure(Lcom/huawei/android/hardware/fmradio/FmConfig;)Z
    .locals 4
    .parameter "configSettings"

    .prologue
    .line 363
    const/4 v1, 0x1

    .line 364
    .local v1, status:Z
    invoke-virtual {p1}, Lcom/huawei/android/hardware/fmradio/FmConfig;->getLowerLimit()I

    move-result v0

    .line 365
    .local v0, lowerFreq:I
    const-string v2, "FmTransceiver"

    const-string v3, "fmConfigure"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    sget v2, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-static {v2, p1}, Lcom/huawei/android/hardware/fmradio/FmConfig;->fmConfigure(ILcom/huawei/android/hardware/fmradio/FmConfig;)Z

    move-result v1

    .line 367
    invoke-virtual {p0, v0}, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->setStation(I)Z

    move-result v1

    .line 368
    return v1
.end method

.method public disable()Z
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->mControl:Lcom/huawei/android/hardware/fmradio/FmRxControls;

    sget v1, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-virtual {v0, v1}, Lcom/huawei/android/hardware/fmradio/FmRxControls;->fmOff(I)V

    .line 339
    const-string v0, "/dev/radio0"

    invoke-virtual {p0, v0}, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->release(Ljava/lang/String;)Z

    .line 340
    const/4 v0, 0x1

    return v0
.end method

.method public enable(Lcom/huawei/android/hardware/fmradio/FmConfig;I)Z
    .locals 3
    .parameter "configSettings"
    .parameter "device"

    .prologue
    .line 305
    const-string v0, "/dev/radio0"

    invoke-virtual {p0, v0}, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->acquire(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    const/4 v0, 0x0

    .line 312
    :goto_0
    return v0

    .line 308
    :cond_0
    const-string v0, "FmTransceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "turning on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v0, p0, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->mControl:Lcom/huawei/android/hardware/fmradio/FmRxControls;

    sget v1, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-virtual {v0, v1, p2}, Lcom/huawei/android/hardware/fmradio/FmRxControls;->fmOn(II)V

    .line 311
    const-string v0, "FmTransceiver"

    const-string v1, "Calling fmConfigure"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    sget v0, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-static {v0, p1}, Lcom/huawei/android/hardware/fmradio/FmConfig;->fmConfigure(ILcom/huawei/android/hardware/fmradio/FmConfig;)Z

    move-result v0

    goto :goto_0
.end method

.method public getInternalAntenna()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 429
    sget v2, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->sFd:I

    const v3, 0x8000012

    invoke-static {v2, v3}, Lcom/huawei/android/hardware/fmradio/FmReceiverJNI;->getControlNative(II)I

    move-result v0

    .line 431
    .local v0, re:I
    if-ne v0, v1, :cond_0

    .line 434
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public registerClient(Lcom/huawei/android/hardware/fmradio/FmRxEvCallbacks;)Z
    .locals 3
    .parameter "callback"

    .prologue
    .line 237
    const/4 v0, 0x0

    .line 238
    .local v0, bReturnStatus:Z
    if-eqz p1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->mRxEvents:Lcom/huawei/android/hardware/fmradio/FmRxEventListner;

    sget v2, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-virtual {v1, v2, p1}, Lcom/huawei/android/hardware/fmradio/FmRxEventListner;->startListner(ILcom/huawei/android/hardware/fmradio/FmRxEvCallbacks;)V

    .line 241
    const/4 v0, 0x1

    .line 246
    :goto_0
    return v0

    .line 244
    :cond_0
    const-string v1, "FmTransceiver"

    const-string v2, "Null, do nothing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected release(Ljava/lang/String;)Z
    .locals 3
    .parameter "device"

    .prologue
    .line 193
    sget v0, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->sFd:I

    if-eqz v0, :cond_0

    .line 195
    sget v0, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-static {v0}, Lcom/huawei/android/hardware/fmradio/FmReceiverJNI;->closeFdNative(I)I

    .line 196
    const/4 v0, 0x0

    sput v0, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->sFd:I

    .line 197
    const-string v0, "FmTransceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Turned off: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 200
    :cond_0
    const-string v0, "FmTransceiver"

    const-string v1, "Error turning off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setInternalAntenna(Z)Z
    .locals 4
    .parameter "intAnt"

    .prologue
    .line 456
    if-eqz p1, :cond_0

    .line 457
    const/4 v0, 0x1

    .line 462
    .local v0, iAntenna:I
    :goto_0
    sget v2, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->sFd:I

    const v3, 0x8000012

    invoke-static {v2, v3, v0}, Lcom/huawei/android/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v1

    .line 464
    .local v1, re:I
    if-nez v1, :cond_1

    .line 465
    const/4 v2, 0x1

    .line 467
    :goto_1
    return v2

    .line 459
    .end local v0           #iAntenna:I
    .end local v1           #re:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #iAntenna:I
    goto :goto_0

    .line 467
    .restart local v1       #re:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setNotchFilter(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 411
    invoke-static {p1}, Lcom/huawei/android/hardware/fmradio/FmReceiverJNI;->setNotchFilterNative(Z)V

    .line 412
    return-void
.end method

.method public setStation(I)Z
    .locals 2
    .parameter "frequencyKHz"

    .prologue
    .line 392
    iget-object v0, p0, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->mControl:Lcom/huawei/android/hardware/fmradio/FmRxControls;

    invoke-virtual {v0, p1}, Lcom/huawei/android/hardware/fmradio/FmRxControls;->setFreq(I)V

    .line 393
    iget-object v0, p0, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->mControl:Lcom/huawei/android/hardware/fmradio/FmRxControls;

    sget v1, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-virtual {v0, v1}, Lcom/huawei/android/hardware/fmradio/FmRxControls;->setStation(I)V

    .line 395
    const/4 v0, 0x1

    return v0
.end method

.method public unregisterClient()Z
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/huawei/android/hardware/fmradio/FmTransceiver;->mRxEvents:Lcom/huawei/android/hardware/fmradio/FmRxEventListner;

    invoke-virtual {v0}, Lcom/huawei/android/hardware/fmradio/FmRxEventListner;->stopListener()V

    .line 267
    const/4 v0, 0x1

    return v0
.end method
