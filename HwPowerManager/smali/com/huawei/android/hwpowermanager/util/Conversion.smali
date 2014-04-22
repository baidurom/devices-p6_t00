.class public Lcom/huawei/android/hwpowermanager/util/Conversion;
.super Ljava/lang/Object;
.source "Conversion.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/huawei/android/hwpowermanager/util/Conversion;->mContext:Landroid/content/Context;

    .line 13
    return-void
.end method

.method public static calculateTime(DID)D
    .locals 6
    .parameter "batteryCapacity"
    .parameter "rawlevel"
    .parameter "currentPower"

    .prologue
    const-wide/high16 v4, 0x4059

    .line 18
    const-wide/high16 v0, 0x3ff0

    .line 19
    .local v0, ratio:D
    const/16 v2, 0x1e

    if-lt p2, v2, :cond_0

    .line 20
    add-int/lit8 v2, p2, -0x2

    int-to-double v2, v2

    div-double v0, v2, v4

    .line 26
    :goto_0
    div-double v2, p0, p3

    mul-double/2addr v2, v0

    return-wide v2

    .line 21
    :cond_0
    const/4 v2, 0x3

    if-lt p2, v2, :cond_1

    .line 22
    add-int/lit8 v2, p2, -0x2

    int-to-double v2, v2

    div-double v0, v2, v4

    goto :goto_0

    .line 24
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static doubleToHoursAndMins(DID)Ljava/lang/String;
    .locals 10
    .parameter "batteryCapacity"
    .parameter "rawlevel"
    .parameter "currentPower"

    .prologue
    const/16 v9, 0xa

    .line 33
    invoke-static {p0, p1, p2, p3, p4}, Lcom/huawei/android/hwpowermanager/util/Conversion;->calculateTime(DID)D

    move-result-wide v0

    .line 34
    .local v0, d:D
    double-to-int v2, v0

    .line 35
    .local v2, hour:I
    int-to-double v5, v2

    sub-double v5, v0, v5

    const-wide/high16 v7, 0x404e

    mul-double/2addr v5, v7

    double-to-int v3, v5

    .line 36
    .local v3, minute:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .local v4, sb:Ljava/lang/StringBuilder;
    if-le v9, v2, :cond_0

    .line 38
    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    :cond_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    if-ge v3, v9, :cond_1

    .line 42
    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    :cond_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public doubleToTime(DID)Ljava/lang/String;
    .locals 9
    .parameter "batteryCapacity"
    .parameter "rawlevel"
    .parameter "currentPower"

    .prologue
    .line 52
    invoke-static {p1, p2, p3, p4, p5}, Lcom/huawei/android/hwpowermanager/util/Conversion;->calculateTime(DID)D

    move-result-wide v0

    .line 53
    .local v0, d:D
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v2, v5

    .line 54
    .local v2, hour:I
    int-to-double v5, v2

    sub-double v5, v0, v5

    const-wide/high16 v7, 0x404e

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v3, v5

    .line 55
    .local v3, minute:I
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 56
    .local v4, stringbuffer:Ljava/lang/StringBuffer;
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    iget-object v5, p0, Lcom/huawei/android/hwpowermanager/util/Conversion;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09001e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    iget-object v5, p0, Lcom/huawei/android/hwpowermanager/util/Conversion;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090020

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
