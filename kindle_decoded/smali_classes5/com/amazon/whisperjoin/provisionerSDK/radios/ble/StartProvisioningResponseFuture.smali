.class public Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/StartProvisioningResponseFuture;
.super Ljava/util/concurrent/FutureTask;
.source "StartProvisioningResponseFuture.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "Lcom/amazon/whisperjoin/common/sharedtypes/ble/StartProvisioningResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;)V
    .locals 1

    .line 16
    new-instance v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/StartProvisioningResponseFuture$1;

    invoke-direct {v0, p1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/StartProvisioningResponseFuture$1;-><init>(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;)V

    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method
