.class public Lcom/huawei/android/hwpowermanager/model/ApplicationModel;
.super Ljava/lang/Object;
.source "ApplicationModel.java"


# instance fields
.field private activeSince:J

.field private appIcon:Landroid/graphics/drawable/Drawable;

.field private appLabel:Ljava/lang/String;

.field private avaragePower:D

.field private percentageInSoftware:D

.field private pid:I

.field private pkgName:Ljava/lang/String;

.field private power:D

.field private processName:Ljava/lang/String;

.field private serviceName:Ljava/lang/String;

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public getActiveSince()J
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->activeSince:J

    return-wide v0
.end method

.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->appIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getAppLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->appLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getAvaragePower()D
    .locals 2

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->avaragePower:D

    return-wide v0
.end method

.method public getPercentageInSoftware()D
    .locals 2

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->percentageInSoftware:D

    return-wide v0
.end method

.method public getPid()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->pid:I

    return v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getPower()D
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->power:D

    return-wide v0
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->processName:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->serviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->uid:I

    return v0
.end method

.method public setAppIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "appIcon"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 41
    return-void
.end method

.method public setAppLabel(Ljava/lang/String;)V
    .locals 0
    .parameter "appName"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->appLabel:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setAvaragePower(D)V
    .locals 0
    .parameter "avaragePower"

    .prologue
    .line 112
    iput-wide p1, p0, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->avaragePower:D

    .line 113
    return-void
.end method

.method public setPercentageInSoftware(D)V
    .locals 0
    .parameter "percentageInSoftware"

    .prologue
    .line 120
    iput-wide p1, p0, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->percentageInSoftware:D

    .line 121
    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0
    .parameter "pkgName"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->pkgName:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setPower(D)V
    .locals 0
    .parameter "power"

    .prologue
    .line 104
    iput-wide p1, p0, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->power:D

    .line 105
    return-void
.end method

.method public setProcessName(Ljava/lang/String;)V
    .locals 0
    .parameter "processName"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->processName:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setUid(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 80
    iput p1, p0, Lcom/huawei/android/hwpowermanager/model/ApplicationModel;->uid:I

    .line 81
    return-void
.end method
