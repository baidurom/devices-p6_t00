.class public final Landroid/provider/Settings$Alarm;
.super Landroid/provider/Settings$NameValueTable;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Alarm"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final SYS_PROP_SETTING_VERSION:Ljava/lang/String; = "sys.settings_alarm_version"

.field private static final TAG:Ljava/lang/String; = "Alarm"

.field private static mContentProvider:Landroid/content/IContentProvider;

.field private static sNameValueCache:Landroid/provider/Settings$NameValueCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 888
    sput-object v1, Landroid/provider/Settings$Alarm;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    .line 892
    const-string v0, "content://settings/alarm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$Alarm;->CONTENT_URI:Landroid/net/Uri;

    .line 895
    sput-object v1, Landroid/provider/Settings$Alarm;->mContentProvider:Landroid/content/IContentProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 884
    invoke-direct {p0}, Landroid/provider/Settings$NameValueTable;-><init>()V

    return-void
.end method

.method public static declared-synchronized delString(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 10
    .parameter "resolver"
    .parameter "name"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 902
    const-class v6, Landroid/provider/Settings$Alarm;

    monitor-enter v6

    :try_start_0
    sget-object v2, Landroid/provider/Settings$Alarm;->mContentProvider:Landroid/content/IContentProvider;

    .line 903
    .local v2, cp:Landroid/content/IContentProvider;
    if-nez v2, :cond_0

    .line 904
    sget-object v7, Landroid/provider/Settings$Alarm;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v2

    .end local v2           #cp:Landroid/content/IContentProvider;
    sput-object v2, Landroid/provider/Settings$Alarm;->mContentProvider:Landroid/content/IContentProvider;

    .line 906
    .restart local v2       #cp:Landroid/content/IContentProvider;
    :cond_0
    const-string/jumbo v0, "name=?"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 907
    .local v0, NAME_EQ:Ljava/lang/String;
    const/4 v1, 0x0

    .line 909
    .local v1, count:I
    :try_start_1
    sget-object v7, Landroid/provider/Settings$Alarm;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-interface {v2, v7, v0, v8}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 913
    :goto_0
    :try_start_2
    const-string v7, "Alarm"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setting delString count="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 914
    if-lez v1, :cond_1

    .line 917
    :goto_1
    monitor-exit v6

    return v4

    .line 910
    :catch_0
    move-exception v3

    .line 911
    .local v3, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v7, "Alarm"

    const-string v8, "delString got RemoteException."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 902
    .end local v0           #NAME_EQ:Ljava/lang/String;
    .end local v1           #count:I
    .end local v2           #cp:Landroid/content/IContentProvider;
    .end local v3           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    monitor-exit v6

    throw v4

    .restart local v0       #NAME_EQ:Ljava/lang/String;
    .restart local v1       #count:I
    .restart local v2       #cp:Landroid/content/IContentProvider;
    :cond_1
    move v4, v5

    .line 917
    goto :goto_1
.end method

.method public static declared-synchronized getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "resolver"
    .parameter "name"

    .prologue
    .line 920
    const-class v1, Landroid/provider/Settings$Alarm;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/provider/Settings$Alarm;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    if-nez v0, :cond_0

    .line 921
    new-instance v0, Landroid/provider/Settings$NameValueCache;

    const-string/jumbo v2, "sys.settings_alarm_version"

    sget-object v3, Landroid/provider/Settings$Alarm;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "GET_alarm"

    const/4 v5, 0x0

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/provider/Settings$NameValueCache;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$Alarm;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    .line 924
    :cond_0
    sget-object v0, Landroid/provider/Settings$Alarm;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, p0, p1, v2}, Landroid/provider/Settings$NameValueCache;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 920
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .parameter "resolver"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 898
    sget-object v0, Landroid/provider/Settings$Alarm;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$Alarm;->putString(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
