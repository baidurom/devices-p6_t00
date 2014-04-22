.class public Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;
.super Ljava/lang/Object;
.source "PowerManagementModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/hwpowermanager/model/PowerManagementModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UidAndPower"
.end annotation


# instance fields
.field public power:D

.field public uid:I


# direct methods
.method constructor <init>(ID)V
    .locals 0
    .parameter "uid"
    .parameter "power"

    .prologue
    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    iput p1, p0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;->uid:I

    .line 537
    iput-wide p2, p0, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;->power:D

    .line 538
    return-void
.end method
