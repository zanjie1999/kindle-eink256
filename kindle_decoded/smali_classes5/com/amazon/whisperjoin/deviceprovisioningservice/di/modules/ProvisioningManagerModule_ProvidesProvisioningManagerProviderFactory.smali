.class public final Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningManagerModule_ProvidesProvisioningManagerProviderFactory;
.super Ljava/lang/Object;
.source "ProvisioningManagerModule_ProvidesProvisioningManagerProviderFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final dssClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;",
            ">;"
        }
    .end annotation
.end field

.field private final metricsRecorderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningManagerModule;

.field private final overactiveConfigurationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final scanFilterListProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningManagerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningManagerModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningManagerModule_ProvidesProvisioningManagerProviderFactory;->module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningManagerModule;

    .line 37
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningManagerModule_ProvidesProvisioningManagerProviderFactory;->contextProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningManagerModule_ProvidesProvisioningManagerProviderFactory;->dssClientProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningManagerModule_ProvidesProvisioningManagerProviderFactory;->metricsRecorderProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p5, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningManagerModule_ProvidesProvisioningManagerProviderFactory;->scanFilterListProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p6, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningManagerModule_ProvidesProvisioningManagerProviderFactory;->overactiveConfigurationProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningManagerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningManagerModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;",
            ">;)",
            "Ldagger/internal/Factory<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;",
            ">;"
        }
    .end annotation

    .line 63
    new-instance v7, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningManagerModule_ProvidesProvisioningManagerProviderFactory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningManagerModule_ProvidesProvisioningManagerProviderFactory;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningManagerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method


# virtual methods
.method public get()Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;
    .locals 6

    .line 46
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningManagerModule_ProvidesProvisioningManagerProviderFactory;->module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningManagerModule;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningManagerModule_ProvidesProvisioningManagerProviderFactory;->contextProvider:Ljavax/inject/Provider;

    .line 48
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningManagerModule_ProvidesProvisioningManagerProviderFactory;->dssClientProvider:Ljavax/inject/Provider;

    .line 49
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    iget-object v3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningManagerModule_ProvidesProvisioningManagerProviderFactory;->metricsRecorderProvider:Ljavax/inject/Provider;

    .line 50
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;

    iget-object v4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningManagerModule_ProvidesProvisioningManagerProviderFactory;->scanFilterListProvider:Ljavax/inject/Provider;

    .line 51
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    iget-object v5, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningManagerModule_ProvidesProvisioningManagerProviderFactory;->overactiveConfigurationProvider:Ljavax/inject/Provider;

    .line 52
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;

    .line 47
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningManagerModule;->providesProvisioningManagerProvider(Landroid/content/Context;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;Ljava/util/List;Lcom/amazon/whisperjoin/common/sharedtypes/configuration/OveractiveConfiguration;)Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 46
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningManagerModule_ProvidesProvisioningManagerProviderFactory;->get()Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;

    move-result-object v0

    return-object v0
.end method
