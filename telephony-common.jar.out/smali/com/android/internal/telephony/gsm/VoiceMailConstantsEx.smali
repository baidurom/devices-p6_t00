.class Lcom/android/internal/telephony/gsm/VoiceMailConstantsEx;
.super Lcom/android/internal/telephony/gsm/VoiceMailConstants;
.source "VoiceMailConstantsEx.java"


# static fields
.field static final VMMODE_CUST_SIM_SP:I = 0x3

.field static final VMMODE_SIM_CUST_SP:I = 0x1

.field static final VMMODE_SIM_SP_CUST:I = 0x2


# instance fields
.field private mCurrentCarrier:Ljava/lang/String;

.field private mIsVoiceMailFixed:Z

.field private mVMCurrentMNumber:Ljava/lang/String;

.field private mVMCurrentTag:Ljava/lang/String;

.field private mVMLoaded:Z

.field private mVMNumberOnSim:Ljava/lang/String;

.field private mVMTagOnSim:Ljava/lang/String;

.field private voicemailPriorityMode:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;-><init>()V

    .line 23
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstantsEx;->mIsVoiceMailFixed:Z

    .line 24
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstantsEx;->mVMNumberOnSim:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstantsEx;->mVMTagOnSim:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstantsEx;->mCurrentCarrier:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstantsEx;->mVMCurrentMNumber:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstantsEx;->mVMCurrentTag:Ljava/lang/String;

    .line 29
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstantsEx;->mVMLoaded:Z

    .line 32
    const-string v0, "ro.config.vm_prioritymode"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstantsEx;->voicemailPriorityMode:I

    .line 34
    const-string v0, "GSM"

    const-string v1, "load voicemail number Priority from systemproperty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void
.end method


# virtual methods
.method containsCarrier(Ljava/lang/String;)Z
    .locals 4
    .parameter "carrier"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, vnContainsVM:Z
    invoke-static {}, Lcom/android/internal/telephony/VirtualNet;->isVirtualNet()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    .line 50
    invoke-static {}, Lcom/android/internal/telephony/VirtualNet;->getCurrentVirtualNet()Lcom/android/internal/telephony/VirtualNet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/VirtualNet;->getNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/VirtualNet;->getCurrentVirtualNet()Lcom/android/internal/telephony/VirtualNet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/VirtualNet;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/VirtualNet;->getCurrentVirtualNet()Lcom/android/internal/telephony/VirtualNet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/VirtualNet;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    move v0, v1

    .line 54
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->containsCarrier(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    return v2

    :cond_3
    move v0, v2

    .line 50
    goto :goto_0
.end method

.method getVoiceMailConfig(Ljava/lang/String;)V
    .locals 8
    .parameter "carrier"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 58
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "voicemail number Priority = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/VoiceMailConstantsEx;->getVoicemailPriorityMode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstantsEx;->mCurrentCarrier:Ljava/lang/String;

    .line 60
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstantsEx;->mVMNumberOnSim:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstantsEx;->voicemailPriorityMode:I

    if-eq v2, v7, :cond_0

    .line 61
    const-string v2, "GSM"

    const-string v3, "load voicemail number from sim"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstantsEx;->mIsVoiceMailFixed:Z

    .line 63
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstantsEx;->mVMNumberOnSim:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstantsEx;->mVMCurrentMNumber:Ljava/lang/String;

    .line 64
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstantsEx;->mVMTagOnSim:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstantsEx;->mVMCurrentTag:Ljava/lang/String;

    .line 65
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstantsEx;->mVMLoaded:Z

    .line 102
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstantsEx;->mVMNumberOnSim:Ljava/lang/String;

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstantsEx;->voicemailPriorityMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 68
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstantsEx;->mIsVoiceMailFixed:Z

    .line 69
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 70
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "vm_number_key"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, number:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 72
    const-string v2, "GSM"

    const-string v3, "load voicemail number from SP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstantsEx;->mVMCurrentMNumber:Ljava/lang/String;

    .line 74
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstantsEx;->mVMLoaded:Z

    goto :goto_0

    .line 78
    .end local v0           #number:Ljava/lang/String;
    .end local v1           #sp:Landroid/content/SharedPreferences;
    :cond_1
    iget v2, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstantsEx;->voicemailPriorityMode:I

    if-eq v2, v7, :cond_2

    iget v2, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstantsEx;->voicemailPriorityMode:I

    if-ne v2, v5, :cond_3

    .line 80
    :cond_2
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstantsEx;->mIsVoiceMailFixed:Z

    .line 84
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/VirtualNet;->isVirtualNet()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 85
    const-string v2, "GSM"

    const-string v3, "try to load voicemail number from virtualNet"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static {}, Lcom/android/internal/telephony/VirtualNet;->getCurrentVirtualNet()Lcom/android/internal/telephony/VirtualNet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/VirtualNet;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstantsEx;->mVMCurrentMNumber:Ljava/lang/String;

    .line 87
    invoke-static {}, Lcom/android/internal/telephony/VirtualNet;->getCurrentVirtualNet()Lcom/android/internal/telephony/VirtualNet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/VirtualNet;->getVoicemailTag()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstantsEx;->mVMCurrentTag:Ljava/lang/String;

    .line 89
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstantsEx;->mVMCurrentMNumber:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstantsEx;->mVMCurrentMNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 90
    const-string v2, "GSM"

    const-string v3, "loaded voicemail number from virtualNet"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstantsEx;->mVMLoaded:Z

    goto :goto_0

    .line 96
    :cond_4
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstantsEx;->mVMLoaded:Z

    if-nez v2, :cond_5

    .line 97
    const-string v2, "GSM"

    const-string v3, "load voicemail number from cust"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-super {p0, p1}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->getVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstantsEx;->mVMCurrentMNumber:Ljava/lang/String;

    .line 99
    invoke-super {p0, p1}, Lcom/android/internal/telephony/gsm/VoiceMailConstants;->getVoiceMailTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstantsEx;->mVMCurrentTag:Ljava/lang/String;

    .line 101
    :cond_5
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstantsEx;->mVMLoaded:Z

    goto/16 :goto_0
.end method

.method getVoiceMailFixed(Ljava/lang/String;)Z
    .locals 1
    .parameter "carrier"

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstantsEx;->mVMLoaded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstantsEx;->mCurrentCarrier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/VoiceMailConstantsEx;->getVoiceMailConfig(Ljava/lang/String;)V

    .line 108
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstantsEx;->mIsVoiceMailFixed:Z

    return v0
.end method

.method getVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "carrier"

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstantsEx;->mVMLoaded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstantsEx;->mCurrentCarrier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 113
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/VoiceMailConstantsEx;->getVoiceMailConfig(Ljava/lang/String;)V

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstantsEx;->mVMCurrentMNumber:Ljava/lang/String;

    return-object v0
.end method

.method getVoiceMailTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "carrier"

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstantsEx;->mVMLoaded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstantsEx;->mCurrentCarrier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 120
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/VoiceMailConstantsEx;->getVoiceMailConfig(Ljava/lang/String;)V

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstantsEx;->mVMCurrentTag:Ljava/lang/String;

    return-object v0
.end method

.method getVoicemailPriorityMode()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstantsEx;->voicemailPriorityMode:I

    return v0
.end method

.method setVoicemailOnSIM(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "voicemailNumber"
    .parameter "voicemailTag"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstantsEx;->mVMNumberOnSim:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstantsEx;->mVMTagOnSim:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/VoiceMailConstantsEx;->mVMLoaded:Z

    .line 45
    return-void
.end method
