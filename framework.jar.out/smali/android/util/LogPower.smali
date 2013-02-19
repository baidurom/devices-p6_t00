.class public final Landroid/util/LogPower;
.super Ljava/lang/Object;
.source "LogPower.java"


# static fields
.field public static final ACTIVITY_PAUSED:I = 0x65

.field public static final ACTIVITY_RESUMED:I = 0x64

.field public static final ALARM_START:I = 0x79

.field public static final ALL_DOWNLOAD_FINISH:I = 0x6e

.field public static final APP_EXIT:I = 0x6c

.field public static final APP_LAUNCHER:I = 0x6d

.field public static final APP_PROCESS_EXIT:I = 0x70

.field public static final APP_PROCESS_START:I = 0x6f

.field public static final APP_RUN_BG:I = 0x72

.field public static final APP_RUN_FRONT:I = 0x71

.field public static final END_CAMERA:I = 0x86

.field public static final END_CHG_ROTATION:I = 0x82

.field public static final END_WEBKIT_CANVAS:I = 0x84

.field public static final FULL_SCREEN:I = 0x78

.field public static final GAMEOF3D_PAUSED:I = 0x6b

.field public static final GAMEOF3D_RESUMED:I = 0x6a

.field public static final HW_PUSH_FINISH:I = 0x77

.field public static final KEYBOARD_HIDE:I = 0x76

.field public static final KEYBOARD_SHOW:I = 0x75

.field public static final MIME_TYPE:I = 0x7f

.field public static final NOTIFICATION_CANCEL:I = 0x7b

.field public static final NOTIFICATION_CANCEL_ALL:I = 0x7c

.field public static final NOTIFICATION_ENQUEUE:I = 0x7a

.field public static final SCREEN_OFF:I = 0x74

.field public static final SCREEN_ON:I = 0x73

.field public static final START_CAMERA:I = 0x81

.field public static final START_CHG_ROTATION:I = 0x80

.field public static final START_WEBKIT_CANVAS:I = 0x83

.field public static final TOUCH_DOWN:I = 0x7d

.field public static final TOUCH_UP:I = 0x7e

.field public static final TRASH_WAKELOCK:I = 0x85

.field private static TRY_COUNT:I = 0x0

.field private static final TRY_MAX_NUM:I = 0x14

.field private static final UNKNOW_MODE:I = 0x0

.field public static final WEBPAGE_FINISHED:I = 0x69

.field public static final WEBPAGE_STARTED:I = 0x68

.field public static final WEBVIEW_PAUSED:I = 0x67

.field public static final WEBVIEW_RESUMED:I = 0x66

.field private static mMsgBuffer:Ljava/lang/StringBuffer;

.field private static mSmartPowerMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    const-string/jumbo v0, "persist.sys.smart_power"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/util/LogPower;->mSmartPowerMode:I

    .line 67
    sput v1, Landroid/util/LogPower;->TRY_COUNT:I

    .line 69
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    sput-object v0, Landroid/util/LogPower;->mMsgBuffer:Ljava/lang/StringBuffer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method private static printlnPower(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "priority"
    .parameter "tag"
    .parameter "PackageName"
    .parameter "Value"
    .parameter "ClassName"
    .parameter "Extend"

    .prologue
    const/4 v5, 0x0

    .line 119
    sget v2, Landroid/util/LogPower;->mSmartPowerMode:I

    if-nez v2, :cond_0

    sget v2, Landroid/util/LogPower;->TRY_COUNT:I

    const/16 v3, 0x14

    if-gt v2, v3, :cond_0

    .line 121
    const-string/jumbo v2, "persist.sys.smart_power"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Landroid/util/LogPower;->mSmartPowerMode:I

    .line 122
    sget v2, Landroid/util/LogPower;->TRY_COUNT:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Landroid/util/LogPower;->TRY_COUNT:I

    .line 126
    :cond_0
    sget v2, Landroid/util/LogPower;->mSmartPowerMode:I

    if-eqz v2, :cond_5

    .line 129
    if-eqz p2, :cond_1

    .line 130
    sget-object v2, Landroid/util/LogPower;->mMsgBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    :cond_1
    if-eqz p3, :cond_2

    .line 133
    sget-object v2, Landroid/util/LogPower;->mMsgBuffer:Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    :cond_2
    if-eqz p4, :cond_3

    .line 136
    sget-object v2, Landroid/util/LogPower;->mMsgBuffer:Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    :cond_3
    if-eqz p5, :cond_4

    .line 139
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p5

    if-ge v0, v2, :cond_4

    .line 140
    sget-object v2, Landroid/util/LogPower;->mMsgBuffer:Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p5, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    .end local v0           #i:I
    :cond_4
    sget-object v2, Landroid/util/LogPower;->mMsgBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, msg:Ljava/lang/String;
    sget-object v2, Landroid/util/LogPower;->mMsgBuffer:Ljava/lang/StringBuffer;

    sget-object v3, Landroid/util/LogPower;->mMsgBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v2, v5, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 146
    const/4 v2, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p0, v3, v1}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 149
    .end local v1           #msg:Ljava/lang/String;
    :goto_1
    return v2

    :cond_5
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public static push(I)I
    .locals 6
    .parameter "tag"

    .prologue
    const/4 v3, 0x0

    .line 76
    const/4 v0, 0x5

    const-string v2, ""

    move v1, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Landroid/util/LogPower;->printlnPower(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static push(ILjava/lang/String;)I
    .locals 6
    .parameter "tag"
    .parameter "PackageName"

    .prologue
    const/4 v3, 0x0

    .line 80
    const/4 v0, 0x5

    move v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Landroid/util/LogPower;->printlnPower(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static push(ILjava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "tag"
    .parameter "PackageName"
    .parameter "Value"

    .prologue
    const/4 v4, 0x0

    .line 84
    const/4 v0, 0x5

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/util/LogPower;->printlnPower(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static push(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "tag"
    .parameter "PackageName"
    .parameter "Value"
    .parameter "ClassName"

    .prologue
    .line 88
    const/4 v0, 0x5

    const/4 v5, 0x0

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Landroid/util/LogPower;->printlnPower(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static push(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "tag"
    .parameter "PackageName"
    .parameter "Value"
    .parameter "ClassName"
    .parameter "Extend"

    .prologue
    .line 92
    const/4 v0, 0x5

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/util/LogPower;->printlnPower(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static spush(I)I
    .locals 6
    .parameter "tag"

    .prologue
    const/4 v3, 0x0

    .line 96
    const/4 v0, 0x6

    const-string v2, ""

    move v1, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Landroid/util/LogPower;->printlnPower(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static spush(ILjava/lang/String;)I
    .locals 6
    .parameter "tag"
    .parameter "PackageName"

    .prologue
    const/4 v3, 0x0

    .line 100
    const/4 v0, 0x6

    move v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Landroid/util/LogPower;->printlnPower(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static spush(ILjava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "tag"
    .parameter "PackageName"
    .parameter "Value"

    .prologue
    const/4 v4, 0x0

    .line 104
    const/4 v0, 0x6

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/util/LogPower;->printlnPower(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static spush(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "tag"
    .parameter "PackageName"
    .parameter "Value"
    .parameter "ClassName"

    .prologue
    .line 108
    const/4 v0, 0x6

    const/4 v5, 0x0

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Landroid/util/LogPower;->printlnPower(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static spush(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "tag"
    .parameter "PackageName"
    .parameter "Value"
    .parameter "ClassName"
    .parameter "Extend"

    .prologue
    .line 112
    const/4 v0, 0x6

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/util/LogPower;->printlnPower(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
