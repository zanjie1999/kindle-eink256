.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule;
.super Ljava/lang/Object;
.source "DiscoveryConfigurationModule.java"


# static fields
.field private static final FFS_DISCOVERY_COUNT_LIMIT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DiscoveryConfigurationModule"

.field private static final UGS_DISCOVERY_COUNT_LIMIT:I = 0x1e


# instance fields
.field private final mEnablePhilips:Z

.field private final mOveractiveConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;

.field private final mScanningMode:Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;ZLcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule;->mScanningMode:Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

    .line 37
    iput-boolean p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule;->mEnablePhilips:Z

    .line 38
    iput-object p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule;->mOveractiveConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;

    return-void
.end method


# virtual methods
.method providesDiscoverySettings(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;)Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;
    .locals 1

    .line 56
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;->FFS:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

    invoke-virtual {p3, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/16 p3, 0x1e

    .line 57
    :goto_0
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;->createDeviceFilter()Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter;

    move-result-object p1

    invoke-direct {v0, p1, p2, p3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;-><init>(Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter;Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;I)V

    return-object v0
.end method

.method providesOveractiveConfiguration()Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule;->mOveractiveConfiguration:Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;

    return-object v0
.end method

.method providesScanFilter(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation

    .line 63
    iget-boolean p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule;->mEnablePhilips:Z

    if-eqz p1, :cond_0

    .line 64
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule;->TAG:Ljava/lang/String;

    const-string v0, "Vending WJ and Philips scan filters"

    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/ble/ScanFilters;->getScanFiltersForWJandPhilips()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 67
    :cond_0
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule;->TAG:Ljava/lang/String;

    const-string v0, "Vending WJ scan filter"

    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/ble/ScanFilters;->getDefaultScanFilters()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method providesScanningMode()Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule;->mScanningMode:Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

    return-object v0
.end method

.method providesWJDeviceSetupModeSupportedPredicate(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/WJDeviceSetupModeSupportedPredicate;
    .locals 1

    .line 49
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/WJDeviceSetupModeSupportedPredicate;

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;->hasBarcodeData()Z

    move-result p2

    invoke-direct {v0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/WJDeviceSetupModeSupportedPredicate;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;Z)V

    return-object v0
.end method
