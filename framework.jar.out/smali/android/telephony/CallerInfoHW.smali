.class public Landroid/telephony/CallerInfoHW;
.super Ljava/lang/Object;
.source "CallerInfoHW.java"

# interfaces
.implements Landroid/telephony/TelephonyInterfacesHW;


# static fields
.field public static final MIN_MATCH:I = 0x7

.field public static final ROAMING_MATCH:I = 0xa

.field private static final TAG:Ljava/lang/String; = "CallerInfo"


# instance fields
.field private IS_CHINA_TELECOM:Z

.field private NUM_LONG:I

.field private NUM_SHORT:I

.field private configMatchNum:I

.field private configMatchNumShort:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x7

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string/jumbo v1, "ro.config.hwft_MatchNum"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/telephony/CallerInfoHW;->configMatchNum:I

    .line 38
    iget v1, p0, Landroid/telephony/CallerInfoHW;->configMatchNum:I

    if-ge v1, v0, :cond_0

    :goto_0
    iput v0, p0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    .line 40
    const-string/jumbo v0, "ro.config.hwft_MatchNumShort"

    iget v1, p0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/telephony/CallerInfoHW;->configMatchNumShort:I

    .line 41
    iget v0, p0, Landroid/telephony/CallerInfoHW;->configMatchNumShort:I

    iget v1, p0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    :goto_1
    iput v0, p0, Landroid/telephony/CallerInfoHW;->NUM_SHORT:I

    .line 46
    const-string/jumbo v0, "ro.config.hw_opta"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "92"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "ro.config.hw_optb"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "156"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Landroid/telephony/CallerInfoHW;->IS_CHINA_TELECOM:Z

    return-void

    .line 38
    :cond_0
    iget v0, p0, Landroid/telephony/CallerInfoHW;->configMatchNum:I

    goto :goto_0

    .line 41
    :cond_1
    iget v0, p0, Landroid/telephony/CallerInfoHW;->configMatchNumShort:I

    goto :goto_1

    .line 46
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 447
    const-string v0, "CallerInfo"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    const-string v0, "CallerInfo"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_0
    return-void
.end method


