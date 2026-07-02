.class Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/CreateConnection;
.super Ljava/lang/Object;
.source "CreateConnection.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final mBleManager:Lcom/amazon/whisperbridge/ble/BleManager;

.field final mClientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEClients;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectionStateChangedListener:Lcom/amazon/whisperbridge/Transport$DeviceConnectionStateChangedListener;

.field final mContext:Landroid/content/Context;

.field final mDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public constructor <init>(Lcom/amazon/whisperbridge/ble/BleManager;Ljava/util/Map;Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Lcom/amazon/whisperbridge/Transport$DeviceConnectionStateChangedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperbridge/ble/BleManager;",
            "Ljava/util/Map<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEClients;",
            ">;",
            "Landroid/content/Context;",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lcom/amazon/whisperbridge/Transport$DeviceConnectionStateChangedListener;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    if-eqz p4, :cond_1

    if-eqz p5, :cond_0

    .line 40
    iput-object p2, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/CreateConnection;->mClientMap:Ljava/util/Map;

    .line 41
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/CreateConnection;->mBleManager:Lcom/amazon/whisperbridge/ble/BleManager;

    .line 42
    iput-object p3, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/CreateConnection;->mContext:Landroid/content/Context;

    .line 43
    iput-object p4, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/CreateConnection;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 44
    iput-object p5, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/CreateConnection;->mConnectionStateChangedListener:Lcom/amazon/whisperbridge/Transport$DeviceConnectionStateChangedListener;

    return-void

    .line 38
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "deviceEventCallback can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "device can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "clientMap can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 34
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bleManager can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public call()Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v1, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/PrepareEstablishedConnection;

    iget-object v2, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/CreateConnection;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/PrepareEstablishedConnection;-><init>(Landroid/content/Context;)V

    .line 50
    new-instance v2, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;

    iget-object v3, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/CreateConnection;->mConnectionStateChangedListener:Lcom/amazon/whisperbridge/Transport$DeviceConnectionStateChangedListener;

    invoke-direct {v2, v1, v0, v3}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;-><init>(Ljava/util/concurrent/Callable;Ljava/lang/Object;Lcom/amazon/whisperbridge/Transport$DeviceConnectionStateChangedListener;)V

    .line 51
    new-instance v3, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;

    invoke-direct {v3}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;-><init>()V

    .line 59
    monitor-enter v0

    .line 60
    :try_start_0
    iget-object v4, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/CreateConnection;->mBleManager:Lcom/amazon/whisperbridge/ble/BleManager;

    iget-object v5, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/CreateConnection;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/CreateConnection;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v2, v7}, Lcom/amazon/whisperbridge/ble/BleManager;->connectToServer(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Lcom/amazon/whisperbridge/ble/BleGattClient$Callback;Z)Lcom/amazon/whisperbridge/ble/BleGattClient;

    move-result-object v4

    .line 63
    new-instance v5, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/CreateConnection$1;

    invoke-direct {v5, p0, v3, v4}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/CreateConnection$1;-><init>(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/CreateConnection;Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;Lcom/amazon/whisperbridge/ble/BleGattClient;)V

    .line 69
    invoke-virtual {v1, v4, v3}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/PrepareEstablishedConnection;->setBleClients(Lcom/amazon/whisperbridge/ble/BleGattClient;Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattCharacteristicClient;)V

    .line 70
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 71
    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/CreateConnection;->mClientMap:Ljava/util/Map;

    monitor-enter v1

    .line 72
    :try_start_1
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/CreateConnection;->mClientMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/CreateConnection;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 70
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/CreateConnection;->call()Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/GattClientCallback;

    move-result-object v0

    return-object v0
.end method
