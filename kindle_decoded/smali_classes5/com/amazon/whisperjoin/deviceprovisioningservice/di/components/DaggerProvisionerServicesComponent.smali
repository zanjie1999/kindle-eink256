.class public final Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;
.super Ljava/lang/Object;
.source "DaggerProvisionerServicesComponent.java"

# interfaces
.implements Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_BaseComponent_getGson;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_BaseComponent_getClock;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_BaseComponent_getSharedPreferencesProvider;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_BaseComponent_getJobInfoProvider;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_BaseComponent_getJobScheduler;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_BaseComponent_getContext;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_BaseComponent_getMapAuthProvider;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;
    }
.end annotation


# instance fields
.field private baseComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;

.field private errorCodeMapperModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ErrorCodeMapperModule;

.field private getClockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;",
            ">;"
        }
    .end annotation
.end field

.field private getContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private getGsonProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/gson/Gson;",
            ">;"
        }
    .end annotation
.end field

.field private getJobInfoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;",
            ">;"
        }
    .end annotation
.end field

.field private getJobSchedulerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/job/JobScheduler;",
            ">;"
        }
    .end annotation
.end field

.field private getMapAuthProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;",
            ">;"
        }
    .end annotation
.end field

.field private getSharedPreferencesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;",
            ">;"
        }
    .end annotation
.end field

.field private providesAssociatedDeviceCredentialsSyncCoordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private providesAutoDiscoveryMetricsRecorderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/AutoDiscoveryMetricsRecorder;",
            ">;"
        }
    .end annotation
.end field

.field private providesAutoDiscoverySyncCoordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/CustomerProvisioneesSetupStatusSyncCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private providesCredentialSyncCoordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private providesCredentialSyncMetricsRecorderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/metrics/CredentialSyncMetricsRecorder;",
            ">;"
        }
    .end annotation
.end field

.field private providesDSHSSetCredentialsAPIProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/intent/DSHSSetCredentialsAPI;",
            ">;"
        }
    .end annotation
.end field

.field private providesDSSClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;",
            ">;"
        }
    .end annotation
.end field

.field private providesDSSServiceConfigurationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/internal/retrofit/DSSServiceConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private providesFFSProvisioningServiceMetricsRecorderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;",
            ">;"
        }
    .end annotation
.end field

.field private providesFFSWhiteListPolicyCoordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private providesIsDebugEnabledProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private providesMetricsFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/client/metrics/common/MetricsFactory;",
            ">;"
        }
    .end annotation
.end field

.field private providesMetricsRecorderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;",
            ">;"
        }
    .end annotation
.end field

.field private providesProvisionerClientDataProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;",
            ">;"
        }
    .end annotation
.end field

.field private providesProvisionerInfoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private providesProvisioningMethodProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;",
            ">;"
        }
    .end annotation
.end field

.field private providesProvisioningServiceConfigurationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private providesTrustStateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;",
            ">;"
        }
    .end annotation
.end field

.field private providesWhiteListPolicyUpdateListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private providesWifiLockerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/WifiLocker;",
            ">;"
        }
    .end annotation
.end field

.field private providesWorkflowConfigurationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private provisioningServicesModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule;


# direct methods
.method private constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;)V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->initialize(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$1;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;)V

    return-void
.end method

.method public static builder()Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;
    .locals 2

    .line 144
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$1;)V

    return-object v0
.end method

