.class public Landroid/telephony/MSimTelephonyManager;
.super Landroid/telephony/TelephonyManager;
.source "MSimTelephonyManager.java"


# static fields
.field public static final DUAL_CARD_MODE_GLOBAL_GSM:I = 0x3

.field public static final DUAL_CARD_MODE_GSM:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "MSimTelephonyManager"

.field public static final NETWORK_NOT_ROAMING:I = 0x0

.field public static final NETWORK_ROAMING:I = 0x1

.field public static final NETWORK_ROAMING_UNKNOW:I = -0x1

.field public static final SUB1:I = 0x0

.field public static final SUB2:I = 0x1

.field public static final SUBNone:I = -0x1

.field private static sInstance:Landroid/telephony/MSimTelephonyManager;

.field protected static sRegistryMsim:Lcom/android/internal/telephony/ITelephonyRegistryMSim;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Landroid/telephony/MSimTelephonyManager;

    invoke-direct {v0}, Landroid/telephony/MSimTelephonyManager;-><init>()V

    sput-object v0, Landroid/telephony/MSimTelephonyManager;->sInstance:Landroid/telephony/MSimTelephonyManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;-><init>()V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    .line 77
    const-string/jumbo v0, "telephony.msim.registry"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistryMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistryMSim;

    move-result-object v0

    sput-object v0, Landroid/telephony/MSimTelephonyManager;->sRegistryMsim:Lcom/android/internal/telephony/ITelephonyRegistryMSim;

    .line 79
    return-void
.end method

.method public static getDefault()Landroid/telephony/MSimTelephonyManager;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->sInstance:Landroid/telephony/MSimTelephonyManager;

    return-object v0
.end method

