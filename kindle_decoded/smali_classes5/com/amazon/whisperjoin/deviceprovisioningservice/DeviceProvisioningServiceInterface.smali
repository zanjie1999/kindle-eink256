.class public interface abstract Lcom/amazon/whisperjoin/deviceprovisioningservice/DeviceProvisioningServiceInterface;
.super Ljava/lang/Object;
.source "DeviceProvisioningServiceInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/deviceprovisioningservice/DeviceProvisioningServiceInterface$Stub;
    }
.end annotation


# virtual methods
.method public abstract addCallback(Lcom/amazon/whisperjoin/deviceprovisioningservice/ProvisioningWorkflowEventCallback;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isActive()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeCallback(Lcom/amazon/whisperjoin/deviceprovisioningservice/ProvisioningWorkflowEventCallback;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract shutdown()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract start(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
