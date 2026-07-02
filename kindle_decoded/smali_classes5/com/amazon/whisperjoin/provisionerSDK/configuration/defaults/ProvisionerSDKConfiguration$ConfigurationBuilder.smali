.class public Lcom/amazon/whisperjoin/provisionerSDK/configuration/defaults/ProvisionerSDKConfiguration$ConfigurationBuilder;
.super Ljava/lang/Object;
.source "ProvisionerSDKConfiguration.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDSSClient:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

.field private mDeviceEventObservers:Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDiscoveryEventObservers:Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private mOveractiveConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;

.field private mScanFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/defaults/ProvisionerSDKConfiguration$ConfigurationBuilder;->mDiscoveryEventObservers:Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;

    .line 54
    new-instance v0, Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/defaults/ProvisionerSDKConfiguration$ConfigurationBuilder;->mDeviceEventObservers:Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;

    return-void
.end method


# virtual methods
.method public build()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/configuration/RadioConfiguration;",
            ">;"
        }
    .end annotation

    .line 119
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/provisionerSDK/configuration/defaults/ProvisionerSDKConfiguration$ConfigurationBuilder;->validate()V

    .line 121
    new-instance v0, Lcom/amazon/whisperbridge/ble/BleManager;

    invoke-direct {v0}, Lcom/amazon/whisperbridge/ble/BleManager;-><init>()V

    .line 123
    new-instance v1, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;

    invoke-direct {v1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/defaults/ProvisionerSDKConfiguration$ConfigurationBuilder;->mContext:Landroid/content/Context;

    .line 124
    invoke-virtual {v1, v2}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;->setContext(Landroid/content/Context;)Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;

    .line 125
    invoke-virtual {v1, v0}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;->setBleManager(Lcom/amazon/whisperbridge/ble/BleManager;)Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;

    new-instance v2, Lcom/amazon/whisperjoin/common/sharedtypes/utility/EncodingHelpers;

    invoke-direct {v2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/EncodingHelpers;-><init>()V

    .line 126
    invoke-virtual {v1, v2}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;->setEncodingHelpers(Lcom/amazon/whisperjoin/common/sharedtypes/utility/EncodingHelpers;)Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;

    sget-wide v2, Lcom/amazon/whisperjoin/provisionerSDK/configuration/defaults/Config$Transport;->OPERATION_TIMEOUT_MS:J

    .line 127
    invoke-virtual {v1, v2, v3}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;->setOperationTimeout(J)Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 128
    invoke-virtual {v1, v2}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;->setOperationTimeoutUnit(Ljava/util/concurrent/TimeUnit;)Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;

    const-wide/16 v2, 0x3

    .line 129
    invoke-virtual {v1, v2, v3}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;->setOperationRetryCount(J)Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;

    .line 130
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;->setCommandExecutor(Ljava/util/concurrent/ExecutorService;)Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;

    .line 131
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;->setRetryExecutor(Ljava/util/concurrent/ExecutorService;)Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;

    .line 132
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransportBuilder;->createBLETransport()Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLETransport;

    move-result-object v1

    .line 135
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 136
    sget-object v3, Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;->BLE:Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;

    invoke-virtual {v3}, Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    new-instance v1, Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration$DiscoveryConfigurationBuilder;

    invoke-direct {v1}, Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration$DiscoveryConfigurationBuilder;-><init>()V

    iget-object v3, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/defaults/ProvisionerSDKConfiguration$ConfigurationBuilder;->mContext:Landroid/content/Context;

    .line 142
    invoke-virtual {v1, v3}, Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration$DiscoveryConfigurationBuilder;->withContext(Landroid/content/Context;)Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration$DiscoveryConfigurationBuilder;

    iget-object v3, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/defaults/ProvisionerSDKConfiguration$ConfigurationBuilder;->mDiscoveryEventObservers:Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;

    .line 143
    invoke-virtual {v1, v3}, Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration$DiscoveryConfigurationBuilder;->withObservers(Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;)Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration$DiscoveryConfigurationBuilder;

    iget-object v3, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/defaults/ProvisionerSDKConfiguration$ConfigurationBuilder;->mScanFilters:Ljava/util/List;

    .line 144
    invoke-virtual {v1, v3}, Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration$DiscoveryConfigurationBuilder;->withScanFilters(Ljava/util/List;)Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration$DiscoveryConfigurationBuilder;

    iget-object v3, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/defaults/ProvisionerSDKConfiguration$ConfigurationBuilder;->mOveractiveConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;

    .line 145
    invoke-virtual {v1, v3}, Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration$DiscoveryConfigurationBuilder;->withOveractiveConfiguration(Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;)Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration$DiscoveryConfigurationBuilder;

    .line 146
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration$DiscoveryConfigurationBuilder;->build()Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration;

    move-result-object v1

    .line 150
    new-instance v3, Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration$ConnectionConfigurationBuilder;

    invoke-direct {v3}, Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration$ConnectionConfigurationBuilder;-><init>()V

    .line 151
    invoke-virtual {v3, v2}, Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration$ConnectionConfigurationBuilder;->withRadioBridges(Ljava/util/Map;)Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration$ConnectionConfigurationBuilder;

    iget-object v2, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/defaults/ProvisionerSDKConfiguration$ConfigurationBuilder;->mContext:Landroid/content/Context;

    .line 152
    invoke-virtual {v3, v2}, Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration$ConnectionConfigurationBuilder;->withContext(Landroid/content/Context;)Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration$ConnectionConfigurationBuilder;

    const/16 v2, 0x2000

    .line 153
    invoke-virtual {v3, v2}, Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration$ConnectionConfigurationBuilder;->withMaximumMessageSize(I)Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration$ConnectionConfigurationBuilder;

    iget-object v2, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/defaults/ProvisionerSDKConfiguration$ConfigurationBuilder;->mDeviceEventObservers:Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;

    .line 154
    invoke-virtual {v3, v2}, Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration$ConnectionConfigurationBuilder;->withDeviceObservers(Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;)Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration$ConnectionConfigurationBuilder;

    iget-object v2, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/defaults/ProvisionerSDKConfiguration$ConfigurationBuilder;->mDSSClient:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    .line 155
    invoke-virtual {v3, v2}, Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration$ConnectionConfigurationBuilder;->withDSSClient(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;)Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration$ConnectionConfigurationBuilder;

    .line 156
    invoke-virtual {v3}, Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration$ConnectionConfigurationBuilder;->build()Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration;

    move-result-object v2

    .line 159
    new-instance v3, Lcom/amazon/whisperjoin/provisionerSDK/radios/BasicConnectionFactory;

    invoke-direct {v3, v2}, Lcom/amazon/whisperjoin/provisionerSDK/radios/BasicConnectionFactory;-><init>(Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration;)V

    .line 160
    new-instance v2, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;

    invoke-direct {v2, v1, v0}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/BLEDiscoveryService;-><init>(Lcom/amazon/whisperjoin/provisionerSDK/configuration/DiscoveryConfiguration;Lcom/amazon/whisperbridge/ble/BleManager;)V

    .line 162
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/configuration/RadioConfiguration;

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;->BLE:Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/whisperjoin/common/sharedtypes/configuration/RadioConfiguration;-><init>(Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService;Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/radios/ConnectionFactory;)V

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected validate()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/defaults/ProvisionerSDKConfiguration$ConfigurationBuilder;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/defaults/ProvisionerSDKConfiguration$ConfigurationBuilder;->mScanFilters:Ljava/util/List;

    if-eqz v0, :cond_0

    return-void

    .line 173
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mScanFilters can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context must be not be null, build using withContext()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withContext(Landroid/content/Context;)Lcom/amazon/whisperjoin/provisionerSDK/configuration/defaults/ProvisionerSDKConfiguration$ConfigurationBuilder;
    .locals 1

    if-eqz p1, :cond_0

    .line 64
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/defaults/ProvisionerSDKConfiguration$ConfigurationBuilder;->mContext:Landroid/content/Context;

    return-object p0

    .line 62
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "context must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withDSSClient(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;)Lcom/amazon/whisperjoin/provisionerSDK/configuration/defaults/ProvisionerSDKConfiguration$ConfigurationBuilder;
    .locals 1

    if-eqz p1, :cond_0

    .line 97
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/defaults/ProvisionerSDKConfiguration$ConfigurationBuilder;->mDSSClient:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    return-object p0

    .line 95
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "dssClient can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withDeviceObservers(Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;)Lcom/amazon/whisperjoin/provisionerSDK/configuration/defaults/ProvisionerSDKConfiguration$ConfigurationBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;",
            ">;>;)",
            "Lcom/amazon/whisperjoin/provisionerSDK/configuration/defaults/ProvisionerSDKConfiguration$ConfigurationBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 86
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/defaults/ProvisionerSDKConfiguration$ConfigurationBuilder;->mDeviceEventObservers:Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;

    return-object p0

    .line 84
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "deviceEvents must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withDiscoveryObservers(Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;)Lcom/amazon/whisperjoin/provisionerSDK/configuration/defaults/ProvisionerSDKConfiguration$ConfigurationBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;",
            ">;>;)",
            "Lcom/amazon/whisperjoin/provisionerSDK/configuration/defaults/ProvisionerSDKConfiguration$ConfigurationBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 75
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/defaults/ProvisionerSDKConfiguration$ConfigurationBuilder;->mDiscoveryEventObservers:Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;

    return-object p0

    .line 73
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "discoveryEvent must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withOveractiveConfiguration(Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;)Lcom/amazon/whisperjoin/provisionerSDK/configuration/defaults/ProvisionerSDKConfiguration$ConfigurationBuilder;
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/defaults/ProvisionerSDKConfiguration$ConfigurationBuilder;->mOveractiveConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;

    return-object p0
.end method

.method public withScanFilters(Ljava/util/List;)Lcom/amazon/whisperjoin/provisionerSDK/configuration/defaults/ProvisionerSDKConfiguration$ConfigurationBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;)",
            "Lcom/amazon/whisperjoin/provisionerSDK/configuration/defaults/ProvisionerSDKConfiguration$ConfigurationBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 105
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/defaults/ProvisionerSDKConfiguration$ConfigurationBuilder;->mScanFilters:Ljava/util/List;

    return-object p0

    .line 103
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "scanFilters can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
