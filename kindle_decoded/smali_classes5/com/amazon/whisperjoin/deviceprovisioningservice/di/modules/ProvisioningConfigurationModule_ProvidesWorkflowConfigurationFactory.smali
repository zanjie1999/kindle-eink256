.class public final Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule_ProvidesWorkflowConfigurationFactory;
.super Ljava/lang/Object;
.source "ProvisioningConfigurationModule_ProvidesWorkflowConfigurationFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule;


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule_ProvidesWorkflowConfigurationFactory;->module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule;

    return-void
.end method

.method public static create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule;)Ldagger/internal/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule;",
            ")",
            "Ldagger/internal/Factory<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;",
            ">;"
        }
    .end annotation

    .line 25
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule_ProvidesWorkflowConfigurationFactory;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule_ProvidesWorkflowConfigurationFactory;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule_ProvidesWorkflowConfigurationFactory;->module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule;

    .line 20
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule;->providesWorkflowConfiguration()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 19
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningConfigurationModule_ProvidesWorkflowConfigurationFactory;->get()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/WorkflowConfiguration;

    move-result-object v0

    return-object v0
.end method
