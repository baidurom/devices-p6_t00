.class Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$10;
.super Landroid/content/BroadcastReceiver;
.source "HwPowerManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;


# direct methods
.method constructor <init>(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 618
    iput-object p1, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$10;->this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, -0x1

    const/4 v9, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 620
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 621
    .local v1, action:Ljava/lang/String;
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 622
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$10;->this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    const-string v4, "plugged"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    #setter for: Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mPlugged:I
    invoke-static {v3, v4}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->access$502(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;I)I

    .line 623
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$10;->this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    const-string v4, "level"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    #setter for: Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mRawlevel:I
    invoke-static {v3, v4}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->access$602(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;I)I

    .line 625
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$10;->this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    const-string v4, "voltage"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    int-to-double v4, v4

    #setter for: Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mVoltage:D
    invoke-static {v3, v4, v5}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->access$702(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;D)D

    .line 626
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$10;->this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    const-string v4, "temperature"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    int-to-double v4, v4

    #setter for: Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mTemperature:D
    invoke-static {v3, v4, v5}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->access$802(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;D)D

    .line 628
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$10;->this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    #calls: Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->updateTime()V
    invoke-static {v3}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->access$400(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)V

    .line 629
    const/16 v3, 0x1e

    iget-object v4, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$10;->this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mRawlevel:I
    invoke-static {v4}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->access$600(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 630
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$10;->this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mBatteryGreenProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v3}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->access$900(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)Landroid/widget/ProgressBar;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 632
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$10;->this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mBatteryGreenProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v3}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->access$900(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)Landroid/widget/ProgressBar;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$10;->this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mRawlevel:I
    invoke-static {v4}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->access$600(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x58

    div-int/lit8 v4, v4, 0x64

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 634
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$10;->this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mBatteryYellowProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v3}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->access$1000(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)Landroid/widget/ProgressBar;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 635
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$10;->this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mBatteryRedProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v3}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->access$1100(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)Landroid/widget/ProgressBar;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 655
    :goto_0
    const/16 v3, 0x14

    iget-object v4, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$10;->this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mRawlevel:I
    invoke-static {v4}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->access$600(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)I

    move-result v4

    if-le v3, v4, :cond_0

    .line 656
    invoke-static {}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->access$1200()Z

    move-result v3

    if-nez v3, :cond_0

    .line 657
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.POWER_STATISTIC"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 658
    invoke-static {v9}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->access$1202(Z)Z

    .line 672
    :cond_0
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$10;->this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    #calls: Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->updateModeTime()V
    invoke-static {v3}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->access$1300(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)V

    .line 675
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$10;->this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    iget-object v3, v3, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mInfoDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$10;->this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    iget-object v3, v3, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 676
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$10;->this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    #calls: Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->refreshBatteryInfoDialog()V
    invoke-static {v3}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->access$1400(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)V

    .line 683
    :cond_1
    const-string v3, "huawei.intent.action.SMART_POWER_RESULT_CLEAR_NUM"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 685
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$10;->this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mFlagClearApps:Z
    invoke-static {v3}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->access$000(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 686
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$10;->this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    #setter for: Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mFlagClearApps:Z
    invoke-static {v3, v7}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->access$002(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;Z)Z

    .line 688
    const-string v3, "num"

    invoke-virtual {p2, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 690
    .local v0, Num:I
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$10;->this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    invoke-virtual {v3}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f0a

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 692
    .local v2, message:Ljava/lang/String;
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$10;->this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    invoke-virtual {v3}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3, v2, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 698
    .end local v0           #Num:I
    .end local v2           #message:Ljava/lang/String;
    :cond_2
    const-string v3, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 699
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$10;->this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    #setter for: Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mPlugged:I
    invoke-static {v3, v9}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->access$502(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;I)I

    .line 702
    :cond_3
    const-string v3, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "com.android.huawei.GPS_ACTION_SETTING_CHANGED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "com.android.huawei.DATASERVICE_SETTING_CHANGED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "com.android.huawei.AUTOROTATE_ACTION_SETTING_CHANGED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "com.android.huawei.BRIGHTNESS_ACTION_SETTING_CHANGED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "com.android.huawei.AIRPLANEMODE_ACTION_SETTING_CHANGED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 710
    :cond_4
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$10;->this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    #calls: Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->updateTime()V
    invoke-static {v3}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->access$400(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)V

    .line 713
    :cond_5
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$10;->this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mPlugged:I
    invoke-static {v3}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->access$500(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)I

    move-result v3

    if-eqz v3, :cond_9

    .line 714
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$10;->this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mBatteryImageView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->access$1500(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 715
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$10;->this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    #calls: Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->showChargingStatus()V
    invoke-static {v3}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->access$1600(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)V

    .line 716
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$10;->this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mbatteryView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->access$1700(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 730
    :goto_1
    const-string v3, "com.huawei.power.low.battery"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 731
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$10;->this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    #calls: Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->powerLowAction()V
    invoke-static {v3}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->access$1900(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)V

    .line 733
    :cond_6
    return-void

    .line 639
    :cond_7
    const/16 v3, 0xf

    iget-object v4, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$10;->this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mRawlevel:I
    invoke-static {v4}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->access$600(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)I

    move-result v4

    if-ge v3, v4, :cond_8

    .line 640
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$10;->this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mBatteryGreenProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v3}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->access$900(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)Landroid/widget/ProgressBar;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 641
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$10;->this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mBatteryYellowProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v3}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->access$1000(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)Landroid/widget/ProgressBar;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 643
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$10;->this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mBatteryYellowProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v3}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->access$1000(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)Landroid/widget/ProgressBar;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$10;->this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mRawlevel:I
    invoke-static {v4}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->access$600(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x58

    div-int/lit8 v4, v4, 0x64

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 645
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$10;->this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mBatteryRedProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v3}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->access$1100(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)Landroid/widget/ProgressBar;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 647
    :cond_8
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$10;->this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mBatteryGreenProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v3}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->access$900(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)Landroid/widget/ProgressBar;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 648
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$10;->this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mBatteryYellowProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v3}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->access$1000(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)Landroid/widget/ProgressBar;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 649
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$10;->this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mBatteryRedProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v3}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->access$1100(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)Landroid/widget/ProgressBar;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 651
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$10;->this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mBatteryRedProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v3}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->access$1100(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)Landroid/widget/ProgressBar;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$10;->this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mRawlevel:I
    invoke-static {v4}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->access$600(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x58

    div-int/lit8 v4, v4, 0x64

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_0

    .line 720
    :cond_9
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$10;->this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mBatteryImageView:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->access$1500(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 721
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$10;->this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    #calls: Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->showEndurationTime()V
    invoke-static {v3}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->access$1800(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)V

    .line 722
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$10;->this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mbatteryView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->access$1700(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$10;->this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mRawlevel:I
    invoke-static {v5}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->access$600(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$10;->this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    invoke-virtual {v5}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f090027

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 723
    iget-object v3, p0, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity$10;->this$0:Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;

    #getter for: Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->mbatteryView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;->access$1700(Lcom/huawei/android/hwpowermanager/HwPowerManagerActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1
.end method
