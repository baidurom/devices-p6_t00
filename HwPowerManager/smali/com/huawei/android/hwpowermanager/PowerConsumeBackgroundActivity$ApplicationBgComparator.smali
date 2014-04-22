.class Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity$ApplicationBgComparator;
.super Ljava/lang/Object;
.source "PowerConsumeBackgroundActivity.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApplicationBgComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 453
    invoke-direct {p0}, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity$ApplicationBgComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;)I
    .locals 4
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 457
    iget-wide v0, p1, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;->power:D

    iget-wide v2, p2, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;->power:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 458
    const/4 v0, -0x1

    .line 462
    :goto_0
    return v0

    .line 459
    :cond_0
    iget-wide v0, p1, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;->power:D

    iget-wide v2, p2, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;->power:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 460
    const/4 v0, 0x1

    goto :goto_0

    .line 462
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 453
    check-cast p1, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;

    .end local p1
    check-cast p2, Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/huawei/android/hwpowermanager/PowerConsumeBackgroundActivity$ApplicationBgComparator;->compare(Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;Lcom/huawei/android/hwpowermanager/model/PowerManagementModel$UidAndPower;)I

    move-result v0

    return v0
.end method
