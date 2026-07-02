.class public Lcom/amazon/whisperjoin/provisionerSDK/devices/PeripheralDeviceDetailsScanDataProcessor;
.super Ljava/lang/Object;
.source "PeripheralDeviceDetailsScanDataProcessor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PeripheralDeviceDetailsScanDataProcessor"


# instance fields
.field private mAdvertisementDataFactory:Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;

.field private mBleWJConnectionFactory:Lcom/amazon/whisperjoin/common/sharedtypes/radios/ConnectionFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whisperjoin/common/sharedtypes/radios/ConnectionFactory;Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/PeripheralDeviceDetailsScanDataProcessor;->mBleWJConnectionFactory:Lcom/amazon/whisperjoin/common/sharedtypes/radios/ConnectionFactory;

    .line 28
    iput-object p2, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/PeripheralDeviceDetailsScanDataProcessor;->mAdvertisementDataFactory:Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;

    return-void
.end method


# virtual methods
.method public attemptToCreateThirdPartyPeripheralDeviceDetails(Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleScanData;)Lcom/amazon/whisperjoin/common/sharedtypes/devices/ThirdPartyPeripheralDeviceDetails;
    .locals 1

    .line 76
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/ThirdPartyPeripheralDeviceDetails;

    invoke-direct {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/ThirdPartyPeripheralDeviceDetails;-><init>(Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleScanData;)V

    return-object v0
.end method

.method public attemptToCreateWhisperJoinDetails(Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleScanData;)Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;
    .locals 6

    const/4 v0, 0x0

    .line 38
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/PeripheralDeviceDetailsScanDataProcessor;->mAdvertisementDataFactory:Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleScanData;->getRawScanRecord()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;->create([B)Lcom/amazon/whisperbridge/ble/AdvertisementData;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 43
    :cond_0
    invoke-virtual {v1}, Lcom/amazon/whisperbridge/ble/AdvertisementData;->getAdvertisementVersion()B

    move-result v2

    if-nez v2, :cond_1

    .line 44
    new-instance v2, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;

    invoke-direct {v2}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;-><init>()V

    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {v1}, Lcom/amazon/whisperbridge/ble/AdvertisementData;->getAdvertisementVersion()B

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 46
    new-instance v2, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetailsV2$Builder;

    invoke-direct {v2}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetailsV2$Builder;-><init>()V

    .line 47
    invoke-virtual {v1}, Lcom/amazon/whisperbridge/ble/AdvertisementData;->getDistressCode()B

    move-result v3

    invoke-virtual {v2, v3}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetailsV2$Builder;->withDistressCode(B)Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetailsV2$Builder;

    .line 53
    :goto_0
    new-instance v3, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;

    sget-object v4, Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;->BLE:Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;

    .line 54
    invoke-virtual {v4}, Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleScanData;->getRssi()I

    move-result v5

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/BleScanData;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-direct {v3, v4, v5, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;->withRadio(Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;)Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;

    .line 55
    invoke-virtual {v1}, Lcom/amazon/whisperbridge/ble/AdvertisementData;->getProductIndex()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;->withProductIndex(Ljava/lang/String;)Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;

    .line 56
    invoke-virtual {v1}, Lcom/amazon/whisperbridge/ble/AdvertisementData;->getDeviceIdentity()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;->withDeviceIdentity(Ljava/lang/String;)Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;

    .line 57
    invoke-virtual {v1}, Lcom/amazon/whisperbridge/ble/AdvertisementData;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lcom/amazon/whisperbridge/ble/AdvertisementData;->getNameType()I

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;->withFriendlyName(Ljava/lang/String;I)Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;

    .line 58
    invoke-virtual {v1}, Lcom/amazon/whisperbridge/ble/AdvertisementData;->getClientNonce()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;->withClientNonce(Ljava/lang/String;)Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;

    .line 59
    invoke-virtual {v1}, Lcom/amazon/whisperbridge/ble/AdvertisementData;->getSoftwareVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;->withSoftwareVersion(Ljava/lang/String;)Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;

    .line 60
    invoke-virtual {v1}, Lcom/amazon/whisperbridge/ble/AdvertisementData;->getSupportsUnauthenticatedEcdhe()Z

    move-result p1

    invoke-virtual {v2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;->withSupportsUnauthenticatedEcdhe(Z)Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;

    .line 61
    invoke-virtual {v1}, Lcom/amazon/whisperbridge/ble/AdvertisementData;->getSupportsAuthenticatedEcdhe()Z

    move-result p1

    invoke-virtual {v2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;->withSupportsAuthenticatedEcdhe(Z)Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;

    .line 62
    invoke-virtual {v1}, Lcom/amazon/whisperbridge/ble/AdvertisementData;->getSupportsPin()Z

    move-result p1

    invoke-virtual {v2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;->withSupportsPin(Z)Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;

    .line 63
    invoke-virtual {v1}, Lcom/amazon/whisperbridge/ble/AdvertisementData;->getAdvertisedSdkVersionIndex()I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;->withAdvertisedSdkVersionIndex(I)Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;

    .line 64
    invoke-virtual {v2}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails$Builder;->build()Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;

    move-result-object p1

    return-object p1

    .line 49
    :cond_2
    sget-object p1, Lcom/amazon/whisperjoin/provisionerSDK/devices/PeripheralDeviceDetailsScanDataProcessor;->TAG:Ljava/lang/String;

    const-string v1, "Unexpected BLE advertisement version"

    invoke-static {p1, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 66
    sget-object v1, Lcom/amazon/whisperjoin/provisionerSDK/devices/PeripheralDeviceDetailsScanDataProcessor;->TAG:Ljava/lang/String;

    const-string v2, "An exception occurred while parsing scan data to create WhisperJoinPeripheralDevice"

    invoke-static {v1, v2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method
