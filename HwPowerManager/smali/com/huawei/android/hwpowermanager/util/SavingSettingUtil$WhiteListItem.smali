.class public Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;
.super Ljava/lang/Object;
.source "SavingSettingUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WhiteListItem"
.end annotation


# instance fields
.field private isChecked:Z

.field private packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;->isChecked:Z

    .line 188
    iput-object p1, p0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;->packageName:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .parameter "packageName"
    .parameter "isChecked"

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;->isChecked:Z

    .line 183
    iput-object p1, p0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;->packageName:Ljava/lang/String;

    .line 184
    iput-boolean p2, p0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;->isChecked:Z

    .line 185
    return-void
.end method

.method public static getContainSameWhiteItem(Ljava/util/List;Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;)Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;
    .locals 5
    .parameter
    .parameter "item"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;",
            ">;",
            "Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;",
            ")",
            "Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;"
        }
    .end annotation

    .prologue
    .line 207
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 208
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 209
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;

    .line 210
    .local v2, whiteItem:Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;
    iget-object v3, v2, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;->packageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 215
    .end local v2           #whiteItem:Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;
    :goto_1
    return-object v2

    .line 208
    .restart local v2       #whiteItem:Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    .end local v2           #whiteItem:Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;->isChecked:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/huawei/android/hwpowermanager/util/SavingSettingUtil$WhiteListItem;->isChecked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
