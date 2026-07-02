.class public Lcom/amazon/whisperjoin/provisionerSDK/utility/BleScanDataCoalescer;
.super Ljava/lang/Object;
.source "BleScanDataCoalescer.java"

# interfaces
.implements Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$BleScanDataCoalescer;


# static fields
.field private static final TAG:Ljava/lang/String; = "BleScanDataCoalescer"


# instance fields
.field private final mDeviceDetailsScanDataProcessor:Lcom/amazon/whisperjoin/provisionerSDK/devices/PeripheralDeviceDetailsScanDataProcessor;

.field private final mDiscoveredWhisperJoinDevices:Lcom/google/common/collect/Table;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Table<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;",
            ">;"
        }
    .end annotation
.end field

.field private final mThirdPartyPeripheralDeviceDetailsTable:Lcom/google/common/collect/Table;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Table<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/whisperjoin/common/sharedtypes/devices/ThirdPartyPeripheralDeviceDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whisperjoin/provisionerSDK/devices/PeripheralDeviceDetailsScanDataProcessor;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Lcom/google/common/collect/HashBasedTable;->create()Lcom/google/common/collect/HashBasedTable;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/utility/BleScanDataCoalescer;->mDiscoveredWhisperJoinDevices:Lcom/google/common/collect/Table;

    .line 29
    invoke-static {}, Lcom/google/common/collect/HashBasedTable;->create()Lcom/google/common/collect/HashBasedTable;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/utility/BleScanDataCoalescer;->mThirdPartyPeripheralDeviceDetailsTable:Lcom/google/common/collect/Table;

    .line 34
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/utility/BleScanDataCoalescer;->mDeviceDetailsScanDataProcessor:Lcom/amazon/whisperjoin/provisionerSDK/devices/PeripheralDeviceDetailsScanDataProcessor;

    return-void
.end method

.method private processThirdPartyDevice(Lcom/amazon/whisperjoin/common/sharedtypes/devices/ThirdPartyPeripheralDeviceDetails;)Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$DiscoveryResult;
    .locals 3

    .line 95
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/ThirdPartyPeripheralDeviceDetails;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/ThirdPartyPeripheralDeviceDetails;->getScanRecord()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 98
    iget-object v2, p0, Lcom/amazon/whisperjoin/provisionerSDK/utility/BleScanDataCoalescer;->mThirdPartyPeripheralDeviceDetailsTable:Lcom/google/common/collect/Table;

    invoke-interface {v2, v0, v1}, Lcom/google/common/collect/Table;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whisperjoin/common/sharedtypes/devices/ThirdPartyPeripheralDeviceDetails;

    if-nez v2, :cond_0

    .line 100
    iget-object v2, p0, Lcom/amazon/whisperjoin/provisionerSDK/utility/BleScanDataCoalescer;->mThirdPartyPeripheralDeviceDetailsTable:Lcom/google/common/collect/Table;

    invoke-interface {v2, v0, v1, p1}, Lcom/google/common/collect/Table;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$DiscoveryResult;

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;->THIRD_PARTY_ADDED:Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;

    invoke-direct {v0, v1, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$DiscoveryResult;-><init>(Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;Lcom/amazon/whisperjoin/common/sharedtypes/devices/AbstractPeripheralDeviceDetails;)V

    return-object v0

    .line 104
    :cond_0
    invoke-virtual {v2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/ThirdPartyPeripheralDeviceDetails;->updateScanDataRadioData(Lcom/amazon/whisperjoin/common/sharedtypes/devices/ThirdPartyPeripheralDeviceDetails;)V

    .line 105
    new-instance p1, Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$DiscoveryResult;

    sget-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;->THIRD_PARTY_UPDATED:Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;

    invoke-direct {p1, v0, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$DiscoveryResult;-><init>(Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;Lcom/amazon/whisperjoin/common/sharedtypes/devices/AbstractPeripheralDeviceDetails;)V

    return-object p1
.end method

.method private processWhisperJoinDevice(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;)Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$DiscoveryResult;
    .locals 5

    .line 61
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 67
    sget-object v0, Lcom/amazon/whisperjoin/provisionerSDK/utility/BleScanDataCoalescer;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 68
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getProductIndex()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getDeviceIdentity()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "Ignoring device due to missing name in advertisement data. PID: %s AuthID: %s"

    .line 67
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/utility/BleScanDataCoalescer;->mDiscoveredWhisperJoinDevices:Lcom/google/common/collect/Table;

    .line 73
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getDeviceIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getClientNonce()Ljava/lang/String;

    move-result-object v3

    .line 72
    invoke-interface {v0, v2, v3}, Lcom/google/common/collect/Table;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;

    if-nez v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/utility/BleScanDataCoalescer;->mDiscoveredWhisperJoinDevices:Lcom/google/common/collect/Table;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getDeviceIdentity()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getClientNonce()Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-interface {v0, v1, v2, p1}, Lcom/google/common/collect/Table;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$DiscoveryResult;

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;->WJ_DEVICE_ADDED:Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;

    invoke-direct {v0, v1, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$DiscoveryResult;-><init>(Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;Lcom/amazon/whisperjoin/common/sharedtypes/devices/AbstractPeripheralDeviceDetails;)V

    return-object v0

    .line 81
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getRadios()Ljava/util/Set;

    move-result-object p1

    .line 82
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 86
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;

    .line 87
    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->addRadio(Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;)Z

    .line 88
    new-instance p1, Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$DiscoveryResult;

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;->WJ_DEVICE_UPDATED:Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;

    invoke-direct {p1, v1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$DiscoveryResult;-><init>(Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$Event;Lcom/amazon/whisperjoin/common/sharedtypes/devices/AbstractPeripheralDeviceDetails;)V

    return-object p1

    .line 83
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "A newly discovered device should only have one radio"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public coalesce(Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleScanData;)Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$DiscoveryResult;
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/utility/BleScanDataCoalescer;->mDiscoveredWhisperJoinDevices:Lcom/google/common/collect/Table;

    monitor-enter v0

    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/utility/BleScanDataCoalescer;->mDeviceDetailsScanDataProcessor:Lcom/amazon/whisperjoin/provisionerSDK/devices/PeripheralDeviceDetailsScanDataProcessor;

    invoke-virtual {v1, p1}, Lcom/amazon/whisperjoin/provisionerSDK/devices/PeripheralDeviceDetailsScanDataProcessor;->attemptToCreateWhisperJoinDetails(Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleScanData;)Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 52
    invoke-direct {p0, v1}, Lcom/amazon/whisperjoin/provisionerSDK/utility/BleScanDataCoalescer;->processWhisperJoinDevice(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;)Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$DiscoveryResult;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/utility/BleScanDataCoalescer;->mDeviceDetailsScanDataProcessor:Lcom/amazon/whisperjoin/provisionerSDK/devices/PeripheralDeviceDetailsScanDataProcessor;

    invoke-virtual {v1, p1}, Lcom/amazon/whisperjoin/provisionerSDK/devices/PeripheralDeviceDetailsScanDataProcessor;->attemptToCreateThirdPartyPeripheralDeviceDetails(Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleScanData;)Lcom/amazon/whisperjoin/common/sharedtypes/devices/ThirdPartyPeripheralDeviceDetails;

    move-result-object p1

    .line 56
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/provisionerSDK/utility/BleScanDataCoalescer;->processThirdPartyDevice(Lcom/amazon/whisperjoin/common/sharedtypes/devices/ThirdPartyPeripheralDeviceDetails;)Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$DiscoveryResult;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 57
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
