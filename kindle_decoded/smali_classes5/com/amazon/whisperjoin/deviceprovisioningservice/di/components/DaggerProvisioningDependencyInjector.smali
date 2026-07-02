.class public final Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningDependencyInjector;
.super Ljava/lang/Object;
.source "DaggerProvisioningDependencyInjector.java"

# interfaces
.implements Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningDependencyInjector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningDependencyInjector$Builder;
    }
.end annotation


# instance fields
.field private provisioningComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;


# direct methods
.method private constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningDependencyInjector$Builder;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningDependencyInjector;->initialize(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningDependencyInjector$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningDependencyInjector$Builder;Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningDependencyInjector$1;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningDependencyInjector;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningDependencyInjector$Builder;)V

    return-void
.end method

.method public static builder()Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningDependencyInjector$Builder;
    .locals 2

    .line 18
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningDependencyInjector$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningDependencyInjector$Builder;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningDependencyInjector$1;)V

    return-object v0
.end method

.method private initialize(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningDependencyInjector$Builder;)V
    .locals 0

    .line 23
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningDependencyInjector$Builder;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningDependencyInjector$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningDependencyInjector;->provisioningComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    return-void
.end method

.method private injectAutoDiscoveryPresenter(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningDependencyInjector;->provisioningComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    .line 40
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;->providesDiscoverySettings()Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 39
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;

    .line 37
    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter_MembersInjector;->injectMDiscoverySettings(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;)V

    .line 42
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningDependencyInjector;->provisioningComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    .line 45
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;->providesDeviceDiscoveryStream()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream;

    move-result-object v0

    .line 44
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream;

    .line 42
    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter_MembersInjector;->injectMDeviceDiscoveryStream(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream;)V

    .line 47
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningDependencyInjector;->provisioningComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    .line 50
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;->provideCustomerProvisioneesSetupStatusSyncCoordinator()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/CustomerProvisioneesSetupStatusSyncCoordinator;

    move-result-object v0

    .line 49
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/CustomerProvisioneesSetupStatusSyncCoordinator;

    .line 47
    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter_MembersInjector;->injectMAutoDiscoverySyncCoordinator(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/CustomerProvisioneesSetupStatusSyncCoordinator;)V

    .line 52
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningDependencyInjector;->provisioningComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    .line 55
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;->providesFFSArcusSyncCoordinator()Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;

    move-result-object v0

    .line 54
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;

    .line 52
    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter_MembersInjector;->injectMFFSArcusSyncCoordinator(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;)V

    .line 57
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningDependencyInjector;->provisioningComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    .line 60
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;->providesProvisionerClientData()Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    move-result-object v0

    .line 59
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    .line 57
    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter_MembersInjector;->injectMProvisionerClientData(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;)V

    .line 62
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningDependencyInjector;->provisioningComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    .line 65
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;->providesWJErrorMapper()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    move-result-object v0

    .line 64
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    .line 62
    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter_MembersInjector;->injectMWJErrorMapper(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;)V

    .line 67
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningDependencyInjector;->provisioningComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    .line 70
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;->providesAutoDiscoveryMetricsRecorder()Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/AutoDiscoveryMetricsRecorder;

    move-result-object v0

    .line 69
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/AutoDiscoveryMetricsRecorder;

    .line 67
    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter_MembersInjector;->injectMMetricsRecorder(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/AutoDiscoveryMetricsRecorder;)V

    .line 72
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningDependencyInjector;->provisioningComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    .line 75
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;->providesDSSClient()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    move-result-object v0

    .line 74
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    .line 72
    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter_MembersInjector;->injectMDssClient(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;)V

    return-object p1
.end method

.method private injectControlledSetupPresenter(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningDependencyInjector;->provisioningComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    .line 85
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;->providesFFSArcusSyncCoordinator()Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 84
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;

    .line 82
    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter_MembersInjector;->injectMFFSArcusSyncCoordinator(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;)V

    .line 87
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningDependencyInjector;->provisioningComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    .line 90
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;->providesProvisionerClientData()Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    move-result-object v0

    .line 89
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    .line 87
    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter_MembersInjector;->injectMProvisionerClientData(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;)V

    return-object p1
.end method


# virtual methods
.method public inject(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningDependencyInjector;->injectAutoDiscoveryPresenter(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;

    return-void
.end method

.method public inject(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningDependencyInjector;->injectControlledSetupPresenter(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/ControlledSetupPresenter;

    return-void
.end method
