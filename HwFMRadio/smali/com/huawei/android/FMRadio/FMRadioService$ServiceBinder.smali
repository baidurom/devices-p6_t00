.class public Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;
.super Landroid/os/Binder;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/FMRadio/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceBinder"
.end annotation


# instance fields
.field private mService:Lcom/huawei/android/FMRadio/FMRadioService;

.field final synthetic this$0:Lcom/huawei/android/FMRadio/FMRadioService;


# direct methods
.method public constructor <init>(Lcom/huawei/android/FMRadio/FMRadioService;Lcom/huawei/android/FMRadio/FMRadioService;)V
    .locals 1
    .parameter
    .parameter "service"

    .prologue
    .line 1604
    iput-object p1, p0, Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 1602
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;->mService:Lcom/huawei/android/FMRadio/FMRadioService;

    .line 1605
    iput-object p2, p0, Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;->mService:Lcom/huawei/android/FMRadio/FMRadioService;

    .line 1606
    return-void
.end method


# virtual methods
.method public fmAutoTune()V
    .locals 1

    .prologue
    .line 1629
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;->mService:Lcom/huawei/android/FMRadio/FMRadioService;

    invoke-virtual {v0}, Lcom/huawei/android/FMRadio/FMRadioService;->fmAutoTune()V

    .line 1630
    return-void
.end method

.method public fmCancelAutoTune()V
    .locals 1

    .prologue
    .line 1633
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;->mService:Lcom/huawei/android/FMRadio/FMRadioService;

    invoke-virtual {v0}, Lcom/huawei/android/FMRadio/FMRadioService;->fmCancelAutoTune()V

    .line 1634
    return-void
.end method

.method public fmManualTune(Z)V
    .locals 1
    .parameter "mDirection"

    .prologue
    .line 1637
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;->mService:Lcom/huawei/android/FMRadio/FMRadioService;

    invoke-virtual {v0, p1}, Lcom/huawei/android/FMRadio/FMRadioService;->fmManualTune(Z)V

    .line 1638
    return-void
.end method

.method public fmOpenFMSound(B)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 1645
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;->mService:Lcom/huawei/android/FMRadio/FMRadioService;

    invoke-virtual {v0, p1}, Lcom/huawei/android/FMRadio/FMRadioService;->fmOpenFMSound(B)V

    .line 1646
    return-void
.end method

.method public fmPlay(I)V
    .locals 1
    .parameter "frequency"

    .prologue
    .line 1617
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;->mService:Lcom/huawei/android/FMRadio/FMRadioService;

    invoke-virtual {v0, p1}, Lcom/huawei/android/FMRadio/FMRadioService;->fmPlay(I)Z

    .line 1618
    return-void
.end method

.method public fmStop()V
    .locals 1

    .prologue
    .line 1613
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioService$ServiceBinder;->mService:Lcom/huawei/android/FMRadio/FMRadioService;

    invoke-virtual {v0}, Lcom/huawei/android/FMRadio/FMRadioService;->fmStop()V

    .line 1614
    return-void
.end method

.method public getSearchStationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1672
    invoke-static {}, Lcom/huawei/android/FMRadio/FMRadioService;->access$800()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
