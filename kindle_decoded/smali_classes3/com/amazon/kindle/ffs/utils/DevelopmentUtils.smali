.class public final Lcom/amazon/kindle/ffs/utils/DevelopmentUtils;
.super Ljava/lang/Object;
.source "DevelopmentUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDevelopmentUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DevelopmentUtils.kt\ncom/amazon/kindle/ffs/utils/DevelopmentUtils\n*L\n1#1,225:1\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/ffs/utils/DevelopmentUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Lcom/amazon/kindle/ffs/utils/DevelopmentUtils;

    invoke-direct {v0}, Lcom/amazon/kindle/ffs/utils/DevelopmentUtils;-><init>()V

    sput-object v0, Lcom/amazon/kindle/ffs/utils/DevelopmentUtils;->INSTANCE:Lcom/amazon/kindle/ffs/utils/DevelopmentUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getMockWifiNetwork$default(Lcom/amazon/kindle/ffs/utils/DevelopmentUtils;Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;ILjava/lang/Object;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 120
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/ffs/utils/DevelopmentUtils;->getMockWifiConfiguration(Ljava/lang/String;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/ffs/utils/DevelopmentUtils;->getMockWifiNetwork(Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getMockAutoDiscoveryPresenter(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;)Lcom/amazon/kindle/ffs/utils/MockAutoDiscoveryPresenter;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "provisioningServiceConfiguration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    new-instance v0, Lcom/amazon/kindle/ffs/utils/MockAutoDiscoveryPresenter;

    invoke-direct {v0, p1, p2}, Lcom/amazon/kindle/ffs/utils/MockAutoDiscoveryPresenter;-><init>(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;)V

    return-object v0
.end method

.method public final getMockAvailableWifiNetworks()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;

    const/4 v2, 0x0

    const-string v3, "Pretty Fly for a WiFi"

    .line 128
    invoke-static {p0, v3, v2, v0, v2}, Lcom/amazon/kindle/ffs/utils/DevelopmentUtils;->getMockWifiNetwork$default(Lcom/amazon/kindle/ffs/utils/DevelopmentUtils;Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;ILjava/lang/Object;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const-string v3, "Obi Lan Kenobi"

    invoke-static {p0, v3, v2, v0, v2}, Lcom/amazon/kindle/ffs/utils/DevelopmentUtils;->getMockWifiNetwork$default(Lcom/amazon/kindle/ffs/utils/DevelopmentUtils;Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;ILjava/lang/Object;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v1, v5

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-array v0, v0, [Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;

    const-string v3, "Fly you fools"

    .line 129
    invoke-virtual {p0, v3, v2}, Lcom/amazon/kindle/ffs/utils/DevelopmentUtils;->getMockWifiNetwork(Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;

    move-result-object v3

    aput-object v3, v0, v4

    const-string v3, "Po-tay-toes"

    invoke-virtual {p0, v3, v2}, Lcom/amazon/kindle/ffs/utils/DevelopmentUtils;->getMockWifiNetwork(Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;

    move-result-object v2

    aput-object v2, v0, v5

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 130
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;

    .line 131
    new-instance v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;

    invoke-direct {v3, v1, v0, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;-><init>(Ljava/util/List;Ljava/util/List;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;)V

    return-object v3
.end method

.method public final getMockControlledSetupPresenter(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;)Lcom/amazon/kindle/ffs/utils/MockControlledSetupPresenter;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workflowConfiguration"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    new-instance v0, Lcom/amazon/kindle/ffs/utils/MockControlledSetupPresenter;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazon/kindle/ffs/utils/MockControlledSetupPresenter;-><init>(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;)V

    return-object v0
.end method

.method public final getMockDevice()Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;
    .locals 4

    .line 77
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;

    const-string v1, "TEST"

    const-string v2, "TEST IDENTITY"

    const-string v3, "Cool Device"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getMockDiscoveredDevices()Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevices;
    .locals 2

    .line 84
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevices;

    invoke-virtual {p0}, Lcom/amazon/kindle/ffs/utils/DevelopmentUtils;->getMockDevice()Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevices;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final getMockDiscoveredDevicesViewModel()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/DiscoveredDevicesViewModel;
    .locals 2

    .line 91
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/DiscoveredDevicesViewModel;

    invoke-virtual {p0}, Lcom/amazon/kindle/ffs/utils/DevelopmentUtils;->getMockDiscoveredDevices()Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevices;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/DiscoveredDevicesViewModel;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevices;)V

    return-object v0
.end method

.method public final getMockProvisioningDetailsViewModel()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;
    .locals 2

    .line 140
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;-><init>()V

    .line 141
    invoke-virtual {p0}, Lcom/amazon/kindle/ffs/utils/DevelopmentUtils;->getMockAvailableWifiNetworks()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;->setAvailableWifiNetworks(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;

    return-object v0
.end method

.method public final getMockWifiConfiguration(Ljava/lang/String;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;
    .locals 2

    const-string v0, "ssid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\"password\""

    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;->createWpaWifiConfiguration(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public final getMockWifiNetwork(Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;
    .locals 1

    const-string v0, "ssid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/ffs/utils/DevelopmentUtils;->getMockWifiScanResult(Ljava/lang/String;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResult;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;-><init>(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResult;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;)V

    return-object v0
.end method

.method public final getMockWifiScanResult(Ljava/lang/String;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResult;
    .locals 3

    const-string v0, "ssid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResult;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;->WPA_PSK:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;

    invoke-direct {v0, p1, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResult;-><init>(Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;)V

    return-object v0
.end method

.method public final isUgsMockingEnabled()Z
    .locals 3

    .line 54
    sget-object v0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->Companion:Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;->get()Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "FfsDebugSettings"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "MockUgs"

    .line 55
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :cond_0
    return v1
.end method

.method public final setUsgMockingEnabled(Z)V
    .locals 3

    .line 63
    sget-object v0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->Companion:Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;->get()Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "FfsDebugSettings"

    .line 65
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 66
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "MockUgs"

    .line 67
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 68
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 p1, 0x1

    const-string v1, "UGS mocking enabled. Restart app to avoid transient issues"

    .line 69
    invoke-static {v0, v1, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
