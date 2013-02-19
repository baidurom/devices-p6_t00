.class public final Lcom/huawei/motiondetection/MotionTypeApps;
.super Ljava/lang/Object;
.source "MotionTypeApps.java"


# static fields
.field public static final MOTION_KEY_APPS_FLIP_SILENT:Ljava/lang/String; = "motion_flip_silent"

.field public static final MOTION_KEY_APPS_PAN_BROWSE:Ljava/lang/String; = "motion_pan_browse"

.field public static final MOTION_KEY_APPS_PICKUP_WEAKEN:Ljava/lang/String; = "motion_pickup_weaken"

.field public static final MOTION_KEY_APPS_POCKET_MODE:Ljava/lang/String; = "motion_pocket_mode"

.field public static final MOTION_KEY_APPS_PROXI_ANSWER:Ljava/lang/String; = "motion_proximity_answer_call"

.field public static final MOTION_KEY_APPS_SHAKE_REFRESH:Ljava/lang/String; = "motion_shake_refresh"

.field public static final MOTION_KEY_APPS_TAP_TOP:Ljava/lang/String; = "motion_tap_top"

.field public static final MOTION_KEY_APPS_TILT_SWITCH:Ljava/lang/String; = "motion_tilt_switch"

.field public static final MOTION_TYPE_APPS_FLIP_SILENT:I = 0x2

.field public static final MOTION_TYPE_APPS_NOT_SUPPORT:I = -0x1

.field public static final MOTION_TYPE_APPS_PAN_BROWSE:I = 0x7

.field public static final MOTION_TYPE_APPS_PICKUP_WEAKEN:I = 0x1

.field public static final MOTION_TYPE_APPS_POCKET_MODE:I = 0x8

.field public static final MOTION_TYPE_APPS_PROXIMITY_ANSWER:I = 0x3

.field public static final MOTION_TYPE_APPS_SHAKE_REFRESH:I = 0x4

.field public static final MOTION_TYPE_APPS_TAP_TOP:I = 0x5

.field public static final MOTION_TYPE_APPS_TILT_SWITCH:I = 0x6

.field public static final TYPE_PROXIMITY_DIAL:I = 0x3


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static getMotionKeyByMotionApps(I)Ljava/lang/String;
    .locals 1
    .parameter "motionApps"

    .prologue
    .line 136
    const-string v0, ""

    .line 137
    .local v0, motionKey:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 165
    :goto_0
    return-object v0

    .line 139
    :pswitch_0
    const-string v0, "motion_pickup_weaken"

    .line 140
    goto :goto_0

    .line 142
    :pswitch_1
    const-string v0, "motion_flip_silent"

    .line 143
    goto :goto_0

    .line 145
    :pswitch_2
    const-string v0, "motion_proximity_answer_call"

    .line 146
    goto :goto_0

    .line 148
    :pswitch_3
    const-string v0, "motion_shake_refresh"

    .line 149
    goto :goto_0

    .line 151
    :pswitch_4
    const-string v0, "motion_tap_top"

    .line 152
    goto :goto_0

    .line 154
    :pswitch_5
    const-string v0, "motion_tilt_switch"

    .line 155
    goto :goto_0

    .line 157
    :pswitch_6
    const-string v0, "motion_pan_browse"

    .line 158
    goto :goto_0

    .line 160
    :pswitch_7
    const-string v0, "motion_pocket_mode"

    .line 161
    goto :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static getMotionTypeByMotionApps(I)I
    .locals 1
    .parameter "motionApps"

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 90
    .local v0, motion:I
    packed-switch p0, :pswitch_data_0

    .line 118
    :goto_0
    return v0

    .line 92
    :pswitch_0
    const/4 v0, 0x1

    .line 93
    goto :goto_0

    .line 95
    :pswitch_1
    const/4 v0, 0x2

    .line 96
    goto :goto_0

    .line 98
    :pswitch_2
    const/4 v0, 0x3

    .line 99
    goto :goto_0

    .line 101
    :pswitch_3
    const/4 v0, 0x4

    .line 102
    goto :goto_0

    .line 104
    :pswitch_4
    const/4 v0, 0x5

    .line 105
    goto :goto_0

    .line 107
    :pswitch_5
    const/4 v0, 0x6

    .line 108
    goto :goto_0

    .line 110
    :pswitch_6
    const/4 v0, 0x7

    .line 111
    goto :goto_0

    .line 113
    :pswitch_7
    const/16 v0, 0x8

    .line 114
    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
