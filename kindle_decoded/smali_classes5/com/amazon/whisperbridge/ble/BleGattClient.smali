.class public Lcom/amazon/whisperbridge/ble/BleGattClient;
.super Ljava/lang/Object;
.source "BleGattClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperbridge/ble/BleGattClient$BleGattCallback;,
        Lcom/amazon/whisperbridge/ble/BleGattClient$Callback;
    }
.end annotation


# static fields
.field private static final CONNECT_GATT_METHOD_NAME:Ljava/lang/String; = "connectGatt"

.field private static final TAG:Ljava/lang/String; = "com.amazon.whisperbridge.ble.BleGattClient"


# instance fields
.field private final mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

.field private final mCallback:Lcom/amazon/whisperbridge/ble/BleGattClient$Callback;

.field mClientCommandExecutor:Lcom/amazon/whisperbridge/ble/command/BleCommandExecutor;

.field private final mCommandLock:Ljava/util/concurrent/locks/Lock;

.field private final mCommandQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/amazon/whisperbridge/ble/command/BleCommand;",
            ">;"
        }
    .end annotation
.end field

.field private final mGattCallback:Lcom/amazon/whisperbridge/ble/BleGattClient$BleGattCallback;

.field private mMtu:I

.field private final mServiceClients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "Lcom/amazon/whisperbridge/ble/BleGattServiceClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceClientsLock:Ljava/util/concurrent/locks/ReadWriteLock;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/bluetooth/BluetoothDevice;Lcom/amazon/whisperbridge/ble/BleGattClient$Callback;Ljava/util/Queue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lcom/amazon/whisperbridge/ble/BleGattClient$Callback;",
            "Ljava/util/Queue<",
            "Lcom/amazon/whisperbridge/ble/command/BleCommand;",
            ">;)V"
        }
    .end annotation

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandLock:Ljava/util/concurrent/locks/Lock;

    .line 155
    new-instance v0, Lcom/amazon/whisperbridge/ble/BleGattClient$BleGattCallback;

    invoke-direct {v0, p0}, Lcom/amazon/whisperbridge/ble/BleGattClient$BleGattCallback;-><init>(Lcom/amazon/whisperbridge/ble/BleGattClient;)V

    iput-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mGattCallback:Lcom/amazon/whisperbridge/ble/BleGattClient$BleGattCallback;

    const/16 v0, 0x17

    .line 156
    iput v0, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mMtu:I

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mServiceClients:Ljava/util/Map;

    .line 159
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mServiceClientsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 174
    invoke-static {}, Lcom/amazon/whisperbridge/ble/DaggerBleGattClientComponent;->create()Lcom/amazon/whisperbridge/ble/BleGattClientComponent;

    move-result-object v0

    .line 175
    invoke-interface {v0, p0}, Lcom/amazon/whisperbridge/ble/BleGattClientComponent;->inject(Lcom/amazon/whisperbridge/ble/BleGattClient;)V

    .line 177
    iput-object p1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 178
    iput-object p2, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCallback:Lcom/amazon/whisperbridge/ble/BleGattClient$Callback;

    .line 179
    iput-object p3, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandQueue:Ljava/util/Queue;

    return-void
.end method

.method private performSanityCheck(Landroid/bluetooth/BluetoothGatt;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/AssertionError;
        }
    .end annotation

    .line 984
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-ne v0, p1, :cond_1

    .line 987
    iget-object p1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 988
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "mCommandQueue unexpectedly empty."

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 985
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Callback GATT does not match client GATT."

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method


