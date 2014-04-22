.class public final Lcom/huawei/android/hwpowermanager/BootApplicationActivity$CompareNum;
.super Ljava/lang/Object;
.source "BootApplicationActivity.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/hwpowermanager/BootApplicationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CompareNum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;)I
    .locals 1
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 545
    iget-boolean v0, p1, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mNewEnable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mNewEnable:Z

    if-nez v0, :cond_0

    .line 546
    const/4 v0, 0x1

    .line 550
    :goto_0
    return v0

    .line 547
    :cond_0
    iget-boolean v0, p1, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mNewEnable:Z

    if-nez v0, :cond_1

    iget-boolean v0, p2, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;->mNewEnable:Z

    if-eqz v0, :cond_1

    .line 548
    const/4 v0, -0x1

    goto :goto_0

    .line 550
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 538
    check-cast p1, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;

    .end local p1
    check-cast p2, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/huawei/android/hwpowermanager/BootApplicationActivity$CompareNum;->compare(Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;Lcom/huawei/android/hwpowermanager/BootApplicationActivity$AppItem;)I

    move-result v0

    return v0
.end method
