.class public final Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent;
.super Ljava/lang/Object;
.source "DaggerZeroTouchControllerComponent.java"

# interfaces
.implements Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ZeroTouchControllerComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesDeferredDiscoveryHandler;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesIsDebugEnabled;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_getClock;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesDiscoverySettings;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesFFSProvisioningServiceMetricsRecorder;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesDeviceDiscoveryStream;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesWJDeviceSetupModeSupportedPredicate;,
        Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$Builder;
    }
.end annotation


# instance fields
.field private getClockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;",
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

.field private providesDiscoverySettingsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;",
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

.field private providesFireOSUtilProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/util/FireOSUtil;",
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

.field private providesWJDeviceSetupModeSupportedPredicateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/WJDeviceSetupModeSupportedPredicate;",
            ">;"
        }
    .end annotation
.end field

.field private providesZeroTouchProvisioningSettingsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;",
            ">;"
        }
    .end annotation
.end field

.field private providesZeroTouchWorkflowControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowController;",
            ">;"
        }
    .end annotation
.end field

.field private providesZeroTouchWorkflowFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFactory;",
            ">;"
        }
    .end annotation
.end field

.field private providesZeroTouchWorkflowFailureUpdateHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler;",
            ">;"
        }
    .end annotation
.end field

.field private providesZeroTouchWorkflowMetricsReporterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowMetricsReporter;",
            ">;"
        }
    .end annotation
.end field

.field private providesZeroTouchWorkflowRouterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowRouter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$Builder;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent;->initialize(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$Builder;Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$Builder;)V

    return-void
.end method

.method public static builder()Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$Builder;
    .locals 2

    .line 67
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$Builder;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$1;)V

    return-object v0
.end method

.method private initialize(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$Builder;)V
    .locals 11

    .line 74
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$Builder;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule;

    move-result-object v0

    .line 73
    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule_ProvidesZeroTouchWorkflowFactoryFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule;)Ldagger/internal/Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent;->providesZeroTouchWorkflowFactoryProvider:Ljavax/inject/Provider;

    .line 77
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$Builder;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule;

    move-result-object v0

    .line 76
    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule_ProvidesZeroTouchProvisioningSettingsFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule;)Ldagger/internal/Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent;->providesZeroTouchProvisioningSettingsProvider:Ljavax/inject/Provider;

    .line 78
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesWJDeviceSetupModeSupportedPredicate;

    .line 80
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$Builder;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesWJDeviceSetupModeSupportedPredicate;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;)V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent;->providesWJDeviceSetupModeSupportedPredicateProvider:Ljavax/inject/Provider;

    .line 83
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$Builder;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent;->providesZeroTouchWorkflowFactoryProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent;->providesZeroTouchProvisioningSettingsProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent;->providesWJDeviceSetupModeSupportedPredicateProvider:Ljavax/inject/Provider;

    .line 82
    invoke-static {v0, v1, v2, v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule_ProvidesZeroTouchWorkflowRouterFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent;->providesZeroTouchWorkflowRouterProvider:Ljavax/inject/Provider;

    .line 87
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesDeviceDiscoveryStream;

    .line 89
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$Builder;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesDeviceDiscoveryStream;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;)V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent;->providesDeviceDiscoveryStreamProvider:Ljavax/inject/Provider;

    .line 90
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesFFSProvisioningServiceMetricsRecorder;

    .line 92
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$Builder;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesFFSProvisioningServiceMetricsRecorder;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;)V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent;->providesFFSProvisioningServiceMetricsRecorderProvider:Ljavax/inject/Provider;

    .line 96
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$Builder;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent;->providesFFSProvisioningServiceMetricsRecorderProvider:Ljavax/inject/Provider;

    .line 95
    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule_ProvidesZeroTouchWorkflowMetricsReporterFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 94
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent;->providesZeroTouchWorkflowMetricsReporterProvider:Ljavax/inject/Provider;

    .line 98
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesDiscoverySettings;

    .line 100
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$Builder;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesDiscoverySettings;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;)V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent;->providesDiscoverySettingsProvider:Ljavax/inject/Provider;

    .line 103
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$Builder;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule;

    move-result-object v0

    .line 102
    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule_ProvidesFireOSUtilFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule;)Ldagger/internal/Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent;->providesFireOSUtilProvider:Ljavax/inject/Provider;

    .line 104
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_getClock;

    .line 106
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$Builder;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_getClock;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;)V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent;->getClockProvider:Ljavax/inject/Provider;

    .line 107
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesIsDebugEnabled;

    .line 109
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$Builder;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesIsDebugEnabled;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;)V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent;->providesIsDebugEnabledProvider:Ljavax/inject/Provider;

    .line 113
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$Builder;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent;->providesFireOSUtilProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent;->getClockProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent;->providesIsDebugEnabledProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent;->providesZeroTouchProvisioningSettingsProvider:Ljavax/inject/Provider;

    .line 112
    invoke-static {v0, v1, v2, v3, v4}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule_ProvidesZeroTouchWorkflowFailureUpdateHandlerFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object v0

    .line 111
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent;->providesZeroTouchWorkflowFailureUpdateHandlerProvider:Ljavax/inject/Provider;

    .line 118
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesDeferredDiscoveryHandler;

    .line 120
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$Builder;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$com_amazon_whisperjoin_deviceprovisioningservice_di_components_ProvisioningComponent_providesDeferredDiscoveryHandler;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/ProvisioningComponent;)V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent;->providesDeferredDiscoveryHandlerProvider:Ljavax/inject/Provider;

    .line 124
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$Builder;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent;->providesZeroTouchWorkflowRouterProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent;->providesDeviceDiscoveryStreamProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent;->providesZeroTouchWorkflowMetricsReporterProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent;->providesFFSProvisioningServiceMetricsRecorderProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent;->providesDiscoverySettingsProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent;->providesZeroTouchWorkflowFailureUpdateHandlerProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent;->providesDeferredDiscoveryHandlerProvider:Ljavax/inject/Provider;

    iget-object v10, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent;->providesZeroTouchProvisioningSettingsProvider:Ljavax/inject/Provider;

    .line 123
    invoke-static/range {v2 .. v10}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule_ProvidesZeroTouchWorkflowControllerFactory;->create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;

    move-result-object p1

    .line 122
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent;->providesZeroTouchWorkflowControllerProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public getZeroTouchWorkflowController()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowController;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerZeroTouchControllerComponent;->providesZeroTouchWorkflowControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowController;

    return-object v0
.end method
