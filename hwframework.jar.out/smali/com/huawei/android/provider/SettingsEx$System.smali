.class public final Lcom/huawei/android/provider/SettingsEx$System;
.super Ljava/lang/Object;
.source "SettingsEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/provider/SettingsEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "System"
.end annotation


# static fields
.field public static final AUTO_ANSWER_TIMEOUT:Ljava/lang/String; = "auto_answer"

.field public static final AUTO_HIDE_NAVIGATIONBAR:Ljava/lang/String; = "auto_hide_navigationbar_enable"

.field public static final AUTO_HIDE_NAVIGATIONBAR_DEFAULT:I = 0x0

.field public static final AUTO_HIDE_NAVIGATIONBAR_TIMEOUT:Ljava/lang/String; = "auto_hide_navigationbar_timeout"

.field public static final AUTO_HIDE_NAVIGATIONBAR_TIMEOUT_DEFAULT:I = 0x7d0

.field public static final HIDE_VIRTUAL_KEY:Ljava/lang/String; = "hide_virtual_key"

.field public static final HUAWEI_FORCEMINNAVIGATIONBAR:Ljava/lang/String; = "forceMinNavigationBar"

.field public static final HUAWEI_MINNAVIGATIONBAR:Ljava/lang/String; = "minNavigationBar"

.field public static final HUAWEI_NAVIGATIONBAR_STATUSCHANGE:Ljava/lang/String; = "com.huawei.navigationbar.statuschange"

.field public static final HUAWEI_RINGTONE2_URI:Landroid/net/Uri; = null

.field public static final MULTI_SIM_VOICE_CALL_SUBSCRIPTION:Ljava/lang/String; = "multi_sim_voice_call"

.field public static final NAVIGATIONBAR_HEIGHT_MIN:Ljava/lang/String; = "navigationbar_height_min"

.field public static final NAVIGATIONBAR_HEIGHT_MIN_DEFAULT:I = 0x0

.field public static final NAVIGATIONBAR_IS_MIN:Ljava/lang/String; = "navigationbar_is_min"

.field public static final NAVIGATIONBAR_IS_MIN_DEFAULT:I = 0x0

.field public static final NAVIGATIONBAR_MIN_PROMPT:Ljava/lang/String; = "navigationbar_min_prompt"

.field public static final NAVIGATIONBAR_MIN_PROMPT_DEFAULT:I = 0x0

.field public static final NAVIGATIONBAR_WIDTH_MIN:Ljava/lang/String; = "navigationbar_width_min"

.field public static final NAVIGATIONBAR_WIDTH_MIN_DEFAULT:I = 0x0

.field public static final RINGTONE2:Ljava/lang/String; = "ringtone2"

.field public static final SHOW_HWLOCK_FIRST:Ljava/lang/String; = "show_hwlock_first"

.field public static final SHOW_NAVIGATIONBAR_CHECKBOK:Ljava/lang/String; = "show_navigationbar_checkbox"

.field public static final SHOW_NAVIGATIONBAR_CHECKBOK_DEFAULT:I = 0x0

.field public static final VOLUME_FM:Ljava/lang/String; = "volume_fm"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 181
    const-string v0, "ringtone2"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/huawei/android/provider/SettingsEx$System;->HUAWEI_RINGTONE2_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
