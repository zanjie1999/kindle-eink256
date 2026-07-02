.class public final Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;
.super Ljava/lang/Object;
.source "UGSProvisioner.kt"

# interfaces
.implements Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenterContract$View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUGSProvisioner.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UGSProvisioner.kt\ncom/amazon/kindle/ffs/provisioners/UGSProvisioner\n*L\n1#1,279:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner$Companion;


# instance fields
.field private actualIntent:Landroid/content/Intent;

.field private connectingToNetwork:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private device:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;

.field private final ffsPlugin:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

.field private lastProvisioningDetailsViewModel:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ProvisioningDetailsViewModel;

.field private lastWifiNetworksList:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;

.field private logger:Lcom/amazon/kindle/krx/logging/ILogger;

.field private mPresenter:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;

.field private metricsManager:Lcom/amazon/kindle/ffs/metrics/MetricsManager;

.field private saveWiFiToLocker:Z

.field private successBottomSheetBuilder:Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheetBuilder;

.field private wiFiListActivityBuilder:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivityBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->Companion:Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-object v0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->Companion:Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;->get()Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->ffsPlugin:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    .line 48
    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    .line 49
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->ffsPlugin:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->context:Landroid/content/Context;

    .line 50
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->ffsPlugin:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getMetricsManager()Lcom/amazon/kindle/ffs/metrics/MetricsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->metricsManager:Lcom/amazon/kindle/ffs/metrics/MetricsManager;

    .line 55
    sget-object v0, Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheetActivity;->Companion:Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheetActivity$Companion;

    iput-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->successBottomSheetBuilder:Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheetBuilder;

    .line 56
    sget-object v0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity;->Companion:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity$Companion;

    iput-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->wiFiListActivityBuilder:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivityBuilder;

    return-void

    .line 47
    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v0, 0x0

    throw v0
.end method

.method private final attachView()V
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/provisioners/UGSProvisionerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "attachView called against valid controlled setup presenter."

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->mPresenter:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;->attachView(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenterContract$View;)V

    :cond_0
    return-void
.end method