# virtual methods
.method public bindServiceClient(Lcom/amazon/whisperbridge/ble/BleGattServiceClient;)Z
    .locals 3

    .line 353
    sget-object v0, Lcom/amazon/whisperbridge/ble/BleGattClient;->TAG:Ljava/lang/String;

    const-string v1, "bindServiceClient"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    .line 361
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1}, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->getServiceUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 366
    :cond_0
    iget-object v1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mServiceClientsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 370
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mServiceClients:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->getServiceUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 371
    iget-object v1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mServiceClients:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->getServiceUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;

    invoke-virtual {v1}, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->unbindClient()V

    .line 375
    :cond_1
    invoke-virtual {p1, p0, v0}, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->bindClient(Lcom/amazon/whisperbridge/ble/BleGattClient;Landroid/bluetooth/BluetoothGattService;)V

    .line 376
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mServiceClients:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->getServiceUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    iget-object p1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mServiceClientsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mServiceClientsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 379
    throw p1

    .line 357
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "serviceClient cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 2

    .line 208
    sget-object v0, Lcom/amazon/whisperbridge/ble/BleGattClient;->TAG:Ljava/lang/String;

    const-string v1, "close"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 216
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 220
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 221
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 224
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mServiceClientsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 227
    :try_start_1
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mServiceClients:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;

    .line 228
    invoke-virtual {v1}, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->unbindClient()V

    goto :goto_0

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mServiceClients:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mServiceClientsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mServiceClientsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 234
    throw v0

    :catchall_1
    move-exception v0

    .line 216
    iget-object v1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 217
    throw v0
.end method

.method public enqueueDiscoverServices()Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/whisperbridge/ble/command/BleDiscoverServicesCommand$Result;",
            ">;"
        }
    .end annotation

    .line 574
    sget-object v0, Lcom/amazon/whisperbridge/ble/BleGattClient;->TAG:Ljava/lang/String;

    const-string v1, "enqueueDiscoverServices"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 579
    :try_start_0
    new-instance v0, Lcom/amazon/whisperbridge/ble/command/BleDiscoverServicesCommand;

    iget-object v1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-direct {v0, v1}, Lcom/amazon/whisperbridge/ble/command/BleDiscoverServicesCommand;-><init>(Landroid/bluetooth/BluetoothGatt;)V

    .line 580
    iget-object v1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 582
    iget-object v1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mClientCommandExecutor:Lcom/amazon/whisperbridge/ble/command/BleCommandExecutor;

    invoke-virtual {v1, v0}, Lcom/amazon/whisperbridge/ble/command/BleCommandExecutor;->executeCommand(Lcom/amazon/whisperbridge/ble/command/BleCommand;)Ljava/util/concurrent/Future;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 584
    iget-object v1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 585
    throw v0
.end method

