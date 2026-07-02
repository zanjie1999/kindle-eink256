.class public final Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesFFSWhiteListPolicyCoordinatorFactory;
.super Ljava/lang/Object;
.source "ProvisioningServicesModule_ProvidesFFSWhiteListPolicyCoordinatorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;",
        ">;"
    }
.end annotation


# instance fields
.field private final clockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;",
            ">;"
        }
    .end annotation
.end field

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

.field private final jobInfoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final jobSchedulerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/job/JobScheduler;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule;

.field private final provisionerClientDataProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;",
            ">;"
        }
    .end annotation
.end field

.field private final sharedPreferencesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/job/JobScheduler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesFFSWhiteListPolicyCoordinatorFactory;->module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule;

    .line 44
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesFFSWhiteListPolicyCoordinatorFactory;->contextProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesFFSWhiteListPolicyCoordinatorFactory;->jobSchedulerProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesFFSWhiteListPolicyCoordinatorFactory;->jobInfoProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p5, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesFFSWhiteListPolicyCoordinatorFactory;->sharedPreferencesProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p6, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesFFSWhiteListPolicyCoordinatorFactory;->clockProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p7, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesFFSWhiteListPolicyCoordinatorFactory;->dssClientProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p8, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesFFSWhiteListPolicyCoordinatorFactory;->provisionerClientDataProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/job/JobScheduler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;",
            ">;)",
            "Ldagger/internal/Factory<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;",
            ">;"
        }
    .end annotation

    .line 76
    new-instance v9, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesFFSWhiteListPolicyCoordinatorFactory;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesFFSWhiteListPolicyCoordinatorFactory;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v9
.end method


# virtual methods
.method public get()Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;
    .locals 8

    .line 55
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesFFSWhiteListPolicyCoordinatorFactory;->module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesFFSWhiteListPolicyCoordinatorFactory;->contextProvider:Ljavax/inject/Provider;

    .line 57
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesFFSWhiteListPolicyCoordinatorFactory;->jobSchedulerProvider:Ljavax/inject/Provider;

    .line 58
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobScheduler;

    iget-object v3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesFFSWhiteListPolicyCoordinatorFactory;->jobInfoProvider:Ljavax/inject/Provider;

    .line 59
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;

    iget-object v4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesFFSWhiteListPolicyCoordinatorFactory;->sharedPreferencesProvider:Ljavax/inject/Provider;

    .line 60
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;

    iget-object v5, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesFFSWhiteListPolicyCoordinatorFactory;->clockProvider:Ljavax/inject/Provider;

    .line 61
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;

    iget-object v6, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesFFSWhiteListPolicyCoordinatorFactory;->dssClientProvider:Ljavax/inject/Provider;

    .line 62
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    iget-object v7, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesFFSWhiteListPolicyCoordinatorFactory;->provisionerClientDataProvider:Ljavax/inject/Provider;

    .line 63
    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;

    .line 56
    invoke-virtual/range {v0 .. v7}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule;->providesFFSWhiteListPolicyCoordinator(Landroid/content/Context;Landroid/app/job/JobScheduler;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisionerClientData;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 55
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesFFSWhiteListPolicyCoordinatorFactory;->get()Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;

    move-result-object v0

    return-object v0
.end method
