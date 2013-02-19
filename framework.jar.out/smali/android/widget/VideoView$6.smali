.class Landroid/widget/VideoView$6;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/VideoView;


# direct methods
.method constructor <init>(Landroid/widget/VideoView;)V
    .locals 0
    .parameter

    .prologue
    .line 486
    iput-object p1, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .parameter "mp"
    .parameter "ext1"
    .parameter "ext2"

    .prologue
    const/4 v2, 0x1

    .line 488
    const/16 v0, 0x2bd

    if-ne p2, v0, :cond_1

    .line 489
    iget-object v0, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    #setter for: Landroid/widget/VideoView;->mIsBuffering:Z
    invoke-static {v0, v2}, Landroid/widget/VideoView;->access$1902(Landroid/widget/VideoView;Z)Z

    .line 493
    :cond_0
    :goto_0
    return v2

    .line 490
    :cond_1
    const/16 v0, 0x2be

    if-ne p2, v0, :cond_0

    .line 491
    iget-object v0, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    const/4 v1, 0x0

    #setter for: Landroid/widget/VideoView;->mIsBuffering:Z
    invoke-static {v0, v1}, Landroid/widget/VideoView;->access$1902(Landroid/widget/VideoView;Z)Z

    goto :goto_0
.end method
