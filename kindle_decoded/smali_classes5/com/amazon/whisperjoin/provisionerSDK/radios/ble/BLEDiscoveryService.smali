.class public Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;
.super Ljava/lang/Object;
.source "BLEDiscoveryService.java"

# interfaces
.implements Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService$PowerManagerReceiver;,
        Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService$PowerConnectionReceiver;,
        Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService$BluetoothAdapterChangedReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.whisperjoin.provisionerSDK.radios.ble.BLEDiscoveryService"


# instance fields
.field mBleCallback:Lcom/amazon/whisperbridge/ble/BleScanner$Callback;

.field private final mBleManager:Lcom/amazon/whisperbridge/ble/BleManager;

.field private final mBluetoothAdapterChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mDiscoveryConfiguration:Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration;

.field private final mFireOSUtil:Lcom/amazon/whisperjoin/util/FireOSUtil;

.field mIsPowered:Z

.field private final mOveractiveBleActivityDetector:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector;

.field private final mPowerConnectionReceiver:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService$PowerConnectionReceiver;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mPowerManagerReceiver:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService$PowerManagerReceiver;

.field private mScanningMode:Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

.field private mScanningSuppressed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration;Lcom/amazon/whisperbridge/ble/BleManager;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    .line 67
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mDiscoveryConfiguration:Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration;

    if-eqz p2, :cond_1

    .line 72
    new-instance v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService$BluetoothAdapterChangedReceiver;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService$BluetoothAdapterChangedReceiver;-><init>(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;)V

    iput-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mBluetoothAdapterChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 73
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mDiscoveryConfiguration:Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mContext:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mBleManager:Lcom/amazon/whisperbridge/ble/BleManager;

    const/4 p2, 0x0

    .line 76
    iput-object p2, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mBleCallback:Lcom/amazon/whisperbridge/ble/BleScanner$Callback;

    .line 77
    sget-object p2, Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;->LOW_POWER_HIGH_LATENCY:Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

    iput-object p2, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mScanningMode:Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    .line 81
    iput-boolean p2, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mScanningSuppressed:Z

    .line 82
    new-instance p2, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService$PowerConnectionReceiver;

    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0, v0}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService$PowerConnectionReceiver;-><init>(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mPowerConnectionReceiver:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService$PowerConnectionReceiver;

    .line 83
    iget-object p2, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "power"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    iput-object p2, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mPowerManager:Landroid/os/PowerManager;

    .line 84
    new-instance p2, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService$PowerManagerReceiver;

    invoke-direct {p2, p0}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService$PowerManagerReceiver;-><init>(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;)V

    iput-object p2, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mPowerManagerReceiver:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService$PowerManagerReceiver;

    .line 85
    invoke-direct {p0}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->initPowerConnectionIntentReceiver()V

    .line 86
    invoke-direct {p0}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->initPowerManagerIntentReceiver()V

    .line 87
    new-instance p2, Lcom/amazon/whisperjoin/util/FireOSUtil;

    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/amazon/whisperjoin/util/FireOSUtil;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mFireOSUtil:Lcom/amazon/whisperjoin/util/FireOSUtil;

    .line 88
    new-instance p2, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration;->getOveractiveConfiguration()Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector;-><init>(Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;)V

    iput-object p2, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mOveractiveBleActivityDetector:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector;

    return-void

    .line 79
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "discoveryConfiguration must have a non-null context"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bleManager can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "discoveryConfiguration can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 42
    sget-object v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;)Lcom/amazon/whisperbridge/ble/BleManager;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mBleManager:Lcom/amazon/whisperbridge/ble/BleManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;)Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mDiscoveryConfiguration:Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration;

    return-object p0
.end method

