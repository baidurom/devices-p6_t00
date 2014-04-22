.class public final Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ComparatotValues;
.super Ljava/lang/Object;
.source "SavingSettingActivity.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/hwpowermanager/SavingSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ComparatotValues"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5cafb0a4213666d4L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;)I
    .locals 1
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 323
    iget-boolean v0, p1, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;->isChecked:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;->isChecked:Z

    if-nez v0, :cond_0

    .line 324
    const/4 v0, -0x1

    .line 328
    :goto_0
    return v0

    .line 325
    :cond_0
    iget-boolean v0, p1, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;->isChecked:Z

    if-nez v0, :cond_1

    iget-boolean v0, p2, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;->isChecked:Z

    if-eqz v0, :cond_1

    .line 326
    const/4 v0, 0x1

    goto :goto_0

    .line 328
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 317
    check-cast p1, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;

    .end local p1
    check-cast p2, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ComparatotValues;->compare(Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;)I

    move-result v0

    return v0
.end method
