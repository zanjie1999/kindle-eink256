.class public Lcom/amazon/whisperbridge/ble/BleScanner;
.super Ljava/lang/Object;
.source "BleScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperbridge/ble/BleScanner$BLEScanCallback;,
        Lcom/amazon/whisperbridge/ble/BleScanner$Callback;,
        Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BleScanner"


# instance fields
.field mBluetootLeScanCallback:Landroid/bluetooth/le/ScanCallback;

.field mBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

.field final mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

.field final mCallback:Lcom/amazon/whisperbridge/ble/BleScanner$Callback;

.field mLegacyScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/bluetooth/BluetoothAdapter;Lcom/amazon/whisperbridge/ble/BleScanner$Callback;)V
    .locals 0

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    iput-object p1, p0, Lcom/amazon/whisperbridge/ble/BleScanner;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 295
    iput-object p2, p0, Lcom/amazon/whisperbridge/ble/BleScanner;->mCallback:Lcom/amazon/whisperbridge/ble/BleScanner$Callback;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 33
    sget-object v0, Lcom/amazon/whisperbridge/ble/BleScanner;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static createLegacyScanner(Landroid/bluetooth/BluetoothAdapter;Lcom/amazon/whisperbridge/ble/BleScanner$Callback;)Lcom/amazon/whisperbridge/ble/BleScanner;
    .locals 2

    .line 173
    new-instance v0, Lcom/amazon/whisperbridge/ble/BleScanner;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whisperbridge/ble/BleScanner;-><init>(Landroid/bluetooth/BluetoothAdapter;Lcom/amazon/whisperbridge/ble/BleScanner$Callback;)V

    .line 174
    new-instance v1, Lcom/amazon/whisperbridge/ble/BleScanner$1;

    invoke-direct {v1, v0}, Lcom/amazon/whisperbridge/ble/BleScanner$1;-><init>(Lcom/amazon/whisperbridge/ble/BleScanner;)V

    iput-object v1, v0, Lcom/amazon/whisperbridge/ble/BleScanner;->mLegacyScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 181
    invoke-virtual {p0, v1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 183
    sget-object p0, Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;->SCAN_FAILED_INTERNAL_ERROR:Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;

    invoke-interface {p1, p0}, Lcom/amazon/whisperbridge/ble/BleScanner$Callback;->onScanError(Lcom/amazon/whisperbridge/ble/BleScanner$ScanError;)V

    :cond_0
    return-object v0
.end method

.method private static createScanner(Landroid/bluetooth/BluetoothAdapter;Lcom/amazon/whisperbridge/ble/BleScanner$Callback;Ljava/util/List;Landroid/bluetooth/le/ScanSettings;)Lcom/amazon/whisperbridge/ble/BleScanner;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothAdapter;",
            "Lcom/amazon/whisperbridge/ble/BleScanner$Callback;",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Landroid/bluetooth/le/ScanSettings;",
            ")",
            "Lcom/amazon/whisperbridge/ble/BleScanner;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whisperbridge/ble/BleException;
        }
    .end annotation

    .line 203
    sget-object v0, Lcom/amazon/whisperbridge/ble/BleScanner;->TAG:Ljava/lang/String;

    const-string v1, "Create Scanner"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    new-instance v0, Lcom/amazon/whisperbridge/ble/BleScanner;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whisperbridge/ble/BleScanner;-><init>(Landroid/bluetooth/BluetoothAdapter;Lcom/amazon/whisperbridge/ble/BleScanner$Callback;)V

    .line 207
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object p0

    iput-object p0, v0, Lcom/amazon/whisperbridge/ble/BleScanner;->mBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-eqz p0, :cond_1

    .line 213
    new-instance p0, Lcom/amazon/whisperbridge/ble/BleScanner$BLEScanCallback;

    invoke-direct {p0, v0, p1}, Lcom/amazon/whisperbridge/ble/BleScanner$BLEScanCallback;-><init>(Lcom/amazon/whisperbridge/ble/BleScanner;Lcom/amazon/whisperbridge/ble/BleScanner$Callback;)V

    iput-object p0, v0, Lcom/amazon/whisperbridge/ble/BleScanner;->mBluetootLeScanCallback:Landroid/bluetooth/le/ScanCallback;

    .line 214
    sget-object p0, Lcom/amazon/whisperbridge/ble/BleScanner;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set Scanner Callback "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/amazon/whisperbridge/ble/BleScanner;->mBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    .line 218
    iget-object p0, v0, Lcom/amazon/whisperbridge/ble/BleScanner;->mBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object p1, v0, Lcom/amazon/whisperbridge/ble/BleScanner;->mBluetootLeScanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {p0, p1}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Landroid/bluetooth/le/ScanCallback;)V

    goto :goto_0

    .line 220
    :cond_0
    iget-object p0, v0, Lcom/amazon/whisperbridge/ble/BleScanner;->mBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object p1, v0, Lcom/amazon/whisperbridge/ble/BleScanner;->mBluetootLeScanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {p0, p2, p3, p1}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    :goto_0
    return-object v0

    .line 209
    :cond_1
    new-instance p0, Lcom/amazon/whisperbridge/ble/BleException;

    const-string p1, "Failed to get Bluetooth LE scannder. Bluetooth may be disabled or Bluetooth LE advertising is not supported."

    invoke-direct {p0, p1}, Lcom/amazon/whisperbridge/ble/BleException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static startScanning(Landroid/bluetooth/BluetoothAdapter;Lcom/amazon/whisperbridge/ble/BleScanner$Callback;Ljava/util/List;Landroid/bluetooth/le/ScanSettings;)Lcom/amazon/whisperbridge/ble/BleScanner;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothAdapter;",
            "Lcom/amazon/whisperbridge/ble/BleScanner$Callback;",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Landroid/bluetooth/le/ScanSettings;",
            ")",
            "Lcom/amazon/whisperbridge/ble/BleScanner;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whisperbridge/ble/BleException;
        }
    .end annotation

    if-eqz p0, :cond_7

    if-eqz p1, :cond_6

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
    if-ne v2, v0, :cond_5

    .line 150
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_3

    if-nez p2, :cond_2

    goto :goto_2

    .line 151
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "filters and settings parameters are ignored on pre-lolipop Android builds."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 154
    :cond_3
    :goto_2
    sget-object v0, Lcom/amazon/whisperbridge/ble/BleScanner;->TAG:Ljava/lang/String;

    const-string v2, "Starting Bluetooth LE scanning."

    invoke-static {v0, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_4

    .line 158
    invoke-static {p0, p1, p2, p3}, Lcom/amazon/whisperbridge/ble/BleScanner;->createScanner(Landroid/bluetooth/BluetoothAdapter;Lcom/amazon/whisperbridge/ble/BleScanner$Callback;Ljava/util/List;Landroid/bluetooth/le/ScanSettings;)Lcom/amazon/whisperbridge/ble/BleScanner;

    move-result-object p0

    return-object p0

    .line 160
    :cond_4
    invoke-static {p0, p1}, Lcom/amazon/whisperbridge/ble/BleScanner;->createLegacyScanner(Landroid/bluetooth/BluetoothAdapter;Lcom/amazon/whisperbridge/ble/BleScanner$Callback;)Lcom/amazon/whisperbridge/ble/BleScanner;

    move-result-object p0

    return-object p0

    .line 149
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "settings unexpectedly null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 147
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "callback unexpectedly null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 145
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "btAdapter unexpectedly null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method declared-synchronized addScanResult(Landroid/bluetooth/le/ScanResult;)V
    .locals 3

    monitor-enter p0

    .line 317
    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v0

    .line 318
    new-instance v1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleScanData;

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result p1

    invoke-direct {v1, v2, v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleScanData;-><init>(Landroid/bluetooth/BluetoothDevice;[BI)V

    invoke-virtual {p0, v1}, Lcom/amazon/whisperbridge/ble/BleScanner;->notifyScanData(Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleScanData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized notifyScanData(Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleScanData;)V
    .locals 1

    monitor-enter p0

    .line 326
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleScanner;->mCallback:Lcom/amazon/whisperbridge/ble/BleScanner$Callback;

    invoke-interface {v0, p1}, Lcom/amazon/whisperbridge/ble/BleScanner$Callback;->onScanData(Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleScanData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized stopScanning()V
    .locals 2

    monitor-enter p0

    .line 302
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 303
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleScanner;->mBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v1, p0, Lcom/amazon/whisperbridge/ble/BleScanner;->mBluetootLeScanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    goto :goto_0

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/amazon/whisperbridge/ble/BleScanner;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/amazon/whisperbridge/ble/BleScanner;->mLegacyScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
