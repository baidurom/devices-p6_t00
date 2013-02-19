.class Lcom/android/internal/telephony/RoamingBroker$RoamingBrokerSequence;
.super Ljava/lang/Object;
.source "RoamingBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RoamingBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RoamingBrokerSequence"
.end annotation


# static fields
.field static final RBSequenceLength:I = 0x3


# instance fields
.field before_rb_mccmnc:Ljava/lang/String;

.field name:Ljava/lang/String;

.field rb_mccmnc:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/RoamingBroker$RoamingBrokerSequence;->name:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/RoamingBroker$RoamingBrokerSequence;->before_rb_mccmnc:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/RoamingBroker$RoamingBrokerSequence;->rb_mccmnc:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/RoamingBroker$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/internal/telephony/RoamingBroker$RoamingBrokerSequence;-><init>()V

    return-void
.end method
