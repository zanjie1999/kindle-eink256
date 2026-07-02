.class public Lcom/amazon/whisperjoin/provisionerSDK/ProvisioningManager;
.super Ljava/lang/Object;
.source "ProvisioningManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/provisionerSDK/ProvisioningManager$ProvisioningManagerBuilder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.whisperjoin.provisionerSDK.ProvisioningManager"


# instance fields
.field private mDiscoveryController:Lcom/amazon/whisperjoin/common/sharedtypes/utility/DiscoveryController;

.field private final mRadioConfiguration:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/configuration/RadioConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/amazon/whisperjoin/provisionerSDK/ProvisioningManager$ProvisioningManagerBuilder;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {p1}, Lcom/amazon/whisperjoin/provisionerSDK/ProvisioningManager$ProvisioningManagerBuilder;->access$000(Lcom/amazon/whisperjoin/provisionerSDK/ProvisioningManager$ProvisioningManagerBuilder;)Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/ProvisioningManager;->mRadioConfiguration:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public createPeripheralDevice(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;)Lcom/amazon/whisperjoin/common/sharedtypes/devices/interfaces/PeripheralDevice;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<DeviceType::",
            "Lcom/amazon/whisperjoin/common/sharedtypes/devices/interfaces/PeripheralDevice;",
            ">(",
            "Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;",
            "Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;",
            ")TDeviceType;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/ProvisioningManager;->mRadioConfiguration:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/common/sharedtypes/configuration/RadioConfiguration;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/configuration/RadioConfiguration;->getConnectionFactory()Lcom/amazon/whisperjoin/common/sharedtypes/radios/ConnectionFactory;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 136
    :try_start_0
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/configuration/RadioConfiguration;->getConnectionFactory()Lcom/amazon/whisperjoin/common/sharedtypes/radios/ConnectionFactory;

    move-result-object v0

    .line 137
    invoke-interface {v0, p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/radios/ConnectionFactory;->create(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;)Lcom/amazon/whisperjoin/common/sharedtypes/devices/interfaces/PeripheralDevice;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 139
    sget-object p2, Lcom/amazon/whisperjoin/provisionerSDK/ProvisioningManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "unable to create requested device interface"

    invoke-static {p2, v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1

    .line 132
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Provisioning manager does not have a connection factory"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public pauseDiscovery()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/ProvisioningManager;->mDiscoveryController:Lcom/amazon/whisperjoin/common/sharedtypes/utility/DiscoveryController;

    if-nez v0, :cond_0

    .line 95
    sget-object v0, Lcom/amazon/whisperjoin/provisionerSDK/ProvisioningManager;->TAG:Ljava/lang/String;

    const-string v1, "Can\'t pause discovery if not active"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 99
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/DiscoveryController;->stopDiscovery()V

    return-void
.end method

.method public resumeDiscovery()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/ProvisioningManager;->mDiscoveryController:Lcom/amazon/whisperjoin/common/sharedtypes/utility/DiscoveryController;

    if-nez v0, :cond_0

    .line 107
    sget-object v0, Lcom/amazon/whisperjoin/provisionerSDK/ProvisioningManager;->TAG:Ljava/lang/String;

    const-string v1, "Must start first before pause/resume can be called"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 110
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/DiscoveryController;->startDiscovery()V

    return-void
.end method

.method public startPeripheralDeviceDiscovery(Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter;Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/RadioNotEnabledException;,
            Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/ScanException;
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 73
    sget-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;->PROHIBITED:Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

    invoke-virtual {p2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/ProvisioningManager;->mRadioConfiguration:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/common/sharedtypes/configuration/RadioConfiguration;

    .line 78
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/configuration/RadioConfiguration;->getRadioType()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;->BLE:Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;

    invoke-virtual {v2}, Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    new-instance v1, Lcom/amazon/whisperjoin/provisionerSDK/devices/PeripheralDeviceDetailsScanDataProcessor;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/configuration/RadioConfiguration;->getConnectionFactory()Lcom/amazon/whisperjoin/common/sharedtypes/radios/ConnectionFactory;

    move-result-object v0

    new-instance v2, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;

    invoke-direct {v2}, Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;-><init>()V

    invoke-direct {v1, v0, v2}, Lcom/amazon/whisperjoin/provisionerSDK/devices/PeripheralDeviceDetailsScanDataProcessor;-><init>(Lcom/amazon/whisperjoin/common/sharedtypes/radios/ConnectionFactory;Lcom/amazon/whisperbridge/ble/AdvertisementData$Factory;)V

    .line 84
    new-instance v0, Lcom/amazon/whisperjoin/provisionerSDK/utility/BleScanDataCoalescer;

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/provisionerSDK/utility/BleScanDataCoalescer;-><init>(Lcom/amazon/whisperjoin/provisionerSDK/devices/PeripheralDeviceDetailsScanDataProcessor;)V

    .line 85
    new-instance v1, Lcom/amazon/whisperjoin/common/sharedtypes/utility/DiscoveryController;

    iget-object v2, p0, Lcom/amazon/whisperjoin/provisionerSDK/ProvisioningManager;->mRadioConfiguration:Ljava/util/Collection;

    invoke-direct {v1, p1, v2, v0, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/DiscoveryController;-><init>(Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter;Ljava/util/Collection;Lcom/amazon/whisperjoin/common/sharedtypes/radios/DiscoveryService$BleScanDataCoalescer;Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;)V

    iput-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/ProvisioningManager;->mDiscoveryController:Lcom/amazon/whisperjoin/common/sharedtypes/utility/DiscoveryController;

    .line 87
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/DiscoveryController;->startDiscovery()V

    return-void

    .line 79
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "only expect BLE radio configuration"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_1
    new-instance p1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/ScanException;

    const-string p2, "Prohibited from scanning"

    invoke-direct {p1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/ScanException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "scanningMode can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 66
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "deviceFilter can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public stopPeripheralDeviceDiscovery()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/ProvisioningManager;->mDiscoveryController:Lcom/amazon/whisperjoin/common/sharedtypes/utility/DiscoveryController;

    if-nez v0, :cond_0

    .line 119
    sget-object v0, Lcom/amazon/whisperjoin/provisionerSDK/ProvisioningManager;->TAG:Ljava/lang/String;

    const-string v1, "Stop discovery called while discovery isn\'t active"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 122
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/DiscoveryController;->stopDiscovery()V

    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/ProvisioningManager;->mDiscoveryController:Lcom/amazon/whisperjoin/common/sharedtypes/utility/DiscoveryController;

    return-void
.end method
