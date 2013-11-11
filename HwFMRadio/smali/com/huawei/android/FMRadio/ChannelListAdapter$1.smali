.class Lcom/huawei/android/FMRadio/ChannelListAdapter$1;
.super Landroid/os/Handler;
.source "ChannelListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/FMRadio/ChannelListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/FMRadio/ChannelListAdapter;


# direct methods
.method constructor <init>(Lcom/huawei/android/FMRadio/ChannelListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/huawei/android/FMRadio/ChannelListAdapter$1;->this$0:Lcom/huawei/android/FMRadio/ChannelListAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 59
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 61
    :pswitch_0
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListAdapter$1;->this$0:Lcom/huawei/android/FMRadio/ChannelListAdapter;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListAdapter;->leftAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/huawei/android/FMRadio/ChannelListAdapter;->access$000(Lcom/huawei/android/FMRadio/ChannelListAdapter;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListAdapter$1;->this$0:Lcom/huawei/android/FMRadio/ChannelListAdapter;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListAdapter;->rightAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/huawei/android/FMRadio/ChannelListAdapter;->access$100(Lcom/huawei/android/FMRadio/ChannelListAdapter;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListAdapter$1;->this$0:Lcom/huawei/android/FMRadio/ChannelListAdapter;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListAdapter;->centerAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/huawei/android/FMRadio/ChannelListAdapter;->access$200(Lcom/huawei/android/FMRadio/ChannelListAdapter;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListAdapter$1;->this$0:Lcom/huawei/android/FMRadio/ChannelListAdapter;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListAdapter;->leftAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/huawei/android/FMRadio/ChannelListAdapter;->access$000(Lcom/huawei/android/FMRadio/ChannelListAdapter;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 64
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListAdapter$1;->this$0:Lcom/huawei/android/FMRadio/ChannelListAdapter;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListAdapter;->rightAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/huawei/android/FMRadio/ChannelListAdapter;->access$100(Lcom/huawei/android/FMRadio/ChannelListAdapter;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 65
    iget-object v0, p0, Lcom/huawei/android/FMRadio/ChannelListAdapter$1;->this$0:Lcom/huawei/android/FMRadio/ChannelListAdapter;

    #getter for: Lcom/huawei/android/FMRadio/ChannelListAdapter;->centerAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/huawei/android/FMRadio/ChannelListAdapter;->access$200(Lcom/huawei/android/FMRadio/ChannelListAdapter;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
