.class public Lcom/android/server/power/ShutdownThread$PrintRestartStackException;
.super Ljava/lang/RuntimeException;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrintRestartStackException"
.end annotation


# instance fields
.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 408
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 409
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$PrintRestartStackException;->mName:Ljava/lang/String;

    .line 410
    return-void
.end method
