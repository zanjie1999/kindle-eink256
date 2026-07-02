.class Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;
.super Lcom/amazon/whisperbridge/ble/BleGattServiceClient;
.source "GattCharacteristicClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.whisperjoin.provisionerSDK.radios.ble.GattCharacteristicClient"


# instance fields
.field mPendingUpdates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicPendingUpdate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    sget-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleConstants;->WHISPER_JOIN_UUID:Ljava/util/UUID;

    invoke-direct {p0, v0}, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;-><init>(Ljava/util/UUID;)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;->mPendingUpdates:Ljava/util/ArrayList;

    return-void
.end method

.method private enableNotification(Ljava/util/UUID;Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 131
    invoke-virtual {p0, p1}, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->getBleGattCharacteristic(Ljava/util/UUID;)Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;->isNotifiable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    invoke-virtual {v0}, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->updateCharacteristicNotifiability(Ljava/util/UUID;ZZ)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 139
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whisperbridge/ble/command/BleUpdateNotificationsCommand$Result;

    iget v0, v1, Lcom/amazon/whisperbridge/ble/command/BleUpdateNotificationsCommand$Result;->status:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    return-void

    .line 146
    :cond_0
    new-instance v1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enable notifications was not successful for UUID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, p1, v0, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;)V

    throw v1

    :catch_0
    move-exception v1

    .line 141
    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 142
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error enabling notifications for UUID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, v1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;)V

    throw v0

    .line 133
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Characteristic does not support notifications."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 128
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "characteristicUuid cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addPendingUpdate(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicPendingUpdate;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;->mPendingUpdates:Ljava/util/ArrayList;

    monitor-enter v0

    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public enableProvisionableEventNotifications()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;
        }
    .end annotation

    .line 46
    sget-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleConstants;->PROVISIONING_NOTIFICATION_CHARACTERISTIC_UUID:Ljava/util/UUID;

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;->ENABLE_NOTIFICATION_PROVISIONING_EVENTS:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    invoke-direct {p0, v0, v1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;->enableNotification(Ljava/util/UUID;Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;)V

    return-void
.end method

.method public enableProvisioningCommandResponseNotifications()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;
        }
    .end annotation

    .line 53
    sget-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleConstants;->PROVISIONING_COMMAND_RESPONSE_CHARACTERISTIC_UUID:Ljava/util/UUID;

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;->ENABLE_NOTIFICATION_PROVISIONING_COMMAND_RESPONSE:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    invoke-direct {p0, v0, v1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;->enableNotification(Ljava/util/UUID;Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;)V

    return-void
.end method

.method public enablePublicNotfications()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError;
        }
    .end annotation

    .line 37
    sget-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleConstants;->PROVISIONING_STATUS_CHARACTERISTIC_UUID:Ljava/util/UUID;

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;->ENABLE_NOTIFICATION_PROVISIONING_STATUS:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    invoke-direct {p0, v0, v1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;->enableNotification(Ljava/util/UUID;Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;)V

    .line 38
    sget-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleConstants;->START_PROVISIONING_RESPONSE_CHARACTERISTIC_UUID:Ljava/util/UUID;

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;->ENABLE_NOTIFICATION_START_PROVISIONING_REQUEST_RESPONSE:Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;

    invoke-direct {p0, v0, v1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;->enableNotification(Ljava/util/UUID;Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/BLETransportOperationError$Operation;)V

    return-void
.end method

.method public markUpdated(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicPendingUpdate;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;->mPendingUpdates:Ljava/util/ArrayList;

    monitor-enter v0

    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 73
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected onCharacteristicUpdated(Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;)V
    .locals 7

    .line 89
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;->mPendingUpdates:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    .line 93
    :try_start_0
    sget-object v2, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pending onCharacteristicUpdated : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v2, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v3, v1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicPendingUpdate;

    .line 95
    invoke-interface {v3, p1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicPendingUpdate;->notify(Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;)Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicPendingStatus;

    move-result-object v4

    .line 96
    invoke-virtual {v4}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicPendingStatus;->handled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 97
    sget-object v2, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handled onCharacteristicUpdated : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    move-object v3, v4

    goto :goto_1

    :cond_0
    move-object v3, v4

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 103
    sget-object v2, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not handled onCharacteristicUpdated : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_2
    invoke-virtual {p0, v1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;->markUpdated(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicPendingUpdate;)V

    if-eqz v3, :cond_3

    .line 109
    invoke-virtual {v3}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicPendingStatus;->additionalUpdates()Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicPendingUpdate;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;->addPendingUpdate(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicPendingUpdate;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception v2

    .line 113
    :try_start_1
    sget-object v3, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "issue while processing onCharacteristicUpdated : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    invoke-virtual {p0, v1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;->markUpdated(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicPendingUpdate;)V

    .line 116
    :cond_3
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
