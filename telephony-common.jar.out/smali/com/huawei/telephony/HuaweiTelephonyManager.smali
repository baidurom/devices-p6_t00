.class public Lcom/huawei/telephony/HuaweiTelephonyManager;
.super Ljava/lang/Object;
.source "HuaweiTelephonyManager.java"


# static fields
.field private static final CDMA_AND_HDR_ONLY:I = 0x13

.field public static final CT_NATIONAL_ROAMING_CARD:I = 0x29

.field public static final CU_DUAL_MODE_CARD:I = 0x2a

.field private static final DUAL_CARD_MODE_CDMA:I = 0x0

.field public static final DUAL_CARD_MODE_GLOBAL_CDMA:I = 0x2

.field public static final DUAL_CARD_MODE_GLOBAL_GSM:I = 0x3

.field private static final DUAL_CARD_MODE_GSM:I = 0x1

.field public static final DUAL_MODE_CG_CARD:I = 0x28

.field public static final DUAL_MODE_UG_CARD:I = 0x32

.field private static final GSM_ONLY:I = 0xd

.field public static final SINGLE_MODE_RUIM_CARD:I = 0x1e

.field public static final SINGLE_MODE_SIM_CARD:I = 0xa

.field public static final SINGLE_MODE_USIM_CARD:I = 0x14

.field private static final TAG:Ljava/lang/String; = "HuaweiTelephonyManager"

.field public static final UNKNOWN_CARD:I = -0x1

.field private static isHwDSDAEnabled:Z

.field private static isMultiSimEnabled:Z

.field private static sInstance:Lcom/huawei/telephony/HuaweiTelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    const-string v0, "persist.dsds.enabled"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/telephony/HuaweiTelephonyManager;->isMultiSimEnabled:Z

    .line 62
    const-string v0, "ro.config.hw_dsda"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/telephony/HuaweiTelephonyManager;->isHwDSDAEnabled:Z

    .line 71
    new-instance v0, Lcom/huawei/telephony/HuaweiTelephonyManager;

    invoke-direct {v0}, Lcom/huawei/telephony/HuaweiTelephonyManager;-><init>()V

    sput-object v0, Lcom/huawei/telephony/HuaweiTelephonyManager;->sInstance:Lcom/huawei/telephony/HuaweiTelephonyManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method public static getDefault()Lcom/huawei/telephony/HuaweiTelephonyManager;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/huawei/telephony/HuaweiTelephonyManager;->sInstance:Lcom/huawei/telephony/HuaweiTelephonyManager;

    return-object v0
.end method

