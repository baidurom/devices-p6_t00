.class Lcom/android/server/LightsService$Light$PrintLEDStackException;
.super Ljava/lang/RuntimeException;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LightsService$Light;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrintLEDStackException"
.end annotation


# instance fields
.field private mName:Ljava/lang/String;

.field final synthetic this$1:Lcom/android/server/LightsService$Light;


# direct methods
.method public constructor <init>(Lcom/android/server/LightsService$Light;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "name"

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/server/LightsService$Light$PrintLEDStackException;->this$1:Lcom/android/server/LightsService$Light;

    .line 273
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 274
    iput-object p2, p0, Lcom/android/server/LightsService$Light$PrintLEDStackException;->mName:Ljava/lang/String;

    .line 275
    return-void
.end method
