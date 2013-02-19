.class public Lcom/huawei/android/widget/VideoViewEx;
.super Ljava/lang/Object;
.source "VideoViewEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/widget/VideoViewEx$STCallbackEx;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static setSTCallback(Landroid/widget/VideoView;Lcom/huawei/android/widget/VideoViewEx$STCallbackEx;)V
    .locals 0
    .parameter "obj"
    .parameter "call"

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Landroid/widget/VideoView;->setSTCallback(Landroid/widget/VideoView$STCallback;)V

    .line 31
    return-void
.end method
