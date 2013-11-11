.class public Lcom/huawei/android/FMRadio/FMMediaButtonIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FMMediaButtonIntentReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 25
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismBroadcastOn()Z

    move-result v6

    if-nez v6, :cond_1

    .line 26
    const-string v6, "FMMediaButtonIntentReceiver"

    const-string v7, "FM is off and do not handle headset keyevent"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 32
    .local v4, intentAction:Ljava/lang/String;
    const-string v6, "FMMediaButtonIntentReceiver"

    const-string v7, "unplug and press-key"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const-string v6, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 37
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismAutoTuning()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioUtils;->ismManualTuning()Z

    move-result v6

    if-nez v6, :cond_0

    .line 42
    const-string v6, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/view/KeyEvent;

    .line 44
    .local v3, event:Landroid/view/KeyEvent;
    if-eqz v3, :cond_0

    .line 48
    invoke-virtual {v3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 50
    .local v0, action:I
    const/4 v6, 0x1

    if-ne v0, v6, :cond_0

    .line 51
    const/4 v2, 0x0

    .line 52
    .local v2, command:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    .line 54
    .local v5, keycode:I
    sparse-switch v5, :sswitch_data_0

    .line 69
    :goto_1
    if-eqz v2, :cond_0

    .line 70
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 71
    .local v1, cmdIntent:Landroid/content/Intent;
    const-string v6, "com.huawei.android.FMRadio"

    const-string v7, "com.huawei.android.FMRadio.FMRadioService"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 74
    const-string v6, "FMMediaButtonIntentReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "operation headset command is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "   "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 57
    .end local v1           #cmdIntent:Landroid/content/Intent;
    :sswitch_0
    const-string v2, "com.huawei.android.FMRadio.servicecommand.next"

    .line 58
    goto :goto_1

    .line 60
    :sswitch_1
    const-string v2, "com.huawei.android.FMRadio.servicecommand.next"

    .line 61
    goto :goto_1

    .line 63
    :sswitch_2
    const-string v2, "com.huawei.android.FMRadio.servicecommand.previous"

    .line 64
    goto :goto_1

    .line 54
    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
        0x57 -> :sswitch_1
        0x58 -> :sswitch_2
    .end sparse-switch
.end method
