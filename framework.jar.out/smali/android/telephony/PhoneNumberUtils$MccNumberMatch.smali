.class Landroid/telephony/PhoneNumberUtils$MccNumberMatch;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/PhoneNumberUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MccNumberMatch"
.end annotation


# instance fields
.field private mCc:Ljava/lang/String;

.field private mIdd:Ljava/lang/String;

.field private mMcc:I

.field private mNdd:Ljava/lang/String;

.field private mSpcs:[Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "mcc"
    .parameter "idd"
    .parameter "cc"
    .parameter "ndd"

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput p1, p0, Landroid/telephony/PhoneNumberUtils$MccNumberMatch;->mMcc:I

    .line 119
    iput-object p2, p0, Landroid/telephony/PhoneNumberUtils$MccNumberMatch;->mIdd:Ljava/lang/String;

    .line 120
    iput-object p3, p0, Landroid/telephony/PhoneNumberUtils$MccNumberMatch;->mCc:Ljava/lang/String;

    .line 121
    iput-object p4, p0, Landroid/telephony/PhoneNumberUtils$MccNumberMatch;->mNdd:Ljava/lang/String;

    .line 122
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "mcc"
    .parameter "idd"
    .parameter "cc"
    .parameter "ndd"
    .parameter "spcList"

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput p1, p0, Landroid/telephony/PhoneNumberUtils$MccNumberMatch;->mMcc:I

    .line 127
    iput-object p2, p0, Landroid/telephony/PhoneNumberUtils$MccNumberMatch;->mIdd:Ljava/lang/String;

    .line 128
    iput-object p3, p0, Landroid/telephony/PhoneNumberUtils$MccNumberMatch;->mCc:Ljava/lang/String;

    .line 129
    iput-object p4, p0, Landroid/telephony/PhoneNumberUtils$MccNumberMatch;->mNdd:Ljava/lang/String;

    .line 130
    if-eqz p5, :cond_0

    .line 132
    const-string v0, ","

    invoke-virtual {p5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/PhoneNumberUtils$MccNumberMatch;->mSpcs:[Ljava/lang/String;

    .line 134
    :cond_0
    return-void
.end method


# virtual methods
.method public getCc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$MccNumberMatch;->mCc:Ljava/lang/String;

    return-object v0
.end method

.method public getIdd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$MccNumberMatch;->mIdd:Ljava/lang/String;

    return-object v0
.end method

.method public getMcc()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Landroid/telephony/PhoneNumberUtils$MccNumberMatch;->mMcc:I

    return v0
.end method

.method public getNdd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$MccNumberMatch;->mNdd:Ljava/lang/String;

    return-object v0
.end method

.method public getSpcs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Landroid/telephony/PhoneNumberUtils$MccNumberMatch;->mSpcs:[Ljava/lang/String;

    return-object v0
.end method
