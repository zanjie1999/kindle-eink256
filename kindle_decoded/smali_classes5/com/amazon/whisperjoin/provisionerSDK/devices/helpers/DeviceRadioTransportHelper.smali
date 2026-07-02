.class public interface abstract Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/DeviceRadioTransportHelper;
.super Ljava/lang/Object;
.source "DeviceRadioTransportHelper.java"


# virtual methods
.method public abstract closeConnection()V
.end method

.method public abstract getCommandExecutor()Lcom/amazon/whisperjoin/provisionerSDK/devices/DeviceCommandExecutor;
.end method

.method public abstract onProvisioningComplete()Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract openConnection(Lcom/amazon/whisperjoin/provisionerSDK/devices/handlers/DeviceConnectionStateEventHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/provisionerSDK/devices/handlers/DeviceConnectionStateEventHandler;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setEventNotificationCallback(Lcom/amazon/whisperbridge/Transport$ProvisionableEventNotificationCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract startProvisioning()Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/whisperbridge/ProvisioningStatus;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