.method private getWJErrorMapperOfConnectionFailureException()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/ConnectionFailureException;",
            ">;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->errorCodeMapperModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ErrorCodeMapperModule;

    .line 160
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ErrorCodeMapperModule;->providesBLETransportOperationErrorDetailsProvider()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/BLETransportOperationErrorDetailsProvider;

    move-result-object v1

    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    .line 159
    invoke-static {v1, v2}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/BLETransportOperationErrorDetailsProvider;

    .line 158
    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ErrorCodeMapperModule;->providesConnectionFailureMapper(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/BLETransportOperationErrorDetailsProvider;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    move-result-object v0

    .line 157
    invoke-static {v0, v2}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    return-object v0
.end method

.method private getWJErrorMapperOfProvisionerCommandError()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
            "Lcom/amazon/whisperjoin/provisionerSDK/radios/error/ProvisionerCommandError;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->errorCodeMapperModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ErrorCodeMapperModule;

    .line 151
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ErrorCodeMapperModule;->providesBLETransportOperationErrorDetailsProvider()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/BLETransportOperationErrorDetailsProvider;

    move-result-object v1

    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    .line 150
    invoke-static {v1, v2}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/BLETransportOperationErrorDetailsProvider;

    .line 149
    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ErrorCodeMapperModule;->providesProvisionerCommandErrorMapper(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/BLETransportOperationErrorDetailsProvider;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    move-result-object v0

    .line 148
    invoke-static {v0, v2}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    return-object v0
.end method

.method private getWJErrorMapperOfTrustProviderInitializationFailedException()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/TrustProviderInitializationFailedException;",
            ">;"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->errorCodeMapperModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ErrorCodeMapperModule;

    .line 169
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->getWJErrorMapperOfProvisionerCommandError()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->errorCodeMapperModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ErrorCodeMapperModule;

    .line 171
    invoke-virtual {v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ErrorCodeMapperModule;->providesDSSClientErrorMapper()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    move-result-object v2

    const-string v3, "Cannot return null from a non-@Nullable @Provides method"

    .line 170
    invoke-static {v2, v3}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    .line 168
    invoke-virtual {v0, v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ErrorCodeMapperModule;->providesTrustProviderInitializationErrorMapper(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    move-result-object v0

    .line 167
    invoke-static {v0, v3}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    return-object v0
.end method

.method private initialize(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;)V
    .locals 11

    .line 181
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule;

    move-result-object v0

    .line 180
    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule_ProvidesIsDebugEnabledFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule;)Ldagger/internal/Factory;

    move-result-object v0

    .line 179
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesIsDebugEnabledProvider:Ljavax/inject/Provider;

    .line 185
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule;

    move-result-object v0

    .line 184
    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule_ProvidesProvisioningServiceConfigurationFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule;)Ldagger/internal/Factory;

    move-result-object v0

    .line 183
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesProvisioningServiceConfigurationProvider:Ljavax/inject/Provider;

    .line 189
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule;

    move-result-object v0

    .line 188
    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule_ProvidesWorkflowConfigurationFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule;)Ldagger/internal/Factory;

    move-result-object v0

    .line 187
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesWorkflowConfigurationProvider:Ljavax/inject/Provider;

    .line 193
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule;

    move-result-object v0

    .line 192
    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule_ProvidesProvisioningMethodFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule;)Ldagger/internal/Factory;

    move-result-object v0

    .line 191
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesProvisioningMethodProvider:Ljavax/inject/Provider;

    .line 194
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_BaseComponent_getMapAuthProvider;

    .line 196
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_BaseComponent_getMapAuthProvider;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;)V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->getMapAuthProvider:Ljavax/inject/Provider;

    .line 200
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesProvisioningServiceConfigurationProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->getMapAuthProvider:Ljavax/inject/Provider;

    .line 199
    invoke-static {v0, v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule_ProvidesProvisionerClientDataFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 198
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesProvisionerClientDataProvider:Ljavax/inject/Provider;

    .line 206
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesProvisionerClientDataProvider:Ljavax/inject/Provider;

    .line 205
    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule_ProvidesProvisionerInfoFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 204
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesProvisionerInfoProvider:Ljavax/inject/Provider;

    .line 210
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesWorkflowConfigurationProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesProvisioningMethodProvider:Ljavax/inject/Provider;

    .line 209
    invoke-static {v0, v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule_ProvidesTrustStateFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 208
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesTrustStateProvider:Ljavax/inject/Provider;

    .line 213
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_BaseComponent_getContext;

    .line 215
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_BaseComponent_getContext;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;)V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->getContextProvider:Ljavax/inject/Provider;

    .line 219
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;->access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->getMapAuthProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->getContextProvider:Ljavax/inject/Provider;

    .line 218
    invoke-static {v0, v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesWifiLockerFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 217
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesWifiLockerProvider:Ljavax/inject/Provider;

    .line 223
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule;

    move-result-object v0

    .line 222
    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule_ProvidesDSSServiceConfigurationFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule;)Ldagger/internal/Factory;

    move-result-object v0

    .line 221
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesDSSServiceConfigurationProvider:Ljavax/inject/Provider;

    .line 227
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;->access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->getContextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesDSSServiceConfigurationProvider:Ljavax/inject/Provider;

    .line 226
    invoke-static {v0, v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesDSSClientFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 225
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesDSSClientProvider:Ljavax/inject/Provider;

    .line 230
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_BaseComponent_getJobScheduler;

    .line 232
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_BaseComponent_getJobScheduler;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;)V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->getJobSchedulerProvider:Ljavax/inject/Provider;

    .line 233
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_BaseComponent_getJobInfoProvider;

    .line 235
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_BaseComponent_getJobInfoProvider;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;)V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->getJobInfoProvider:Ljavax/inject/Provider;

    .line 236
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_BaseComponent_getSharedPreferencesProvider;

    .line 238
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_BaseComponent_getSharedPreferencesProvider;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;)V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->getSharedPreferencesProvider:Ljavax/inject/Provider;

    .line 239
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_BaseComponent_getClock;

    .line 241
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_BaseComponent_getClock;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;)V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->getClockProvider:Ljavax/inject/Provider;

    .line 245
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;->access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->getContextProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->getJobSchedulerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->getJobInfoProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->getSharedPreferencesProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->getClockProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesDSSClientProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesProvisionerClientDataProvider:Ljavax/inject/Provider;

    .line 244
    invoke-static/range {v2 .. v9}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesFFSWhiteListPolicyCoordinatorFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 243
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesFFSWhiteListPolicyCoordinatorProvider:Ljavax/inject/Provider;

    .line 256
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;->access$400(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/MetricsModule;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->getContextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesProvisionerClientDataProvider:Ljavax/inject/Provider;

    .line 255
    invoke-static {v0, v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/MetricsModule_ProvidesMetricsFactoryFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/MetricsModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 254
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesMetricsFactoryProvider:Ljavax/inject/Provider;

    .line 260
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;->access$400(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/MetricsModule;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesMetricsFactoryProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->getMapAuthProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesProvisionerClientDataProvider:Ljavax/inject/Provider;

    .line 259
    invoke-static {v0, v1, v2, v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/MetricsModule_ProvidesMetricsRecorderProviderFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/MetricsModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 258
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesMetricsRecorderProvider:Ljavax/inject/Provider;

    .line 267
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;->access$400(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/MetricsModule;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesMetricsRecorderProvider:Ljavax/inject/Provider;

    .line 266
    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/MetricsModule_ProvidesCredentialSyncMetricsRecorderFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/MetricsModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 265
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesCredentialSyncMetricsRecorderProvider:Ljavax/inject/Provider;

    .line 271
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;->access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->getContextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesCredentialSyncMetricsRecorderProvider:Ljavax/inject/Provider;

    .line 270
    invoke-static {v0, v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesDSHSSetCredentialsAPIFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 269
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesDSHSSetCredentialsAPIProvider:Ljavax/inject/Provider;

    .line 277
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;->access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->getContextProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesProvisionerInfoProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesDSSClientProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->getJobSchedulerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->getJobInfoProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->getClockProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->getSharedPreferencesProvider:Ljavax/inject/Provider;

    .line 276
    invoke-static/range {v1 .. v8}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesCredentialSyncCoordinatorFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 275
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesCredentialSyncCoordinatorProvider:Ljavax/inject/Provider;

    .line 285
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_BaseComponent_getGson;

    .line 287
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_BaseComponent_getGson;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;)V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->getGsonProvider:Ljavax/inject/Provider;

    .line 292
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;->access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->getContextProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesProvisionerInfoProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesDSSClientProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->getJobSchedulerProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->getJobInfoProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->getClockProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->getSharedPreferencesProvider:Ljavax/inject/Provider;

    iget-object v10, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->getGsonProvider:Ljavax/inject/Provider;

    .line 291
    invoke-static/range {v2 .. v10}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesAssociatedDeviceCredentialsSyncCoordinatorFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 289
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesAssociatedDeviceCredentialsSyncCoordinatorProvider:Ljavax/inject/Provider;

    .line 304
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;->access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->getContextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesProvisionerClientDataProvider:Ljavax/inject/Provider;

    .line 303
    invoke-static {v0, v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesWhiteListPolicyUpdateListenerFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 302
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesWhiteListPolicyUpdateListenerProvider:Ljavax/inject/Provider;

    .line 307
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;->access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->provisioningServicesModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule;

    .line 308
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->baseComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;

    .line 312
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;->access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->getContextProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesProvisionerInfoProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesDSSClientProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->getJobSchedulerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->getJobInfoProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->getClockProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->getSharedPreferencesProvider:Ljavax/inject/Provider;

    .line 311
    invoke-static/range {v1 .. v8}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesAutoDiscoverySyncCoordinatorFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 310
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesAutoDiscoverySyncCoordinatorProvider:Ljavax/inject/Provider;

    .line 323
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;->access$400(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/MetricsModule;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesMetricsRecorderProvider:Ljavax/inject/Provider;

    .line 322
    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/MetricsModule_ProvidesAutoDiscoveryMetricsRecorderFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/MetricsModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 321
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesAutoDiscoveryMetricsRecorderProvider:Ljavax/inject/Provider;

    .line 327
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;->access$400(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/MetricsModule;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesMetricsRecorderProvider:Ljavax/inject/Provider;

    .line 326
    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/MetricsModule_ProvidesFFSProvisioningServiceMetricsRecorderFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/MetricsModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 325
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesFFSProvisioningServiceMetricsRecorderProvider:Ljavax/inject/Provider;

    .line 328
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;->access$500(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ErrorCodeMapperModule;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->errorCodeMapperModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ErrorCodeMapperModule;

    return-void
.end method


# virtual methods
.method public getBluetoothSupportProvider()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BluetoothSupportProvider;
    .locals 2

    .line 536
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->baseComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;

    .line 537
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;->getBluetoothSupportProvider()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BluetoothSupportProvider;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 536
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BluetoothSupportProvider;

    return-object v0
.end method

.method public getClock()Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;
    .locals 2

    .line 517
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->baseComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;

    .line 518
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;->getClock()Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 517
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 2

    .line 483
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->baseComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;

    .line 484
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 483
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentWifiNetworkProvider()Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/CurrentWifiNetworkProvider;
    .locals 2

    .line 563
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->baseComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;

    .line 564
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;->getCurrentWifiNetworkProvider()Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/CurrentWifiNetworkProvider;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 563
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/CurrentWifiNetworkProvider;

    return-object v0
.end method

.method public getDevicePowerMonitor()Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;
    .locals 5

    .line 404
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->provisioningServicesModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->baseComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;

    .line 409
    invoke-interface {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Cannot return null from a non-@Nullable component method"

    .line 408
    invoke-static {v1, v2}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    iget-object v3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->baseComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;

    .line 412
    invoke-interface {v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;->getDevicePowerStatusProvider()Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatusProvider;

    move-result-object v3

    .line 411
    invoke-static {v3, v2}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatusProvider;

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesMetricsRecorderProvider:Ljavax/inject/Provider;

    .line 414
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;

    iget-object v4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesProvisionerClientDataProvider:Ljavax/inject/Provider;

    .line 415
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    .line 406
    invoke-static {v0, v1, v3, v2, v4}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesDevicePowerMonitorFactory;->proxyProvidesDevicePowerMonitor(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule;Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerStatusProvider;Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 404
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/power/DevicePowerMonitor;

    return-object v0
.end method

.method public getFFSArcusSyncCoordinator()Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;
    .locals 2

    .line 510
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->baseComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;

    .line 511
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;->getFFSArcusSyncCoordinator()Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 510
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;

    return-object v0
.end method

.method public getGson()Lcom/google/gson/Gson;
    .locals 2

    .line 523
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->baseComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;

    .line 524
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 523
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/google/gson/Gson;

    return-object v0
.end method

.method public getLocationPermissionsHelper()Lcom/amazon/whisperjoin/deviceprovisioningservice/util/LocationPermissionsHelper;
    .locals 2

    .line 556
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->baseComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;

    .line 557
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;->getLocationPermissionHelper()Lcom/amazon/whisperjoin/deviceprovisioningservice/util/LocationPermissionsHelper;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 556
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/LocationPermissionsHelper;

    return-object v0
.end method

.method public getMapAuthProvider()Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;
    .locals 2

    .line 496
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->baseComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;

    .line 497
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;->getMapAuthProvider()Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 496
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;

    return-object v0
.end method

.method public getSharedPreferencesProvider()Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;
    .locals 2

    .line 503
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->baseComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;

    .line 504
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;->getSharedPreferencesProvider()Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 503
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;

    return-object v0
.end method

.method public provideCustomerProvisioneesSetupStatusSyncCoordinator()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/CustomerProvisioneesSetupStatusSyncCoordinator;
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesAutoDiscoverySyncCoordinatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/CustomerProvisioneesSetupStatusSyncCoordinator;

    return-object v0
.end method

.method public providesAssociatedDeviceCredentialsSyncCoordinator()Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncCoordinator;
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesAssociatedDeviceCredentialsSyncCoordinatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncCoordinator;

    return-object v0
.end method

.method public providesAutoDiscoveryMetricsRecorder()Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/AutoDiscoveryMetricsRecorder;
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesAutoDiscoveryMetricsRecorderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/AutoDiscoveryMetricsRecorder;

    return-object v0
.end method

.method public providesCredentialSyncCoordinator()Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator;
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesCredentialSyncCoordinatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/ZigbeeCredentialsSyncCoordinator;

    return-object v0
.end method

.method public providesCredentialSyncMetricsRecorder()Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/metrics/CredentialSyncMetricsRecorder;
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesCredentialSyncMetricsRecorderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/metrics/CredentialSyncMetricsRecorder;

    return-object v0
.end method

.method public providesDSSClient()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesDSSClientProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    return-object v0
.end method

.method public providesFFSProvisioningServiceMetricsRecorder()Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesFFSProvisioningServiceMetricsRecorderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;

    return-object v0
.end method

.method public providesFFSWhiteListPolicyCoordinator()Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesFFSWhiteListPolicyCoordinatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;

    return-object v0
.end method

.method public providesIsDebugEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesIsDebugEnabledProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public providesMetricsRecorderProvider()Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesMetricsRecorderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;

    return-object v0
.end method

.method public providesProvisionerClientData()Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesProvisionerClientDataProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    return-object v0
.end method

.method public providesProvisionerInfo()Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesProvisionerInfoProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    return-object v0
.end method

.method public providesProvisioningMethod()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesProvisioningMethodProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

    return-object v0
.end method

.method public providesProvisioningServiceConfiguration()Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesProvisioningServiceConfigurationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;

    return-object v0
.end method

.method public providesTrustState()Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesTrustStateProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;

    return-object v0
.end method

.method public providesWJErrorMapper()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 452
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->errorCodeMapperModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ErrorCodeMapperModule;

    .line 454
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->getWJErrorMapperOfProvisionerCommandError()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->errorCodeMapperModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ErrorCodeMapperModule;

    .line 456
    invoke-virtual {v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ErrorCodeMapperModule;->providesDSSClientErrorMapper()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    move-result-object v2

    const-string v11, "Cannot return null from a non-@Nullable @Provides method"

    .line 455
    invoke-static {v2, v11}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    iget-object v3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->errorCodeMapperModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ErrorCodeMapperModule;

    .line 459
    invoke-virtual {v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ErrorCodeMapperModule;->providesProvisioningFailureMapper()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    move-result-object v3

    .line 458
    invoke-static {v3, v11}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    iget-object v4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->errorCodeMapperModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ErrorCodeMapperModule;

    .line 462
    invoke-virtual {v4}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ErrorCodeMapperModule;->providesPreconditionalFailureMapper()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    move-result-object v4

    .line 461
    invoke-static {v4, v11}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v4, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    .line 464
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->getWJErrorMapperOfConnectionFailureException()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    move-result-object v5

    .line 465
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->getWJErrorMapperOfTrustProviderInitializationFailedException()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    move-result-object v6

    iget-object v7, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->errorCodeMapperModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ErrorCodeMapperModule;

    .line 467
    invoke-virtual {v7}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ErrorCodeMapperModule;->providesProvisionignNotGrantedMapper()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    move-result-object v7

    .line 466
    invoke-static {v7, v11}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v7, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    iget-object v8, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->errorCodeMapperModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ErrorCodeMapperModule;

    .line 470
    invoke-virtual {v8}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ErrorCodeMapperModule;->providesWiFiSyncAuthTokenFailedValidationMapper()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    move-result-object v8

    .line 469
    invoke-static {v8, v11}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v8, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    iget-object v9, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->errorCodeMapperModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ErrorCodeMapperModule;

    .line 473
    invoke-virtual {v9}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ErrorCodeMapperModule;->providesWiFiSyncAuthTokenNotFoundMapper()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    move-result-object v9

    .line 472
    invoke-static {v9, v11}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v9, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    iget-object v10, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->errorCodeMapperModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ErrorCodeMapperModule;

    .line 476
    invoke-virtual {v10}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ErrorCodeMapperModule;->providesWorkflowFailureExceptionErrorMapper()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    move-result-object v10

    .line 475
    invoke-static {v10, v11}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v10, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    .line 453
    invoke-virtual/range {v0 .. v10}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ErrorCodeMapperModule;->providesErrorMapper(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    move-result-object v0

    .line 452
    invoke-static {v0, v11}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    return-object v0
.end method

.method public providesWhiteListPolicyUpdateListener()Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener;
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesWhiteListPolicyUpdateListenerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyUpdateListener;

    return-object v0
.end method

.method public providesWorkflowConfiguration()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesWorkflowConfigurationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;

    return-object v0
.end method

.method public providesZigbeeCredentialSyncIntent()Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/intent/DSHSSetCredentialsAPI;
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisionerServicesComponent;->providesDSHSSetCredentialsAPIProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/intent/DSHSSetCredentialsAPI;

    return-object v0
.end method
