.class public final Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector;
.super Ljava/lang/Object;
.source "DaggerProvisionerServicesDependencyInjector.java"

# interfaces
.implements Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesDependencyInjector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector$Builder;
    }
.end annotation


# instance fields
.field private provisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;


# direct methods
.method private constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector$Builder;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector;->initialize(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector$Builder;Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector$1;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector$Builder;)V

    return-void
.end method

.method public static builder()Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector$Builder;
    .locals 2

    .line 23
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector$Builder;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector$1;)V

    return-object v0
.end method

.method private initialize(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector$Builder;)V
    .locals 0

    .line 28
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector$Builder;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector;->provisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    return-void
.end method

.method private injectAssociatedCredentialsSyncService(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService;)Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService;
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector;->provisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    .line 114
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;->providesCredentialSyncCoordinator()Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 113
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator;

    .line 111
    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService_MembersInjector;->injectMZigbeeCredentialsSyncCoordinator(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService;Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator;)V

    .line 116
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector;->provisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    .line 120
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;->providesAssociatedDeviceCredentialsSyncCoordinator()Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncCoordinator;

    move-result-object v0

    .line 119
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncCoordinator;

    .line 117
    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService_MembersInjector;->injectMAssociatedDeviceCredentialsSyncCoordinator(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService;Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncCoordinator;)V

    .line 122
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector;->provisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    .line 125
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;->getFFSArcusSyncCoordinator()Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;

    move-result-object v0

    .line 124
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;

    .line 122
    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService_MembersInjector;->injectMFFSArcusSyncCoordinator(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService;Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;)V

    .line 127
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector;->provisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    .line 130
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;->providesProvisionerClientData()Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    move-result-object v0

    .line 129
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    .line 127
    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService_MembersInjector;->injectMProvisionerClientData(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;)V

    .line 132
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector;->provisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    .line 135
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;->providesZigbeeCredentialSyncIntent()Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/intent/DSHSSetCredentialsAPI;

    move-result-object v0

    .line 134
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/intent/DSHSSetCredentialsAPI;

    .line 132
    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService_MembersInjector;->injectMDSHSSetCredentialsAPI(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService;Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/intent/DSHSSetCredentialsAPI;)V

    .line 137
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector;->provisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    .line 140
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;->providesCredentialSyncMetricsRecorder()Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/metrics/CredentialSyncMetricsRecorder;

    move-result-object v0

    .line 139
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/metrics/CredentialSyncMetricsRecorder;

    .line 137
    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService_MembersInjector;->injectMCredentialSyncMetricsRecorder(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService;Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/metrics/CredentialSyncMetricsRecorder;)V

    return-object p1
.end method

.method private injectFFSArcusSyncJobService(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncJobService;)Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncJobService;
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector;->provisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    .line 149
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;->getFFSArcusSyncCoordinator()Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 148
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;

    .line 146
    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncJobService_MembersInjector;->injectMFFSArcusSyncCoordinator(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncJobService;Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;)V

    .line 151
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector;->provisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    .line 154
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;->providesProvisionerClientData()Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    move-result-object v0

    .line 153
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    .line 151
    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncJobService_MembersInjector;->injectMProvisionerClientData(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncJobService;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;)V

    return-object p1
.end method

.method private injectFFSProvisioningService(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector;->provisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    .line 64
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 63
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    .line 61
    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService_MembersInjector;->injectMContext(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;Landroid/content/Context;)V

    .line 66
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector;->provisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    .line 69
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;->getSharedPreferencesProvider()Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;

    move-result-object v0

    .line 68
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;

    .line 66
    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService_MembersInjector;->injectMSharedPreferencesProvider(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;)V

    .line 71
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector;->provisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    .line 74
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;->providesFFSWhiteListPolicyCoordinator()Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;

    move-result-object v0

    .line 73
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;

    .line 71
    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService_MembersInjector;->injectMWhiteListPolicyCoordinator(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;)V

    .line 76
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector;->provisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    .line 79
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;->providesWhiteListPolicyUpdateListener()Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener;

    move-result-object v0

    .line 78
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener;

    .line 76
    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService_MembersInjector;->injectMWhiteListPolicyUpdateListener(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener;)V

    .line 81
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector;->provisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    .line 84
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;->providesProvisionerClientData()Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    move-result-object v0

    .line 83
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    .line 81
    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService_MembersInjector;->injectMProvisionerClientData(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;)V

    .line 86
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector;->provisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    .line 89
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;->getDevicePowerMonitor()Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;

    move-result-object v0

    .line 88
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;

    .line 86
    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService_MembersInjector;->injectMDevicePowerMonitor(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;)V

    .line 91
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector;->provisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    .line 94
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;->providesFFSProvisioningServiceMetricsRecorder()Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;

    move-result-object v0

    .line 93
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;

    .line 91
    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService_MembersInjector;->injectMFFSServiceMetricsRecorder(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;)V

    .line 96
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector;->provisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    .line 99
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;->getLocationPermissionsHelper()Lcom/amazon/whisperjoin/deviceprovisioningservice/util/LocationPermissionsHelper;

    move-result-object v0

    .line 98
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/LocationPermissionsHelper;

    .line 96
    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService_MembersInjector;->injectMLocationPermissionsHelper(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/LocationPermissionsHelper;)V

    .line 101
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector;->provisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    .line 104
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;->getFFSArcusSyncCoordinator()Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;

    move-result-object v0

    .line 103
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;

    .line 101
    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService_MembersInjector;->injectMFFSArcusSyncCoordinator(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;)V

    return-object p1
.end method

.method private injectFFSWhiteListJobService(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/FFSWhiteListJobService;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/FFSWhiteListJobService;
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector;->provisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    .line 55
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;->providesFFSWhiteListPolicyCoordinator()Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 54
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;

    .line 52
    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/FFSWhiteListJobService_MembersInjector;->injectMWhiteListPolicyCoordinator(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/FFSWhiteListJobService;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;)V

    return-object p1
.end method


# virtual methods
.method public inject(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncJobService;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector;->injectFFSArcusSyncJobService(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncJobService;)Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncJobService;

    return-void
.end method

.method public inject(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector;->injectFFSProvisioningService(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSProvisioningService;

    return-void
.end method

.method public inject(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/FFSWhiteListJobService;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector;->injectFFSWhiteListJobService(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/FFSWhiteListJobService;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/FFSWhiteListJobService;

    return-void
.end method

.method public inject(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesDependencyInjector;->injectAssociatedCredentialsSyncService(Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService;)Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedCredentialsSyncService;

    return-void
.end method
