.class public Lcom/amazon/whisperbridge/ble/BleGattServiceClient;
.super Ljava/lang/Object;
.source "BleGattServiceClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BleGattServiceClient"


# instance fields
.field protected mBleClient:Lcom/amazon/whisperbridge/ble/BleGattClient;

.field protected mBluetoothGattService:Landroid/bluetooth/BluetoothGattService;

.field protected final mBoundObjectsLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field protected final mCharacteristics:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;",
            ">;"
        }
    .end annotation
.end field

.field protected mExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mExecutorServiceFactory:Lcom/amazon/whisperbridge/ble/utility/ExecutorServiceFactory;

.field protected final mServiceUuid:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Ljava/util/UUID;)V
    .locals 1

    .line 62
    new-instance v0, Lcom/amazon/whisperbridge/ble/BleGattServiceClient$1;

    invoke-direct {v0}, Lcom/amazon/whisperbridge/ble/BleGattServiceClient$1;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;-><init>(Ljava/util/UUID;Lcom/amazon/whisperbridge/ble/utility/ExecutorServiceFactory;)V

    return-void
.end method

.method protected constructor <init>(Ljava/util/UUID;Lcom/amazon/whisperbridge/ble/utility/ExecutorServiceFactory;)V
    .locals 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->mCharacteristics:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->mBoundObjectsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 85
    iput-object p1, p0, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->mServiceUuid:Ljava/util/UUID;

    .line 86
    iput-object p2, p0, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->mExecutorServiceFactory:Lcom/amazon/whisperbridge/ble/utility/ExecutorServiceFactory;

    return-void

    .line 82
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "executorServiceFactory cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 80
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "uuid cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected bindClient(Lcom/amazon/whisperbridge/ble/BleGattClient;Landroid/bluetooth/BluetoothGattService;)V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->mBoundObjectsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->mBleClient:Lcom/amazon/whisperbridge/ble/BleGattClient;

    if-nez v0, :cond_2

    .line 188
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->mServiceUuid:Ljava/util/UUID;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    iput-object p1, p0, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->mBleClient:Lcom/amazon/whisperbridge/ble/BleGattClient;

    .line 193
    iput-object p2, p0, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->mBluetoothGattService:Landroid/bluetooth/BluetoothGattService;

    .line 194
    iget-object p1, p0, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->mExecutorServiceFactory:Lcom/amazon/whisperbridge/ble/utility/ExecutorServiceFactory;

    invoke-interface {p1}, Lcom/amazon/whisperbridge/ble/utility/ExecutorServiceFactory;->newExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 196
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 197
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->mCharacteristics:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-static {p2}, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;->createCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 200
    :cond_0
    iget-object p1, p0, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->mBoundObjectsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 189
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Service client UUID does not match BluetoothGattService UUID."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 187
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Service client is already bound to a gatt client."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 185
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "gattService cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 183
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "client cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 200
    iget-object p2, p0, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->mBoundObjectsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 201
    throw p1
.end method

.method public getBleGattCharacteristic(Ljava/util/UUID;)Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;
    .locals 1

    if-eqz p1, :cond_0

    .line 143
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->mBoundObjectsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->mCharacteristics:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->mBoundObjectsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->mBoundObjectsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 149
    throw p1

    .line 140
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "uuid cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getServiceUuid()Ljava/util/UUID;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->mServiceUuid:Ljava/util/UUID;

    return-object v0
.end method

