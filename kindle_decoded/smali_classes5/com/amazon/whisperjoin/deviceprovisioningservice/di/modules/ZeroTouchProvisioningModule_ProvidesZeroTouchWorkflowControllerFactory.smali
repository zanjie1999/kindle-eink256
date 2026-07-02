.class public final Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule_ProvidesZeroTouchWorkflowControllerFactory;
.super Ljava/lang/Object;
.source "ZeroTouchProvisioningModule_ProvidesZeroTouchWorkflowControllerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowController;",
        ">;"
    }
.end annotation


# instance fields
.field private final deferredDiscoveryHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/deferred/DeferredDiscoveryHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceDiscoveryStreamProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream;",
            ">;"
        }
    .end annotation
.end field

.field private final discoverySettingsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;",
            ">;"
        }
    .end annotation
.end field

.field private final ffsArcusSettingsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final ffsProvisioningServiceMetricsRecorderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule;

.field private final zeroTouchWorkflowFailureUpdateHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final zeroTouchWorkflowMetricsReporterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowMetricsReporter;",
            ">;"
        }
    .end annotation
.end field

.field private final zeroTouchWorkflowRouterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowRouter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowRouter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowMetricsReporter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/deferred/DeferredDiscoveryHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;",
            ">;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule_ProvidesZeroTouchWorkflowControllerFactory;->module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule;

    .line 50
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule_ProvidesZeroTouchWorkflowControllerFactory;->zeroTouchWorkflowRouterProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule_ProvidesZeroTouchWorkflowControllerFactory;->deviceDiscoveryStreamProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule_ProvidesZeroTouchWorkflowControllerFactory;->zeroTouchWorkflowMetricsReporterProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p5, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule_ProvidesZeroTouchWorkflowControllerFactory;->ffsProvisioningServiceMetricsRecorderProvider:Ljavax/inject/Provider;

    .line 55
    iput-object p6, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule_ProvidesZeroTouchWorkflowControllerFactory;->discoverySettingsProvider:Ljavax/inject/Provider;

    .line 56
    iput-object p7, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule_ProvidesZeroTouchWorkflowControllerFactory;->zeroTouchWorkflowFailureUpdateHandlerProvider:Ljavax/inject/Provider;

    .line 58
    iput-object p8, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule_ProvidesZeroTouchWorkflowControllerFactory;->deferredDiscoveryHandlerProvider:Ljavax/inject/Provider;

    .line 59
    iput-object p9, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule_ProvidesZeroTouchWorkflowControllerFactory;->ffsArcusSettingsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowRouter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowMetricsReporter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/deferred/DeferredDiscoveryHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;",
            ">;)",
            "Ldagger/internal/Factory<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowController;",
            ">;"
        }
    .end annotation

    .line 87
    new-instance v10, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule_ProvidesZeroTouchWorkflowControllerFactory;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule_ProvidesZeroTouchWorkflowControllerFactory;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v10
.end method


# virtual methods
.method public get()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowController;
    .locals 9

    .line 64
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule_ProvidesZeroTouchWorkflowControllerFactory;->module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule_ProvidesZeroTouchWorkflowControllerFactory;->zeroTouchWorkflowRouterProvider:Ljavax/inject/Provider;

    .line 66
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowRouter;

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule_ProvidesZeroTouchWorkflowControllerFactory;->deviceDiscoveryStreamProvider:Ljavax/inject/Provider;

    .line 67
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream;

    iget-object v3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule_ProvidesZeroTouchWorkflowControllerFactory;->zeroTouchWorkflowMetricsReporterProvider:Ljavax/inject/Provider;

    .line 68
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowMetricsReporter;

    iget-object v4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule_ProvidesZeroTouchWorkflowControllerFactory;->ffsProvisioningServiceMetricsRecorderProvider:Ljavax/inject/Provider;

    .line 69
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;

    iget-object v5, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule_ProvidesZeroTouchWorkflowControllerFactory;->discoverySettingsProvider:Ljavax/inject/Provider;

    .line 70
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;

    iget-object v6, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule_ProvidesZeroTouchWorkflowControllerFactory;->zeroTouchWorkflowFailureUpdateHandlerProvider:Ljavax/inject/Provider;

    .line 71
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler;

    iget-object v7, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule_ProvidesZeroTouchWorkflowControllerFactory;->deferredDiscoveryHandlerProvider:Ljavax/inject/Provider;

    .line 72
    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/deferred/DeferredDiscoveryHandler;

    iget-object v8, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule_ProvidesZeroTouchWorkflowControllerFactory;->ffsArcusSettingsProvider:Ljavax/inject/Provider;

    .line 73
    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;

    .line 65
    invoke-virtual/range {v0 .. v8}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule;->providesZeroTouchWorkflowController(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowRouter;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/DeviceDiscoveryStream;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowMetricsReporter;Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoverySettings;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFailureUpdateHandler;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/deferred/DeferredDiscoveryHandler;Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowController;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 64
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowController;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule_ProvidesZeroTouchWorkflowControllerFactory;->get()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowController;

    move-result-object v0

    return-object v0
.end method