.method private getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;
    .locals 1

    .prologue
    .line 80
    const-string v0, "huaweiphone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public ATDirectChannel(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .parameter "ATCommand"

    .prologue
    .line 185
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "0"

    aput-object v4, v1, v3

    .line 187
    .local v1, response:[Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 188
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/huawei/telephony/IHuaweiTelephony;->ATDirectChannel(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :cond_0
    move-object v2, v1

    .line 196
    .end local v1           #response:[Ljava/lang/String;
    .local v2, response:[Ljava/lang/String;
    :goto_0
    return-object v2

    .line 191
    .end local v2           #response:[Ljava/lang/String;
    .restart local v1       #response:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 192
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "HuaweiTelephonyManager"

    const-string v4, "ATDirectChannel remoteException"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #ex:Landroid/os/RemoteException;
    :goto_1
    move-object v2, v1

    .line 196
    .end local v1           #response:[Ljava/lang/String;
    .restart local v2       #response:[Ljava/lang/String;
    goto :goto_0

    .line 193
    .end local v2           #response:[Ljava/lang/String;
    .restart local v1       #response:[Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 194
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v3, "HuaweiTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ATDirectChannel NullPointerException = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public ATDirectChannelMain([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .parameter "ATCommand"

    .prologue
    .line 202
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "0"

    aput-object v4, v1, v3

    .line 204
    .local v1, response:[Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 205
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/huawei/telephony/IHuaweiTelephony;->ATDirectChannelMain([Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :cond_0
    move-object v2, v1

    .line 213
    .end local v1           #response:[Ljava/lang/String;
    .local v2, response:[Ljava/lang/String;
    :goto_0
    return-object v2

    .line 208
    .end local v2           #response:[Ljava/lang/String;
    .restart local v1       #response:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 209
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "HuaweiTelephonyManager"

    const-string v4, "ATDirectChannel remoteException"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #ex:Landroid/os/RemoteException;
    :goto_1
    move-object v2, v1

    .line 213
    .end local v1           #response:[Ljava/lang/String;
    .restart local v2       #response:[Ljava/lang/String;
    goto :goto_0

    .line 210
    .end local v2           #response:[Ljava/lang/String;
    .restart local v1       #response:[Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 211
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v3, "HuaweiTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ATDirectChannel NullPointerException = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public IgnoreManualSelectMode()Z
    .locals 5

    .prologue
    .line 666
    const/4 v1, 0x0

    .line 668
    .local v1, result:Z
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 669
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/huawei/telephony/IHuaweiTelephony;->IgnoreManualSelectMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 676
    :cond_0
    :goto_0
    return v1

    .line 671
    :catch_0
    move-exception v0

    .line 672
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HuaweiTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IgnoreManualSelectMode RemoteException = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 673
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 674
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HuaweiTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IgnoreManualSelectMode NullPointerException = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public IsReselectionEnabled()Z
    .locals 5

    .prologue
    .line 608
    const/4 v1, 0x0

    .line 610
    .local v1, result:Z
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 611
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/huawei/telephony/IHuaweiTelephony;->IsReselectionEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 618
    :cond_0
    :goto_0
    return v1

    .line 613
    :catch_0
    move-exception v0

    .line 614
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HuaweiTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IsReselectionEnabled RemoteException = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 615
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 616
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HuaweiTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IsReselectionEnabled NullPointerException = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public IsSlot2Gsm()Z
    .locals 5

    .prologue
    .line 652
    const/4 v1, 0x0

    .line 654
    .local v1, result:Z
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 655
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/huawei/telephony/IHuaweiTelephony;->IsSlot2Gsm()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 662
    :cond_0
    :goto_0
    return v1

    .line 657
    :catch_0
    move-exception v0

    .line 658
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HuaweiTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IsSlot2Gsm RemoteException = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 659
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 660
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HuaweiTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IsSlot2Gsm NullPointerException = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public PowerOnCdmaModem(Z)V
    .locals 4
    .parameter "bOn"

    .prologue
    .line 569
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 570
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/huawei/telephony/IHuaweiTelephony;->PowerOnCdmaModem(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    :cond_0
    :goto_0
    return-void

    .line 572
    :catch_0
    move-exception v0

    .line 573
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "HuaweiTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PowerOnCdmaModem Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public PowerOnGsmModem(Z)V
    .locals 4
    .parameter "bOn"

    .prologue
    .line 599
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 600
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/huawei/telephony/IHuaweiTelephony;->PowerOnGsmModem(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 605
    :cond_0
    :goto_0
    return-void

    .line 602
    :catch_0
    move-exception v0

    .line 603
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "HuaweiTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PowerOnGsmModem Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public ResetStatus()V
    .locals 4

    .prologue
    .line 623
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 624
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/huawei/telephony/IHuaweiTelephony;->ResetStatus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    :cond_0
    :goto_0
    return-void

    .line 626
    :catch_0
    move-exception v0

    .line 627
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "HuaweiTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResetStatus Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public SetCdmaCardTypeReady()V
    .locals 4

    .prologue
    .line 559
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 560
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/huawei/telephony/IHuaweiTelephony;->SetCdmaCardTypeReady()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    :cond_0
    :goto_0
    return-void

    .line 562
    :catch_0
    move-exception v0

    .line 563
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "HuaweiTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetCdmaCardTypeReady Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public SetCdmaNetworkState(I)V
    .locals 4
    .parameter "nState"

    .prologue
    .line 579
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 580
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/huawei/telephony/IHuaweiTelephony;->SetCdmaNetworkState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 582
    :catch_0
    move-exception v0

    .line 583
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "HuaweiTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetCdmaNetworkState Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public SetGsmCardTypeReady()V
    .locals 4

    .prologue
    .line 589
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 590
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/huawei/telephony/IHuaweiTelephony;->SetGsmCardTypeReady()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    :cond_0
    :goto_0
    return-void

    .line 592
    :catch_0
    move-exception v0

    .line 593
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "HuaweiTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetGsmCardTypeReady Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public SwitchModem(I)V
    .locals 4
    .parameter "iMode"

    .prologue
    .line 643
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 644
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/huawei/telephony/IHuaweiTelephony;->SwitchModem(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    :cond_0
    :goto_0
    return-void

    .line 646
    :catch_0
    move-exception v0

    .line 647
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "HuaweiTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SwitchModem Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public cdmaCardInGsmMode(I)Z
    .locals 5
    .parameter "dualCardMode"

    .prologue
    .line 546
    const/4 v1, 0x0

    .line 548
    .local v1, result:Z
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 549
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/huawei/telephony/IHuaweiTelephony;->cdmaCardInGsmMode(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 554
    :goto_0
    return v2

    .line 551
    :catch_0
    move-exception v0

    .line 552
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "HuaweiTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cdmaCardInGsmMode Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getCardType(I)I
    .locals 5
    .parameter "slotId"

    .prologue
    const/4 v1, -0x1

    .line 171
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/huawei/telephony/IHuaweiTelephony;->getCardType(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 179
    :goto_0
    return v1

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "HuaweiTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCardType Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 178
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    const-string v2, "HuaweiTelephonyManager"

    const-string v3, "getCardType getIHuaweiTelephony=null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCdmaPrlVersion()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 266
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/huawei/telephony/IHuaweiTelephony;->getCdmaPrlVersion()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 270
    :goto_0
    return-object v1

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 269
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 270
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDSDARadioState(I)Z
    .locals 5
    .parameter "subId"

    .prologue
    const/4 v1, 0x0

    .line 388
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 389
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/huawei/telephony/IHuaweiTelephony;->getDSDARadioState(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 396
    :goto_0
    return v1

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "HuaweiTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDSDARadioState Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 395
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    const-string v2, "HuaweiTelephonyManager"

    const-string v3, "getDSDARadioState getIHuaweiTelephony=null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDemoString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-string v0, ""

    return-object v0
.end method

.method public getDemoStringAsync(Lcom/huawei/telephony/IPhoneCallback;)V
    .locals 3
    .parameter "callback"

    .prologue
    .line 90
    const-string v1, "HuaweiTelephonyManager"

    const-string v2, "getDemoStringAsync in"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 93
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/huawei/telephony/IHuaweiTelephony;->getDemoStringAsync(Lcom/huawei/telephony/IPhoneCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HuaweiTelephonyManager"

    const-string v2, "getDemoStringAsync remoteException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDualCardMode()I
    .locals 7

    .prologue
    .line 369
    const/4 v1, -0x1

    .line 370
    .local v1, cardSwitchMode:S
    const/4 v0, -0x1

    .line 371
    .local v0, cardPrefMode:S
    const/4 v3, 0x0

    .line 374
    .local v3, setResult:Z
    invoke-virtual {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->isMultiSimEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-boolean v4, Lcom/huawei/telephony/HuaweiTelephonyManager;->isHwDSDAEnabled:Z

    if-eqz v4, :cond_0

    .line 376
    const-string v4, "persist.radio.hw.ctmode"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    int-to-short v1, v4

    .line 377
    const-string v4, "HuaweiTelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDualCardMode  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 382
    .end local v1           #cardSwitchMode:S
    .local v2, cardSwitchMode:I
    :goto_0
    return v2

    .end local v2           #cardSwitchMode:I
    .restart local v1       #cardSwitchMode:S
    :cond_0
    move v2, v1

    .restart local v2       #cardSwitchMode:I
    goto :goto_0
.end method

.method public getEsn()Ljava/lang/String;
    .locals 3

    .prologue
    .line 295
    const/4 v0, 0x0

    .line 297
    .local v0, esnStr:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/huawei/telephony/IHuaweiTelephony;->getEsn()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 304
    :goto_0
    return-object v0

    .line 298
    :catch_0
    move-exception v1

    .line 299
    .local v1, ex:Landroid/os/RemoteException;
    const/4 v0, 0x0

    .line 303
    goto :goto_0

    .line 300
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 302
    .local v1, ex:Ljava/lang/NullPointerException;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImsiForGSMSlot()Ljava/lang/String;
    .locals 5

    .prologue
    .line 458
    const-string v1, ""

    .line 460
    .local v1, imsi:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 461
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/huawei/telephony/IHuaweiTelephony;->getImsiForGSMSlot()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 468
    :cond_0
    :goto_0
    const-string v2, "HuaweiTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mtk Imsi = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    return-object v1

    .line 463
    :catch_0
    move-exception v0

    .line 464
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HuaweiTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSubDeactived RemoteException = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 465
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 466
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HuaweiTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSubDeactived NullPointerException = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMin()Ljava/lang/String;
    .locals 3

    .prologue
    .line 278
    const/4 v1, 0x0

    .line 281
    .local v1, mString:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 282
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/huawei/telephony/IHuaweiTelephony;->getMin()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 291
    :cond_0
    :goto_0
    return-object v1

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, ex:Landroid/os/RemoteException;
    const/4 v1, 0x0

    .line 289
    goto :goto_0

    .line 286
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 288
    .local v0, ex:Ljava/lang/NullPointerException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 248
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v3

    invoke-interface {v3}, Lcom/huawei/telephony/IHuaweiTelephony;->getServiceState()Landroid/os/Bundle;

    move-result-object v0

    .line 249
    .local v0, bundle:Landroid/os/Bundle;
    invoke-static {v0}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 254
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-object v2

    .line 251
    :catch_0
    move-exception v1

    .line 252
    .local v1, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 253
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 254
    .local v1, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 228
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v3

    invoke-interface {v3}, Lcom/huawei/telephony/IHuaweiTelephony;->getSignalStrength()Landroid/os/Bundle;

    move-result-object v0

    .line 229
    .local v0, bundle:Landroid/os/Bundle;
    invoke-static {v0}, Landroid/telephony/SignalStrength;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 234
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-object v2

    .line 231
    :catch_0
    move-exception v1

    .line 232
    .local v1, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 233
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 234
    .local v1, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getSlotIdFromSubId(I)I
    .locals 5
    .parameter "subId"

    .prologue
    const/4 v1, -0x1

    .line 143
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 144
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/huawei/telephony/IHuaweiTelephony;->getSlotIdFromSubId(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 153
    :cond_0
    :goto_0
    return v1

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HuaweiTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSlotIdFromSubId RemoteException = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 149
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 150
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HuaweiTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSlotIdFromSubId NullPointerException = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSubidFromSlotId(I)I
    .locals 5
    .parameter "slotId"

    .prologue
    const/4 v1, -0x1

    .line 128
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/huawei/telephony/IHuaweiTelephony;->getSubidFromSlotId(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 138
    :cond_0
    :goto_0
    return v1

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HuaweiTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSubidFromSlotId RemoteException = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 134
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 135
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HuaweiTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSubidFromSlotId NullPointerException = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getUimid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 310
    const/4 v0, 0x0

    .line 312
    .local v0, esnStr:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/huawei/telephony/IHuaweiTelephony;->getUimid()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 319
    :goto_0
    return-object v0

    .line 313
    :catch_0
    move-exception v1

    .line 314
    .local v1, ex:Landroid/os/RemoteException;
    const/4 v0, 0x0

    .line 318
    goto :goto_0

    .line 315
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 317
    .local v1, ex:Ljava/lang/NullPointerException;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCTCdmaCardInGsmMode()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 532
    invoke-static {}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDefault()Lcom/huawei/telephony/HuaweiTelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDualCardMode()I

    move-result v1

    .line 533
    .local v1, dualCardMode:I
    if-eq v2, v1, :cond_0

    const/4 v4, 0x3

    if-ne v4, v1, :cond_1

    :cond_0
    move v0, v2

    .line 536
    .local v0, cdmaCardInGsmMode:Z
    :goto_0
    if-eqz v0, :cond_2

    .line 537
    const-string v3, "HuaweiTelephonyManager"

    const-string v4, "isCTGsmMode(): true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :goto_1
    return v2

    .end local v0           #cdmaCardInGsmMode:Z
    :cond_1
    move v0, v3

    .line 533
    goto :goto_0

    .restart local v0       #cdmaCardInGsmMode:Z
    :cond_2
    move v2, v3

    .line 540
    goto :goto_1
.end method

.method public isCTGsmDataAllowed()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 506
    const-string v3, "ro.config.hw_opta"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "92"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "ro.config.hw_optb"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "156"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 508
    .local v0, is_china_telecom:Z
    :goto_0
    if-nez v0, :cond_2

    .line 526
    :cond_0
    :goto_1
    return v1

    .end local v0           #is_china_telecom:Z
    :cond_1
    move v0, v2

    .line 506
    goto :goto_0

    .line 518
    .restart local v0       #is_china_telecom:Z
    :cond_2
    const-string v3, "persist.service.gsmdataservice"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDefault()Lcom/huawei/telephony/HuaweiTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDualCardMode()I

    move-result v3

    if-eq v1, v3, :cond_3

    const/4 v3, 0x3

    invoke-static {}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDefault()Lcom/huawei/telephony/HuaweiTelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getDualCardMode()I

    move-result v4

    if-ne v3, v4, :cond_4

    :cond_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    invoke-virtual {p0, v2}, Lcom/huawei/telephony/HuaweiTelephonyManager;->isCardPresent(I)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->isGsmImsiContainsSpecPlmn()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_5
    move v1, v2

    .line 526
    goto :goto_1
.end method

.method public isCTNationRoamingEnable()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 326
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 327
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/huawei/telephony/IHuaweiTelephony;->isCTNationRoamingEnable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 334
    :goto_0
    return v1

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "HuaweiTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCTNationRoamingEnable Exception ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 333
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    const-string v2, "HuaweiTelephonyManager"

    const-string v3, "isCTNationRoamingEnable getIHuaweiTelephony=null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isCardPresent(I)Z
    .locals 6
    .parameter "slotId"

    .prologue
    const/4 v2, 0x0

    .line 109
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/huawei/telephony/IHuaweiTelephony;->isCardPresent(I)Z

    move-result v1

    .line 111
    .local v1, result:Z
    const-string v3, "HuaweiTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCardPresent ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 121
    .end local v1           #result:Z
    :goto_0
    return v1

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "HuaweiTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCardPresent RemoteException = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 116
    goto :goto_0

    .line 117
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 118
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v3, "HuaweiTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCardPresent NullPointerException = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 119
    goto :goto_0

    .end local v0           #ex:Ljava/lang/NullPointerException;
    :cond_0
    move v1, v2

    .line 121
    goto :goto_0
.end method

.method public isGsmImsiContainsSpecPlmn()Z
    .locals 6

    .prologue
    .line 481
    const-string v3, "persist.config.gsm_spec_plmn"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 482
    .local v1, specPlmn:Ljava/lang/String;
    const-string v3, "HuaweiTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "specPlmn "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    if-eqz v1, :cond_1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 484
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 485
    .local v2, specPlmnArray:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 486
    invoke-virtual {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getImsiForGSMSlot()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getImsiForGSMSlot()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 487
    const/4 v3, 0x1

    .line 492
    .end local v0           #i:I
    .end local v2           #specPlmnArray:[Ljava/lang/String;
    :goto_1
    return v3

    .line 485
    .restart local v0       #i:I
    .restart local v2       #specPlmnArray:[Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 492
    .end local v0           #i:I
    .end local v2           #specPlmnArray:[Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public isMultiSimEnabled()Z
    .locals 1

    .prologue
    .line 102
    sget-boolean v0, Lcom/huawei/telephony/HuaweiTelephonyManager;->isMultiSimEnabled:Z

    return v0
.end method

.method public isSubActive(I)Z
    .locals 5
    .parameter "subId"

    .prologue
    .line 421
    const/4 v1, 0x0

    .line 423
    .local v1, result:Z
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 424
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/huawei/telephony/IHuaweiTelephony;->isSubActive(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 431
    :cond_0
    :goto_0
    return v1

    .line 426
    :catch_0
    move-exception v0

    .line 427
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HuaweiTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSubActive RemoteException = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 428
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 429
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HuaweiTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSubActive NullPointerException = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isSubDeactived(I)Z
    .locals 5
    .parameter "subId"

    .prologue
    .line 437
    const/4 v1, 0x0

    .line 439
    .local v1, result:Z
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 440
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/huawei/telephony/IHuaweiTelephony;->isSubDeactived(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 447
    :cond_0
    :goto_0
    return v1

    .line 442
    :catch_0
    move-exception v0

    .line 443
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "HuaweiTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSubDeactived RemoteException = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 444
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 445
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "HuaweiTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSubDeactived NullPointerException = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDualCardMode(I)Z
    .locals 6
    .parameter "nMode"

    .prologue
    const/4 v2, 0x1

    .line 340
    const/4 v0, -0x1

    .line 342
    .local v0, dualCardMode:S
    const-string v3, "HuaweiTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDualCardMode, nMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-virtual {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/huawei/telephony/HuaweiTelephonyManager;->isHwDSDAEnabled:Z

    if-eqz v3, :cond_1

    .line 345
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 346
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/huawei/telephony/IHuaweiTelephony;->clearUserPrefWhenChangeMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :cond_0
    :goto_0
    const-string v3, "persist.radio.hw.ctmode"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :goto_1
    return v2

    .line 348
    :catch_0
    move-exception v1

    .line 349
    .local v1, ex:Ljava/lang/Exception;
    const-string v3, "HuaweiTelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearUserPrefWhenChangeMode Exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 357
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_1
    if-nez p1, :cond_2

    .line 358
    const/16 v0, 0x13

    goto :goto_1

    .line 359
    :cond_2
    if-ne v2, p1, :cond_3

    .line 360
    const/16 v0, 0xd

    goto :goto_1

    .line 362
    :cond_3
    const-string v2, "HuaweiTelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setDualCardMode2(I)V
    .locals 4
    .parameter "mode"

    .prologue
    .line 633
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 634
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/huawei/telephony/IHuaweiTelephony;->setDualCardMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 639
    :cond_0
    :goto_0
    return-void

    .line 636
    :catch_0
    move-exception v0

    .line 637
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "HuaweiTelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDualCardMode Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
