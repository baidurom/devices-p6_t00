.class public Lcom/android/internal/telephony/RoamingBroker;
.super Ljava/lang/Object;
.source "RoamingBroker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/RoamingBroker$1;,
        Lcom/android/internal/telephony/RoamingBroker$RoamingBrokerSequence;,
        Lcom/android/internal/telephony/RoamingBroker$HelperHolder;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "GSM"

.field public static final PreviousIccId:Ljava/lang/String; = "persist.radio.previousiccid"

.field public static final PreviousOperator:Ljava/lang/String; = "persist.radio.previousopcode"

.field public static final RBActivated:Ljava/lang/String; = "gsm.RBActivated"

.field private static final RBActivated_flag_on:Ljava/lang/String; = "true"

.field private static mRBSequenceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/RoamingBroker$RoamingBrokerSequence;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCurrentIccid:Ljava/lang/String;

.field private mCurrentOp:Ljava/lang/String;

.field private mPreviousIccid:Ljava/lang/String;

.field private mPreviousOp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/RoamingBroker;->mRBSequenceList:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/android/internal/telephony/RoamingBroker;->mPreviousIccid:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/android/internal/telephony/RoamingBroker;->mPreviousOp:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/android/internal/telephony/RoamingBroker;->mCurrentIccid:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/android/internal/telephony/RoamingBroker;->mCurrentOp:Ljava/lang/String;

    .line 68
    const-string v0, "persist.radio.previousopcode"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/RoamingBroker;->mPreviousOp:Ljava/lang/String;

    .line 69
    const-string v0, "Previously saved operator code is %s"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/internal/telephony/RoamingBroker;->mPreviousOp:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/RoamingBroker;->log(Ljava/lang/String;)V

    .line 71
    const-string v0, "persist.radio.previousiccid"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/RoamingBroker;->mPreviousIccid:Ljava/lang/String;

    .line 72
    const-string v0, "Previously saved Iccid is %s"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/internal/telephony/RoamingBroker;->mPreviousIccid:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RoamingBroker;->printIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/RoamingBroker;->log(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/RoamingBroker$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/internal/telephony/RoamingBroker;-><init>()V

    return-void
.end method

.method public static getDefault()Lcom/android/internal/telephony/RoamingBroker;
    .locals 1

    .prologue
    .line 114
    invoke-static {}, Lcom/android/internal/telephony/RoamingBroker$HelperHolder;->access$200()Lcom/android/internal/telephony/RoamingBroker;

    move-result-object v0

    return-object v0
.end method

.method public static getRBOperatorNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    invoke-static {}, Lcom/android/internal/telephony/RoamingBroker;->getDefault()Lcom/android/internal/telephony/RoamingBroker;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/RoamingBroker;->mPreviousOp:Ljava/lang/String;

    return-object v0
.end method

.method public static isRoamingBrokerActivated()Z
    .locals 3

    .prologue
    .line 203
    const-string v1, "true"

    const-string v2, "gsm.RBActivated"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 204
    .local v0, result:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRoamingBrokerActivated returns "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/RoamingBroker;->log(Ljava/lang/String;)V

    .line 205
    return v0
.end method

.method private isValidRBSequence()Z
    .locals 5

    .prologue
    .line 184
    const/4 v2, 0x0

    .line 186
    .local v2, result:Z
    iget-object v3, p0, Lcom/android/internal/telephony/RoamingBroker;->mPreviousOp:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/RoamingBroker;->mCurrentOp:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 187
    invoke-direct {p0}, Lcom/android/internal/telephony/RoamingBroker;->loadRBSequenceMap()V

    .line 188
    sget-object v3, Lcom/android/internal/telephony/RoamingBroker;->mRBSequenceList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/RoamingBroker$RoamingBrokerSequence;

    .line 189
    .local v1, rbs:Lcom/android/internal/telephony/RoamingBroker$RoamingBrokerSequence;
    iget-object v3, p0, Lcom/android/internal/telephony/RoamingBroker;->mCurrentOp:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/internal/telephony/RoamingBroker$RoamingBrokerSequence;->rb_mccmnc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/RoamingBroker;->mPreviousOp:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/internal/telephony/RoamingBroker$RoamingBrokerSequence;->before_rb_mccmnc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 190
    const/4 v2, 0x1

    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/android/internal/telephony/RoamingBroker$RoamingBrokerSequence;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Roaming broker is activated"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/RoamingBroker;->log(Ljava/lang/String;)V

    .line 195
    .end local v1           #rbs:Lcom/android/internal/telephony/RoamingBroker$RoamingBrokerSequence;
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/RoamingBroker;->unloadRBSequenceMap()V

    .line 198
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isValidRBSequence: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/RoamingBroker;->log(Ljava/lang/String;)V

    .line 199
    return v2
.end method

.method private loadRBSequenceMap()V
    .locals 11

    .prologue
    .line 76
    sget-object v9, Lcom/android/internal/telephony/RoamingBroker;->mRBSequenceList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 79
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "roamingBrokerSequenceList"

    invoke-static {v9, v10}, Landroid/provider/SettingsEx$Systemex;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, data:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "get raw RB list "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/RoamingBroker;->log(Ljava/lang/String;)V

    .line 86
    if-eqz v2, :cond_1

    .line 87
    const-string v9, "\\|"

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, buffer:[Ljava/lang/String;
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v7, v0, v4

    .line 89
    .local v7, s:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 90
    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 91
    .local v8, tmp:[Ljava/lang/String;
    array-length v9, v8

    const/4 v10, 0x3

    if-ne v9, v10, :cond_0

    .line 92
    new-instance v6, Lcom/android/internal/telephony/RoamingBroker$RoamingBrokerSequence;

    const/4 v9, 0x0

    invoke-direct {v6, v9}, Lcom/android/internal/telephony/RoamingBroker$RoamingBrokerSequence;-><init>(Lcom/android/internal/telephony/RoamingBroker$1;)V

    .line 93
    .local v6, rbs:Lcom/android/internal/telephony/RoamingBroker$RoamingBrokerSequence;
    const/4 v9, 0x0

    aget-object v9, v8, v9

    iput-object v9, v6, Lcom/android/internal/telephony/RoamingBroker$RoamingBrokerSequence;->name:Ljava/lang/String;

    .line 94
    const/4 v9, 0x1

    aget-object v9, v8, v9

    iput-object v9, v6, Lcom/android/internal/telephony/RoamingBroker$RoamingBrokerSequence;->before_rb_mccmnc:Ljava/lang/String;

    .line 95
    const/4 v9, 0x2

    aget-object v9, v8, v9

    iput-object v9, v6, Lcom/android/internal/telephony/RoamingBroker$RoamingBrokerSequence;->rb_mccmnc:Ljava/lang/String;

    .line 96
    sget-object v9, Lcom/android/internal/telephony/RoamingBroker;->mRBSequenceList:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v6           #rbs:Lcom/android/internal/telephony/RoamingBroker$RoamingBrokerSequence;
    .end local v8           #tmp:[Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 101
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #buffer:[Ljava/lang/String;
    .end local v2           #data:Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v7           #s:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 102
    .local v3, e:Ljava/lang/Exception;
    const-string v9, "Failed to load RB Sequence list. "

    invoke-static {v9, v3}, Lcom/android/internal/telephony/RoamingBroker;->loge(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 104
    .end local v3           #e:Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 54
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RoamingBroker] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void
.end method

.method private static loge(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .parameter "text"
    .parameter "e"

    .prologue
    .line 58
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RoamingBroker] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void
.end method

.method private printIccid(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "iccid"

    .prologue
    const/4 v2, 0x6

    const/4 v3, 0x0

    .line 62
    iget-object v0, p0, Lcom/android/internal/telephony/RoamingBroker;->mPreviousIccid:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/RoamingBroker;->mPreviousIccid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v2, :cond_1

    const-string v0, "less than 6 digits"

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/telephony/RoamingBroker;->mPreviousIccid:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/RoamingBroker;->mPreviousIccid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x6

    new-array v2, v2, [C

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    const/16 v2, 0x2a

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setData()V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 152
    iget-object v0, p0, Lcom/android/internal/telephony/RoamingBroker;->mCurrentIccid:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/RoamingBroker;->mCurrentOp:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    const-string v0, "gsm.RBActivated"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/RoamingBroker;->mCurrentOp:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/RoamingBroker;->mPreviousOp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 159
    iget-object v0, p0, Lcom/android/internal/telephony/RoamingBroker;->mCurrentIccid:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/RoamingBroker;->mPreviousIccid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 160
    const-string v0, "persist.radio.previousopcode"

    iget-object v1, p0, Lcom/android/internal/telephony/RoamingBroker;->mCurrentOp:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v0, "persist.radio.previousiccid"

    iget-object v1, p0, Lcom/android/internal/telephony/RoamingBroker;->mCurrentIccid:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/android/internal/telephony/RoamingBroker;->mCurrentIccid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/RoamingBroker;->mPreviousIccid:Ljava/lang/String;

    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/RoamingBroker;->mCurrentOp:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/RoamingBroker;->mPreviousOp:Ljava/lang/String;

    .line 164
    const-string v0, "different sim card. Set operatorCode: %s, iccId: %s for roaming broker"

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/internal/telephony/RoamingBroker;->mPreviousOp:Ljava/lang/String;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/internal/telephony/RoamingBroker;->mPreviousIccid:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RoamingBroker;->printIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/RoamingBroker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/RoamingBroker;->isValidRBSequence()Z

    move-result v0

    if-nez v0, :cond_3

    .line 167
    const-string v0, "persist.radio.previousopcode"

    iget-object v1, p0, Lcom/android/internal/telephony/RoamingBroker;->mCurrentOp:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/android/internal/telephony/RoamingBroker;->mCurrentOp:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/RoamingBroker;->mPreviousOp:Ljava/lang/String;

    .line 169
    const-string v0, "same sim card. Set operatorCode: %s for roaming broker"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/internal/telephony/RoamingBroker;->mPreviousOp:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/RoamingBroker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :cond_3
    const-string v0, "gsm.RBActivated"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/RoamingBroker;->mCurrentIccid:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/RoamingBroker;->mPreviousIccid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    const-string v0, "persist.radio.previousiccid"

    iget-object v1, p0, Lcom/android/internal/telephony/RoamingBroker;->mCurrentIccid:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/android/internal/telephony/RoamingBroker;->mCurrentIccid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/RoamingBroker;->mPreviousIccid:Ljava/lang/String;

    .line 179
    const-string v0, "different sim card with same operatorCode %s. Set iccId: %s for roaming broker"

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/internal/telephony/RoamingBroker;->mPreviousOp:Ljava/lang/String;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/internal/telephony/RoamingBroker;->mPreviousIccid:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RoamingBroker;->printIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/RoamingBroker;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private unloadRBSequenceMap()V
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/android/internal/telephony/RoamingBroker;->mRBSequenceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 108
    return-void
.end method

.method public static updateSelectionForRoamingBroker(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "selection"

    .prologue
    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSelection for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/RoamingBroker;->log(Ljava/lang/String;)V

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "numeric[ ]*=[ ]*[\"|\']"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/telephony/RoamingBroker;->getDefault()Lcom/android/internal/telephony/RoamingBroker;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/RoamingBroker;->mCurrentOp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[\"|\']"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "numeric=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/telephony/RoamingBroker;->getDefault()Lcom/android/internal/telephony/RoamingBroker;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/RoamingBroker;->mPreviousOp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, result:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updated Selection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/RoamingBroker;->log(Ljava/lang/String;)V

    .line 215
    return-object v0
.end method


# virtual methods
.method public setIccId(Ljava/lang/String;)V
    .locals 2
    .parameter "IccId"

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "received IccId of value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RoamingBroker;->printIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/RoamingBroker;->log(Ljava/lang/String;)V

    .line 129
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/RoamingBroker;->mCurrentIccid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    iput-object p1, p0, Lcom/android/internal/telephony/RoamingBroker;->mCurrentIccid:Ljava/lang/String;

    .line 131
    invoke-direct {p0}, Lcom/android/internal/telephony/RoamingBroker;->setData()V

    .line 133
    :cond_0
    return-void
.end method

.method public setOperator(Ljava/lang/String;)V
    .locals 2
    .parameter "operatorCode"

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "received operatorCode of value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/RoamingBroker;->log(Ljava/lang/String;)V

    .line 120
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/RoamingBroker;->mCurrentOp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iput-object p1, p0, Lcom/android/internal/telephony/RoamingBroker;->mCurrentOp:Ljava/lang/String;

    .line 122
    invoke-direct {p0}, Lcom/android/internal/telephony/RoamingBroker;->setData()V

    .line 124
    :cond_0
    return-void
.end method
