.class public Lcom/android/internal/telephony/cdma/DataProfileCdma;
.super Lcom/android/internal/telephony/DataProfile;
.source "DataProfileCdma.java"


# static fields
.field private static PROFILE_TYPE:Ljava/lang/String;


# instance fields
.field private mProfileId:I

.field public final mmsPort:Ljava/lang/String;

.field public final mmsProxy:Ljava/lang/String;

.field public final mmsc:Ljava/lang/String;

.field public final port:Ljava/lang/String;

.field public final proxy:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "CdmaNai"

    sput-object v0, Lcom/android/internal/telephony/cdma/DataProfileCdma;->PROFILE_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11
    .parameter "id"
    .parameter "numeric"
    .parameter "apn"
    .parameter "user"
    .parameter "password"
    .parameter "authType"
    .parameter "types"
    .parameter "protocol"
    .parameter "roamingProtocol"
    .parameter "bearer"

    .prologue
    .line 46
    if-nez p3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/cdma/DataProfileCdma;->PROFILE_TYPE:Ljava/lang/String;

    :goto_0
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/telephony/DataProfile;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/DataProfileCdma;->mProfileId:I

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/DataProfileCdma;->proxy:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/DataProfileCdma;->port:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/DataProfileCdma;->mmsc:Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/DataProfileCdma;->mmsProxy:Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/DataProfileCdma;->mmsPort:Ljava/lang/String;

    .line 55
    return-void

    :cond_0
    move-object v3, p3

    .line 46
    goto :goto_0
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "id"
    .parameter "numeric"
    .parameter "apn"
    .parameter "user"
    .parameter "password"
    .parameter "authType"
    .parameter "types"
    .parameter "protocol"
    .parameter "roamingProtocol"
    .parameter "bearer"
    .parameter "proxy"
    .parameter "port"
    .parameter "mmsc"
    .parameter "mmsProxy"
    .parameter "mmsPort"

    .prologue
    .line 61
    if-nez p3, :cond_0

    sget-object v4, Lcom/android/internal/telephony/cdma/DataProfileCdma;->PROFILE_TYPE:Ljava/lang/String;

    :goto_0
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lcom/android/internal/telephony/DataProfile;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 32
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/cdma/DataProfileCdma;->mProfileId:I

    .line 63
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/DataProfileCdma;->proxy:Ljava/lang/String;

    .line 64
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/DataProfileCdma;->port:Ljava/lang/String;

    .line 65
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/DataProfileCdma;->mmsc:Ljava/lang/String;

    .line 66
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/DataProfileCdma;->mmsProxy:Ljava/lang/String;

    .line 67
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/DataProfileCdma;->mmsPort:Ljava/lang/String;

    .line 68
    return-void

    :cond_0
    move-object v4, p3

    .line 61
    goto :goto_0
.end method


# virtual methods
.method public canHandleType(Ljava/lang/String;)Z
    .locals 5
    .parameter "type"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/DataProfileCdma;->types:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 76
    .local v3, t:Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "default"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "hipri"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 79
    :cond_0
    const/4 v4, 0x1

    .line 82
    .end local v3           #t:Ljava/lang/String;
    :goto_1
    return v4

    .line 74
    .restart local v3       #t:Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    .end local v3           #t:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getDataProfileType()Lcom/android/internal/telephony/DataProfile$DataProfileType;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_CDMA:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    return-object v0
.end method

.method public getProfileId()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/android/internal/telephony/cdma/DataProfileCdma;->mProfileId:I

    return v0
.end method

.method public setProfileId(I)V
    .locals 0
    .parameter "profileId"

    .prologue
    .line 98
    iput p1, p0, Lcom/android/internal/telephony/cdma/DataProfileCdma;->mProfileId:I

    .line 99
    return-void
.end method

.method public toHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/DataProfileCdma;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    const-string v0, "DataProfileCdma"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 109
    invoke-super {p0}, Lcom/android/internal/telephony/DataProfile;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, str:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,proxy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/DataProfileCdma;->proxy:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",port = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/DataProfileCdma;->port:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mmsc = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/DataProfileCdma;->mmsc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mmsProxy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/DataProfileCdma;->mmsProxy:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mmsPort = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/DataProfileCdma;->mmsPort:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
