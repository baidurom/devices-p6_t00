.class public Landroid/media/MediaInserter;
.super Ljava/lang/Object;
.source "MediaInserter.java"


# static fields
.field private static final EXTERNAL_AUDIO_URI:Landroid/net/Uri; = null

.field private static final EXTERNAL_IMAGE_URI:Landroid/net/Uri; = null

.field private static final EXTERNAL_VIDEO_URI:Landroid/net/Uri; = null

.field private static final MEDIA_BUFFER_SIZE:I = 0x64


# instance fields
.field private mBufferSizePerUri:I

.field private final mPriorityRowMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;"
        }
    .end annotation
.end field

.field private mProvider:Landroid/content/IContentProvider;

.field private final mRowMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/media/MediaInserter;->EXTERNAL_VIDEO_URI:Landroid/net/Uri;

    .line 42
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/media/MediaInserter;->EXTERNAL_IMAGE_URI:Landroid/net/Uri;

    .line 43
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/media/MediaInserter;->EXTERNAL_AUDIO_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/IContentProvider;I)V
    .locals 1
    .parameter "provider"
    .parameter "bufferSizePerUri"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaInserter;->mPriorityRowMap:Ljava/util/HashMap;

    .line 55
    iput-object p1, p0, Landroid/media/MediaInserter;->mProvider:Landroid/content/IContentProvider;

    .line 56
    iput p2, p0, Landroid/media/MediaInserter;->mBufferSizePerUri:I

    .line 57
    return-void
.end method

.method private flush(Landroid/net/Uri;Ljava/util/List;)V
    .locals 2
    .parameter "tableUri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 105
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v0, v1, [Landroid/content/ContentValues;

    .line 107
    .local v0, valuesArray:[Landroid/content/ContentValues;
    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0           #valuesArray:[Landroid/content/ContentValues;
    check-cast v0, [Landroid/content/ContentValues;

    .line 108
    .restart local v0       #valuesArray:[Landroid/content/ContentValues;
    iget-object v1, p0, Landroid/media/MediaInserter;->mProvider:Landroid/content/IContentProvider;

    invoke-interface {v1, p1, v0}, Landroid/content/IContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 109
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 111
    .end local v0           #valuesArray:[Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method private flushAllPriority()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v3, p0, Landroid/media/MediaInserter;->mPriorityRowMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 98
    .local v2, tableUri:Landroid/net/Uri;
    iget-object v3, p0, Landroid/media/MediaInserter;->mPriorityRowMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 99
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-direct {p0, v2, v1}, Landroid/media/MediaInserter;->flush(Landroid/net/Uri;Ljava/util/List;)V

    goto :goto_0

    .line 101
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v2           #tableUri:Landroid/net/Uri;
    :cond_0
    iget-object v3, p0, Landroid/media/MediaInserter;->mPriorityRowMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 102
    return-void
.end method

.method private insert(Landroid/net/Uri;Landroid/content/ContentValues;Z)V
    .locals 7
    .parameter "tableUri"
    .parameter "values"
    .parameter "priority"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 68
    if-eqz p3, :cond_3

    iget-object v5, p0, Landroid/media/MediaInserter;->mPriorityRowMap:Ljava/util/HashMap;

    .line 69
    .local v5, rowmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    :goto_0
    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 70
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-nez v4, :cond_0

    .line 71
    new-instance v4, Ljava/util/ArrayList;

    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .restart local v4       #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-virtual {v5, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_0
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v6, Landroid/media/MediaInserter;->EXTERNAL_IMAGE_URI:Landroid/net/Uri;

    invoke-virtual {v6, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 77
    .local v2, isImage:Z
    sget-object v6, Landroid/media/MediaInserter;->EXTERNAL_VIDEO_URI:Landroid/net/Uri;

    invoke-virtual {v6, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 78
    .local v3, isVideo:Z
    sget-object v6, Landroid/media/MediaInserter;->EXTERNAL_AUDIO_URI:Landroid/net/Uri;

    invoke-virtual {v6, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 79
    .local v1, isAudio:Z
    if-nez v2, :cond_1

    if-nez v3, :cond_1

    if-eqz v1, :cond_4

    :cond_1
    const/16 v0, 0x64

    .line 80
    .local v0, bufferSize:I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lt v6, v0, :cond_2

    .line 82
    invoke-direct {p0}, Landroid/media/MediaInserter;->flushAllPriority()V

    .line 83
    invoke-direct {p0, p1, v4}, Landroid/media/MediaInserter;->flush(Landroid/net/Uri;Ljava/util/List;)V

    .line 85
    :cond_2
    return-void

    .line 68
    .end local v0           #bufferSize:I
    .end local v1           #isAudio:Z
    .end local v2           #isImage:Z
    .end local v3           #isVideo:Z
    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v5           #rowmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    :cond_3
    iget-object v5, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    goto :goto_0

    .line 79
    .restart local v1       #isAudio:Z
    .restart local v2       #isImage:Z
    .restart local v3       #isVideo:Z
    .restart local v4       #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v5       #rowmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    :cond_4
    iget v0, p0, Landroid/media/MediaInserter;->mBufferSizePerUri:I

    goto :goto_1
.end method


# virtual methods
.method public flushAll()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0}, Landroid/media/MediaInserter;->flushAllPriority()V

    .line 89
    iget-object v3, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 90
    .local v2, tableUri:Landroid/net/Uri;
    iget-object v3, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 91
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-direct {p0, v2, v1}, Landroid/media/MediaInserter;->flush(Landroid/net/Uri;Ljava/util/List;)V

    goto :goto_0

    .line 93
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v2           #tableUri:Landroid/net/Uri;
    :cond_0
    iget-object v3, p0, Landroid/media/MediaInserter;->mRowMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 94
    return-void
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 1
    .parameter "tableUri"
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/MediaInserter;->insert(Landroid/net/Uri;Landroid/content/ContentValues;Z)V

    .line 61
    return-void
.end method

.method public insertwithPriority(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 1
    .parameter "tableUri"
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 64
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/media/MediaInserter;->insert(Landroid/net/Uri;Landroid/content/ContentValues;Z)V

    .line 65
    return-void
.end method
