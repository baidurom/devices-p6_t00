.class Lcom/huawei/android/hwpowermanager/model/ApplicationPower$ApplicationModelComparator;
.super Ljava/lang/Object;
.source "ApplicationPower.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/hwpowermanager/model/ApplicationPower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ApplicationModelComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/huawei/android/hwpowermanager/model/ApplicationModel;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/huawei/android/hwpowermanager/model/ApplicationModel;Lcom/huawei/android/hwpowermanager/model/ApplicationModel;)I
    .locals 4
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 187
    invoke-virtual {p1}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->getPower()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->getPower()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 188
    const/4 v0, -0x1

    .line 192
    :goto_0
    return v0

    .line 189
    :cond_0
    invoke-virtual {p1}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->getPower()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->getPower()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 190
    const/4 v0, 0x1

    goto :goto_0

    .line 192
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 183
    check-cast p1, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;

    .end local p1
    check-cast p2, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/huawei/android/hwpowermanager/model/ApplicationPower$ApplicationModelComparator;->compare(Lcom/huawei/android/hwpowermanager/model/ApplicationModel;Lcom/huawei/android/hwpowermanager/model/ApplicationModel;)I

    move-result v0

    return v0
.end method