# virtual methods
.method public compareNums(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "num1"
    .parameter "num2"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x7

    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, num1Len:I
    const/4 v1, 0x0

    .line 55
    .local v1, num2Len:I
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v4, v5

    .line 106
    :goto_0
    return v4

    .line 59
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "compareNums, num1 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", num2 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 70
    const-string/jumbo v6, "ro.config.hwft_MatchNum"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_4

    .line 72
    const-string v5, "gsm.hw.matchnum"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 73
    .local v2, numMatch:I
    const-string v5, "gsm.hw.matchnum.short"

    invoke-static {v5, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 74
    .local v3, numMatchShort:I
    if-ge v2, v4, :cond_2

    move v2, v4

    .end local v2           #numMatch:I
    :cond_2
    iput v2, p0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    .line 75
    iget v4, p0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    if-lt v3, v4, :cond_3

    iget v3, p0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    .end local v3           #numMatchShort:I
    :cond_3
    iput v3, p0, Landroid/telephony/CallerInfoHW;->NUM_SHORT:I

    .line 77
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCallerIndex(), after setprop NUM_LONG = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", NUM_SHORT = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/telephony/CallerInfoHW;->NUM_SHORT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 82
    :cond_4
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 83
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 85
    iget v4, p0, Landroid/telephony/CallerInfoHW;->NUM_SHORT:I

    iget v5, p0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    if-ge v4, v5, :cond_5

    .line 87
    const-string v4, "compareNums, NUM_SHORT have been set! Only do full compare."

    invoke-static {v4}, Landroid/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0

    .line 92
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 93
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 95
    iget v4, p0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    if-le v0, v4, :cond_6

    .line 96
    iget v4, p0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    sub-int v4, v0, v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 99
    :cond_6
    iget v4, p0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    if-le v1, v4, :cond_7

    .line 100
    iget v4, p0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    sub-int v4, v1, v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 104
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "compareNums, new num1 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", new num2 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto/16 :goto_0
.end method

.method public getCallerIndex(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 1
    .parameter "cursor"
    .parameter "compNum"

    .prologue
    .line 111
    const-string/jumbo v0, "number"

    invoke-virtual {p0, p1, p2, v0}, Landroid/telephony/CallerInfoHW;->getCallerIndex(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCallerIndex(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)I
    .locals 21
    .parameter "cursor"
    .parameter "compNum"
    .parameter "columnName"

    .prologue
    .line 114
    const/4 v6, 0x0

    .line 115
    .local v6, compNumShort:Ljava/lang/String;
    const/4 v5, 0x0

    .line 116
    .local v5, compNumLong:Ljava/lang/String;
    const/4 v14, 0x0

    .line 117
    .local v14, tmpNum:Ljava/lang/String;
    const/16 v17, 0x0

    .line 118
    .local v17, tmpNumShort:Ljava/lang/String;
    const/16 v16, 0x0

    .line 120
    .local v16, tmpNumLong:Ljava/lang/String;
    const/4 v13, -0x1

    .line 121
    .local v13, numShortID:I
    const/4 v10, -0x1

    .line 122
    .local v10, numLongID:I
    const/4 v7, -0x1

    .line 125
    .local v7, fixedIndex:I
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "getCallerIndex(), NUM_LONG = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",NUM_SHORT = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_SHORT:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 136
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/telephony/CallerInfoHW;->IS_CHINA_TELECOM:Z

    move/from16 v18, v0

    if-eqz v18, :cond_8

    .line 137
    const/16 v18, 0x1

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/MSimTelephonyManager;->getNetworkRoamingCT()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 139
    const/16 v18, 0xa

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    .line 140
    const/16 v18, 0xa

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/telephony/CallerInfoHW;->NUM_SHORT:I

    .line 141
    const-string v18, "CallerInfo"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "After modify ,NUM_LONG = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ",NUM_SHORT = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_SHORT:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_0
    :goto_0
    if-nez p2, :cond_b

    .line 180
    if-eqz p1, :cond_1

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v18

    if-lez v18, :cond_1

    .line 182
    const/4 v7, 0x0

    .line 184
    :cond_1
    const-string v18, "CallerInfo"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "CallerInfoHW(),null == compNum!fixedIndex = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v7

    .line 442
    .end local v7           #fixedIndex:I
    .local v8, fixedIndex:I
    :goto_1
    return v8

    .line 145
    .end local v8           #fixedIndex:I
    .restart local v7       #fixedIndex:I
    :cond_2
    const-string/jumbo v18, "ro.config.hwft_MatchNum"

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v18

    if-nez v18, :cond_5

    .line 147
    const-string v18, "gsm.hw.matchnum"

    const/16 v19, 0x7

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 148
    .local v11, numMatch:I
    const-string v18, "gsm.hw.matchnum.short"

    move-object/from16 v0, v18

    invoke-static {v0, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 149
    .local v12, numMatchShort:I
    const/16 v18, 0x7

    move/from16 v0, v18

    if-ge v11, v0, :cond_3

    const/4 v11, 0x7

    .end local v11           #numMatch:I
    :cond_3
    move-object/from16 v0, p0

    iput v11, v0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    .line 150
    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v12, v0, :cond_4

    move-object/from16 v0, p0

    iget v12, v0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    .end local v12           #numMatchShort:I
    :cond_4
    move-object/from16 v0, p0

    iput v12, v0, Landroid/telephony/CallerInfoHW;->NUM_SHORT:I

    .line 152
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "getCallerIndex(), after setprop NUM_LONG = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", NUM_SHORT = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_SHORT:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 156
    :cond_5
    const-string/jumbo v18, "ro.config.hwft_MatchNum"

    const/16 v19, 0x7

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/telephony/CallerInfoHW;->configMatchNum:I

    .line 157
    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->configMatchNum:I

    move/from16 v18, v0

    const/16 v19, 0x7

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_6

    const/16 v18, 0x7

    :goto_2
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    .line 158
    const-string/jumbo v18, "ro.config.hwft_MatchNumShort"

    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/telephony/CallerInfoHW;->configMatchNumShort:I

    .line 159
    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->configMatchNumShort:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    move/from16 v18, v0

    :goto_3
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/telephony/CallerInfoHW;->NUM_SHORT:I

    goto/16 :goto_0

    .line 157
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->configMatchNum:I

    move/from16 v18, v0

    goto :goto_2

    .line 159
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->configMatchNumShort:I

    move/from16 v18, v0

    goto :goto_3

    .line 165
    :cond_8
    const-string/jumbo v18, "ro.config.hwft_MatchNum"

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v18

    if-nez v18, :cond_0

    .line 167
    const-string v18, "gsm.hw.matchnum"

    const/16 v19, 0x7

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 168
    .restart local v11       #numMatch:I
    const-string v18, "gsm.hw.matchnum.short"

    move-object/from16 v0, v18

    invoke-static {v0, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 169
    .restart local v12       #numMatchShort:I
    const/16 v18, 0x7

    move/from16 v0, v18

    if-ge v11, v0, :cond_9

    const/4 v11, 0x7

    .end local v11           #numMatch:I
    :cond_9
    move-object/from16 v0, p0

    iput v11, v0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    .line 170
    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v12, v0, :cond_a

    move-object/from16 v0, p0

    iget v12, v0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    .end local v12           #numMatchShort:I
    :cond_a
    move-object/from16 v0, p0

    iput v12, v0, Landroid/telephony/CallerInfoHW;->NUM_SHORT:I

    .line 171
    const-string v18, "CallerInfo"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getCallerIndex(), after setprop NUM_LONG = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", NUM_SHORT = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_SHORT:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 189
    :cond_b
    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 191
    const/16 v18, 0x5c

    const-string/jumbo v19, "ro.config.hw_opta"

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    const/16 v18, 0x9c

    const-string/jumbo v19, "ro.config.hw_optb"

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    const/16 v18, 0xa

    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    const-string v18, "**133"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_c

    const-string v18, "#"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 197
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v9

    .line 198
    .local v9, numLen:I
    const/16 v18, 0x5

    add-int/lit8 v19, v9, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 201
    .end local v9           #numLen:I
    :cond_c
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    .line 203
    .local v4, compNumLen:I
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "compNum: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 209
    if-eqz p1, :cond_e

    .line 211
    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v4, v0, :cond_16

    .line 214
    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    move/from16 v18, v0

    sub-int v18, v4, v18

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 215
    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_SHORT:I

    move/from16 v18, v0

    sub-int v18, v4, v18

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 218
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "11:, compNumLong = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",compNumShort = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 222
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v18

    if-eqz v18, :cond_e

    .line 224
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 226
    .local v3, columnIndex:I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v3, v0, :cond_e

    .line 230
    :cond_d
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 231
    invoke-static {v14}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 232
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    .line 234
    .local v15, tmpNumLen:I
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "11: tmpNum = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", tmpNum.length11: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",ID = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 240
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 241
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v10

    .line 243
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "exact match: break! numLongID = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 291
    :goto_4
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "11:  numLongID = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",numShortID = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 294
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v0, v10, :cond_14

    .line 295
    move v7, v10

    .line 439
    .end local v3           #columnIndex:I
    .end local v15           #tmpNumLen:I
    :cond_e
    :goto_5
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "fixedIndex: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    move v8, v7

    .line 442
    .end local v7           #fixedIndex:I
    .restart local v8       #fixedIndex:I
    goto/16 :goto_1

    .line 248
    .end local v8           #fixedIndex:I
    .restart local v3       #columnIndex:I
    .restart local v7       #fixedIndex:I
    .restart local v15       #tmpNumLen:I
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v15, v0, :cond_11

    .line 250
    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    move/from16 v18, v0

    sub-int v18, v15, v18

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 252
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v0, v10, :cond_10

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v18

    if-nez v18, :cond_10

    .line 254
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v10

    .line 257
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "11: > NUM_LONG numLongID = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 263
    :cond_10
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "11: >=NUM_LONG, and !=,  tmpNumLong = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", numLongID:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 288
    :goto_6
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v18

    if-nez v18, :cond_d

    goto/16 :goto_4

    .line 269
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_SHORT:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v15, v0, :cond_13

    .line 271
    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_SHORT:I

    move/from16 v18, v0

    sub-int v18, v15, v18

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    .line 273
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v0, v13, :cond_12

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v18

    if-nez v18, :cond_12

    .line 274
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v13

    .line 276
    :cond_12
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "11: >=NUM_SHORT, tmpNumShort = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", numShortID:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    goto :goto_6

    .line 283
    :cond_13
    const-string/jumbo v18, "tmpNum11, continue"

    invoke-static/range {v18 .. v18}, Landroid/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    goto :goto_6

    .line 296
    :cond_14
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v0, v13, :cond_15

    .line 297
    move v7, v13

    goto/16 :goto_5

    .line 299
    :cond_15
    const/4 v7, -0x1

    goto/16 :goto_5

    .line 303
    .end local v3           #columnIndex:I
    .end local v15           #tmpNumLen:I
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_SHORT:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v4, v0, :cond_1f

    .line 306
    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_SHORT:I

    move/from16 v18, v0

    sub-int v18, v4, v18

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 308
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "7:  compNumShort = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 311
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v18

    if-eqz v18, :cond_e

    .line 313
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 315
    .restart local v3       #columnIndex:I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v3, v0, :cond_e

    .line 319
    :cond_17
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 320
    invoke-static {v14}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 321
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    .line 323
    .restart local v15       #tmpNumLen:I
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "7: tmpNum = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", tmpNum.length7: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",ID = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 329
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_18

    .line 330
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v13

    .line 332
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "exact match numShortID = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 379
    :goto_7
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "7: numShortID = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",numLongID = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 382
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v0, v13, :cond_1d

    .line 383
    move v7, v13

    goto/16 :goto_5

    .line 337
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_LONG:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v15, v0, :cond_1a

    .line 339
    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_SHORT:I

    move/from16 v18, v0

    sub-int v18, v15, v18

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    .line 341
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v0, v10, :cond_19

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v18

    if-nez v18, :cond_19

    .line 342
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v10

    .line 344
    :cond_19
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "7: >=NUM_LONG, tmpNumShort = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", numLongID:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 376
    :goto_8
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v18

    if-nez v18, :cond_17

    goto/16 :goto_7

    .line 349
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_SHORT:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v15, v0, :cond_1c

    .line 351
    move-object/from16 v0, p0

    iget v0, v0, Landroid/telephony/CallerInfoHW;->NUM_SHORT:I

    move/from16 v18, v0

    sub-int v18, v15, v18

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    .line 353
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v0, v13, :cond_1b

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v18

    if-nez v18, :cond_1b

    .line 355
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v13

    .line 358
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "7: >= NUM_SHORT numShortID = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 364
    :cond_1b
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "7: >=NUM_SHORT, and !=, tmpNumShort = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", numShortID:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    goto :goto_8

    .line 371
    :cond_1c
    const-string v18, "7: continue"

    invoke-static/range {v18 .. v18}, Landroid/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    goto :goto_8

    .line 384
    :cond_1d
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v0, v10, :cond_1e

    .line 385
    move v7, v10

    goto/16 :goto_5

    .line 387
    :cond_1e
    const/4 v7, -0x1

    goto/16 :goto_5

    .line 393
    .end local v3           #columnIndex:I
    .end local v15           #tmpNumLen:I
    :cond_1f
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v18

    if-eqz v18, :cond_e

    .line 395
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 397
    .restart local v3       #columnIndex:I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v3, v0, :cond_e

    .line 401
    :cond_20
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 402
    invoke-static {v14}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 403
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    .line 405
    .restart local v15       #tmpNumLen:I
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "5: tmpNum = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", tmpNum.length: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",ID = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 409
    if-ne v15, v4, :cond_21

    .line 411
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v0, v7, :cond_22

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v18

    if-nez v18, :cond_22

    .line 413
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    .line 415
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "5: break! numLongID = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 431
    :goto_9
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "5: fixedIndex = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 423
    :cond_21
    const-string v18, "5: continue"

    invoke-static/range {v18 .. v18}, Landroid/telephony/CallerInfoHW;->logd(Ljava/lang/String;)V

    .line 428
    :cond_22
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v18

    if-nez v18, :cond_20

    goto :goto_9
.end method
