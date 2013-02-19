.class public Lcom/huawei/android/app/AlarmManagerEx;
.super Ljava/lang/Object;
.source "AlarmManagerEx.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setAlarmDynList(Landroid/app/AlarmManager;Ljava/lang/String;I)I
    .locals 1
    .parameter "obj"
    .parameter "pkg"
    .parameter "type"

    .prologue
    .line 37
    invoke-virtual {p0, p1, p2}, Landroid/app/AlarmManager;->setAlarmDynList(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
