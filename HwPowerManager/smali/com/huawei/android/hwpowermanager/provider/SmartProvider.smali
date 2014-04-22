.class public Lcom/huawei/android/hwpowermanager/provider/SmartProvider;
.super Landroid/content/ContentProvider;
.source "SmartProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/hwpowermanager/provider/SmartProvider$MySQLiteOpenHelper;
    }
.end annotation


# static fields
.field private static uriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mDatabaseHelper:Lcom/huawei/android/hwpowermanager/provider/SmartProvider$MySQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 77
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/huawei/android/hwpowermanager/provider/SmartProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 79
    sget-object v0, Lcom/huawei/android/hwpowermanager/provider/SmartProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.huawei.android.batteryspriteprovider"

    const-string v2, "forbiddenapps"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 80
    sget-object v0, Lcom/huawei/android/hwpowermanager/provider/SmartProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.huawei.android.batteryspriteprovider"

    const-string v2, "forbiddenapps/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 81
    sget-object v0, Lcom/huawei/android/hwpowermanager/provider/SmartProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.huawei.android.batteryspriteprovider"

    const-string v2, "protectedapps"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 82
    sget-object v0, Lcom/huawei/android/hwpowermanager/provider/SmartProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.huawei.android.batteryspriteprovider"

    const-string v2, "protectedapps/#"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 84
    sget-object v0, Lcom/huawei/android/hwpowermanager/provider/SmartProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.huawei.android.batteryspriteprovider"

    const-string v2, "rogueapps"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 85
    sget-object v0, Lcom/huawei/android/hwpowermanager/provider/SmartProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.huawei.android.batteryspriteprovider"

    const-string v2, "rogueapps/#"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 86
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/android/hwpowermanager/provider/SmartProvider;->mDatabaseHelper:Lcom/huawei/android/hwpowermanager/provider/SmartProvider$MySQLiteOpenHelper;

    return-void
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 280
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v6, 0x0

    .line 281
    .local v6, ypCount:I
    const/4 v3, 0x0

    .line 282
    .local v3, opCount:I
    iget-object v7, p0, Lcom/huawei/android/hwpowermanager/provider/SmartProvider;->mDatabaseHelper:Lcom/huawei/android/hwpowermanager/provider/SmartProvider$MySQLiteOpenHelper;

    invoke-virtual {v7}, Lcom/huawei/android/hwpowermanager/provider/SmartProvider$MySQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 283
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 285
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 286
    .local v2, numOperations:I
    new-array v5, v2, [Landroid/content/ContentProviderResult;

    .line 287
    .local v5, results:[Landroid/content/ContentProviderResult;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 288
    add-int/lit8 v3, v3, 0x1

    const/16 v7, 0x1f4

    if-le v3, v7, :cond_0

    .line 289
    new-instance v7, Landroid/content/OperationApplicationException;

    const-string v8, "Too many content provider operations between yield points. The maximum number of operations per yield point is 500"

    invoke-direct {v7, v8, v6}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;I)V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    .end local v1           #i:I
    .end local v2           #numOperations:I
    .end local v5           #results:[Landroid/content/ContentProviderResult;
    :catchall_0
    move-exception v7

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7

    .line 294
    .restart local v1       #i:I
    .restart local v2       #numOperations:I
    .restart local v5       #results:[Landroid/content/ContentProviderResult;
    :cond_0
    :try_start_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentProviderOperation;

    .line 295
    .local v4, operation:Landroid/content/ContentProviderOperation;
    invoke-virtual {v4, p0, v5, v1}, Landroid/content/ContentProviderOperation;->apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    move-result-object v7

    aput-object v7, v5, v1

    .line 287
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 297
    .end local v4           #operation:Landroid/content/ContentProviderOperation;
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 300
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object v5
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v8, 0x0

    .line 122
    iget-object v5, p0, Lcom/huawei/android/hwpowermanager/provider/SmartProvider;->mDatabaseHelper:Lcom/huawei/android/hwpowermanager/provider/SmartProvider$MySQLiteOpenHelper;

    invoke-virtual {v5}, Lcom/huawei/android/hwpowermanager/provider/SmartProvider$MySQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 123
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x0

    .line 124
    .local v4, ret:I
    if-eqz v0, :cond_1

    .line 125
    sget-object v5, Lcom/huawei/android/hwpowermanager/provider/SmartProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 126
    .local v3, matchCode:I
    packed-switch v3, :pswitch_data_0

    .line 160
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid URI "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 128
    :pswitch_0
    const-string v5, "forbiddenapps"

    invoke-virtual {v0, v5, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 162
    :goto_0
    if-lez v4, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/provider/SmartProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 168
    .end local v3           #matchCode:I
    :cond_0
    :goto_1
    return v4

    .line 132
    .restart local v3       #matchCode:I
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, delId:Ljava/lang/String;
    :try_start_0
    const-string v5, "BatterySpriteProvider"

    const-string v6, "use the id replace the selection!"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const-string v5, "forbiddenapps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 136
    :catch_0
    move-exception v2

    .line 137
    .local v2, e:Ljava/lang/NumberFormatException;
    const-string v5, "forbiddenapps"

    invoke-virtual {v0, v5, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 140
    goto :goto_0

    .line 142
    .end local v1           #delId:Ljava/lang/String;
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :pswitch_2
    const-string v5, "protectedapps"

    invoke-virtual {v0, v5, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 143
    goto :goto_0

    .line 146
    :pswitch_3
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 148
    .restart local v1       #delId:Ljava/lang/String;
    :try_start_1
    const-string v5, "BatterySpriteProvider"

    const-string v6, "use the id replace the selection!"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const-string v5, "protectedapps"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    goto :goto_0

    .line 150
    :catch_1
    move-exception v2

    .line 151
    .restart local v2       #e:Ljava/lang/NumberFormatException;
    const-string v5, "protectedapps"

    invoke-virtual {v0, v5, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 153
    goto :goto_0

    .line 156
    .end local v1           #delId:Ljava/lang/String;
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :pswitch_4
    const-string v5, "rogueapps"

    invoke-virtual {v0, v5, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 157
    goto :goto_0

    .line 166
    .end local v3           #matchCode:I
    :cond_1
    const-string v5, "BatterySpriteProvider"

    const-string v6, "can not get the database!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 126
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 173
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v7, 0x0

    .line 178
    iget-object v5, p0, Lcom/huawei/android/hwpowermanager/provider/SmartProvider;->mDatabaseHelper:Lcom/huawei/android/hwpowermanager/provider/SmartProvider$MySQLiteOpenHelper;

    invoke-virtual {v5}, Lcom/huawei/android/hwpowermanager/provider/SmartProvider$MySQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 179
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    move-object v4, p1

    .line 180
    .local v4, retUri:Landroid/net/Uri;
    const-wide/16 v2, 0x0

    .line 181
    .local v2, newRecordId:J
    if-eqz v0, :cond_1

    .line 182
    sget-object v5, Lcom/huawei/android/hwpowermanager/provider/SmartProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 183
    .local v1, matchCode:I
    packed-switch v1, :pswitch_data_0

    .line 200
    const-wide/16 v2, -0x1

    .line 203
    :goto_0
    const-wide/16 v5, -0x1

    cmp-long v5, v2, v5

    if-eqz v5, :cond_0

    .line 204
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 205
    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/provider/SmartProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 212
    .end local v1           #matchCode:I
    :goto_1
    return-object v4

    .line 187
    .restart local v1       #matchCode:I
    :pswitch_0
    const-string v5, "forbiddenapps"

    invoke-virtual {v0, v5, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 188
    goto :goto_0

    .line 192
    :pswitch_1
    const-string v5, "protectedapps"

    invoke-virtual {v0, v5, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 193
    goto :goto_0

    .line 196
    :pswitch_2
    const-string v5, "rogueapps"

    invoke-virtual {v0, v5, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 198
    goto :goto_0

    .line 207
    :cond_0
    const-string v5, "BatterySpriteProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insert failed! uri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 210
    .end local v1           #matchCode:I
    :cond_1
    const-string v5, "BatterySpriteProvider"

    const-string v6, "can not get the database!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 5

    .prologue
    .line 217
    new-instance v0, Lcom/huawei/android/hwpowermanager/provider/SmartProvider$MySQLiteOpenHelper;

    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/provider/SmartProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "smartpowerprovider.db"

    const/4 v3, 0x0

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/huawei/android/hwpowermanager/provider/SmartProvider$MySQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/huawei/android/hwpowermanager/provider/SmartProvider;->mDatabaseHelper:Lcom/huawei/android/hwpowermanager/provider/SmartProvider$MySQLiteOpenHelper;

    .line 218
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/provider/SmartProvider;->mDatabaseHelper:Lcom/huawei/android/hwpowermanager/provider/SmartProvider$MySQLiteOpenHelper;

    invoke-virtual {v0}, Lcom/huawei/android/hwpowermanager/provider/SmartProvider$MySQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v5, 0x0

    .line 224
    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/provider/SmartProvider;->mDatabaseHelper:Lcom/huawei/android/hwpowermanager/provider/SmartProvider$MySQLiteOpenHelper;

    invoke-virtual {v1}, Lcom/huawei/android/hwpowermanager/provider/SmartProvider$MySQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 225
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_0

    .line 226
    sget-object v1, Lcom/huawei/android/hwpowermanager/provider/SmartProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    .line 227
    .local v8, matchCode:I
    packed-switch v8, :pswitch_data_0

    .line 241
    .end local v8           #matchCode:I
    :cond_0
    :goto_0
    return-object v5

    .line 230
    .restart local v8       #matchCode:I
    :pswitch_0
    const-string v1, "forbiddenapps"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto :goto_0

    .line 233
    :pswitch_1
    const-string v1, "protectedapps"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto :goto_0

    .line 237
    :pswitch_2
    const-string v1, "rogueapps"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 247
    const/4 v2, 0x0

    .line 248
    .local v2, ret:I
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/provider/SmartProvider;->mDatabaseHelper:Lcom/huawei/android/hwpowermanager/provider/SmartProvider$MySQLiteOpenHelper;

    invoke-virtual {v3}, Lcom/huawei/android/hwpowermanager/provider/SmartProvider$MySQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 249
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_0

    .line 250
    sget-object v3, Lcom/huawei/android/hwpowermanager/provider/SmartProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 251
    .local v1, matchCode:I
    packed-switch v1, :pswitch_data_0

    .line 267
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 254
    :pswitch_0
    const-string v3, "forbiddenapps"

    invoke-virtual {v0, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 269
    :goto_0
    if-lez v2, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/huawei/android/hwpowermanager/provider/SmartProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 273
    .end local v1           #matchCode:I
    :cond_0
    return v2

    .line 258
    .restart local v1       #matchCode:I
    :pswitch_1
    const-string v3, "protectedapps"

    invoke-virtual {v0, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 259
    goto :goto_0

    .line 263
    :pswitch_2
    const-string v3, "rogueapps"

    invoke-virtual {v0, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 265
    goto :goto_0

    .line 251
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
