.class public final Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesWorkflowEventReporterFactory;
.super Ljava/lang/Object;
.source "WorkflowModule_ProvidesWorkflowEventReporterFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;",
        ">;"
    }
.end annotation


# instance fields
.field private final dssClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;

.field private final provisionerInfoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final provisioningMethodProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;",
            ">;"
        }
    .end annotation
.end field

.field private final wjErrorMapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
            "Ljava/lang/Throwable;",
            ">;>;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesWorkflowEventReporterFactory;->module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;

    .line 32
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesWorkflowEventReporterFactory;->dssClientProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesWorkflowEventReporterFactory;->provisionerInfoProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesWorkflowEventReporterFactory;->provisioningMethodProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p5, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesWorkflowEventReporterFactory;->wjErrorMapperProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper<",
            "Ljava/lang/Throwable;",
            ">;>;)",
            "Ldagger/internal/Factory<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;",
            ">;"
        }
    .end annotation

    .line 55
    new-instance v6, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesWorkflowEventReporterFactory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesWorkflowEventReporterFactory;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method


# virtual methods
.method public get()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;
    .locals 5

    .line 40
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesWorkflowEventReporterFactory;->module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesWorkflowEventReporterFactory;->dssClientProvider:Ljavax/inject/Provider;

    .line 42
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesWorkflowEventReporterFactory;->provisionerInfoProvider:Ljavax/inject/Provider;

    .line 43
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    iget-object v3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesWorkflowEventReporterFactory;->provisioningMethodProvider:Ljavax/inject/Provider;

    .line 44
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;

    iget-object v4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesWorkflowEventReporterFactory;->wjErrorMapperProvider:Ljavax/inject/Provider;

    .line 45
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;

    .line 41
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule;->providesWorkflowEventReporter(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningMethod;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorMapper;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 40
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/WorkflowModule_ProvidesWorkflowEventReporterFactory;->get()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/WorkflowEventReporter;

    move-result-object v0

    return-object v0
.end method
