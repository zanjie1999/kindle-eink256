.class public final Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;
.super Ljava/lang/Object;
.source "DaggerProvisioningComponent.java"

# interfaces
.implements Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisionerServicesComponent_getClock;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisionerServicesComponent_providesMetricsRecorderProvider;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisionerServicesComponent_providesDSSClient;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisionerServicesComponent_getContext;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent$Builder;
    }
.end annotation


# instance fields
.field private discoveryConfigurationModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule;

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

.field private getProvisioningManagerDisposableProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lio/reactivex/disposables/Disposable;",
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

.field private providesDeferredDiscoveryHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/deferred/DeferredDiscoveryHandler;",
            ">;"
        }
    .end annotation
.end field

.field private providesDeviceDiscoveryStreamProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream;",
            ">;"
        }
    .end annotation
.end field

.field private providesDeviceEventStreamProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceEventStream;",
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

.field private providesOveractiveConfigurationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private providesProvisioningManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;",
            ">;"
        }
    .end annotation
.end field

.field private providesScanFilterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;>;"
        }
    .end annotation
.end field

.field private provisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;


# direct methods
.method private constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent$Builder;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;->initialize(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent$Builder;Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent$1;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent$Builder;)V

    return-void
.end method

.method public static builder()Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent$Builder;
    .locals 2

    .line 91
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent$Builder;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent$1;)V

    return-object v0
.end method

.method private initialize(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent$Builder;)V
    .locals 7

    .line 96
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent$Builder;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;->discoveryConfigurationModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule;

    .line 97
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent$Builder;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;->provisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    .line 98
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisionerServicesComponent_getContext;

    .line 100
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent$Builder;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisionerServicesComponent_getContext;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;)V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;->getContextProvider:Ljavax/inject/Provider;

    .line 101
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisionerServicesComponent_providesDSSClient;

    .line 103
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent$Builder;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisionerServicesComponent_providesDSSClient;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;)V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;->providesDSSClientProvider:Ljavax/inject/Provider;

    .line 104
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisionerServicesComponent_providesMetricsRecorderProvider;

    .line 106
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent$Builder;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisionerServicesComponent_providesMetricsRecorderProvider;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;)V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;->providesMetricsRecorderProvider:Ljavax/inject/Provider;

    .line 109
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent$Builder;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;->getContextProvider:Ljavax/inject/Provider;

    .line 108
    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule_ProvidesScanFilterFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;->providesScanFilterProvider:Ljavax/inject/Provider;

    .line 112
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent$Builder;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule;

    move-result-object v0

    .line 111
    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule_ProvidesOveractiveConfigurationFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule;)Ldagger/internal/Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;->providesOveractiveConfigurationProvider:Ljavax/inject/Provider;

    .line 116
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent$Builder;->access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningManagerModule;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;->getContextProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;->providesDSSClientProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;->providesMetricsRecorderProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;->providesScanFilterProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;->providesOveractiveConfigurationProvider:Ljavax/inject/Provider;

    .line 115
    invoke-static/range {v1 .. v6}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningManagerModule_ProvidesProvisioningManagerProviderFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningManagerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 114
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;->providesProvisioningManagerProvider:Ljavax/inject/Provider;

    .line 125
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent$Builder;->access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningManagerModule;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;->providesProvisioningManagerProvider:Ljavax/inject/Provider;

    .line 124
    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningManagerModule_ProvidesDeviceEventStreamFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningManagerModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 123
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;->providesDeviceEventStreamProvider:Ljavax/inject/Provider;

    .line 129
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent$Builder;->access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningManagerModule;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;->providesProvisioningManagerProvider:Ljavax/inject/Provider;

    .line 128
    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningManagerModule_ProvidesDeviceDiscoveryStreamFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningManagerModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 127
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;->providesDeviceDiscoveryStreamProvider:Ljavax/inject/Provider;

    .line 133
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent$Builder;->access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningManagerModule;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;->providesDeviceEventStreamProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;->providesDeviceDiscoveryStreamProvider:Ljavax/inject/Provider;

    .line 132
    invoke-static {v0, v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningManagerModule_GetProvisioningManagerDisposableFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningManagerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 131
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;->getProvisioningManagerDisposableProvider:Ljavax/inject/Provider;

    .line 136
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisionerServicesComponent_getClock;

    .line 138
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent$Builder;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisionerServicesComponent_getClock;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;)V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;->getClockProvider:Ljavax/inject/Provider;

    .line 142
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent$Builder;->access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningManagerModule;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;->getClockProvider:Ljavax/inject/Provider;

    .line 141
    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningManagerModule_ProvidesDeferredDiscoveryHandlerFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningManagerModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object p1

    .line 140
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;->providesDeferredDiscoveryHandlerProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public getBluetoothSupportProvider()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BluetoothSupportProvider;
    .locals 2

    .line 385
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;->provisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    .line 386
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;->getBluetoothSupportProvider()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BluetoothSupportProvider;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 385
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BluetoothSupportProvider;

    return-object v0