.method protected onCharacteristicChanged(Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;)V
    .locals 2

    .line 413
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/whisperbridge/ble/BleGattServiceClient$2;

    invoke-direct {v1, p0, p1}, Lcom/amazon/whisperbridge/ble/BleGattServiceClient$2;-><init>(Lcom/amazon/whisperbridge/ble/BleGattServiceClient;Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method protected onCharacteristicUpdated(Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;)V
    .locals 0

    return-void
.end method

.method public readCharacteristic(Ljava/util/UUID;)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/whisperbridge/ble/command/BleReadCharacteristicCommand$Result;",
            ">;"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->mBoundObjectsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->mBleClient:Lcom/amazon/whisperbridge/ble/BleGattClient;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 247
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->mCharacteristics:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->mBleClient:Lcom/amazon/whisperbridge/ble/BleGattClient;

    iget-object v1, p0, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->mCharacteristics:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;

    invoke-virtual {p1}, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;->getBluetoothGattCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whisperbridge/ble/BleGattClient;->enqueueReadCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/util/concurrent/Future;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->mBoundObjectsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    .line 248
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service client does not contain characterstic with UUID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "uuid cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 244
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Service client is not bound to BleGattClient."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 252
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->mBoundObjectsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 253
    throw p1
.end method

.method protected unbindClient()V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->mBoundObjectsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->mBleClient:Lcom/amazon/whisperbridge/ble/BleGattClient;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v0, 0x0

    .line 221
    iput-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->mBleClient:Lcom/amazon/whisperbridge/ble/BleGattClient;

    .line 223
    iput-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 224
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->mCharacteristics:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->mBoundObjectsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 215
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Service client is not bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 226
    iget-object v1, p0, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->mBoundObjectsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 227
    throw v0
.end method

.method protected updateCharacteristicNotifiability(Ljava/util/UUID;ZZ)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "ZZ)",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/whisperbridge/ble/command/BleUpdateNotificationsCommand$Result;",
            ">;"
        }
    .end annotation

    .line 363
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->mBoundObjectsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->mBleClient:Lcom/amazon/whisperbridge/ble/BleGattClient;

    if-eqz v0, :cond_b

    if-eqz p1, :cond_a

    .line 373
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->mCharacteristics:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 375
    invoke-virtual {p0, p1}, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->getBleGattCharacteristic(Ljava/util/UUID;)Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;

    move-result-object v0

    sget-object v1, Lcom/amazon/whisperbridge/ble/BleConstants;->CLIENT_CHARACTERISTIC_CONFIGURATION_DESCRIPTOR_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;->containsBleDescriptor(Ljava/util/UUID;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz p2, :cond_1

    .line 377
    invoke-virtual {p0, p1}, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->getBleGattCharacteristic(Ljava/util/UUID;)Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;->isNotifiable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 378
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Characteristic is not notifiable."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p3, :cond_3

    .line 379
    invoke-virtual {p0, p1}, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->getBleGattCharacteristic(Ljava/util/UUID;)Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;->isIndicatable()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 380
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Characteristic is not indicatable."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 384
    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->getBleGattCharacteristic(Ljava/util/UUID;)Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;

    move-result-object p1

    .line 385
    sget-object v0, Lcom/amazon/whisperbridge/ble/BleConstants;->CLIENT_CHARACTERISTIC_CONFIGURATION_DESCRIPTOR_UUID:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;->getBleDescriptor(Ljava/util/UUID;)Lcom/amazon/whisperbridge/ble/BleGattDescriptor;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 389
    sget-object v1, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    aget-byte v1, v1, v0

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    or-int/2addr v1, v0

    int-to-byte v1, v1

    if-eqz p3, :cond_5

    .line 390
    sget-object v2, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_INDICATION_VALUE:[B

    aget-byte v2, v2, v0

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    or-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x2

    new-array v2, v2, [B

    aput-byte v1, v2, v0

    const/4 v1, 0x1

    aput-byte v0, v2, v1

    .line 392
    invoke-virtual {p1, v2}, Lcom/amazon/whisperbridge/ble/BleGattDescriptor;->setStoredData([B)V

    .line 394
    iget-object v2, p0, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->mBleClient:Lcom/amazon/whisperbridge/ble/BleGattClient;

    invoke-virtual {p1}, Lcom/amazon/whisperbridge/ble/BleGattDescriptor;->getBluetoothGattDescriptor()Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object p1

    if-nez p3, :cond_6

    if-eqz p2, :cond_7

    :cond_6
    const/4 v0, 0x1

    :cond_7
    invoke-virtual {v2, p1, v0}, Lcom/amazon/whisperbridge/ble/BleGattClient;->enqueueUpdateNotifications(Landroid/bluetooth/BluetoothGattDescriptor;Z)Ljava/util/concurrent/Future;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    iget-object p2, p0, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->mBoundObjectsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    .line 376
    :cond_8
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Characteristic does not support notifications or indications."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 374
    :cond_9
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Service client does not contain characteristic with UUID "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 372
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "characteristicUuid cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 370
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Service client is not bound to BleGattClient."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 396
    iget-object p2, p0, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->mBoundObjectsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 397
    throw p1
.end method

.method public writeCharacteristic(Ljava/util/UUID;)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/whisperbridge/ble/command/BleWriteCharacteristicCommand$Result;",
            ">;"
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->mBoundObjectsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->mBleClient:Lcom/amazon/whisperbridge/ble/BleGattClient;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 273
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->mCharacteristics:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->mBleClient:Lcom/amazon/whisperbridge/ble/BleGattClient;

    iget-object v1, p0, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->mCharacteristics:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;

    invoke-virtual {p1}, Lcom/amazon/whisperbridge/ble/BleGattCharacteristic;->getBluetoothGattCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whisperbridge/ble/BleGattClient;->enqueueWriteCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/util/concurrent/Future;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->mBoundObjectsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    .line 274
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service client does not contain characteristic with UUID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "uuid cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 270
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Service client is not bound to BleGattClient."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 279
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleGattServiceClient;->mBoundObjectsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 280
    throw p1
.end method
