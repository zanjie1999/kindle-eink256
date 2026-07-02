.class public final Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/MetricsModule_ProvidesMetricsRecorderProviderFactory;
.super Ljava/lang/Object;
.source "MetricsModule_ProvidesMetricsRecorderProviderFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final mapAuthenticationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final metricsFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/client/metrics/common/MetricsFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/MetricsModule;

.field private final provisionerClientDataProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/MetricsModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/MetricsModule;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/client/metrics/common/MetricsFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/MetricsModule_ProvidesMetricsRecorderProviderFactory;->module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/MetricsModule;

    .line 28
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/MetricsModule_ProvidesMetricsRecorderProviderFactory;->metricsFactoryProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/MetricsModule_ProvidesMetricsRecorderProviderFactory;->mapAuthenticationProvider:Ljavax/inject/Provider;

    .line 30
    iput-object p4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/MetricsModule_ProvidesMetricsRecorderProviderFactory;->provisionerClientDataProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/MetricsModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/MetricsModule;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/client/metrics/common/MetricsFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;",
            ">;)",
            "Ldagger/internal/Factory<",
            "Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/MetricsModule_ProvidesMetricsRecorderProviderFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/MetricsModule_ProvidesMetricsRecorderProviderFactory;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/MetricsModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;
    .locals 4

    .line 35
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/MetricsModule_ProvidesMetricsRecorderProviderFactory;->module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/MetricsModule;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/MetricsModule_ProvidesMetricsRecorderProviderFactory;->metricsFactoryProvider:Ljavax/inject/Provider;

    .line 37
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/client/metrics/common/MetricsFactory;

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/MetricsModule_ProvidesMetricsRecorderProviderFactory;->mapAuthenticationProvider:Ljavax/inject/Provider;

    .line 38
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;

    iget-object v3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/MetricsModule_ProvidesMetricsRecorderProviderFactory;->provisionerClientDataProvider:Ljavax/inject/Provider;

    .line 39
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    .line 36
    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/MetricsModule;->providesMetricsRecorderProvider(Lcom/amazon/client/metrics/common/MetricsFactory;Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;)Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 35
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/MetricsModule_ProvidesMetricsRecorderProviderFactory;->get()Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;

    move-result-object v0

    return-object v0
.end method