.end method

.method public getClock()Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;
    .locals 2

    .line 371
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;->provisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    .line 372
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;->getClock()Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 371
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;->provisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    .line 358
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 357
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentWifiNetworkProvider()Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/CurrentWifiNetworkProvider;
    .locals 2

    .line 406
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;->provisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    .line 407
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;->getCurrentWifiNetworkProvider()Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/CurrentWifiNetworkProvider;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 406
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/wifi/CurrentWifiNetworkProvider;

    return-object v0
.end method

.method public getGson()Lcom/google/gson/Gson;
    .locals 2

    .line 378
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;->provisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    .line 379
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 378
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/google/gson/Gson;

    return-object v0
.end method

.method public getLocationPermissionsHelper()Lcom/amazon/whisperjoin/deviceprovisioningservice/util/LocationPermissionsHelper;
    .locals 2

    .line 399
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;->provisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    .line 400
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;->getLocationPermissionsHelper()Lcom/amazon/whisperjoin/deviceprovisioningservice/util/LocationPermissionsHelper;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 399
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/LocationPermissionsHelper;

    return-object v0
.end method

.method public getMapAuthProvider()Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;
    .locals 2

    .line 364
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;->provisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    .line 365
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;->getMapAuthProvider()Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 364
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;

    return-object v0
.end method

.method public provideCustomerProvisioneesSetupStatusSyncCoordinator()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/CustomerProvisioneesSetupStatusSyncCoordinator;
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;->provisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    .line 316
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;->provideCustomerProvisioneesSetupStatusSyncCoordinator()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/CustomerProvisioneesSetupStatusSyncCoordinator;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 315
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/CustomerProvisioneesSetupStatusSyncCoordinator;

    return-object v0
.end method

.method public providesAutoDiscoveryMetricsRecorder()Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/AutoDiscoveryMetricsRecorder;
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;->provisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    .line 323
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;->providesAutoDiscoveryMetricsRecorder()Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/AutoDiscoveryMetricsRecorder;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 322
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/AutoDiscoveryMetricsRecorder;

    return-object v0
.end method

.method public providesDSHSSetCredentialsAPI()Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/intent/DSHSSetCredentialsAPI;
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;->provisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    .line 301
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;->providesZigbeeCredentialSyncIntent()Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/intent/DSHSSetCredentialsAPI;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 300
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/intent/DSHSSetCredentialsAPI;

    return-object v0
.end method

.method public providesDSSClient()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;->provisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    .line 258
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;->providesDSSClient()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 257
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    return-object v0
.end method

.method public providesDeferredDiscoveryHandler()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/deferred/DeferredDiscoveryHandler;
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;->providesDeferredDiscoveryHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/deferred/DeferredDiscoveryHandler;

    return-object v0
.end method

.method public providesDeviceDiscoveryStream()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;->providesDeviceDiscoveryStreamProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream;

    return-object v0
.end method

.method public providesDeviceEventStream()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceEventStream;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;->providesDeviceEventStreamProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceEventStream;

    return-object v0
.end method

