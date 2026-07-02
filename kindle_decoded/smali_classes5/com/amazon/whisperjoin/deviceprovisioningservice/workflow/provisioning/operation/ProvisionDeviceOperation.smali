.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation;
.super Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;
.source "ProvisionDeviceOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$ProvisionDevice;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ProvisionDeviceOperation"


# instance fields
.field private final mDSSClient:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

.field private final mMAPAuthentication:Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;

.field private final mMetricsRecorderProvider:Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;

.field private final mProvisioningServiceConfiguration:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation;->mMAPAuthentication:Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;

    .line 58
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation;->mDSSClient:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    .line 59
    iput-object p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation;->mProvisioningServiceConfiguration:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;

    .line 60
    iput-object p4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation;->mMetricsRecorderProvider:Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 46
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;)Lio/reactivex/Observable;
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation;->emitSuccessResult(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation;)Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation;->mMetricsRecorderProvider:Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;)Lio/reactivex/Single;
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation;->provisionDevice(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;)Lio/reactivex/Single;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationRequest;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ComputeConfigurationDataResponse;)Lio/reactivex/Single;
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation;->buildConfigurationAndProvisionDevice(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationRequest;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ComputeConfigurationDataResponse;)Lio/reactivex/Single;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation;)Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation;->mMAPAuthentication:Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;

    return-object p0
.end method

