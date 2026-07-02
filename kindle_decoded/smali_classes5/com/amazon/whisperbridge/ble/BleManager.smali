.class public Lcom/amazon/whisperbridge/ble/BleManager;
.super Ljava/lang/Object;
.source "BleManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BleManager"


# instance fields
.field mBleScanner:Lcom/amazon/whisperbridge/ble/BleScanner;

.field mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

.field mBtManager:Landroid/bluetooth/BluetoothManager;

.field mIsInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/amazon/whisperbridge/ble/BleManager;->mIsInitialized:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized connectToServer(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Lcom/amazon/whisperbridge/ble/BleGattClient$Callback;Z)Lcom/amazon/whisperbridge/ble/BleGattClient;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whisperbridge/ble/BluetoothDisabledException;
        }
    .end annotation

    monitor-enter p0

    .line 298
    :try_start_0
    sget-object v0, Lcom/amazon/whisperbridge/ble/BleManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectToServer with autoconnect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleManager;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 313
    invoke-static {}, Lcom/amazon/whisperbridge/ble/BleGattClientFactory;->getInstance()Lcom/amazon/whisperbridge/ble/BleGattClientFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/amazon/whisperbridge/ble/BleGattClientFactory;->createGattClient(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Lcom/amazon/whisperbridge/ble/BleGattClient$Callback;Z)Lcom/amazon/whisperbridge/ble/BleGattClient;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 310
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "callback cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 308
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "btDevice cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 306
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 301
    :cond_3
    new-instance p1, Lcom/amazon/whisperbridge/ble/BluetoothDisabledException;

    invoke-direct {p1}, Lcom/amazon/whisperbridge/ble/BluetoothDisabledException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized initializeBluetoothLE(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whisperbridge/ble/BleException;
        }
    .end annotation

    monitor-enter p0

    .line 68
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/whisperbridge/ble/BleManager;->mIsInitialized:Z

    if-nez v0, :cond_5

    if-eqz p1, :cond_4

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth_le"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "bluetooth"

    .line 80
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothManager;

    iput-object p1, p0, Lcom/amazon/whisperbridge/ble/BleManager;->mBtManager:Landroid/bluetooth/BluetoothManager;

    if-eqz p1, :cond_2

    .line 86
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperbridge/ble/BleManager;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const-string p1, ""

    .line 92
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 93
    sget-object p1, Lcom/amazon/whisperbridge/ble/BleManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Creating adapter for device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object p1, p0, Lcom/amazon/whisperbridge/ble/BleManager;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothAdapter;->setName(Ljava/lang/String;)Z

    :cond_0
    const/4 p1, 0x1

    .line 97
    iput-boolean p1, p0, Lcom/amazon/whisperbridge/ble/BleManager;->mIsInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    .line 88
    :cond_1
    :try_start_1
    new-instance p1, Lcom/amazon/whisperbridge/ble/BleException;

    const-string p2, "Unable to acquire Bluetooth adapter."

    invoke-direct {p1, p2}, Lcom/amazon/whisperbridge/ble/BleException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 82
    :cond_2
    new-instance p1, Lcom/amazon/whisperbridge/ble/BleException;

    const-string p2, "Unable to acquire Bluetooth system service."

    invoke-direct {p1, p2}, Lcom/amazon/whisperbridge/ble/BleException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 76
    :cond_3
    new-instance p1, Lcom/amazon/whisperbridge/ble/BleException;

    const-string p2, "No Bluetooth LE support."

    invoke-direct {p1, p2}, Lcom/amazon/whisperbridge/ble/BleException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "BleManager is already initialized."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isInitialized()Z
    .locals 1

    monitor-enter p0

    .line 52
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/whisperbridge/ble/BleManager;->mIsInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isScanning()Z
    .locals 1

    monitor-enter p0

    .line 392
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleManager;->mBleScanner:Lcom/amazon/whisperbridge/ble/BleScanner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startScanning(Lcom/amazon/whisperbridge/ble/BleScanner$Callback;Ljava/util/List;Landroid/bluetooth/le/ScanSettings;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperbridge/ble/BleScanner$Callback;",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Landroid/bluetooth/le/ScanSettings;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whisperbridge/ble/BleException;,
            Lcom/amazon/whisperbridge/ble/BluetoothDisabledException;
        }
    .end annotation

    monitor-enter p0

    .line 408
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleManager;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 413
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleManager;->mBleScanner:Lcom/amazon/whisperbridge/ble/BleScanner;

    if-nez v0, :cond_3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ne v2, v0, :cond_2

    .line 419
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleManager;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0, p1, p2, p3}, Lcom/amazon/whisperbridge/ble/BleScanner;->startScanning(Landroid/bluetooth/BluetoothAdapter;Lcom/amazon/whisperbridge/ble/BleScanner$Callback;Ljava/util/List;Landroid/bluetooth/le/ScanSettings;)Lcom/amazon/whisperbridge/ble/BleScanner;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperbridge/ble/BleManager;->mBleScanner:Lcom/amazon/whisperbridge/ble/BleScanner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    monitor-exit p0

    return-void

    .line 416
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "filters and settings must either both be null or neither is null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 414
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Only one Bluetooth LE scanner can be active at a time."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 409
    :cond_4
    new-instance p1, Lcom/amazon/whisperbridge/ble/BluetoothDisabledException;

    invoke-direct {p1}, Lcom/amazon/whisperbridge/ble/BluetoothDisabledException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stopScanning()V
    .locals 2

    monitor-enter p0

    .line 429
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleManager;->mBleScanner:Lcom/amazon/whisperbridge/ble/BleScanner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 434
    :try_start_1
    iget-object v1, p0, Lcom/amazon/whisperbridge/ble/BleManager;->mBleScanner:Lcom/amazon/whisperbridge/ble/BleScanner;

    invoke-virtual {v1}, Lcom/amazon/whisperbridge/ble/BleScanner;->stopScanning()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 436
    :try_start_2
    iput-object v0, p0, Lcom/amazon/whisperbridge/ble/BleManager;->mBleScanner:Lcom/amazon/whisperbridge/ble/BleScanner;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 438
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 436
    :try_start_3
    iput-object v0, p0, Lcom/amazon/whisperbridge/ble/BleManager;->mBleScanner:Lcom/amazon/whisperbridge/ble/BleScanner;

    .line 437
    throw v1

    .line 430
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot stop Bluetooth LE scanner as it does not exist."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