.method private final buildControlledSetupPresenter(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;
    .locals 1

    .line 271
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;->getDeviceIdentity()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfigurationFactory;->createWorkflowConfigurationForTargetDevice(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;

    move-result-object p2

    const-string v0, "WorkflowConfigurationFac\u2026ce(device.deviceIdentity)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    sget-object v0, Lcom/amazon/kindle/ffs/utils/DevelopmentUtils;->INSTANCE:Lcom/amazon/kindle/ffs/utils/DevelopmentUtils;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/utils/DevelopmentUtils;->isUgsMockingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    sget-object v0, Lcom/amazon/kindle/ffs/utils/DevelopmentUtils;->INSTANCE:Lcom/amazon/kindle/ffs/utils/DevelopmentUtils;

    invoke-virtual {v0, p1, p3, p2}, Lcom/amazon/kindle/ffs/utils/DevelopmentUtils;->getMockControlledSetupPresenter(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;)Lcom/amazon/kindle/ffs/utils/MockControlledSetupPresenter;

    move-result-object p1

    return-object p1

    .line 276
    :cond_0
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;

    invoke-direct {v0, p1, p3, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;-><init>(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;)V

    return-object v0
.end method

.method private final restartUGSLauncher()V
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->ffsPlugin:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getUgsLauncher()Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->restartDiscovery()V

    return-void
.end method

.method private final showProvisioningDetails(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 181
    sget-object v0, Lcom/amazon/kindle/ffs/receiver/CloseActivityBroadcastReceiver;->Companion:Lcom/amazon/kindle/ffs/receiver/CloseActivityBroadcastReceiver$Companion;

    iget-object v1, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->context:Landroid/content/Context;

    const-class v2, Lcom/amazon/kindle/ffs/view/pairing/PairingActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/ffs/receiver/CloseActivityBroadcastReceiver$Companion;->closeActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 183
    iput-object p1, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->lastWifiNetworksList:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;

    .line 184
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->wiFiListActivityBuilder:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivityBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->context:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivityBuilder;->getIntentWithArgumentsForNetworkSelection(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->actualIntent:Landroid/content/Intent;

    if-eqz p1, :cond_0

    .line 185
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->requireOpenActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    .line 181
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    :cond_2
    :goto_0
    return-void
.end method

.method private final startDiscovery()V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/provisioners/UGSProvisionerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "startDiscovery called against valid controlled setup presenter."

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->mPresenter:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;->discoverDevices()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getActualIntent()Landroid/content/Intent;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->actualIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public final getDevice()Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->device:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;

    return-object v0
.end method

.method public final getLogger$ffs_debug()Lcom/amazon/kindle/krx/logging/ILogger;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    return-object v0
.end method

.method public final getSaveWiFiToLocker$ffs_debug()Z
    .locals 1

    .line 253
    iget-boolean v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->saveWiFiToLocker:Z

    return v0
.end method

.method public final requireOpenActivity(Landroid/content/Intent;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 258
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->ffsPlugin:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->requireOpenActivity$ffs_debug(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public final rescanNetworks()V
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->mPresenter:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;->refreshAvailableNetworks()V

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->wiFiListActivityBuilder:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivityBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->context:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivityBuilder;->getIntentWithArgumentsForScanning(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->requireOpenActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final restartSetup()V
    .locals 3

    .line 240
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/provisioners/UGSProvisionerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "restartSetup()"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->stopSetup()V

    .line 242
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->restartUGSLauncher()V

    return-void
.end method

.method public final selectNetwork(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;Z)V
    .locals 5

    const-string v0, "wifiConfiguration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    iget-boolean v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->saveWiFiToLocker:Z

    iput-boolean v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->saveWiFiToLocker:Z

    .line 223
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;->getSsid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->connectingToNetwork:Ljava/lang/String;

    .line 224
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->wiFiListActivityBuilder:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivityBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->lastWifiNetworksList:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;->getSsid()Ljava/lang/String;

    move-result-object v3

    const-string v4, "wifiConfiguration.ssid"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2, v3, p2}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivityBuilder;->getIntentWithArgumentsForConnecting(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->requireOpenActivity(Landroid/content/Intent;)V

    .line 226
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ClientProvisioningDataModel;

    invoke-direct {v0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ClientProvisioningDataModel;-><init>(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConfiguration;Z)V

    .line 227
    iget-object p1, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->mPresenter:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;->provisionDevice(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ClientProvisioningDataModel;)V

    .line 228
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/provisioners/UGSProvisionerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "provisioned Device with dataModel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 224
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final setActualIntent(Landroid/content/Intent;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->actualIntent:Landroid/content/Intent;

    return-void
.end method

.method public final setDevice(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->device:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;

    return-void
.end method

.method public final setLogger$ffs_debug(Lcom/amazon/kindle/krx/logging/ILogger;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    return-void
.end method

.method public showDiscoveredDevices(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/DiscoveredDevicesViewModel;)V
    .locals 5

    .line 126
    iget-object p1, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/provisioners/UGSProvisionerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "showDiscoveredDevices called."

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object p1, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/provisioners/UGSProvisionerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->device:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;->getAdvertisedName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->device:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;->getProductIndex()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->device:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;->getDeviceIdentity()Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    sget-object p1, Lcom/amazon/kindle/ffs/utils/UGSTimeout;->Companion:Lcom/amazon/kindle/ffs/utils/UGSTimeout$Companion;

    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/utils/UGSTimeout$Companion;->stopExistingTimeout()V

    .line 130
    iget-object p1, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/provisioners/UGSProvisionerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting up device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->device:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object p1, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->mPresenter:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->device:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;

    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;->chooseDevice(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;)V

    :cond_3
    return-void
.end method

.method public showIdleState(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/IdleViewModel;)V
    .locals 2

    .line 135
    iget-object p1, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/provisioners/UGSProvisionerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "showIdleState called"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showInProgress(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/InProgressViewModel;)V
    .locals 4

    .line 144
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/provisioners/UGSProvisionerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ViewModel;->getState()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showProvisioningDetails(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ProvisioningDetailsViewModel;)V
    .locals 3

    const-string v0, "viewModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    iput-object p1, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->lastProvisioningDetailsViewModel:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ProvisioningDetailsViewModel;

    .line 170
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ProvisioningDetailsViewModel;->getProvisioningDetails()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->showProvisioningDetails(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;)V

    .line 171
    sget-object p1, Lcom/amazon/kindle/ffs/utils/UGSTimeout;->Companion:Lcom/amazon/kindle/ffs/utils/UGSTimeout$Companion;

    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->device:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;

    const-wide/32 v1, 0x3a980

    invoke-virtual {p1, v1, v2, v0}, Lcom/amazon/kindle/ffs/utils/UGSTimeout$Companion;->startTimeout(JLcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;)V

    return-void
.end method

.method public showSetupComplete(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/SetupCompleteViewModel;)V
    .locals 10

    .line 194
    iget-object p1, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/provisioners/UGSProvisionerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SUCCESS! Your device was successfully provisioned"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    sget-object p1, Lcom/amazon/kindle/ffs/utils/UGSTimeout;->Companion:Lcom/amazon/kindle/ffs/utils/UGSTimeout$Companion;

    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/utils/UGSTimeout$Companion;->stopExistingTimeout()V

    .line 197
    sget-object p1, Lcom/amazon/kindle/ffs/receiver/CloseActivityBroadcastReceiver;->Companion:Lcom/amazon/kindle/ffs/receiver/CloseActivityBroadcastReceiver$Companion;

    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->context:Landroid/content/Context;

    const-class v1, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kindle/ffs/receiver/CloseActivityBroadcastReceiver$Companion;->closeActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 199
    iget-object p1, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->successBottomSheetBuilder:Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheetBuilder;

    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->context:Landroid/content/Context;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheetBuilder;->getIntentWithArguments(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->requireOpenActivity(Landroid/content/Intent;)V

    .line 200
    iget-object p1, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/provisioners/UGSProvisionerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Success Bottom Sheet displayed"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object p1, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->ffsPlugin:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getUgsLauncher()Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;->getInitTimestamp()Ljava/util/Date;

    move-result-object p1

    .line 204
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    if-eqz p1, :cond_0

    .line 206
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const/16 p1, 0x3e8

    int-to-long v2, p1

    div-long/2addr v0, v2

    .line 207
    iget-object p1, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/provisioners/UGSProvisionerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UGS flow lasted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " seconds"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v4, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->metricsManager:Lcom/amazon/kindle/ffs/metrics/MetricsManager;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    long-to-int p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v5, "FFS_UGS_SUCCESS"

    invoke-virtual/range {v4 .. v9}, Lcom/amazon/kindle/ffs/metrics/MetricsManager;->reportUGSFastMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_0
    return-void

    .line 197
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1
.end method

.method public showSetupFailure(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/SetupFailureViewModel;)V
    .locals 10

    .line 100
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/provisioners/UGSProvisionerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showSetupFailure called. The cause was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/SetupFailureViewModel;->getFailureName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " and the wjError was "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/SetupFailureViewModel;->getWJError()Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    sget-object v0, Lcom/amazon/kindle/ffs/utils/UGSTimeout;->Companion:Lcom/amazon/kindle/ffs/utils/UGSTimeout$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/utils/UGSTimeout$Companion;->stopExistingTimeout()V

    .line 104
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->device:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/amazon/kindle/ffs/utils/SeenDevices;->INSTANCE:Lcom/amazon/kindle/ffs/utils/SeenDevices;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/ffs/utils/SeenDevices;->subtractAVisit(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 106
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/SetupFailureViewModel;->getWJError()Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v3

    :goto_2
    if-eqz v0, :cond_4

    .line 108
    iget-object v4, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->metricsManager:Lcom/amazon/kindle/ffs/metrics/MetricsManager;

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;->getDomain()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;->getErrorType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    const-string v5, "FFS_UGS_SETUP_ERROR"

    invoke-virtual/range {v4 .. v9}, Lcom/amazon/kindle/ffs/metrics/MetricsManager;->reportUGSFastMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 112
    :cond_4
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->actualIntent:Landroid/content/Intent;

    if-nez v0, :cond_5

    .line 113
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->wiFiListActivityBuilder:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivityBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->context:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivityBuilder;->getIntentWithArgumentsForScanning(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->actualIntent:Landroid/content/Intent;

    .line 116
    :cond_5
    sget-object v0, Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivity;->Companion:Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivity$Companion;

    iget-object v1, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->actualIntent:Landroid/content/Intent;

    if-eqz v1, :cond_7

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/SetupFailureViewModel;->getWJError()Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object v3

    :cond_6
    invoke-virtual {v0, v1, v3}, Lcom/amazon/kindle/ffs/view/AbstractBottomSheetActivity$Companion;->addError(Landroid/content/Intent;Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->requireOpenActivity(Landroid/content/Intent;)V

    .line 118
    iget-object p1, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/provisioners/UGSProvisionerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error popup displayed"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 116
    :cond_7
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3
.end method

.method public showWifiConnectionError(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel;)V
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 152
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel;->getWJError()Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 153
    :goto_0
    iget-object v2, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/provisioners/UGSProvisionerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showWifiConnectionError called. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "The cause was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    .line 154
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel;->getWifiConnectionError()Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v0

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "The wjError was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 153
    invoke-interface {v2, v3, v4}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v5, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->metricsManager:Lcom/amazon/kindle/ffs/metrics/MetricsManager;

    const/4 v7, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;->getDomain()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v8, v2

    goto :goto_2

    :cond_2
    move-object v8, v0

    :goto_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;->getErrorType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_3
    move-object v9, v0

    const/4 v10, 0x0

    const-string v6, "FFS_UGS_WIFI_FAILURE"

    invoke-virtual/range {v5 .. v10}, Lcom/amazon/kindle/ffs/metrics/MetricsManager;->reportUGSFastMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    if-eqz p1, :cond_5

    .line 159
    invoke-static {}, Lcom/amazon/kindle/ffs/provisioners/UGSProvisionerKt;->access$getBAD_PASSWORD_ERROR$p()Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v1, 0x10000000

    if-eqz v0, :cond_4

    .line 160
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->wiFiListActivityBuilder:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivityBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->context:Landroid/content/Context;

    invoke-interface {v0, v2, p1}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivityBuilder;->getIntentWithArgumentsForPasswordInput(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->requireOpenActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 162
    :cond_4
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->wiFiListActivityBuilder:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivityBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->context:Landroid/content/Context;

    invoke-interface {v0, v2, p1}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivityBuilder;->getIntentWithArgumentsForFixup(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->requireOpenActivity(Landroid/content/Intent;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public final start(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;)V
    .locals 2

    const-string v0, "device"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->ffsPlugin:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    invoke-virtual {v1}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getProvisioningServiceConfiguration$ffs_debug()Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->buildControlledSetupPresenter(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->mPresenter:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;

    .line 71
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->attachView()V

    .line 72
    iput-object p1, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->device:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;

    const/4 p1, 0x0

    .line 73
    iput-boolean p1, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->saveWiFiToLocker:Z

    .line 74
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->startDiscovery()V

    return-void
.end method

.method public final stopSetup()V
    .locals 3

    .line 232
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-static {}, Lcom/amazon/kindle/ffs/provisioners/UGSProvisionerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "stopSetup()"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    sget-object v0, Lcom/amazon/kindle/ffs/receiver/CloseActivityBroadcastReceiver;->Companion:Lcom/amazon/kindle/ffs/receiver/CloseActivityBroadcastReceiver$Companion;

    iget-object v1, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/ffs/receiver/CloseActivityBroadcastReceiver$Companion;->closeAllUGSActivities(Landroid/content/Context;)V

    .line 234
    sget-object v0, Lcom/amazon/kindle/ffs/utils/UGSTimeout;->Companion:Lcom/amazon/kindle/ffs/utils/UGSTimeout$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/utils/UGSTimeout$Companion;->stopExistingTimeout()V

    .line 235
    iget-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->mPresenter:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;->destroy()V

    :cond_0
    const/4 v0, 0x0

    .line 236
    iput-object v0, p0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;->mPresenter:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;

    return-void
.end method
