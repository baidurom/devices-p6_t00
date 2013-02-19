.class final Lcom/android/server/AlarmManagerService$InFlight;
.super Landroid/content/Intent;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InFlight"
.end annotation


# instance fields
.field final mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

.field final mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

.field final mPendingIntent:Landroid/app/PendingIntent;

.field final mTarget:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)V
    .locals 9
    .parameter "service"
    .parameter "pendingIntent"

    .prologue
    .line 192
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 193
    iput-object p2, p0, Lcom/android/server/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    .line 194
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 195
    .local v5, intent:Landroid/content/Intent;
    if-eqz v5, :cond_a

    new-instance v6, Landroid/util/Pair;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    iput-object v6, p0, Lcom/android/server/AlarmManagerService$InFlight;->mTarget:Landroid/util/Pair;

    .line 198
    #calls: Lcom/android/server/AlarmManagerService;->getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    invoke-static {p1, p2}, Lcom/android/server/AlarmManagerService;->access$000(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 199
    iget-object v6, p0, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget-object v6, v6, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/android/server/AlarmManagerService$InFlight;->mTarget:Landroid/util/Pair;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 200
    .local v1, fs:Lcom/android/server/AlarmManagerService$FilterStats;
    if-nez v1, :cond_9

    .line 202
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$100()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "AlarmManager"

    const-string v7, "fs is null in InFlight"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_0
    sget-object v6, Lcom/android/server/AlarmManagerService;->mPolicy:Lcom/android/server/AlarmManagerService$AlarmPolicy;

    #getter for: Lcom/android/server/AlarmManagerService$AlarmPolicy;->mIntentHisRW:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/AlarmManagerService$AlarmPolicy;->access$200(Lcom/android/server/AlarmManagerService$AlarmPolicy;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 204
    .local v0, be:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 205
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$100()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "AlarmManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "found package IntentHisRW "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;

    .line 207
    .local v2, his:Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;
    iget-object v6, v2, Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;->intentStats:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 208
    .local v4, ie:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Landroid/content/ComponentName;>;Lcom/android/server/AlarmManagerService$FilterStats;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v7, p0, Lcom/android/server/AlarmManagerService$InFlight;->mTarget:Landroid/util/Pair;

    invoke-virtual {v6, v7}, Landroid/util/Pair;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 209
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$100()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v7, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "found target record : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/android/server/AlarmManagerService$InFlight;->mTarget:Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "||"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/AlarmManagerService$InFlight;->mTarget:Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_4
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    check-cast v1, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 211
    .restart local v1       #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    iget-object v6, v1, Lcom/android/server/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    if-nez v6, :cond_b

    .line 212
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$100()Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "AlarmManager"

    const-string v7, "reinit the FilterStatus."

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_5
    iget-object v6, p0, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iput-object v6, v1, Lcom/android/server/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 224
    .end local v0           #be:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;>;"
    .end local v2           #his:Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;
    .end local v4           #ie:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Landroid/content/ComponentName;>;Lcom/android/server/AlarmManagerService$FilterStats;>;"
    :cond_6
    :goto_1
    if-nez v1, :cond_8

    .line 225
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$100()Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "AlarmManager"

    const-string v7, "FilterStatus not found in His"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_7
    new-instance v1, Lcom/android/server/AlarmManagerService$FilterStats;

    .end local v1           #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    iget-object v6, p0, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget-object v7, p0, Lcom/android/server/AlarmManagerService$InFlight;->mTarget:Landroid/util/Pair;

    invoke-direct {v1, v6, v7}, Lcom/android/server/AlarmManagerService$FilterStats;-><init>(Lcom/android/server/AlarmManagerService$BroadcastStats;Landroid/util/Pair;)V

    .line 229
    .restart local v1       #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_8
    iget-object v6, p0, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget-object v6, v6, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/android/server/AlarmManagerService$InFlight;->mTarget:Landroid/util/Pair;

    invoke-virtual {v6, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_9
    iput-object v1, p0, Lcom/android/server/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

    .line 232
    return-void

    .line 195
    .end local v1           #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 216
    .restart local v0       #be:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;>;"
    .restart local v1       #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v2       #his:Lcom/android/server/AlarmManagerService$AlarmPolicy$IntentHistoryReadWrite;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #ie:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Landroid/content/ComponentName;>;Lcom/android/server/AlarmManagerService$FilterStats;>;"
    :cond_b
    const-string v6, "AlarmManager"

    const-string v7, "Target duplicated!! error, Exception "

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
