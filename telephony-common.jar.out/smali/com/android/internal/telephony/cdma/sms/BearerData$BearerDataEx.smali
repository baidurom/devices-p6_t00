.class Lcom/android/internal/telephony/cdma/sms/BearerData$BearerDataEx;
.super Ljava/lang/Object;
.source "BearerData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/sms/BearerData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BearerDataEx"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/cdma/sms/BearerData$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2148
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData$BearerDataEx;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    .line 2148
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerData$BearerDataEx;->encodeMsgCenterTimeStampCheck(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    return-void
.end method

.method private static encodeMsgCenterTimeStamp(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 4
    .parameter "bData"
    .parameter "outStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    .line 2164
    const/16 v1, 0x8

    const/4 v2, 0x6

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 2167
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->year:I

    rem-int/lit8 v2, v2, 0x64

    iput v2, v1, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->year:I

    .line 2168
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->year:I

    div-int/lit8 v1, v1, 0xa

    int-to-byte v0, v1

    .line 2169
    .local v0, val:B
    invoke-virtual {p1, v3, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 2170
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->year:I

    rem-int/lit8 v1, v1, 0xa

    int-to-byte v0, v1

    .line 2171
    invoke-virtual {p1, v3, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 2174
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v2, v1, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->month:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->month:I

    .line 2175
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->month:I

    div-int/lit8 v1, v1, 0xa

    int-to-byte v0, v1

    .line 2176
    invoke-virtual {p1, v3, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 2177
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->month:I

    rem-int/lit8 v1, v1, 0xa

    int-to-byte v0, v1

    .line 2178
    invoke-virtual {p1, v3, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 2181
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->monthDay:I

    div-int/lit8 v1, v1, 0xa

    int-to-byte v0, v1

    .line 2182
    invoke-virtual {p1, v3, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 2183
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->monthDay:I

    rem-int/lit8 v1, v1, 0xa

    int-to-byte v0, v1

    .line 2184
    invoke-virtual {p1, v3, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 2187
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->hour:I

    div-int/lit8 v1, v1, 0xa

    int-to-byte v0, v1

    .line 2188
    invoke-virtual {p1, v3, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 2189
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->hour:I

    rem-int/lit8 v1, v1, 0xa

    int-to-byte v0, v1

    .line 2190
    invoke-virtual {p1, v3, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 2193
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->minute:I

    div-int/lit8 v1, v1, 0xa

    int-to-byte v0, v1

    .line 2194
    invoke-virtual {p1, v3, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 2195
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->minute:I

    rem-int/lit8 v1, v1, 0xa

    int-to-byte v0, v1

    .line 2196
    invoke-virtual {p1, v3, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 2199
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->second:I

    div-int/lit8 v1, v1, 0xa

    int-to-byte v0, v1

    .line 2200
    invoke-virtual {p1, v3, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 2201
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->second:I

    rem-int/lit8 v1, v1, 0xa

    int-to-byte v0, v1

    .line 2202
    invoke-virtual {p1, v3, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 2203
    return-void
.end method

.method private static encodeMsgCenterTimeStampCheck(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .parameter "bData"
    .parameter "outStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    .line 2152
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    if-eqz v0, :cond_0

    .line 2153
    const/16 v0, 0x8

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 2154
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerData$BearerDataEx;->encodeMsgCenterTimeStamp(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 2156
    :cond_0
    return-void
.end method