.method private buildConfiguration(Ljava/util/Map;Ljava/lang/String;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;"
        }
    .end annotation

    .line 227
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;-><init>()V

    const-string v1, "DSS.ReportUrl"

    .line 228
    invoke-virtual {v0, v1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;->putStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-direct {p0, p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation;->mergeConfigurationIntoDataMap(Ljava/util/Map;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;)V

    return-object v0
.end method

.method private buildConfigurationAndProvisionDevice(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationRequest;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ComputeConfigurationDataResponse;)Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationRequest;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ComputeConfigurationDataResponse;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;",
            ">;"
        }
    .end annotation

    .line 178
    invoke-virtual {p4}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ComputeConfigurationDataResponse;->getConfiguration()Ljava/util/Map;

    move-result-object p4

    invoke-virtual {p3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;->getProvisionableReportUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p4, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation;->buildConfiguration(Ljava/util/Map;Ljava/lang/String;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;

    move-result-object p4

    .line 180
    invoke-direct {p0, p3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation;->getUpdateConfigurationWithChosenNetwork(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;

    move-result-object p3

    .line 182
    invoke-virtual {p3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;->getChosenWifiConfiguration()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    move-result-object v0

    invoke-direct {p0, p1, p4, p2, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation;->runProvisioningOperations(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationRequest;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;)Lio/reactivex/Completable;

    move-result-object p2

    .line 183
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->completeProvisioning()Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/reactivex/Completable;->andThen(Lio/reactivex/CompletableSource;)Lio/reactivex/Completable;

    move-result-object p1

    .line 184
    invoke-static {p3}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Completable;->andThen(Lio/reactivex/SingleSource;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method private emitSuccessResult(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;)Lio/reactivex/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;",
            ">;"
        }
    .end annotation

    .line 272
    invoke-static {p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$ProvisionDevice;->success(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$ProvisionDevice;

    move-result-object p1

    .line 273
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private getChosenOrDefaultWifiConfiguration(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;
    .locals 1

    .line 253
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;->getChosenWifiConfiguration()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;->getChosenWifiConfiguration()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    move-result-object p1

    return-object p1

    .line 257
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;->getAvailableWifiNetworks()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;->getPreferredConfiguredNetwork()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;->getWifiConfiguration()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    move-result-object p1

    return-object p1
.end method

.method private getComputeConfigurationDataRequest(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ComputeConfigurationDataRequest;
    .locals 3

    .line 277
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->getPeripheralDeviceDetails()Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;

    move-result-object p1

    .line 278
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getClientNonce()Ljava/lang/String;

    move-result-object v0

    .line 280
    new-instance v1, Lcom/amazon/devicesetup/common/v1/DeviceDetails;

    invoke-direct {v1}, Lcom/amazon/devicesetup/common/v1/DeviceDetails;-><init>()V

    .line 281
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->getManufacturer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->setManufacturer(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->setDeviceSerial(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->getDeviceModelNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->setDeviceModel(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getFriendlyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->setDeviceName(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->getDeviceFirmwareRevision()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->setFirmwareVersion(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->getDeviceHardwareRevision()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->setHardwareVersion(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getProductIndex()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->setProductIndex(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getDeviceIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->setAuthMaterialIndex(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getSoftwareVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazon/devicesetup/common/v1/DeviceDetails;->setSoftwareVersionIndex(Ljava/lang/String;)V

    .line 291
    invoke-direct {p0, p2, p3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation;->getConfigurationMap(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;

    move-result-object p1

    .line 293
    new-instance p2, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ComputeConfigurationDataRequest;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;->getDataMapForRequest()Ljava/util/Map;

    move-result-object p1

    invoke-direct {p2, v0, v1, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ComputeConfigurationDataRequest;-><init>(Ljava/lang/String;Lcom/amazon/devicesetup/common/v1/DeviceDetails;Ljava/util/Map;)V

    return-object p2
.end method

.method private getConfigurationMap(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;
    .locals 7

    .line 297
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation;->mProvisioningServiceConfiguration:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->getLocaleConfiguration()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/locale/LocaleConfiguration;->buildDataMap()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;

    move-result-object v0

    .line 298
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;->getCustomClientConfiguration()Ljava/util/Map;

    move-result-object p2

    .line 303
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 304
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 305
    sget-object v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "Configuration contains duplicate key: %s, still overwriting."

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;->putStringValueOverwrite(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 310
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->getDeviceCapabilitiesMap()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;->putAllValuesOverwrite(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;)V

    return-object v0
.end method

.method private getProvisionableConfiguration(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ComputeConfigurationDataRequest;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;)Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ComputeConfigurationDataRequest;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation;->mDSSClient:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    invoke-interface {v0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;->computeConfigurationData(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ComputeConfigurationDataRequest;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation$2;

    invoke-direct {v0, p0, p2, p3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation$2;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;)V

    .line 149
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method private getUpdateConfigurationWithChosenNetwork(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;
    .locals 2

    .line 214
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation;->getChosenOrDefaultWifiConfiguration(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    move-result-object v0

    .line 215
    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration$Builder;

    invoke-direct {v1, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration$Builder;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;)V

    .line 216
    invoke-virtual {v1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration$Builder;->setChosenWifiConfiguration(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration$Builder;

    .line 217
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration$Builder;->create()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;

    move-result-object p1

    return-object p1
.end method

.method private hasConfiguredNetworkToUse(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;)Z
    .locals 2

    .line 265
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;->getChosenWifiConfiguration()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    move-result-object v0

    .line 266
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;->getAvailableWifiNetworks()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private mergeConfigurationIntoDataMap(Ljava/util/Map;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;",
            ")V"
        }
    .end annotation

    .line 238
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation;->TAG:Ljava/lang/String;

    const-string v1, "Merging configuration into data map"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 240
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 241
    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "Configuration contains duplicate key: %s, dropping value"

    invoke-static {v4, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 244
    :cond_0
    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v5, v2

    const-string v2, "Adding configuration data entry key: %s, value: %s"

    invoke-static {v4, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;->putStringValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private provisionDevice(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;)Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;",
            ">;"
        }
    .end annotation

    .line 93
    invoke-direct {p0, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation;->hasConfiguredNetworkToUse(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    new-instance p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/NoConfiguredWifiNetworksException;

    invoke-direct {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/NoConfiguredWifiNetworksException;-><init>()V

    invoke-static {p1}, Lio/reactivex/Single;->error(Ljava/lang/Throwable;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 97
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->getPeripheralDeviceDetails()Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->isDistressed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;->getDeviceDetails()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation;->provisionDistressDevice(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1

    .line 101
    :cond_1
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;->getDeviceDetails()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation;->provisionOobeDevice(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method private provisionDistressDevice(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;)Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;",
            ">;"
        }
    .end annotation

    .line 133
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation;->TAG:Ljava/lang/String;

    const-string v1, "Provisioning a Distress Device"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-direct {p0, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation;->getUpdateConfigurationWithChosenNetwork(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;

    move-result-object p2

    .line 136
    invoke-direct {p0, p3, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation;->getConfigurationMap(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;

    move-result-object p3

    .line 137
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;->getProvisionableReportUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DSS.ReportUrl"

    invoke-virtual {p3, v1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;->putStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;->getChosenWifiConfiguration()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->saveWifiConfiguration(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;)Lio/reactivex/Completable;

    move-result-object v0

    .line 140
    invoke-virtual {p1, p3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->saveConfigurationMap(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;)Lio/reactivex/Completable;

    move-result-object p3

    invoke-virtual {v0, p3}, Lio/reactivex/Completable;->andThen(Lio/reactivex/CompletableSource;)Lio/reactivex/Completable;

    move-result-object p3

    .line 141
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->completeProvisioning()Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p3, p1}, Lio/reactivex/Completable;->andThen(Lio/reactivex/CompletableSource;)Lio/reactivex/Completable;

    move-result-object p1

    .line 142
    invoke-static {p2}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Completable;->andThen(Lio/reactivex/SingleSource;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method private provisionOobeDevice(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;)Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;",
            ">;"
        }
    .end annotation

    .line 114
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation;->TAG:Ljava/lang/String;

    const-string v1, "Provisioning a Generic Device"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-direct {p0, p1, p3, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation;->getComputeConfigurationDataRequest(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ComputeConfigurationDataRequest;

    move-result-object p3

    .line 117
    invoke-direct {p0, p3, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation;->getProvisionableConfiguration(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ComputeConfigurationDataRequest;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisionableConfiguration;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method private runProvisioningOperations(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationRequest;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;)Lio/reactivex/Completable;
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Lio/reactivex/CompletableSource;

    .line 201
    invoke-virtual {p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->saveConfigurationMap(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;)Lio/reactivex/Completable;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 202
    invoke-virtual {p1, p4}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->saveWifiConfiguration(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;)Lio/reactivex/Completable;

    move-result-object p2

    const/4 p4, 0x1

    aput-object p2, v0, p4

    .line 203
    invoke-virtual {p1, p3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->setRegistrationToken(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/registration/CBLRegistrationRequest;)Lio/reactivex/Completable;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    .line 200
    invoke-static {v0}, Lio/reactivex/Completable;->concatArray([Lio/reactivex/CompletableSource;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$ProvisionDevice;",
            ">;)",
            "Lio/reactivex/ObservableSource<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;",
            ">;"
        }
    .end annotation

    .line 65
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation$1;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation$1;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ProvisionDeviceOperation;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
