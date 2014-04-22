.class Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;
.super Ljava/lang/Object;
.source "SavingSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/hwpowermanager/SavingSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ListItem"
.end annotation


# instance fields
.field appInfo:Landroid/content/pm/ApplicationInfo;

.field icon:Landroid/graphics/drawable/Drawable;

.field isChecked:Z

.field label:Ljava/lang/String;

.field packageName:Ljava/lang/String;

.field visible:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)V
    .locals 1
    .parameter "appInfo"
    .parameter "label"
    .parameter "icon"
    .parameter "packageName"
    .parameter "isChecked"

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-object p1, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 205
    iput-object p2, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;->label:Ljava/lang/String;

    .line 206
    iput-object p3, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 207
    iput-object p4, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;->packageName:Ljava/lang/String;

    .line 208
    iput-boolean p5, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;->isChecked:Z

    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;->visible:Z

    .line 210
    return-void
.end method

.method public static getEmptyListItem()Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;
    .locals 1

    .prologue
    .line 218
    new-instance v0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;

    invoke-direct {v0}, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;-><init>()V

    return-object v0
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;->packageName:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/SavingSettingActivity$ListItem;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