.method protected enqueueReadCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/whisperbridge/ble/command/BleReadCharacteristicCommand$Result;",
            ">;"
        }
    .end annotation

    .line 446
    sget-object v0, Lcom/amazon/whisperbridge/ble/BleGattClient;->TAG:Ljava/lang/String;

    const-string v1, "enqueueReadCharacteristic"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 453
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 456
    :try_start_0
    new-instance v0, Lcom/amazon/whisperbridge/ble/command/BleReadCharacteristicCommand;

    iget-object v1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-direct {v0, v1, p1}, Lcom/amazon/whisperbridge/ble/command/BleReadCharacteristicCommand;-><init>(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 457
    iget-object p1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandQueue:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 458
    sget-object p1, Lcom/amazon/whisperbridge/ble/BleGattClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added command to queue. Attempting to execute command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/amazon/whisperbridge/ble/command/BleReadCharacteristicCommand;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object p1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mClientCommandExecutor:Lcom/amazon/whisperbridge/ble/command/BleCommandExecutor;

    invoke-virtual {p1, v0}, Lcom/amazon/whisperbridge/ble/command/BleCommandExecutor;->executeCommand(Lcom/amazon/whisperbridge/ble/command/BleCommand;)Ljava/util/concurrent/Future;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 463
    throw p1

    .line 450
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "characteristic unexpectedly null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public enqueueRequestConnectionPriorityChange(I)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 651
    sget-object v0, Lcom/amazon/whisperbridge/ble/BleGattClient;->TAG:Ljava/lang/String;

    const-string v1, "enqueueRequestConnectionPriorityChange"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 654
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported connection priority specified."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 657
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 660
    :try_start_0
    new-instance v0, Lcom/amazon/whisperbridge/ble/command/BleChangeConnectionPriorityCommand;

    iget-object v1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mGattCallback:Lcom/amazon/whisperbridge/ble/BleGattClient$BleGattCallback;

    iget-object v2, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-direct {v0, v1, v2, p1}, Lcom/amazon/whisperbridge/ble/command/BleChangeConnectionPriorityCommand;-><init>(Lcom/amazon/whisperbridge/ble/BleGattClient$BleGattCallback;Landroid/bluetooth/BluetoothGatt;I)V

    .line 661
    iget-object p1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandQueue:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 663
    iget-object p1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mClientCommandExecutor:Lcom/amazon/whisperbridge/ble/command/BleCommandExecutor;

    invoke-virtual {p1, v0}, Lcom/amazon/whisperbridge/ble/command/BleCommandExecutor;->executeCommand(Lcom/amazon/whisperbridge/ble/command/BleCommand;)Ljava/util/concurrent/Future;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 665
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 666
    throw p1
.end method

.method public enqueueRequestMtuChange(I)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/whisperbridge/ble/command/BleChangeMtuCommand$Result;",
            ">;"
        }
    .end annotation

    .line 620
    sget-object v0, Lcom/amazon/whisperbridge/ble/BleGattClient;->TAG:Ljava/lang/String;

    const-string v1, "enqueueRequestMtuChange"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_1

    const/16 v0, 0x200

    if-gt p1, v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 631
    :try_start_0
    new-instance v0, Lcom/amazon/whisperbridge/ble/command/BleChangeMtuCommand;

    iget-object v1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-direct {v0, v1, p1}, Lcom/amazon/whisperbridge/ble/command/BleChangeMtuCommand;-><init>(Landroid/bluetooth/BluetoothGatt;I)V

    .line 632
    iget-object p1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandQueue:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 634
    iget-object p1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mClientCommandExecutor:Lcom/amazon/whisperbridge/ble/command/BleCommandExecutor;

    invoke-virtual {p1, v0}, Lcom/amazon/whisperbridge/ble/command/BleCommandExecutor;->executeCommand(Lcom/amazon/whisperbridge/ble/command/BleCommand;)Ljava/util/concurrent/Future;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 636
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 637
    throw p1

    .line 625
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mtu cannot be larger than the maximum Bluetooth LE MTU of 512 bytes."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 623
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mtu cannot be smaller than the minimum Bluetooth LE MTU of 23 bytes."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected enqueueUpdateNotifications(Landroid/bluetooth/BluetoothGattDescriptor;Z)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothGattDescriptor;",
            "Z)",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/whisperbridge/ble/command/BleUpdateNotificationsCommand$Result;",
            ">;"
        }
    .end annotation

    .line 549
    sget-object v0, Lcom/amazon/whisperbridge/ble/BleGattClient;->TAG:Ljava/lang/String;

    const-string v1, "enqueueUpdateNotifications"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 556
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 559
    :try_start_0
    new-instance v0, Lcom/amazon/whisperbridge/ble/command/BleUpdateNotificationsCommand;

    iget-object v1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-direct {v0, v1, p1, p2}, Lcom/amazon/whisperbridge/ble/command/BleUpdateNotificationsCommand;-><init>(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;Z)V

    .line 560
    iget-object p1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandQueue:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 562
    iget-object p1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mClientCommandExecutor:Lcom/amazon/whisperbridge/ble/command/BleCommandExecutor;

    invoke-virtual {p1, v0}, Lcom/amazon/whisperbridge/ble/command/BleCommandExecutor;->executeCommand(Lcom/amazon/whisperbridge/ble/command/BleCommand;)Ljava/util/concurrent/Future;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 564
    iget-object p2, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 565
    throw p1

    .line 553
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "descriptor unexpectedly null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected enqueueWriteCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/whisperbridge/ble/command/BleWriteCharacteristicCommand$Result;",
            ">;"
        }
    .end annotation

    .line 472
    sget-object v0, Lcom/amazon/whisperbridge/ble/BleGattClient;->TAG:Ljava/lang/String;

    const-string v1, "enqueueWriteCharacteristic"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 479
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 482
    :try_start_0
    new-instance v0, Lcom/amazon/whisperbridge/ble/command/BleWriteCharacteristicCommand;

    iget-object v1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-direct {v0, v1, p1}, Lcom/amazon/whisperbridge/ble/command/BleWriteCharacteristicCommand;-><init>(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 483
    iget-object p1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandQueue:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 485
    iget-object p1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mClientCommandExecutor:Lcom/amazon/whisperbridge/ble/command/BleCommandExecutor;

    invoke-virtual {p1, v0}, Lcom/amazon/whisperbridge/ble/command/BleCommandExecutor;->executeCommand(Lcom/amazon/whisperbridge/ble/command/BleCommand;)Ljava/util/concurrent/Future;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 488
    throw p1

    .line 476
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "characteristic unexpectedly null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method final getGattCallback()Lcom/amazon/whisperbridge/ble/BleGattClient$BleGattCallback;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mGattCallback:Lcom/amazon/whisperbridge/ble/BleGattClient$BleGattCallback;

    return-object v0
.end method

.method public getMtu()I
    .locals 1

    .line 200
    iget v0, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mMtu:I

    return v0
.end method

.method public final getServiceClient(Ljava/util/UUID;)Lcom/amazon/whisperbridge/ble/BleGattServiceClient;
    .locals 3

    .line 326
    sget-object v0, Lcom/amazon/whisperbridge/ble/BleGattClient;->TAG:Ljava/lang/String;

    const-string v1, "getServiceClient"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 331
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mServiceClients:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mServiceClientsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 338
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mServiceClients:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mServiceClientsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mServiceClientsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 341
    throw p1

    .line 332
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No service client with uuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "uuid cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final isConnected(Landroid/content/Context;)Z
    .locals 2

    .line 244
    sget-object v0, Lcom/amazon/whisperbridge/ble/BleGattClient;->TAG:Ljava/lang/String;

    const-string v1, "isConnected"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    const-string v0, "bluetooth"

    .line 252
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothManager;

    if-eqz p1, :cond_1

    .line 257
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Landroid/bluetooth/BluetoothManager;->getConnectionState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 254
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Could not retrieve BluetoothManager from Context. Ensure you are passing the correct context."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 248
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "context cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2

    .line 894
    sget-object p1, Lcom/amazon/whisperbridge/ble/BleGattClient;->TAG:Ljava/lang/String;

    const-string v0, "onCharacteristicChanged"

    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    iget-object p1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mServiceClientsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 900
    :try_start_0
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whisperbridge/ble/BleGattClient;->getServiceClient(Ljava/util/UUID;)Lcom/amazon/whisperbridge/ble/BleGattServiceClient;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 908
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->getBleGattCharacteristic(Ljava/util/UUID;)Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;

    move-result-object v0

    .line 909
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;->setStoredData([B)V

    .line 912
    invoke-virtual {p1, v0}, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->onCharacteristicChanged(Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;)V

    goto :goto_0

    .line 904
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Client does not contain service-client="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 915
    :try_start_1
    sget-object p2, Lcom/amazon/whisperbridge/ble/BleGattClient;->TAG:Ljava/lang/String;

    const-string v0, "IllegalArgumentException: "

    invoke-static {p2, v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 917
    :goto_0
    iget-object p1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mServiceClientsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_1
    iget-object p2, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mServiceClientsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 918
    throw p1
.end method

.method final onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 1

    .line 779
    sget-object p2, Lcom/amazon/whisperbridge/ble/BleGattClient;->TAG:Ljava/lang/String;

    const-string v0, "onCharacteristicRead"

    invoke-static {p2, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    iget-object p2, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 784
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/whisperbridge/ble/BleGattClient;->performSanityCheck(Landroid/bluetooth/BluetoothGatt;)V

    .line 786
    iget-object p1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/amazon/whisperbridge/ble/command/BleReadCharacteristicCommand;

    if-eqz p1, :cond_0

    .line 789
    iget-object p1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperbridge/ble/command/BleReadCharacteristicCommand;

    .line 790
    new-instance p2, Lcom/amazon/whisperbridge/ble/command/BleReadCharacteristicCommand$Result;

    invoke-direct {p2, p3}, Lcom/amazon/whisperbridge/ble/command/BleReadCharacteristicCommand$Result;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/amazon/whisperbridge/ble/command/BleCommand;->update(Ljava/lang/Object;)V

    goto :goto_0

    .line 787
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Next command in queue is unexpectedly of wrong type."

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 793
    :try_start_1
    sget-object p2, Lcom/amazon/whisperbridge/ble/BleGattClient;->TAG:Ljava/lang/String;

    const-string p3, "AssertionError: "

    invoke-static {p2, p3, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 795
    :goto_0
    iget-object p1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_1
    iget-object p2, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 796
    throw p1
.end method

.method final onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 1

    .line 806
    sget-object p2, Lcom/amazon/whisperbridge/ble/BleGattClient;->TAG:Ljava/lang/String;

    const-string v0, "onCharacteristicWrite"

    invoke-static {p2, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    iget-object p2, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 811
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/whisperbridge/ble/BleGattClient;->performSanityCheck(Landroid/bluetooth/BluetoothGatt;)V

    .line 813
    iget-object p1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/amazon/whisperbridge/ble/command/BleWriteCharacteristicCommand;

    if-eqz p1, :cond_0

    .line 816
    iget-object p1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperbridge/ble/command/BleWriteCharacteristicCommand;

    .line 817
    new-instance p2, Lcom/amazon/whisperbridge/ble/command/BleWriteCharacteristicCommand$Result;

    invoke-direct {p2, p3}, Lcom/amazon/whisperbridge/ble/command/BleWriteCharacteristicCommand$Result;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/amazon/whisperbridge/ble/command/BleCommand;->update(Ljava/lang/Object;)V

    goto :goto_0

    .line 814
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Next command in queue is unexpectedly of wrong type."

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 820
    :try_start_1
    sget-object p2, Lcom/amazon/whisperbridge/ble/BleGattClient;->TAG:Ljava/lang/String;

    const-string p3, "AssertionError: "

    invoke-static {p2, p3, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 822
    :goto_0
    iget-object p1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_1
    iget-object p2, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 823
    throw p1
.end method

.method final onConnectionPriorityChange(Landroid/bluetooth/BluetoothGatt;Z)V
    .locals 1

    .line 712
    sget-object p2, Lcom/amazon/whisperbridge/ble/BleGattClient;->TAG:Ljava/lang/String;

    const-string v0, "onConnectionPriorityChange"

    invoke-static {p2, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iget-object p2, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 717
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/whisperbridge/ble/BleGattClient;->performSanityCheck(Landroid/bluetooth/BluetoothGatt;)V

    .line 719
    iget-object p1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/amazon/whisperbridge/ble/command/BleChangeConnectionPriorityCommand;

    if-eqz p1, :cond_0

    .line 722
    iget-object p1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    goto :goto_0

    .line 720
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Next command in queue is unexpectedly of wrong type."

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 725
    :try_start_1
    sget-object p2, Lcom/amazon/whisperbridge/ble/BleGattClient;->TAG:Ljava/lang/String;

    const-string v0, "AssertionError: "

    invoke-static {p2, v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 727
    :goto_0
    iget-object p1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_1
    iget-object p2, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 728
    throw p1
.end method

.method final onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 1

    .line 692
    sget-object p1, Lcom/amazon/whisperbridge/ble/BleGattClient;->TAG:Ljava/lang/String;

    const-string v0, "onConnectionStateChange"

    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget-object p1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCallback:Lcom/amazon/whisperbridge/ble/BleGattClient$Callback;

    invoke-interface {p1, p0, p2, p3}, Lcom/amazon/whisperbridge/ble/BleGattClient$Callback;->onConnectionStateChanged(Lcom/amazon/whisperbridge/ble/BleGattClient;II)V

    .line 699
    iget-object p1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz p1, :cond_0

    if-nez p3, :cond_0

    if-eqz p2, :cond_0

    .line 700
    sget-object p1, Lcom/amazon/whisperbridge/ble/BleGattClient;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Closing BLE gatt connection for unexpected disconnection with status:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iget-object p1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    :cond_0
    return-void
.end method

.method final onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 1

    .line 833
    sget-object p2, Lcom/amazon/whisperbridge/ble/BleGattClient;->TAG:Ljava/lang/String;

    const-string v0, "onDescriptorRead"

    invoke-static {p2, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    iget-object p2, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 838
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/whisperbridge/ble/BleGattClient;->performSanityCheck(Landroid/bluetooth/BluetoothGatt;)V

    .line 840
    iget-object p1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/amazon/whisperbridge/ble/command/BleReadDescriptorCommand;

    if-eqz p1, :cond_0

    .line 843
    iget-object p1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperbridge/ble/command/BleReadDescriptorCommand;

    .line 844
    new-instance p2, Lcom/amazon/whisperbridge/ble/command/BleReadDescriptorCommand$Result;

    invoke-direct {p2, p3}, Lcom/amazon/whisperbridge/ble/command/BleReadDescriptorCommand$Result;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/amazon/whisperbridge/ble/command/BleCommand;->update(Ljava/lang/Object;)V

    goto :goto_0

    .line 841
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Next command in queue is unexpectedly of wrong type."

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 847
    :try_start_1
    sget-object p2, Lcom/amazon/whisperbridge/ble/BleGattClient;->TAG:Ljava/lang/String;

    const-string p3, "AssertionError: "

    invoke-static {p2, p3, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 849
    :goto_0
    iget-object p1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_1
    iget-object p2, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 850
    throw p1
.end method

.method final onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 1

    .line 860
    sget-object p2, Lcom/amazon/whisperbridge/ble/BleGattClient;->TAG:Ljava/lang/String;

    const-string v0, "onDescriptorWrite"

    invoke-static {p2, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    iget-object p2, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 865
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/whisperbridge/ble/BleGattClient;->performSanityCheck(Landroid/bluetooth/BluetoothGatt;)V

    .line 869
    iget-object p1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/amazon/whisperbridge/ble/command/BleWriteDescriptorCommand;

    if-eqz p1, :cond_0

    .line 870
    iget-object p1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperbridge/ble/command/BleWriteDescriptorCommand;

    .line 871
    new-instance p2, Lcom/amazon/whisperbridge/ble/command/BleWriteDescriptorCommand$Result;

    invoke-direct {p2, p3}, Lcom/amazon/whisperbridge/ble/command/BleWriteDescriptorCommand$Result;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/amazon/whisperbridge/ble/command/BleCommand;->update(Ljava/lang/Object;)V

    goto :goto_0

    .line 872
    :cond_0
    iget-object p1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/amazon/whisperbridge/ble/command/BleUpdateNotificationsCommand;

    if-eqz p1, :cond_1

    .line 873
    iget-object p1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperbridge/ble/command/BleUpdateNotificationsCommand;

    .line 874
    new-instance p2, Lcom/amazon/whisperbridge/ble/command/BleUpdateNotificationsCommand$Result;

    invoke-direct {p2, p3}, Lcom/amazon/whisperbridge/ble/command/BleUpdateNotificationsCommand$Result;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/amazon/whisperbridge/ble/command/BleCommand;->update(Ljava/lang/Object;)V

    goto :goto_0

    .line 876
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Next command in queue is unexpectedly of wrong type."

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 880
    :try_start_1
    sget-object p2, Lcom/amazon/whisperbridge/ble/BleGattClient;->TAG:Ljava/lang/String;

    const-string p3, "AssertionError: "

    invoke-static {p2, p3, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 882
    :goto_0
    iget-object p1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_1
    iget-object p2, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 883
    throw p1
.end method

.method final onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 2

    .line 932
    sget-object v0, Lcom/amazon/whisperbridge/ble/BleGattClient;->TAG:Ljava/lang/String;

    const-string v1, "onMtuChanged"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 937
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/whisperbridge/ble/BleGattClient;->performSanityCheck(Landroid/bluetooth/BluetoothGatt;)V

    .line 939
    iget-object p1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/amazon/whisperbridge/ble/command/BleChangeMtuCommand;

    if-eqz p1, :cond_0

    .line 942
    iget-object p1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperbridge/ble/command/BleChangeMtuCommand;

    .line 943
    new-instance v0, Lcom/amazon/whisperbridge/ble/command/BleChangeMtuCommand$Result;

    invoke-direct {v0, p2, p3}, Lcom/amazon/whisperbridge/ble/command/BleChangeMtuCommand$Result;-><init>(II)V

    invoke-virtual {p1, v0}, Lcom/amazon/whisperbridge/ble/command/BleCommand;->update(Ljava/lang/Object;)V

    if-nez p3, :cond_1

    .line 946
    iput p2, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mMtu:I

    goto :goto_0

    .line 940
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Next command in queue is unexpectedly of wrong type."

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 950
    :try_start_1
    sget-object p2, Lcom/amazon/whisperbridge/ble/BleGattClient;->TAG:Ljava/lang/String;

    const-string p3, "AssertionError: "

    invoke-static {p2, p3, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 952
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_1
    iget-object p2, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 953
    throw p1
.end method

.method final onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 2

    .line 963
    sget-object v0, Lcom/amazon/whisperbridge/ble/BleGattClient;->TAG:Ljava/lang/String;

    const-string v1, "onReadRemoteRssi"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 968
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/whisperbridge/ble/BleGattClient;->performSanityCheck(Landroid/bluetooth/BluetoothGatt;)V

    .line 970
    iget-object p1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/amazon/whisperbridge/ble/command/BleReadRssiCommand;

    if-eqz p1, :cond_0

    .line 973
    iget-object p1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperbridge/ble/command/BleReadRssiCommand;

    .line 974
    new-instance v0, Lcom/amazon/whisperbridge/ble/command/BleReadRssiCommand$Result;

    invoke-direct {v0, p2, p3}, Lcom/amazon/whisperbridge/ble/command/BleReadRssiCommand$Result;-><init>(II)V

    invoke-virtual {p1, v0}, Lcom/amazon/whisperbridge/ble/command/BleCommand;->update(Ljava/lang/Object;)V

    goto :goto_0

    .line 971
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Next command in queue is unexpectedly of wrong type."

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 977
    :try_start_1
    sget-object p2, Lcom/amazon/whisperbridge/ble/BleGattClient;->TAG:Ljava/lang/String;

    const-string p3, "AssertionError: "

    invoke-static {p2, p3, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 979
    :goto_0
    iget-object p1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_1
    iget-object p2, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 980
    throw p1
.end method

.method final onReliableWriteCompleted(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 0

    return-void
.end method

.method final onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 2

    .line 742
    sget-object v0, Lcom/amazon/whisperbridge/ble/BleGattClient;->TAG:Ljava/lang/String;

    const-string v1, "onServicesDiscovered"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 747
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/whisperbridge/ble/BleGattClient;->performSanityCheck(Landroid/bluetooth/BluetoothGatt;)V

    .line 749
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/amazon/whisperbridge/ble/command/BleDiscoverServicesCommand;

    if-eqz v0, :cond_2

    .line 754
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object p1

    .line 755
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattService;

    .line 756
    new-instance v1, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;-><init>(Ljava/util/UUID;)V

    invoke-virtual {p0, v1}, Lcom/amazon/whisperbridge/ble/BleGattClient;->bindServiceClient(Lcom/amazon/whisperbridge/ble/BleGattServiceClient;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 758
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Service client unexpectedly failed to bind."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 762
    :cond_1
    iget-object p1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperbridge/ble/command/BleDiscoverServicesCommand;

    .line 763
    new-instance v0, Lcom/amazon/whisperbridge/ble/command/BleDiscoverServicesCommand$Result;

    invoke-direct {v0, p2}, Lcom/amazon/whisperbridge/ble/command/BleDiscoverServicesCommand$Result;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/amazon/whisperbridge/ble/command/BleCommand;->update(Ljava/lang/Object;)V

    goto :goto_1

    .line 750
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Next command in queue is unexpectedly of wrong type."

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 766
    :try_start_1
    sget-object p2, Lcom/amazon/whisperbridge/ble/BleGattClient;->TAG:Ljava/lang/String;

    const-string v0, "AssertionError: "

    invoke-static {p2, v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 768
    :goto_1
    iget-object p1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_2
    iget-object p2, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mCommandLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 769
    throw p1
.end method

.method final setBluetoothGatt(Landroid/bluetooth/BluetoothGatt;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/amazon/whisperbridge/ble/BleGattClient;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-void
.end method
