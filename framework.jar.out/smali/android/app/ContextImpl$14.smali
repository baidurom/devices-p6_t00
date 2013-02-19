.class final Landroid/app/ContextImpl$14;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 392
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .parameter "ctx"

    .prologue
    .line 395
    #calls: Landroid/app/ContextImpl;->createNfcManager(Landroid/app/ContextImpl;)Ljava/lang/Object;
    invoke-static {p1}, Landroid/app/ContextImpl;->access$100(Landroid/app/ContextImpl;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
