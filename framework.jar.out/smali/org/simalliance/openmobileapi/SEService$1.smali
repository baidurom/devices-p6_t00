.class Lorg/simalliance/openmobileapi/SEService$1;
.super Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback$Stub;
.source "SEService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simalliance/openmobileapi/SEService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/simalliance/openmobileapi/SEService;


# direct methods
.method constructor <init>(Lorg/simalliance/openmobileapi/SEService;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lorg/simalliance/openmobileapi/SEService$1;->this$0:Lorg/simalliance/openmobileapi/SEService;

    invoke-direct {p0}, Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback$Stub;-><init>()V

    return-void
.end method
