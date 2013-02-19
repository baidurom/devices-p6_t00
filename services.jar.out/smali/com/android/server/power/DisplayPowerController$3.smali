.class Lcom/android/server/power/DisplayPowerController$3;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/DisplayPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/power/DisplayPowerController;)V
    .locals 0
    .parameter

    .prologue
    .line 1072
    iput-object p1, p0, Lcom/android/server/power/DisplayPowerController$3;->this$0:Lcom/android/server/power/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 1125
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9
    .parameter "event"

    .prologue
    .line 1076
    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController$3;->this$0:Lcom/android/server/power/DisplayPowerController;

    #getter for: Lcom/android/server/power/DisplayPowerController;->mSmartBacklightLightSensorEnabled:Z
    invoke-static {v5}, Lcom/android/server/power/DisplayPowerController;->access$100(Lcom/android/server/power/DisplayPowerController;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController$3;->this$0:Lcom/android/server/power/DisplayPowerController;

    #getter for: Lcom/android/server/power/DisplayPowerController;->mSmartBackLightEnabled:Z
    invoke-static {v5}, Lcom/android/server/power/DisplayPowerController;->access$200(Lcom/android/server/power/DisplayPowerController;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1077
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    float-to-int v4, v5

    .line 1078
    .local v4, value:I
    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController$3;->this$0:Lcom/android/server/power/DisplayPowerController;

    #setter for: Lcom/android/server/power/DisplayPowerController;->mLastestSmartSensorValue:I
    invoke-static {v5, v4}, Lcom/android/server/power/DisplayPowerController;->access$302(Lcom/android/server/power/DisplayPowerController;I)I

    .line 1079
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1080
    .local v2, milliseconds:J
    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController$3;->this$0:Lcom/android/server/power/DisplayPowerController;

    #getter for: Lcom/android/server/power/DisplayPowerController;->mSmartSensorValue:F
    invoke-static {v5}, Lcom/android/server/power/DisplayPowerController;->access$400(Lcom/android/server/power/DisplayPowerController;)F

    move-result v5

    const/high16 v6, -0x4080

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController$3;->this$0:Lcom/android/server/power/DisplayPowerController;

    #getter for: Lcom/android/server/power/DisplayPowerController;->mSmartLightSensorEnableTime:J
    invoke-static {v5}, Lcom/android/server/power/DisplayPowerController;->access$500(Lcom/android/server/power/DisplayPowerController;)J

    move-result-wide v5

    sub-long v5, v2, v5

    iget-object v7, p0, Lcom/android/server/power/DisplayPowerController$3;->this$0:Lcom/android/server/power/DisplayPowerController;

    #getter for: Lcom/android/server/power/DisplayPowerController;->mLightSensorWarmUpTimeConfig:I
    invoke-static {v7}, Lcom/android/server/power/DisplayPowerController;->access$600(Lcom/android/server/power/DisplayPowerController;)I

    move-result v7

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_3

    .line 1082
    :cond_0
    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController$3;->this$0:Lcom/android/server/power/DisplayPowerController;

    #getter for: Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;
    invoke-static {v5}, Lcom/android/server/power/DisplayPowerController;->access$700(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 1083
    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController$3;->this$0:Lcom/android/server/power/DisplayPowerController;

    const/4 v6, 0x0

    #setter for: Lcom/android/server/power/DisplayPowerController;->mSmartBackLightApicalIncrease:Z
    invoke-static {v5, v6}, Lcom/android/server/power/DisplayPowerController;->access$802(Lcom/android/server/power/DisplayPowerController;Z)Z

    .line 1084
    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController$3;->this$0:Lcom/android/server/power/DisplayPowerController;

    const/4 v6, 0x0

    #setter for: Lcom/android/server/power/DisplayPowerController;->mSmartBackLightApicalDecrease:Z
    invoke-static {v5, v6}, Lcom/android/server/power/DisplayPowerController;->access$902(Lcom/android/server/power/DisplayPowerController;Z)Z

    .line 1085
    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController$3;->this$0:Lcom/android/server/power/DisplayPowerController;

    #getter for: Lcom/android/server/power/DisplayPowerController;->mPowerState:Lcom/android/server/power/DisplayPowerState;
    invoke-static {v5}, Lcom/android/server/power/DisplayPowerController;->access$1000(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/DisplayPowerState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/power/DisplayPowerState;->isScreenOn()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1086
    invoke-static {}, Lcom/android/server/power/DisplayPowerController;->access$1100()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1087
    const-string v5, "DisplayPowerController"

    const-string v6, "dropping mSmartBackLightSensorListener  onSensorChanged because screen is off"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    .end local v2           #milliseconds:J
    .end local v4           #value:I
    :cond_1
    :goto_0
    return-void

    .line 1091
    .restart local v2       #milliseconds:J
    .restart local v4       #value:I
    :cond_2
    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController$3;->this$0:Lcom/android/server/power/DisplayPowerController;

    #getter for: Lcom/android/server/power/DisplayPowerController;->mSmartSensorValue:F
    invoke-static {v5}, Lcom/android/server/power/DisplayPowerController;->access$400(Lcom/android/server/power/DisplayPowerController;)F

    move-result v5

    int-to-float v6, v4

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_1

    .line 1092
    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController$3;->this$0:Lcom/android/server/power/DisplayPowerController;

    int-to-float v6, v4

    #setter for: Lcom/android/server/power/DisplayPowerController;->mSmartSensorValue:F
    invoke-static {v5, v6}, Lcom/android/server/power/DisplayPowerController;->access$402(Lcom/android/server/power/DisplayPowerController;F)F

    .line 1093
    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController$3;->this$0:Lcom/android/server/power/DisplayPowerController;

    #calls: Lcom/android/server/power/DisplayPowerController;->apicalAdjustment(I)V
    invoke-static {v5, v4}, Lcom/android/server/power/DisplayPowerController;->access$1200(Lcom/android/server/power/DisplayPowerController;I)V

    goto :goto_0

    .line 1096
    :cond_3
    const/16 v5, 0x1f40

    if-lt v4, v5, :cond_4

    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController$3;->this$0:Lcom/android/server/power/DisplayPowerController;

    #getter for: Lcom/android/server/power/DisplayPowerController;->mSmartSensorValue:F
    invoke-static {v5}, Lcom/android/server/power/DisplayPowerController;->access$400(Lcom/android/server/power/DisplayPowerController;)F

    move-result v5

    const/high16 v6, 0x45fa

    cmpg-float v5, v5, v6

    if-gez v5, :cond_4

    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController$3;->this$0:Lcom/android/server/power/DisplayPowerController;

    #getter for: Lcom/android/server/power/DisplayPowerController;->mSmartBackLightApicalIncrease:Z
    invoke-static {v5}, Lcom/android/server/power/DisplayPowerController;->access$800(Lcom/android/server/power/DisplayPowerController;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_4
    const/16 v5, 0x1f40

    if-ge v4, v5, :cond_5

    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController$3;->this$0:Lcom/android/server/power/DisplayPowerController;

    #getter for: Lcom/android/server/power/DisplayPowerController;->mSmartSensorPendingValue:F
    invoke-static {v5}, Lcom/android/server/power/DisplayPowerController;->access$1300(Lcom/android/server/power/DisplayPowerController;)F

    move-result v5

    const/high16 v6, 0x45fa

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController$3;->this$0:Lcom/android/server/power/DisplayPowerController;

    #getter for: Lcom/android/server/power/DisplayPowerController;->mSmartBackLightApicalIncrease:Z
    invoke-static {v5}, Lcom/android/server/power/DisplayPowerController;->access$800(Lcom/android/server/power/DisplayPowerController;)Z

    move-result v5

    if-nez v5, :cond_7

    :cond_5
    const/16 v5, 0x1388

    if-ge v4, v5, :cond_6

    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController$3;->this$0:Lcom/android/server/power/DisplayPowerController;

    #getter for: Lcom/android/server/power/DisplayPowerController;->mSmartSensorValue:F
    invoke-static {v5}, Lcom/android/server/power/DisplayPowerController;->access$400(Lcom/android/server/power/DisplayPowerController;)F

    move-result v5

    const/high16 v6, 0x45fa

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_6

    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController$3;->this$0:Lcom/android/server/power/DisplayPowerController;

    #getter for: Lcom/android/server/power/DisplayPowerController;->mSmartBackLightApicalDecrease:Z
    invoke-static {v5}, Lcom/android/server/power/DisplayPowerController;->access$900(Lcom/android/server/power/DisplayPowerController;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    int-to-float v5, v4

    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController$3;->this$0:Lcom/android/server/power/DisplayPowerController;

    #getter for: Lcom/android/server/power/DisplayPowerController;->mSmartSensorValue:F
    invoke-static {v6}, Lcom/android/server/power/DisplayPowerController;->access$400(Lcom/android/server/power/DisplayPowerController;)F

    move-result v6

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController$3;->this$0:Lcom/android/server/power/DisplayPowerController;

    #getter for: Lcom/android/server/power/DisplayPowerController;->mSmartBackLightApicalDecrease:Z
    invoke-static {v5}, Lcom/android/server/power/DisplayPowerController;->access$900(Lcom/android/server/power/DisplayPowerController;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController$3;->this$0:Lcom/android/server/power/DisplayPowerController;

    #getter for: Lcom/android/server/power/DisplayPowerController;->mSmartBackLightApicalIncrease:Z
    invoke-static {v5}, Lcom/android/server/power/DisplayPowerController;->access$800(Lcom/android/server/power/DisplayPowerController;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1105
    :cond_7
    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController$3;->this$0:Lcom/android/server/power/DisplayPowerController;

    #getter for: Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;
    invoke-static {v5}, Lcom/android/server/power/DisplayPowerController;->access$700(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 1106
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController$3;->this$0:Lcom/android/server/power/DisplayPowerController;

    const/16 v5, 0x1f40

    if-lt v4, v5, :cond_9

    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController$3;->this$0:Lcom/android/server/power/DisplayPowerController;

    #getter for: Lcom/android/server/power/DisplayPowerController;->mSmartSensorValue:F
    invoke-static {v5}, Lcom/android/server/power/DisplayPowerController;->access$400(Lcom/android/server/power/DisplayPowerController;)F

    move-result v5

    const/high16 v7, 0x45fa

    cmpg-float v5, v5, v7

    if-gez v5, :cond_9

    const/4 v5, 0x1

    :goto_1
    #setter for: Lcom/android/server/power/DisplayPowerController;->mSmartBackLightApicalIncrease:Z
    invoke-static {v6, v5}, Lcom/android/server/power/DisplayPowerController;->access$802(Lcom/android/server/power/DisplayPowerController;Z)Z

    .line 1108
    iget-object v6, p0, Lcom/android/server/power/DisplayPowerController$3;->this$0:Lcom/android/server/power/DisplayPowerController;

    const/16 v5, 0x1388

    if-gt v4, v5, :cond_a

    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController$3;->this$0:Lcom/android/server/power/DisplayPowerController;

    #getter for: Lcom/android/server/power/DisplayPowerController;->mSmartSensorValue:F
    invoke-static {v5}, Lcom/android/server/power/DisplayPowerController;->access$400(Lcom/android/server/power/DisplayPowerController;)F

    move-result v5

    const/high16 v7, 0x45fa

    cmpl-float v5, v5, v7

    if-lez v5, :cond_a

    const/4 v5, 0x1

    :goto_2
    #setter for: Lcom/android/server/power/DisplayPowerController;->mSmartBackLightApicalDecrease:Z
    invoke-static {v6, v5}, Lcom/android/server/power/DisplayPowerController;->access$902(Lcom/android/server/power/DisplayPowerController;Z)Z

    .line 1111
    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController$3;->this$0:Lcom/android/server/power/DisplayPowerController;

    #getter for: Lcom/android/server/power/DisplayPowerController;->mSmartBackLightApicalIncrease:Z
    invoke-static {v5}, Lcom/android/server/power/DisplayPowerController;->access$800(Lcom/android/server/power/DisplayPowerController;)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController$3;->this$0:Lcom/android/server/power/DisplayPowerController;

    #getter for: Lcom/android/server/power/DisplayPowerController;->mSmartBackLightApicalDecrease:Z
    invoke-static {v5}, Lcom/android/server/power/DisplayPowerController;->access$900(Lcom/android/server/power/DisplayPowerController;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1112
    :cond_8
    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController$3;->this$0:Lcom/android/server/power/DisplayPowerController;

    int-to-float v6, v4

    #setter for: Lcom/android/server/power/DisplayPowerController;->mSmartSensorPendingValue:F
    invoke-static {v5, v6}, Lcom/android/server/power/DisplayPowerController;->access$1302(Lcom/android/server/power/DisplayPowerController;F)F

    .line 1113
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1114
    .local v0, curTime:J
    iget-object v5, p0, Lcom/android/server/power/DisplayPowerController$3;->this$0:Lcom/android/server/power/DisplayPowerController;

    #getter for: Lcom/android/server/power/DisplayPowerController;->mHandler:Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;
    invoke-static {v5}, Lcom/android/server/power/DisplayPowerController;->access$700(Lcom/android/server/power/DisplayPowerController;)Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;

    move-result-object v5

    const/4 v6, 0x4

    const-wide/16 v7, 0xbb8

    add-long/2addr v7, v0

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0

    .line 1106
    .end local v0           #curTime:J
    :cond_9
    const/4 v5, 0x0

    goto :goto_1

    .line 1108
    :cond_a
    const/4 v5, 0x0

    goto :goto_2
.end method
