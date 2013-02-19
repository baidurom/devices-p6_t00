.class Lcom/android/internal/telephony/UiccCardApplication$1;
.super Landroid/os/Handler;
.source "UiccCardApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/UiccCardApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/UiccCardApplication;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/UiccCardApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 407
    iput-object p1, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 412
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #getter for: Lcom/android/internal/telephony/UiccCardApplication;->mDestroyed:Z
    invoke-static {v1}, Lcom/android/internal/telephony/UiccCardApplication;->access$000(Lcom/android/internal/telephony/UiccCardApplication;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] while being destroyed. Ignoring."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/internal/telephony/UiccCardApplication;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/UiccCardApplication;->access$100(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;)V

    .line 455
    :goto_0
    return-void

    .line 418
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 453
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown Event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/internal/telephony/UiccCardApplication;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/UiccCardApplication;->access$100(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;)V

    goto :goto_0

    .line 423
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 425
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 426
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 427
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    const/4 v2, 0x1

    #calls: Lcom/android/internal/telephony/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;Z)V
    invoke-static {v1, v0, v2}, Lcom/android/internal/telephony/UiccCardApplication;->access$200(Lcom/android/internal/telephony/UiccCardApplication;Landroid/os/AsyncResult;Z)V

    .line 432
    :cond_1
    :goto_1
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 434
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 429
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    const/4 v2, 0x0

    #calls: Lcom/android/internal/telephony/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;Z)V
    invoke-static {v1, v0, v2}, Lcom/android/internal/telephony/UiccCardApplication;->access$200(Lcom/android/internal/telephony/UiccCardApplication;Landroid/os/AsyncResult;Z)V

    goto :goto_1

    .line 437
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 438
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #calls: Lcom/android/internal/telephony/UiccCardApplication;->onQueryFdnEnabled(Landroid/os/AsyncResult;)V
    invoke-static {v1, v0}, Lcom/android/internal/telephony/UiccCardApplication;->access$300(Lcom/android/internal/telephony/UiccCardApplication;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 441
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 442
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #calls: Lcom/android/internal/telephony/UiccCardApplication;->onChangeFdnDone(Landroid/os/AsyncResult;)V
    invoke-static {v1, v0}, Lcom/android/internal/telephony/UiccCardApplication;->access$400(Lcom/android/internal/telephony/UiccCardApplication;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 445
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 446
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #calls: Lcom/android/internal/telephony/UiccCardApplication;->onQueryFacilityLock(Landroid/os/AsyncResult;)V
    invoke-static {v1, v0}, Lcom/android/internal/telephony/UiccCardApplication;->access$500(Lcom/android/internal/telephony/UiccCardApplication;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 449
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 450
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #calls: Lcom/android/internal/telephony/UiccCardApplication;->onChangeFacilityLock(Landroid/os/AsyncResult;)V
    invoke-static {v1, v0}, Lcom/android/internal/telephony/UiccCardApplication;->access$600(Lcom/android/internal/telephony/UiccCardApplication;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 418
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