.method private getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;
    .locals 1

    .prologue
    .line 789
    const-string/jumbo v0, "phone_msim"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkType(I)I
    .locals 4
    .parameter "subscription"

    .prologue
    const/4 v2, 0x0

    .line 365
    sget-boolean v3, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v3, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    .line 377
    :goto_0
    return v2

    .line 367
    :cond_0
    const/4 v1, 0x0

    .line 369
    .local v1, iTelephony:Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :try_start_0
    const-string/jumbo v3, "phone_msim"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v1

    .line 371
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getNetworkType(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 372
    :catch_0
    move-exception v0

    .line 374
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 375
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 377
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public static getNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 390
    sget-boolean v0, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v0

    .line 392
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/telephony/MSimTelephonyManager;->getNetworkType(I)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getPhoneTypeFromNetworkType(I)I
    .locals 3
    .parameter "subscription"

    .prologue
    .line 192
    const-string/jumbo v1, "ro.telephony.default_network"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, mode:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 194
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/telephony/MSimTelephonyManager;->getPhoneType(I)I

    move-result v1

    .line 196
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "property"
    .parameter "index"
    .parameter "defaultVal"

    .prologue
    .line 931
    const/4 v1, 0x0

    .line 932
    .local v1, propVal:Ljava/lang/String;
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 934
    .local v0, prop:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 935
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 936
    .local v2, values:[Ljava/lang/String;
    if-ltz p1, :cond_0

    array-length v3, v2

    if-ge p1, v3, :cond_0

    aget-object v3, v2, p1

    if-eqz v3, :cond_0

    .line 937
    aget-object v1, v2, p1

    .line 940
    .end local v2           #values:[Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    .end local p2
    :goto_0
    return-object p2

    .restart local p2
    :cond_1
    move-object p2, v1

    goto :goto_0
.end method

.method public static setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .parameter "property"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 898
    const-string v3, ""

    .line 899
    .local v3, propVal:Ljava/lang/String;
    const/4 v1, 0x0

    .line 900
    .local v1, p:[Ljava/lang/String;
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 902
    .local v2, prop:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 903
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 906
    :cond_0
    if-gez p1, :cond_1

    .line 923
    :goto_0
    return-void

    .line 908
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p1, :cond_3

    .line 909
    const-string v4, ""

    .line 910
    .local v4, str:Ljava/lang/String;
    if-eqz v1, :cond_2

    array-length v5, v1

    if-ge v0, v5, :cond_2

    .line 911
    aget-object v4, v1, v0

    .line 913
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 908
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 916
    .end local v4           #str:Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 917
    if-eqz v1, :cond_4

    .line 918
    add-int/lit8 v0, p1, 0x1

    :goto_2
    array-length v5, v1

    if-ge v0, v5, :cond_4

    .line 919
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 918
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 922
    :cond_4
    invoke-static {p0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getCallState(I)I
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 732
    sget-boolean v2, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v2, :cond_0

    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    .line 740
    :goto_0
    return v1

    .line 734
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getCallState(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 735
    :catch_0
    move-exception v0

    .line 737
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 738
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 740
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCdmaEriIconIndex(I)I
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, -0x1

    .line 845
    sget-boolean v2, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v2, :cond_0

    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getCdmaEriIconIndex()I

    move-result v1

    .line 852
    :goto_0
    return v1

    .line 847
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getCdmaEriIconIndex(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 848
    :catch_0
    move-exception v0

    .line 850
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 851
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 852
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCdmaEriIconMode(I)I
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, -0x1

    .line 864
    sget-boolean v2, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v2, :cond_0

    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getCdmaEriIconMode()I

    move-result v1

    .line 871
    :goto_0
    return v1

    .line 866
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getCdmaEriIconMode(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 867
    :catch_0
    move-exception v0

    .line 869
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 870
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 871
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCdmaEriText(I)Ljava/lang/String;
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 881
    sget-boolean v2, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v2, :cond_0

    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getCdmaEriText()Ljava/lang/String;

    move-result-object v1

    .line 888
    :goto_0
    return-object v1

    .line 883
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getCdmaEriText(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 884
    :catch_0
    move-exception v0

    .line 886
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 887
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 888
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCompleteVoiceMailNumber(I)Ljava/lang/String;
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 665
    sget-boolean v2, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v2, :cond_0

    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getCompleteVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    .line 672
    :goto_0
    return-object v1

    .line 667
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfoMSim;->getCompleteVoiceMailNumber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 668
    :catch_0
    move-exception v0

    .line 669
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 670
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 672
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCurrentPhoneType(I)I
    .locals 3
    .parameter "subscription"

    .prologue
    .line 151
    sget-boolean v2, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v2, :cond_0

    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v2

    .line 168
    :goto_0
    return v2

    .line 154
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v1

    .line 155
    .local v1, telephony:Lcom/android/internal/telephony/msim/ITelephonyMSim;
    if-eqz v1, :cond_1

    .line 156
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getActivePhoneType(I)I

    move-result v2

    goto :goto_0

    .line 159
    :cond_1
    invoke-virtual {p0, p1}, Landroid/telephony/MSimTelephonyManager;->getPhoneTypeFromProperty(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_0

    .line 161
    .end local v1           #telephony:Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :catch_0
    move-exception v0

    .line 164
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {p0, p1}, Landroid/telephony/MSimTelephonyManager;->getPhoneTypeFromProperty(I)I

    move-result v2

    goto :goto_0

    .line 165
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 168
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-virtual {p0, p1}, Landroid/telephony/MSimTelephonyManager;->getPhoneTypeFromProperty(I)I

    move-result v2

    goto :goto_0
.end method

.method public getDataActivity()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 755
    sget-boolean v2, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v2, :cond_0

    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getDataActivity()I

    move-result v1

    .line 763
    :goto_0
    return v1

    .line 757
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getDataActivity()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 758
    :catch_0
    move-exception v0

    .line 760
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 761
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 763
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDataState()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 777
    sget-boolean v2, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v2, :cond_0

    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    .line 784
    :goto_0
    return v1

    .line 779
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getDataState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 780
    :catch_0
    move-exception v0

    .line 782
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 783
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 784
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDefaultSubscription()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 949
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getDefaultSubscription()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 953
    :goto_0
    return v1

    .line 950
    :catch_0
    move-exception v0

    .line 951
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 952
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 953
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 115
    sget-boolean v2, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v2, :cond_0

    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 122
    :goto_0
    return-object v1

    .line 118
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfoMSim;->getDeviceId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 121
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 122
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLine1AlphaTag(I)Ljava/lang/String;
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 624
    sget-boolean v2, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v2, :cond_0

    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v1

    .line 631
    :goto_0
    return-object v1

    .line 626
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfoMSim;->getLine1AlphaTag(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 627
    :catch_0
    move-exception v0

    .line 628
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 629
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 631
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLine1Number(I)Ljava/lang/String;
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 601
    sget-boolean v2, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v2, :cond_0

    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 608
    :goto_0
    return-object v1

    .line 603
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfoMSim;->getLine1Number(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 604
    :catch_0
    move-exception v0

    .line 605
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 606
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 608
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLteOnCdmaMode(I)I
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, -0x1

    .line 532
    sget-boolean v2, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v2, :cond_0

    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v1

    .line 540
    :goto_0
    return v1

    .line 534
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getLteOnCdmaMode(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 535
    :catch_0
    move-exception v0

    .line 537
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 538
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 540
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method protected getMSimSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfoMSim;
    .locals 1

    .prologue
    .line 722
    const-string v0, "iphonesubinfo_msim"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfoMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfoMSim;

    move-result-object v0

    return-object v0
.end method

.method public getMmsAutoSetDataSubscription()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 1018
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getMmsAutoSetDataSubscription()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1022
    :goto_0
    return v1

    .line 1019
    :catch_0
    move-exception v0

    .line 1020
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1021
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1022
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getNetworkCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/MSimTelephonyManager;->getNetworkCountryIso(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkCountryIso(I)Ljava/lang/String;
    .locals 2
    .parameter "subscription"

    .prologue
    .line 338
    const-string v0, "gsm.operator.iso-country"

    const-string v1, ""

    invoke-static {v0, p1, v1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/MSimTelephonyManager;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperator(I)Ljava/lang/String;
    .locals 2
    .parameter "subscription"

    .prologue
    .line 242
    sget-boolean v0, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 244
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "gsm.operator.numeric"

    const-string v1, ""

    invoke-static {v0, p1, v1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNetworkOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/MSimTelephonyManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorName(I)Ljava/lang/String;
    .locals 2
    .parameter "subscription"

    .prologue
    .line 220
    sget-boolean v0, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 222
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "gsm.operator.alpha"

    const-string v1, ""

    invoke-static {v0, p1, v1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNetworkRoamingCT()I
    .locals 13

    .prologue
    .line 287
    const/4 v9, 0x0

    .line 288
    .local v9, subscription:I
    const/4 v1, -0x1

    .line 289
    .local v1, cardSwitchMode:I
    const/4 v2, 0x0

    .line 291
    .local v2, cdmaCardInGsmMode:Z
    sget-boolean v10, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-eqz v10, :cond_0

    .line 293
    const-string/jumbo v10, "persist.radio.hw.ctmode"

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 294
    const-string v10, "MSimTelephonyManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getDualCardMode  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_0
    const/4 v10, 0x1

    if-eq v10, v1, :cond_1

    const/4 v10, 0x3

    if-ne v10, v1, :cond_4

    :cond_1
    const/4 v2, 0x1

    .line 299
    :goto_0
    if-eqz v2, :cond_2

    .line 300
    const/4 v9, 0x1

    .line 303
    :cond_2
    invoke-virtual {p0, v9}, Landroid/telephony/MSimTelephonyManager;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v5

    .line 304
    .local v5, op:Ljava/lang/String;
    const-string v10, "MSimTelephonyManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MSimTelephonyManager.isNetworkRoamingCT: cur op is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_3

    const-string/jumbo v10, "null"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 306
    :cond_3
    const/4 v10, -0x1

    .line 320
    :goto_1
    return v10

    .line 296
    .end local v5           #op:Ljava/lang/String;
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 309
    .restart local v5       #op:Ljava/lang/String;
    :cond_5
    const-string/jumbo v10, "ro.ct.custom_operator"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 310
    .local v8, ops:Ljava/lang/String;
    const-string v10, "MSimTelephonyManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MSimTelephonyManager.isCurLocalOperator: ops "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-gtz v10, :cond_7

    .line 312
    :cond_6
    const/4 v10, -0x1

    goto :goto_1

    .line 314
    :cond_7
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 315
    .local v6, opArr:[Ljava/lang/String;
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_2
    if-ge v3, v4, :cond_9

    aget-object v7, v0, v3

    .line 316
    .local v7, opTemp:Ljava/lang/String;
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 317
    const/4 v10, 0x0

    goto :goto_1

    .line 315
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 320
    .end local v7           #opTemp:Ljava/lang/String;
    :cond_9
    const/4 v10, 0x1

    goto :goto_1
.end method

.method public getPesn(I)Ljava/lang/String;
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 128
    sget-boolean v2, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v2, :cond_0

    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getPesn()Ljava/lang/String;

    move-result-object v1

    .line 135
    :goto_0
    return-object v1

    .line 131
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfoMSim;->getPesn(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 134
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 135
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getPhoneCount()I
    .locals 1

    .prologue
    .line 101
    sget-boolean v0, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 102
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method protected getPhoneTypeFromProperty()I
    .locals 1

    .prologue
    .line 174
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/MSimTelephonyManager;->getPhoneTypeFromProperty(I)I

    move-result v0

    return v0
.end method

.method protected getPhoneTypeFromProperty(I)I
    .locals 3
    .parameter "subscription"

    .prologue
    .line 178
    const-string v1, "gsm.current.phone-type"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, type:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 182
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 184
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p1}, Landroid/telephony/MSimTelephonyManager;->getPhoneTypeFromNetworkType(I)I

    move-result v1

    goto :goto_0
.end method

.method public getPreferredDataSubscription()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 979
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getPreferredDataSubscription()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 983
    :goto_0
    return v1

    .line 980
    :catch_0
    move-exception v0

    .line 981
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 982
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 983
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getPreferredSmsSubscription()I
    .locals 5

    .prologue
    .line 960
    const/4 v2, 0x0

    .line 962
    .local v2, subscription:I
    :try_start_0
    sget-object v3, Landroid/telephony/MSimTelephonyManager;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "multi_sim_sms"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 970
    :goto_0
    return v2

    .line 964
    :catch_0
    move-exception v1

    .line 965
    .local v1, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "MSimTelephonyManager"

    const-string v4, "Settings Exception Reading Dual Sim SMS Values"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 966
    .end local v1           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    :catch_1
    move-exception v0

    .line 967
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v3, "MSimTelephonyManager"

    const-string v4, "NullPointerException in getPreferredSmsSubscription()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPreferredVoiceSubscription()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1005
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getPreferredVoiceSubscription()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1009
    :goto_0
    return v1

    .line 1006
    :catch_0
    move-exception v0

    .line 1007
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1008
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1009
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getSimCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 511
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/MSimTelephonyManager;->getSimCountryIso(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimCountryIso(I)Ljava/lang/String;
    .locals 2
    .parameter "slotId"

    .prologue
    .line 517
    const-string v0, "gsm.sim.operator.iso-country"

    const-string v1, ""

    invoke-static {v0, p1, v1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 478
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/MSimTelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperator(I)Ljava/lang/String;
    .locals 2
    .parameter "slotId"

    .prologue
    .line 490
    const-string v0, "gsm.sim.operator.numeric"

    const-string v1, ""

    invoke-static {v0, p1, v1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 495
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/MSimTelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorName(I)Ljava/lang/String;
    .locals 2
    .parameter "slotId"

    .prologue
    .line 506
    const-string v0, "gsm.sim.operator.alpha"

    const-string v1, ""

    invoke-static {v0, p1, v1}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSerialNumber(I)Ljava/lang/String;
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 552
    sget-boolean v2, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v2, :cond_0

    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v1

    .line 559
    :goto_0
    return-object v1

    .line 554
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfoMSim;->getIccSerialNumber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 555
    :catch_0
    move-exception v0

    .line 556
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 557
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 559
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getSimState()I
    .locals 1

    .prologue
    .line 422
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/MSimTelephonyManager;->getSimState(I)I

    move-result v0

    return v0
.end method

.method public getSimState(I)I
    .locals 3
    .parameter "slotId"

    .prologue
    .line 440
    sget-boolean v1, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v1, :cond_0

    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    .line 472
    :goto_0
    return v1

    .line 442
    :cond_0
    const-string v1, "gsm.sim.state"

    const-string v2, ""

    invoke-static {v1, p1, v2}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, prop:Ljava/lang/String;
    const-string v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 446
    const/4 v1, 0x1

    goto :goto_0

    .line 448
    :cond_1
    const-string v1, "PIN_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 449
    const/4 v1, 0x2

    goto :goto_0

    .line 451
    :cond_2
    const-string v1, "PUK_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 452
    const/4 v1, 0x3

    goto :goto_0

    .line 454
    :cond_3
    const-string v1, "PERSO_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 455
    const/4 v1, 0x4

    goto :goto_0

    .line 457
    :cond_4
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 458
    const/4 v1, 0x5

    goto :goto_0

    .line 460
    :cond_5
    const-string v1, "CARD_IO_ERROR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 461
    const/4 v1, 0x6

    goto :goto_0

    .line 464
    :cond_6
    const-string v1, "NOT_READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 465
    const/4 v1, 0x7

    goto :goto_0

    .line 467
    :cond_7
    const-string v1, "DEACTIVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 468
    const/16 v1, 0x8

    goto :goto_0

    .line 472
    :cond_8
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 580
    sget-boolean v2, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v2, :cond_0

    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 587
    :goto_0
    return-object v1

    .line 582
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfoMSim;->getSubscriberId(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 583
    :catch_0
    move-exception v0

    .line 584
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 585
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 587
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMailAlphaTag(I)Ljava/lang/String;
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 706
    sget-boolean v2, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v2, :cond_0

    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    .line 713
    :goto_0
    return-object v1

    .line 708
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfoMSim;->getVoiceMailAlphaTag(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 709
    :catch_0
    move-exception v0

    .line 710
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 711
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 713
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMailNumber(I)Ljava/lang/String;
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 644
    sget-boolean v2, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v2, :cond_0

    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    .line 651
    :goto_0
    return-object v1

    .line 646
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getMSimSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfoMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfoMSim;->getVoiceMailNumber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 647
    :catch_0
    move-exception v0

    .line 648
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 649
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 651
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMessageCount(I)I
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 686
    sget-boolean v2, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v2, :cond_0

    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getVoiceMessageCount()I

    move-result v1

    .line 693
    :goto_0
    return v1

    .line 688
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getVoiceMessageCount(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 689
    :catch_0
    move-exception v0

    .line 690
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 691
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 693
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public hasIccCard(I)Z
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 407
    sget-boolean v2, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v2, :cond_0

    invoke-super {p0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v1

    .line 416
    :goto_0
    return v1

    .line 410
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->hasIccCard(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 411
    :catch_0
    move-exception v0

    .line 413
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 414
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 416
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isNetworkRoaming()Z
    .locals 1

    .prologue
    .line 250
    invoke-virtual {p0}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/MSimTelephonyManager;->isNetworkRoaming(I)Z

    move-result v0

    return v0
.end method

.method public isNetworkRoaming(I)Z
    .locals 3
    .parameter "subscription"

    .prologue
    .line 262
    sget-boolean v0, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 263
    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "true"

    const-string v1, "gsm.operator.isroaming"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/telephony/MSimTelephonyManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public listen(Landroid/telephony/PhoneStateListener;I)V
    .locals 7
    .parameter "listener"
    .parameter "events"

    .prologue
    .line 823
    sget-boolean v0, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled:Z

    if-nez v0, :cond_0

    .line 824
    invoke-super {p0, p1, p2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 837
    :goto_0
    return-void

    .line 827
    :cond_0
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/telephony/MSimTelephonyManager;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 829
    .local v1, pkgForDebug:Ljava/lang/String;
    :goto_1
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 830
    .local v6, notifyNow:Ljava/lang/Boolean;
    sget-object v0, Landroid/telephony/MSimTelephonyManager;->sRegistryMsim:Lcom/android/internal/telephony/ITelephonyRegistryMSim;

    iget-object v2, p1, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget v5, p1, Landroid/telephony/PhoneStateListener;->mSubscription:I

    move v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephonyRegistryMSim;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 832
    .end local v6           #notifyNow:Ljava/lang/Boolean;
    :catch_0
    move-exception v0

    goto :goto_0

    .line 827
    .end local v1           #pkgForDebug:Ljava/lang/String;
    :cond_1
    const-string v1, "<unknown>"

    goto :goto_1

    .line 829
    .restart local v1       #pkgForDebug:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 834
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public setMmsAutoSetDataSubscription(I)Z
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 1031
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->setMmsAutoSetDataSubscription(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1035
    :goto_0
    return v1

    .line 1032
    :catch_0
    move-exception v0

    .line 1033
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1034
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1035
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public setPreferredDataSubscription(I)Z
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 992
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/MSimTelephonyManager;->getITelephonyMSim()Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->setPreferredDataSubscription(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 996
    :goto_0
    return v1

    .line 993
    :catch_0
    move-exception v0

    .line 994
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 995
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 996
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method