.method private checkForBleOveractivity()V
    .locals 1

    .line 521
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mFireOSUtil:Lcom/amazon/whisperjoin/util/FireOSUtil;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/util/FireOSUtil;->isPoweredDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 527
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mOveractiveBleActivityDetector:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector;->onNewDiscoveryActivity()V
    :try_end_0
    .catch Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/OveractiveBleActivityDetector$OveractivityDetected; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 530
    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->onErrorEvent(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private getBLEScanFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation

    .line 464
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mDiscoveryConfiguration:Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration;->getScanFilters()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getScanSetting(Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;)Landroid/bluetooth/le/ScanSettings;
    .locals 4

    .line 323
    new-instance v0, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    .line 324
    sget-object v1, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Getting Android scan settings for provided ScanningMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    sget-object v1, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService$2;->$SwitchMap$com$amazon$whisperjoin$common$sharedtypes$radios$ScanningMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    .line 333
    invoke-virtual {v0, v2}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    goto :goto_0

    .line 337
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scanning Mode Not Supported "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_1
    invoke-virtual {v0, v3}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 327
    invoke-virtual {v0, p1}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 339
    :goto_0
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object p1

    return-object p1
.end method

.method private initPowerConnectionIntentReceiver()V
    .locals 3

    .line 156
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 158
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 160
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mPowerConnectionReceiver:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService$PowerConnectionReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private initPowerManagerIntentReceiver()V
    .locals 3

    .line 168
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    .line 169
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    .line 170
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mPowerManagerReceiver:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService$PowerManagerReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private declared-synchronized initalizeBle()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/ScanException;
        }
    .end annotation

    monitor-enter p0

    .line 266
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mBleManager:Lcom/amazon/whisperbridge/ble/BleManager;

    invoke-virtual {v0}, Lcom/amazon/whisperbridge/ble/BleManager;->isInitialized()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 268
    :try_start_1
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mBleManager:Lcom/amazon/whisperbridge/ble/BleManager;

    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whisperbridge/ble/BleManager;->initializeBluetoothLE(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/amazon/whisperbridge/ble/BleException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 270
    :catch_0
    :try_start_2
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/ScanException;

    const-string v1, "error initializing ble manager"

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/ScanException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 273
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isAtLeastAPI21()Z
    .locals 2

    .line 343
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isAtLeastAPI23()Z
    .locals 2

    .line 350
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isLowPowerMode()Z
    .locals 2

    .line 403
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mScanningMode:Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;->HIGH_POWER_LOW_LATENCY:Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    sget-object v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->TAG:Ljava/lang/String;

    const-string v1, "High Power Scan Mode, ignoring device power status"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    .line 411
    invoke-direct {p0}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->isAtLeastAPI23()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 412
    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method private onErrorEvent(Ljava/lang/Exception;)V
    .locals 4

    .line 541
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;->ERROR:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;

    new-instance v2, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/data/ExceptionData;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/data/ExceptionData;-><init>([BLjava/lang/Exception;)V

    invoke-direct {v0, v1, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 542
    iget-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mDiscoveryConfiguration:Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration;->getObservers()Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private shouldFilterDiscoveryResult(Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter;Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$DiscoveryResult;)Z
    .locals 5

    .line 501
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$DiscoveryResult;->getEvent()Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;

    move-result-object v0

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;->WJ_DEVICE_ADDED:Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$DiscoveryResult;->getEvent()Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;

    move-result-object v0

    sget-object v2, Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;->WJ_DEVICE_UPDATED:Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 502
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$DiscoveryResult;->getDevice()Lcom/amazon/whisperjoin/common/sharedtypes/devices/AbstractPeripheralDeviceDetails;

    move-result-object p2

    check-cast p2, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;

    .line 503
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->isDistressed()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 505
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter;->getBeaconType()Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

    move-result-object v3

    sget-object v4, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;->OOBE:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

    if-eq v3, v4, :cond_3

    :cond_2
    if-nez v0, :cond_5

    .line 506
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter;->getBeaconType()Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

    move-result-object v0

    sget-object v3, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;->DISTRESS:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

    if-ne v0, v3, :cond_5

    .line 507
    :cond_3
    sget-object v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->TAG:Ljava/lang/String;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    .line 508
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter;->getBeaconType()Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    .line 509
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    const/4 p1, 0x2

    .line 510
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getProductIndex()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, p1

    const/4 p1, 0x3

    .line 511
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->isDistressed()Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "DISTRESS beacon"

    goto :goto_1

    :cond_4
    const-string p2, "OOBE beacon"

    :goto_1
    aput-object p2, v3, p1

    const-string p1, "Only %s mode is supported for beacons, found %s (%s) which is a %s"

    .line 507
    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5
    if-eqz p1, :cond_6

    .line 515
    invoke-virtual {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter;->filter(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;)Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$FilterResult;

    move-result-object p1

    sget-object p2, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$FilterResult;->ACCEPT:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$FilterResult;

    if-eq p1, p2, :cond_6

    const/4 v1, 0x1

    :cond_6
    return v1
.end method


# virtual methods
.method onEvent(Lcom/amazon/whisperjoin/common/sharedtypes/devices/AbstractPeripheralDeviceDetails;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;)V
    .locals 1

    .line 535
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/data/PeripheralDiscoveredEventData;

    invoke-direct {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/data/PeripheralDiscoveredEventData;-><init>(Lcom/amazon/whisperjoin/common/sharedtypes/devices/AbstractPeripheralDeviceDetails;)V

    .line 536
    new-instance p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;

    invoke-direct {p1, p2, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 537
    iget-object p2, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mDiscoveryConfiguration:Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration;

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration;->getObservers()Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method onPowerIntent()V
    .locals 3

    .line 427
    iget-boolean v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mScanningSuppressed:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->isLowPowerMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 429
    :try_start_0
    sget-object v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->TAG:Ljava/lang/String;

    const-string v1, "Restarting scan now that not in low power mode"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->startScan()V

    const/4 v0, 0x0

    .line 431
    iput-boolean v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mScanningSuppressed:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 433
    sget-object v1, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->TAG:Ljava/lang/String;

    const-string v2, "Error while trying to start scanning due to power mode change"

    invoke-static {v1, v2, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 435
    :goto_0
    sget-object v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "started scan after being suppressed"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mBleManager:Lcom/amazon/whisperbridge/ble/BleManager;

    invoke-virtual {v0}, Lcom/amazon/whisperbridge/ble/BleManager;->isScanning()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->isLowPowerMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    sget-object v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->TAG:Ljava/lang/String;

    const-string v1, "Was scanning but now in lower power mode, stopping scan"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mBleManager:Lcom/amazon/whisperbridge/ble/BleManager;

    invoke-virtual {v0}, Lcom/amazon/whisperbridge/ble/BleManager;->stopScanning()V

    const/4 v0, 0x1

    .line 441
    iput-boolean v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mScanningSuppressed:Z

    .line 442
    sget-object v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "suppressing scan due to power mode"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method

.method processScanData(Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleScanData;Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter;Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$BleScanDataCoalescer;)V
    .locals 1

    .line 468
    invoke-interface {p3, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$BleScanDataCoalescer;->coalesce(Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleScanData;)Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$DiscoveryResult;

    move-result-object p1

    if-nez p1, :cond_0

    .line 470
    sget-object p1, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->TAG:Ljava/lang/String;

    const-string p2, "Discovery result returned null"

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 474
    :cond_0
    monitor-enter p0

    .line 475
    :try_start_0
    invoke-direct {p0, p2, p1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->shouldFilterDiscoveryResult(Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter;Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$DiscoveryResult;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 476
    sget-object p1, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->TAG:Ljava/lang/String;

    const-string p2, "Filtered discovery result"

    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    monitor-exit p0

    return-void

    .line 479
    :cond_1
    invoke-direct {p0}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->checkForBleOveractivity()V

    .line 480
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 482
    sget-object p2, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService$2;->$SwitchMap$com$amazon$whisperjoin$common$sharedtypes$radios$DiscoveryService$Event:[I

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$DiscoveryResult;->getEvent()Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p2, p2, p3

    const/4 p3, 0x1

    if-eq p2, p3, :cond_5

    const/4 p3, 0x2

    if-eq p2, p3, :cond_4

    const/4 p3, 0x3

    if-eq p2, p3, :cond_3

    const/4 p3, 0x4

    if-ne p2, p3, :cond_2

    .line 493
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$DiscoveryResult;->getDevice()Lcom/amazon/whisperjoin/common/sharedtypes/devices/AbstractPeripheralDeviceDetails;

    move-result-object p1

    sget-object p2, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;->THIRD_PARTY_DEVICE_UPDATED_RADIO:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->onEvent(Lcom/amazon/whisperjoin/common/sharedtypes/devices/AbstractPeripheralDeviceDetails;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;)V

    goto :goto_0

    .line 496
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown discovery event value: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$DiscoveryResult;->getEvent()Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 490
    :cond_3
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$DiscoveryResult;->getDevice()Lcom/amazon/whisperjoin/common/sharedtypes/devices/AbstractPeripheralDeviceDetails;

    move-result-object p1

    sget-object p2, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;->THIRD_PARTY_DEVICE_DISCOVERED:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->onEvent(Lcom/amazon/whisperjoin/common/sharedtypes/devices/AbstractPeripheralDeviceDetails;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;)V

    goto :goto_0

    .line 487
    :cond_4
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$DiscoveryResult;->getDevice()Lcom/amazon/whisperjoin/common/sharedtypes/devices/AbstractPeripheralDeviceDetails;

    move-result-object p1

    sget-object p2, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;->WJ_DEVICE_UPDATED_RADIO:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->onEvent(Lcom/amazon/whisperjoin/common/sharedtypes/devices/AbstractPeripheralDeviceDetails;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;)V

    goto :goto_0

    .line 484
    :cond_5
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$DiscoveryResult;->getDevice()Lcom/amazon/whisperjoin/common/sharedtypes/devices/AbstractPeripheralDeviceDetails;

    move-result-object p1

    sget-object p2, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;->WJ_DEVICE_DISCOVERED:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->onEvent(Lcom/amazon/whisperjoin/common/sharedtypes/devices/AbstractPeripheralDeviceDetails;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 480
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public start(Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter;Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$BleScanDataCoalescer;Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/RadioNotEnabledException;,
            Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/ScanException;
        }
    .end annotation

    .line 185
    invoke-direct {p0}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->isAtLeastAPI21()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    .line 194
    sget-object v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->TAG:Ljava/lang/String;

    const-string v1, "Register receivers for bluetooth and power"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mBluetoothAdapterChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 197
    invoke-direct {p0}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->initPowerConnectionIntentReceiver()V

    .line 198
    invoke-direct {p0}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->initPowerManagerIntentReceiver()V

    .line 202
    monitor-enter p0

    .line 203
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->initalizeBle()V

    .line 208
    new-instance v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService$1;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService$1;-><init>(Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter;Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$BleScanDataCoalescer;)V

    iput-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mBleCallback:Lcom/amazon/whisperbridge/ble/BleScanner$Callback;

    .line 229
    iput-object p3, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mScanningMode:Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

    .line 230
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->startScan()V

    .line 231
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 190
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "scanningMode can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 186
    :cond_1
    new-instance p1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/ScanException;

    const-string p2, "API < 21, BLE Scanning not supported"

    invoke-direct {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/ScanException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method declared-synchronized startScan()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/ScanException;,
            Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/RadioNotEnabledException;
        }
    .end annotation

    monitor-enter p0

    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mBleCallback:Lcom/amazon/whisperbridge/ble/BleScanner$Callback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 284
    :try_start_1
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mBleManager:Lcom/amazon/whisperbridge/ble/BleManager;

    invoke-virtual {v0}, Lcom/amazon/whisperbridge/ble/BleManager;->isScanning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    sget-object v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->TAG:Ljava/lang/String;

    const-string v1, "Start scan called while already scanning. Stopping scanning before restarting it."

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mBleManager:Lcom/amazon/whisperbridge/ble/BleManager;

    invoke-virtual {v0}, Lcom/amazon/whisperbridge/ble/BleManager;->stopScanning()V

    .line 289
    :cond_0
    invoke-direct {p0}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->isLowPowerMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mBleManager:Lcom/amazon/whisperbridge/ble/BleManager;

    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mBleCallback:Lcom/amazon/whisperbridge/ble/BleScanner$Callback;

    invoke-direct {p0}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->getBLEScanFilters()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mScanningMode:Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

    invoke-direct {p0, v3}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->getScanSetting(Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;)Landroid/bluetooth/le/ScanSettings;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/whisperbridge/ble/BleManager;->startScanning(Lcom/amazon/whisperbridge/ble/BleScanner$Callback;Ljava/util/List;Landroid/bluetooth/le/ScanSettings;)V

    goto :goto_0

    .line 292
    :cond_1
    sget-object v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->TAG:Ljava/lang/String;

    const-string v1, "Start scan called but we are in low power mode so scan is suppresed until we are out of lower power mode"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 293
    iput-boolean v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mScanningSuppressed:Z
    :try_end_1
    .catch Lcom/amazon/whisperbridge/ble/BleException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/amazon/whisperbridge/ble/BluetoothDisabledException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 301
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .line 299
    :try_start_2
    new-instance v1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/RadioNotEnabledException;

    sget-object v2, Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;->BLE:Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;

    invoke-virtual {v2}, Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/RadioNotEnabledException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 297
    new-instance v1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/ScanException;

    const-string v2, "error starting scanning"

    invoke-direct {v1, v2, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/ScanException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 281
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mBleCallback can not be null when calling startScan"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stop()V
    .locals 4

    .line 241
    monitor-enter p0

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mBleManager:Lcom/amazon/whisperbridge/ble/BleManager;

    invoke-virtual {v0}, Lcom/amazon/whisperbridge/ble/BleManager;->isScanning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    sget-object v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->TAG:Ljava/lang/String;

    const-string v1, "Stop Scanning"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    :try_start_1
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mBleManager:Lcom/amazon/whisperbridge/ble/BleManager;

    invoke-virtual {v0}, Lcom/amazon/whisperbridge/ble/BleManager;->stopScanning()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 247
    :try_start_2
    sget-object v1, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error stopping scanning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_0
    :goto_0
    sget-object v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->TAG:Ljava/lang/String;

    const-string v1, "Unregistering receivers"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mBluetoothAdapterChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 255
    :try_start_3
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mPowerConnectionReceiver:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService$PowerConnectionReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 256
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mPowerManagerReceiver:Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService$PowerManagerReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 258
    :try_start_4
    sget-object v1, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->TAG:Ljava/lang/String;

    const-string v2, "Could not unregister one or more power receivers. Probably it was already unregistered."

    invoke-static {v1, v2, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/4 v0, 0x0

    .line 261
    iput-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mBleCallback:Lcom/amazon/whisperbridge/ble/BleScanner$Callback;

    .line 262
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method updateScanForPowerChange(Landroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 361
    iput-boolean v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mIsPowered:Z

    return-void

    :cond_0
    const/4 v1, -0x1

    const-string/jumbo v2, "plugged"

    .line 364
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ne p1, v2, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-nez v1, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    const/4 v0, 0x1

    .line 368
    :cond_4
    iget-boolean p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mIsPowered:Z

    if-eq p1, v0, :cond_5

    .line 369
    iput-boolean v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mIsPowered:Z

    .line 370
    iget-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mBleManager:Lcom/amazon/whisperbridge/ble/BleManager;

    invoke-virtual {p1}, Lcom/amazon/whisperbridge/ble/BleManager;->isScanning()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 372
    :try_start_0
    sget-object p1, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->TAG:Ljava/lang/String;

    const-string v0, "Restarting scan after power change"

    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->startScan()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 375
    sget-object v0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->TAG:Ljava/lang/String;

    const-string v1, "could not restart scanning after change in power status"

    invoke-static {v0, v1, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 379
    :cond_5
    :goto_2
    sget-object p1, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "is powered = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;->mIsPowered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
