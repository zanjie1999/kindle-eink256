.class public Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransport;
.super Ljava/lang/Object;
.source "BLETransport.java"

# interfaces
.implements Lcom/amazon/whisperbridge/Transport;


# static fields
.field private static final CONNECT:Ljava/lang/String; = "Connect"

.field private static final SEND_COMMAND:Ljava/lang/String; = "Send Command : "

.field private static final START_PROVISIONING:Ljava/lang/String; = "Start Provisioning"

.field private static final TAG:Ljava/lang/String; = "com.amazon.whisperjoin.provisionerSDK.radios.ble.BLETransport"


# instance fields
.field private final mBleClients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEClients;",
            ">;"
        }
    .end annotation
.end field

.field private final mBleManager:Lcom/amazon/whisperbridge/ble/BleManager;

.field private final mCommandExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mContext:Landroid/content/Context;

.field private final mEncodingHelpers:Lcom/amazon/whisperjoin/common/sharedtypes/utility/EncodingHelpers;

.field private final mOperationRetryCount:J

.field private final mOperationTimeout:J

.field private final mOperationTimeoutMs:Ljava/util/concurrent/TimeUnit;

.field private final mRetryExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/amazon/whisperbridge/ble/BleManager;Lcom/amazon/whisperjoin/common/sharedtypes/utility/EncodingHelpers;JLjava/util/concurrent/TimeUnit;JLjava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransport;->mContext:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransport;->mBleManager:Lcom/amazon/whisperbridge/ble/BleManager;

    .line 74
    iput-object p3, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransport;->mEncodingHelpers:Lcom/amazon/whisperjoin/common/sharedtypes/utility/EncodingHelpers;

    .line 76
    iput-object p9, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransport;->mCommandExecutor:Ljava/util/concurrent/ExecutorService;

    .line 77
    iput-object p10, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransport;->mRetryExecutor:Ljava/util/concurrent/ExecutorService;

    .line 79
    iput-wide p4, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransport;->mOperationTimeout:J

    .line 80
    iput-object p6, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransport;->mOperationTimeoutMs:Ljava/util/concurrent/TimeUnit;

    .line 81
    iput-wide p7, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransport;->mOperationRetryCount:J

    .line 83
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransport;->mBleClients:Ljava/util/Map;

    return-void
.end method

