.class public interface abstract Lcom/huawei/permission/IHoldService;
.super Ljava/lang/Object;
.source "IHoldService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/permission/IHoldService$Stub;
    }
.end annotation


# virtual methods
.method public abstract holdServiceByRequestPermission(IILjava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract releaseHoldService(II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
