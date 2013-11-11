.class Lcom/huawei/android/FMRadio/FMRadioService$10;
.super Ljava/lang/Object;
.source "FMRadioService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/FMRadio/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/android/FMRadio/FMRadioService;


# direct methods
.method constructor <init>(Lcom/huawei/android/FMRadio/FMRadioService;)V
    .locals 0
    .parameter

    .prologue
    .line 814
    iput-object p1, p0, Lcom/huawei/android/FMRadio/FMRadioService$10;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 819
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/huawei/android/FMRadio/FMRadioUtils;->setmScreenOn(Z)V

    .line 823
    iget-object v0, p0, Lcom/huawei/android/FMRadio/FMRadioService$10;->this$0:Lcom/huawei/android/FMRadio/FMRadioService;

    const/4 v1, 0x0

    #calls: Lcom/huawei/android/FMRadio/FMRadioService;->setLowPowerMode(Z)Z
    invoke-static {v0, v1}, Lcom/huawei/android/FMRadio/FMRadioService;->access$1900(Lcom/huawei/android/FMRadio/FMRadioService;Z)Z

    .line 824
    return-void
.end method