.method private getClientsFromDeviceHandle(Ljava/lang/Object;)Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEClients;
    .locals 0

    .line 216
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransport;->getDeviceFromHandle(Ljava/lang/Object;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 217
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransport;->getConnectedClients(Landroid/bluetooth/BluetoothDevice;)Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEClients;

    move-result-object p1

    return-object p1
.end method

.method private getConnectedClientsFromDeviceHandle(Ljava/lang/Object;)Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEClients;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whisperjoin/provisionerSDK/radios/error/NoConnectedClientsException;
        }
    .end annotation

    .line 203
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransport;->getClientsFromDeviceHandle(Ljava/lang/Object;)Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEClients;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 205
    :cond_0
    sget-object p1, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransport;->TAG:Ljava/lang/String;

    const-string v0, "No Clients Connected"

    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    new-instance p1, Lcom/amazon/whisperjoin/provisionerSDK/radios/error/NoConnectedClientsException;

    invoke-direct {p1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/error/NoConnectedClientsException;-><init>()V

    throw p1
.end method

.method private getDeviceFromHandle(Ljava/lang/Object;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 221
    instance-of v0, p1, Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    .line 224
    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    return-object p1

    .line 222
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Device handle is not a Bluetooth Device"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close(Ljava/lang/Object;)V
    .locals 3

    .line 163
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransport;->getDeviceFromHandle(Ljava/lang/Object;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 164
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransport;->getClientsFromDeviceHandle(Ljava/lang/Object;)Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEClients;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransport;->mBleClients:Ljava/util/Map;

    monitor-enter v1

    .line 170
    :try_start_0
    iget-object v2, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransport;->mBleClients:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    invoke-interface {v0}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEClients;->getGattClient()Lcom/amazon/whisperbridge/ble/BleGattClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whisperbridge/ble/BleGattClient;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 171
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public connect(Ljava/lang/Object;Lcom/amazon/whisperbridge/Transport$DeviceConnectionStateChangedListener;)Ljava/util/concurrent/Future;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/amazon/whisperbridge/Transport$DeviceConnectionStateChangedListener;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/RadioNotEnabledException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 95
    invoke-direct/range {p0 .. p1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransport;->getClientsFromDeviceHandle(Ljava/lang/Object;)Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEClients;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 98
    invoke-static {v1}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    return-object v1

    .line 100
    :cond_0
    new-instance v1, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattConnectionPromiseFactory;

    new-instance v8, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/CreateConnection;

    iget-object v3, v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransport;->mBleManager:Lcom/amazon/whisperbridge/ble/BleManager;

    iget-object v4, v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransport;->mBleClients:Ljava/util/Map;

    iget-object v5, v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransport;->mContext:Landroid/content/Context;

    move-object/from16 v6, p1

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    move-object v2, v8

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/CreateConnection;-><init>(Lcom/amazon/whisperbridge/ble/BleManager;Ljava/util/Map;Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Lcom/amazon/whisperbridge/Transport$DeviceConnectionStateChangedListener;)V

    iget-object v2, v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransport;->mCommandExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v8, v2}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattConnectionPromiseFactory;-><init>(Ljava/util/concurrent/Callable;Ljava/util/concurrent/ExecutorService;)V

    .line 103
    new-instance v9, Lcom/amazon/whisperjoin/provisionerSDK/radios/RetryHandler;

    iget-object v2, v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransport;->mRetryExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v9, v1, v2}, Lcom/amazon/whisperjoin/provisionerSDK/radios/RetryHandler;-><init>(Lcom/amazon/whisperjoin/provisionerSDK/radios/PromiseFactory;Ljava/util/concurrent/ExecutorService;)V

    iget-wide v10, v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransport;->mOperationTimeout:J

    iget-object v12, v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransport;->mOperationTimeoutMs:Ljava/util/concurrent/TimeUnit;

    iget-wide v13, v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransport;->mOperationRetryCount:J

    const-string v15, "Connect"

    .line 104
    invoke-virtual/range {v9 .. v15}, Lcom/amazon/whisperjoin/provisionerSDK/radios/RetryHandler;->startAttempts(JLjava/util/concurrent/TimeUnit;JLjava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v1

    return-object v1
.end method

.method getConnectedClients(Landroid/bluetooth/BluetoothDevice;)Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEClients;
    .locals 3

    .line 229
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransport;->mBleClients:Ljava/util/Map;

    monitor-enter v0

    .line 230
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransport;->mBleClients:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEClients;

    if-eqz p1, :cond_0

    .line 232
    invoke-interface {p1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEClients;->getGattClient()Lcom/amazon/whisperbridge/ble/BleGattClient;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 233
    iget-object v2, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransport;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/amazon/whisperbridge/ble/BleGattClient;->isConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    monitor-exit v0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 237
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 238
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onProvisioningComplete(Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 176
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransport;->getClientsFromDeviceHandle(Ljava/lang/Object;)Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEClients;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 180
    invoke-interface {p1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEClients;->getGattClient()Lcom/amazon/whisperbridge/ble/BleGattClient;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 184
    invoke-virtual {p1, v0}, Lcom/amazon/whisperbridge/ble/BleGattClient;->enqueueRequestConnectionPriorityChange(I)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 185
    new-instance v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransport$1;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransport$1;-><init>(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransport;)V

    invoke-static {p1, v0}, Lcom/google/common/util/concurrent/Futures;->lazyTransform(Ljava/util/concurrent/Future;Lcom/google/common/base/Function;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1

    .line 182
    :cond_0
    new-instance p1, Lcom/amazon/whisperjoin/provisionerSDK/radios/error/TransportOperationRuntimeException;

    const-string v0, "No BLE gatt client exists for given BLEClient"

    invoke-direct {p1, v0}, Lcom/amazon/whisperjoin/provisionerSDK/radios/error/TransportOperationRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 178
    :cond_1
    new-instance p1, Lcom/amazon/whisperjoin/provisionerSDK/radios/error/TransportOperationRuntimeException;

    const-string v0, "No BLE client exists for given device handle"

    invoke-direct {p1, v0}, Lcom/amazon/whisperjoin/provisionerSDK/radios/error/TransportOperationRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sendCommand(Ljava/lang/Object;Lcom/amazon/whisperbridge/constants/Command;[B)Ljava/util/concurrent/Future;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/amazon/whisperbridge/constants/Command;",
            "[B)",
            "Ljava/util/concurrent/Future<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/RadioNotEnabledException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Send Command : "

    .line 139
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransport;->getConnectedClientsFromDeviceHandle(Ljava/lang/Object;)Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEClients;

    move-result-object p1

    .line 141
    :try_start_0
    invoke-interface {p1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEClients;->getServiceClient()Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;

    move-result-object p1

    .line 142
    new-instance v1, Lcom/amazon/whisperjoin/provisionerSDK/radios/GenericPromiseFactory;

    new-instance v2, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommand;

    iget-object v3, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransport;->mEncodingHelpers:Lcom/amazon/whisperjoin/common/sharedtypes/utility/EncodingHelpers;

    invoke-direct {v2, p1, p3, p2, v3}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommand;-><init>(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;[BLcom/amazon/whisperbridge/constants/Command;Lcom/amazon/whisperjoin/common/sharedtypes/utility/EncodingHelpers;)V

    iget-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransport;->mCommandExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2, p1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/GenericPromiseFactory;-><init>(Ljava/util/concurrent/Callable;Ljava/util/concurrent/ExecutorService;)V

    .line 144
    new-instance v3, Lcom/amazon/whisperjoin/provisionerSDK/radios/RetryHandler;

    iget-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransport;->mRetryExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v3, v1, p1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/RetryHandler;-><init>(Lcom/amazon/whisperjoin/provisionerSDK/radios/PromiseFactory;Ljava/util/concurrent/ExecutorService;)V

    iget-wide v4, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransport;->mOperationTimeout:J

    iget-object v6, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransport;->mOperationTimeoutMs:Ljava/util/concurrent/TimeUnit;

    iget-wide v7, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransport;->mOperationRetryCount:J

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 145
    invoke-virtual/range {v3 .. v9}, Lcom/amazon/whisperjoin/provisionerSDK/radios/RetryHandler;->startAttempts(JLjava/util/concurrent/TimeUnit;JLjava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 148
    new-instance p3, Lcom/amazon/whisperjoin/provisionerSDK/radios/error/TransportOperationRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/error/TransportOperationRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method

.method public setProvisionableEventNotificationCallback(Ljava/lang/Object;Lcom/amazon/whisperbridge/Transport$ProvisionableEventNotificationCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransport;->getConnectedClientsFromDeviceHandle(Ljava/lang/Object;)Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEClients;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEClients;->getServiceClient()Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;

    move-result-object p1

    .line 154
    new-instance v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/ProvisionableNotificationGattCharacteristicPendingUpdate;

    invoke-direct {v0, p2}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/ProvisionableNotificationGattCharacteristicPendingUpdate;-><init>(Lcom/amazon/whisperbridge/Transport$ProvisionableEventNotificationCallback;)V

    .line 155
    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;->addPendingUpdate(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicPendingUpdate;)V

    .line 156
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;->enableProvisionableEventNotifications()V

    return-void
.end method

.method public startProvisioning(Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/whisperbridge/ProvisioningStatus;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/RadioNotEnabledException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransport;->getConnectedClientsFromDeviceHandle(Ljava/lang/Object;)Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEClients;

    move-result-object p1

    .line 121
    :try_start_0
    new-instance v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/GenericPromiseFactory;

    new-instance v1, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/StartProvisioning;

    .line 122
    invoke-interface {p1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEClients;->getServiceClient()Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/StartProvisioning;-><init>(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;)V

    iget-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransport;->mCommandExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1, p1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/GenericPromiseFactory;-><init>(Ljava/util/concurrent/Callable;Ljava/util/concurrent/ExecutorService;)V

    .line 124
    new-instance v2, Lcom/amazon/whisperjoin/provisionerSDK/radios/RetryHandler;

    iget-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransport;->mRetryExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v2, v0, p1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/RetryHandler;-><init>(Lcom/amazon/whisperjoin/provisionerSDK/radios/PromiseFactory;Ljava/util/concurrent/ExecutorService;)V

    iget-wide v3, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransport;->mOperationTimeout:J

    iget-object v5, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransport;->mOperationTimeoutMs:Ljava/util/concurrent/TimeUnit;

    iget-wide v6, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransport;->mOperationRetryCount:J

    const-string v8, "Start Provisioning"

    .line 125
    invoke-virtual/range {v2 .. v8}, Lcom/amazon/whisperjoin/provisionerSDK/radios/RetryHandler;->startAttempts(JLjava/util/concurrent/TimeUnit;JLjava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 127
    new-instance v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/error/TransportOperationRuntimeException;

    const-string v1, "Start Provisioning"

    invoke-direct {v0, v1, p1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/error/TransportOperationRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
