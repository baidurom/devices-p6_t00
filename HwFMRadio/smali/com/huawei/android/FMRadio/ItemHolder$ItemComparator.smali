.class Lcom/huawei/android/FMRadio/ItemHolder$ItemComparator;
.super Ljava/lang/Object;
.source "ItemHolder.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/FMRadio/ItemHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ItemComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/huawei/android/FMRadio/ItemHolder;",
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
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/huawei/android/FMRadio/ItemHolder;Lcom/huawei/android/FMRadio/ItemHolder;)I
    .locals 2
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 86
    #getter for: Lcom/huawei/android/FMRadio/ItemHolder;->mFrequency:I
    invoke-static {p1}, Lcom/huawei/android/FMRadio/ItemHolder;->access$000(Lcom/huawei/android/FMRadio/ItemHolder;)I

    move-result v0

    #getter for: Lcom/huawei/android/FMRadio/ItemHolder;->mFrequency:I
    invoke-static {p2}, Lcom/huawei/android/FMRadio/ItemHolder;->access$000(Lcom/huawei/android/FMRadio/ItemHolder;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    check-cast p1, Lcom/huawei/android/FMRadio/ItemHolder;

    .end local p1
    check-cast p2, Lcom/huawei/android/FMRadio/ItemHolder;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/huawei/android/FMRadio/ItemHolder$ItemComparator;->compare(Lcom/huawei/android/FMRadio/ItemHolder;Lcom/huawei/android/FMRadio/ItemHolder;)I

    move-result v0

    return v0
.end method