.method public providesDiscoverySettings()Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;
    .locals 6

    .line 147
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;->discoveryConfigurationModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;->provisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    .line 152
    invoke-interface {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;->providesWorkflowConfiguration()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;

    move-result-object v1

    const-string v2, "Cannot return null from a non-@Nullable component method"

    .line 151
    invoke-static {v1, v2}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;

    iget-object v3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;->discoveryConfigurationModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule;

    .line 156
    invoke-static {v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule_ProvidesScanningModeFactory;->proxyProvidesScanningMode(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule;)Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

    move-result-object v3

    const-string v4, "Cannot return null from a non-@Nullable @Provides method"

    .line 154
    invoke-static {v3, v4}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;

    iget-object v5, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;->provisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    .line 159
    invoke-interface {v5}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;->providesProvisioningMethod()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

    move-result-object v5

    .line 158
    invoke-static {v5, v2}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v5, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

    .line 149
    invoke-static {v0, v1, v3, v5}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule_ProvidesDiscoverySettingsFactory;->proxyProvidesDiscoverySettings(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;Lcom/amazon/whisperjoin/common/sharedtypes/radios/ScanningMode;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;)Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;

    move-result-object v0

    .line 147
    invoke-static {v0, v4}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;

    return-object v0
.end method

.method public providesFFSArcusSyncCoordinator()Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;->provisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    .line 287
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;->getFFSArcusSyncCoordinator()Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 286
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;

    return-object v0
.end method

.method public providesFFSProvisioningServiceMetricsRecorder()Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;
    .locals 2

    .line 343
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;->provisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    .line 344
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;->providesFFSProvisioningServiceMetricsRecorder()Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 343
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;

    return-object v0
.end method

.method public providesIsDebugEnabled()Ljava/lang/Boolean;
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;->provisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    .line 202
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;->providesIsDebugEnabled()Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 201
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public providesMetricsRecorderProvider()Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;
    .locals 2

    .line 336
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;->provisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    .line 337
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;->providesMetricsRecorderProvider()Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 336
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;

    return-object v0
.end method

.method public providesProvisionerClientData()Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;->provisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    .line 230
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;->providesProvisionerClientData()Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 229
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    return-object v0
.end method

.method public providesProvisionerInfo()Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;->provisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    .line 237
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;->providesProvisionerInfo()Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 236
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    return-object v0
.end method

.method public providesProvisioningManagerDisposable()Lio/reactivex/disposables/Disposable;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;->getProvisioningManagerDisposableProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    return-object v0
.end method

.method public providesProvisioningManagerProvider()Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;->providesProvisioningManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;

    return-object v0
.end method

.method public providesProvisioningMethod()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;->provisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    .line 223
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;->providesProvisioningMethod()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 222
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

    return-object v0
.end method

.method public providesProvisioningServiceConfiguration()Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;->provisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    .line 209
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;->providesProvisioningServiceConfiguration()Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 208
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;

    return-object v0
.end method

.method public providesTrustState()Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;->provisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    .line 244
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;->providesTrustState()Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 243
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/TrustProvider$TrustState;

    return-object v0
.end method

.method public providesWJDeviceSetupModeSupportedPredicate()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/WJDeviceSetupModeSupportedPredicate;
    .locals 4

    .line 166
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;->discoveryConfigurationModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;->provisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    .line 171
    invoke-interface {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;->providesProvisioningMethod()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

    move-result-object v1

    const-string v2, "Cannot return null from a non-@Nullable component method"

    .line 170
    invoke-static {v1, v2}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

    iget-object v3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;->provisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    .line 174
    invoke-interface {v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;->providesWorkflowConfiguration()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;

    move-result-object v3

    .line 173
    invoke-static {v3, v2}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;

    .line 168
    invoke-static {v0, v1, v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule_ProvidesWJDeviceSetupModeSupportedPredicateFactory;->proxyProvidesWJDeviceSetupModeSupportedPredicate(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/DiscoveryConfigurationModule;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/WJDeviceSetupModeSupportedPredicate;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 166
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/WJDeviceSetupModeSupportedPredicate;

    return-object v0
.end method

.method public providesWJErrorMapper()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 350
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;->provisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    .line 351
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;->providesWJErrorMapper()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 350
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    return-object v0
.end method

.method public providesWorkflowConfiguration()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerProvisioningComponent;->provisionerServicesComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;

    .line 216
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisionerServicesComponent;->providesWorkflowConfiguration()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 215
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;

    return-object v0
.end method
