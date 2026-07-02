.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;
.super Ljava/lang/Object;
.source "ProvisioningManagerProvider.java"


# instance fields
.field private final mDeviceEventObservers:Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mDiscoveryEventObservers:Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mMetricsRecorderProvider:Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;

.field private final mProvisioningManager:Lcom/amazon/whisperjoin/provisionerSDK/ProvisioningManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;Ljava/util/List;Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;",
            "Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;->mDeviceEventObservers:Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;

    .line 38
    new-instance v0, Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;->mDiscoveryEventObservers:Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;

    .line 40
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;->buildManager(Landroid/content/Context;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;Ljava/util/List;Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;)Lcom/amazon/whisperjoin/provisionerSDK/ProvisioningManager;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;->mProvisioningManager:Lcom/amazon/whisperjoin/provisionerSDK/ProvisioningManager;

    .line 41
    iput-object p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;->mMetricsRecorderProvider:Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;

    return-void
.end method

.method private buildManager(Landroid/content/Context;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;Ljava/util/List;Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;)Lcom/amazon/whisperjoin/provisionerSDK/ProvisioningManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;",
            ")",
            "Lcom/amazon/whisperjoin/provisionerSDK/ProvisioningManager;"
        }
    .end annotation

    .line 64
    new-instance v0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/defaults/ProvisionerSDKConfiguration$ConfigurationBuilder;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/provisionerSDK/configuration/defaults/ProvisionerSDKConfiguration$ConfigurationBuilder;-><init>()V

    .line 65
    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/provisionerSDK/configuration/defaults/ProvisionerSDKConfiguration$ConfigurationBuilder;->withContext(Landroid/content/Context;)Lcom/amazon/whisperjoin/provisionerSDK/configuration/defaults/ProvisionerSDKConfiguration$ConfigurationBuilder;

    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;->mDiscoveryEventObservers:Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;

    .line 66
    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/provisionerSDK/configuration/defaults/ProvisionerSDKConfiguration$ConfigurationBuilder;->withDiscoveryObservers(Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;)Lcom/amazon/whisperjoin/provisionerSDK/configuration/defaults/ProvisionerSDKConfiguration$ConfigurationBuilder;

    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;->mDeviceEventObservers:Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;

    .line 67
    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/provisionerSDK/configuration/defaults/ProvisionerSDKConfiguration$ConfigurationBuilder;->withDeviceObservers(Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;)Lcom/amazon/whisperjoin/provisionerSDK/configuration/defaults/ProvisionerSDKConfiguration$ConfigurationBuilder;

    .line 68
    invoke-virtual {v0, p3}, Lcom/amazon/whisperjoin/provisionerSDK/configuration/defaults/ProvisionerSDKConfiguration$ConfigurationBuilder;->withScanFilters(Ljava/util/List;)Lcom/amazon/whisperjoin/provisionerSDK/configuration/defaults/ProvisionerSDKConfiguration$ConfigurationBuilder;

    .line 69
    invoke-virtual {v0, p2}, Lcom/amazon/whisperjoin/provisionerSDK/configuration/defaults/ProvisionerSDKConfiguration$ConfigurationBuilder;->withDSSClient(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;)Lcom/amazon/whisperjoin/provisionerSDK/configuration/defaults/ProvisionerSDKConfiguration$ConfigurationBuilder;

    .line 70
    invoke-virtual {v0, p4}, Lcom/amazon/whisperjoin/provisionerSDK/configuration/defaults/ProvisionerSDKConfiguration$ConfigurationBuilder;->withOveractiveConfiguration(Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;)Lcom/amazon/whisperjoin/provisionerSDK/configuration/defaults/ProvisionerSDKConfiguration$ConfigurationBuilder;

    .line 71
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/provisionerSDK/configuration/defaults/ProvisionerSDKConfiguration$ConfigurationBuilder;->build()Ljava/util/Collection;

    move-result-object p1

    .line 73
    new-instance p2, Lcom/amazon/whisperjoin/provisionerSDK/ProvisioningManager$ProvisioningManagerBuilder;

    invoke-direct {p2}, Lcom/amazon/whisperjoin/provisionerSDK/ProvisioningManager$ProvisioningManagerBuilder;-><init>()V

    .line 74
    invoke-virtual {p2, p1}, Lcom/amazon/whisperjoin/provisionerSDK/ProvisioningManager$ProvisioningManagerBuilder;->withRadioConfiguration(Ljava/util/Collection;)Lcom/amazon/whisperjoin/provisionerSDK/ProvisioningManager$ProvisioningManagerBuilder;

    .line 75
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/provisionerSDK/ProvisioningManager$ProvisioningManagerBuilder;->build()Lcom/amazon/whisperjoin/provisionerSDK/ProvisioningManager;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addDeviceEventObserver(Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers$RunnableEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers$RunnableEvent<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;",
            ">;>;)V"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;->mDeviceEventObservers:Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;

    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;->addObserver(Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers$RunnableEvent;)V

    return-void
.end method

.method public addDiscoveryEventObserver(Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers$RunnableEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers$RunnableEvent<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;",
            ">;>;)V"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;->mDiscoveryEventObservers:Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;

    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;->addObserver(Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers$RunnableEvent;)V

    return-void
.end method

.method public createWJProvsionee(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;)Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;
    .locals 2

    .line 116
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getRadios()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;->mProvisioningManager:Lcom/amazon/whisperjoin/provisionerSDK/ProvisioningManager;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getRadios()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/whisperjoin/provisionerSDK/ProvisioningManager;->createPeripheralDevice(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;)Lcom/amazon/whisperjoin/common/sharedtypes/devices/interfaces/PeripheralDevice;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice;

    .line 120
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;->mMetricsRecorderProvider:Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;

    invoke-direct {v0, p1, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;-><init>(Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice;Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;)V

    return-object v0

    .line 117
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Expected device to have 1 radio"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public pauseDiscovery()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;->mProvisioningManager:Lcom/amazon/whisperjoin/provisionerSDK/ProvisioningManager;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/provisionerSDK/ProvisioningManager;->pauseDiscovery()V

    return-void
.end method

.method public removeDeviceEventObserver(Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers$RunnableEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers$RunnableEvent<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;",
            ">;>;)V"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;->mDeviceEventObservers:Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;

    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;->removeObserver(Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers$RunnableEvent;)V

    return-void
.end method

.method public removeDiscoveryEventObserver(Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers$RunnableEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers$RunnableEvent<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/ProvisioningEvent<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DiscoveryEvent;",
            ">;>;)V"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;->mDiscoveryEventObservers:Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;

    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;->removeObserver(Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers$RunnableEvent;)V

    return-void
.end method

.method public resumeDiscovery()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;->mProvisioningManager:Lcom/amazon/whisperjoin/provisionerSDK/ProvisioningManager;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/provisionerSDK/ProvisioningManager;->resumeDiscovery()V

    return-void
.end method

.method public startDiscovery(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/RadioNotEnabledException;,
            Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/ScanException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;->mProvisioningManager:Lcom/amazon/whisperjoin/provisionerSDK/ProvisioningManager;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;->getDeviceFilter()Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;->getScanningMode()Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/amazon/whisperjoin/provisionerSDK/ProvisioningManager;->startPeripheralDeviceDiscovery(Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter;Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;)V

    return-void
.end method

.method public stopDiscovery()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;->mProvisioningManager:Lcom/amazon/whisperjoin/provisionerSDK/ProvisioningManager;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/provisionerSDK/ProvisioningManager;->stopPeripheralDeviceDiscovery()V

    return-void
.end method
