.class Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService$AlarmPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntentHistoryReadWrite"
.end annotation


# instance fields
.field intentStats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            ">;",
            "Lcom/android/server/AlarmManagerService$FilterStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 2186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;->intentStats:Ljava/util/HashMap;

    .line 2187
    invoke-virtual {p0, p1}, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;->readFromParcel(Landroid/os/Parcel;)V

    .line 2188
    return-void
.end method

.method public constructor <init>(Landroid/util/Pair;Lcom/android/server/AlarmManagerService$FilterStats;)V
    .locals 1
    .parameter
    .parameter "fs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            ">;",
            "Lcom/android/server/AlarmManagerService$FilterStats;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2161
    .local p1, target:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Landroid/content/ComponentName;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;->intentStats:Ljava/util/HashMap;

    .line 2162
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;->intentStats:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2163
    return-void
.end method


# virtual methods
.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 10
    .parameter "in"

    .prologue
    .line 2190
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;->intentStats:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 2191
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2193
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 2194
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2195
    .local v1, action:Ljava/lang/String;
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v2

    .line 2196
    .local v2, cn:Landroid/content/ComponentName;
    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2197
    .local v5, target:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Landroid/content/ComponentName;>;"
    new-instance v3, Lcom/android/server/AlarmManagerService$FilterStats;

    const/4 v7, 0x0

    invoke-direct {v3, v7, v5}, Lcom/android/server/AlarmManagerService$FilterStats;-><init>(Lcom/android/server/AlarmManagerService$BroadcastStats;Landroid/util/Pair;)V

    .line 2198
    .local v3, fs:Lcom/android/server/AlarmManagerService$FilterStats;
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;->intentStats:Ljava/util/HashMap;

    invoke-virtual {v7, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v3, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    .line 2200
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v3, Lcom/android/server/AlarmManagerService$FilterStats;->mAdjust:I

    .line 2201
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    iput-wide v7, v3, Lcom/android/server/AlarmManagerService$FilterStats;->mRecordRTCTime:J

    .line 2202
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$100()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2203
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .line 2204
    .local v6, time:Landroid/text/format/Time;
    iget-wide v7, v3, Lcom/android/server/AlarmManagerService$FilterStats;->mRecordRTCTime:J

    invoke-virtual {v6, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 2205
    const-string v8, "AlarmManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Read: action="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ",cmp="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", cnt="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, v3, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ",adj="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, v3, Lcom/android/server/AlarmManagerService$FilterStats;->mAdjust:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ",T="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2193
    .end local v6           #time:Landroid/text/format/Time;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 2209
    .end local v1           #action:Ljava/lang/String;
    .end local v2           #cn:Landroid/content/ComponentName;
    .end local v3           #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v5           #target:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Landroid/content/ComponentName;>;"
    :cond_1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 8
    .parameter "out"

    .prologue
    .line 2166
    iget-object v5, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;->intentStats:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 2167
    .local v0, N:I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2168
    iget-object v5, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;->intentStats:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 2169
    .local v3, target:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Landroid/content/ComponentName;>;"
    iget-object v5, p0, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;->intentStats:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 2170
    .local v1, fs:Lcom/android/server/AlarmManagerService$FilterStats;
    if-eqz v1, :cond_0

    .line 2171
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2172
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/content/ComponentName;

    invoke-static {v5, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 2173
    iget v5, v1, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2174
    iget v5, v1, Lcom/android/server/AlarmManagerService$FilterStats;->mAdjust:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2175
    iget-wide v5, v1, Lcom/android/server/AlarmManagerService$FilterStats;->mRecordRTCTime:J

    invoke-virtual {p1, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 2176
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$100()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2177
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 2178
    .local v4, time:Landroid/text/format/Time;
    iget-wide v5, v1, Lcom/android/server/AlarmManagerService$FilterStats;->mRecordRTCTime:J

    invoke-virtual {v4, v5, v6}, Landroid/text/format/Time;->set(J)V

    .line 2179
    const-string v6, "AlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Write: action="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ",cmp="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", cnt="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v1, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ",adj="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v1, Lcom/android/server/AlarmManagerService$FilterStats;->mAdjust:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ",T="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2184
    .end local v1           #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v3           #target:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Landroid/content/ComponentName;>;"
    .end local v4           #time:Landroid/text/format/Time;
    :cond_1
    return-void
.end method
