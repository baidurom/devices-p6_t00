.class Lcom/android/internal/telephony/RoamingBroker$HelperHolder;
.super Ljava/lang/Object;
.source "RoamingBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RoamingBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HelperHolder"
.end annotation


# static fields
.field private static mRoamingBroker:Lcom/android/internal/telephony/RoamingBroker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lcom/android/internal/telephony/RoamingBroker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RoamingBroker;-><init>(Lcom/android/internal/telephony/RoamingBroker$1;)V

    sput-object v0, Lcom/android/internal/telephony/RoamingBroker$HelperHolder;->mRoamingBroker:Lcom/android/internal/telephony/RoamingBroker;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lcom/android/internal/telephony/RoamingBroker;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/internal/telephony/RoamingBroker$HelperHolder;->mRoamingBroker:Lcom/android/internal/telephony/RoamingBroker;

    return-object v0
.end method
