.class public final Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesAssociatedDeviceCredentialsSyncCoordinatorFactory;
.super Ljava/lang/Object;
.source "ProvisioningServicesModule_ProvidesAssociatedDeviceCredentialsSyncCoordinatorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncCoordinator;",
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

.field private final gsonProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/gson/Gson;",
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

.field private final provisionerinfoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;",
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
.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/job/JobScheduler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/gson/Gson;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesAssociatedDeviceCredentialsSyncCoordinatorFactory;->module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule;

    .line 49
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesAssociatedDeviceCredentialsSyncCoordinatorFactory;->contextProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesAssociatedDeviceCredentialsSyncCoordinatorFactory;->provisionerinfoProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesAssociatedDeviceCredentialsSyncCoordinatorFactory;->dssClientProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p5, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesAssociatedDeviceCredentialsSyncCoordinatorFactory;->jobSchedulerProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p6, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesAssociatedDeviceCredentialsSyncCoordinatorFactory;->jobInfoProvider:Ljavax/inject/Provider;

    .line 54
    iput-object p7, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesAssociatedDeviceCredentialsSyncCoordinatorFactory;->clockProvider:Ljavax/inject/Provider;

    .line 55
    iput-object p8, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesAssociatedDeviceCredentialsSyncCoordinatorFactory;->sharedPreferencesProvider:Ljavax/inject/Provider;

    .line 56
    iput-object p9, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesAssociatedDeviceCredentialsSyncCoordinatorFactory;->gsonProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/job/JobScheduler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/gson/Gson;",
            ">;)",
            "Ldagger/internal/Factory<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncCoordinator;",
            ">;"
        }
    .end annotation

    .line 84
    new-instance v10, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesAssociatedDeviceCredentialsSyncCoordinatorFactory;

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

    invoke-direct/range {v0 .. v9}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesAssociatedDeviceCredentialsSyncCoordinatorFactory;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v10
.end method


# virtual methods
.method public get()Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncCoordinator;
    .locals 9

    .line 61
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesAssociatedDeviceCredentialsSyncCoordinatorFactory;->module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesAssociatedDeviceCredentialsSyncCoordinatorFactory;->contextProvider:Ljavax/inject/Provider;

    .line 63
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesAssociatedDeviceCredentialsSyncCoordinatorFactory;->provisionerinfoProvider:Ljavax/inject/Provider;

    .line 64
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    iget-object v3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesAssociatedDeviceCredentialsSyncCoordinatorFactory;->dssClientProvider:Ljavax/inject/Provider;

    .line 65
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    iget-object v4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesAssociatedDeviceCredentialsSyncCoordinatorFactory;->jobSchedulerProvider:Ljavax/inject/Provider;

    .line 66
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/job/JobScheduler;

    iget-object v5, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesAssociatedDeviceCredentialsSyncCoordinatorFactory;->jobInfoProvider:Ljavax/inject/Provider;

    .line 67
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;

    iget-object v6, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesAssociatedDeviceCredentialsSyncCoordinatorFactory;->clockProvider:Ljavax/inject/Provider;

    .line 68
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;

    iget-object v7, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesAssociatedDeviceCredentialsSyncCoordinatorFactory;->sharedPreferencesProvider:Ljavax/inject/Provider;

    .line 69
    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;

    iget-object v8, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesAssociatedDeviceCredentialsSyncCoordinatorFactory;->gsonProvider:Ljavax/inject/Provider;

    .line 70
    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/gson/Gson;

    .line 62
    invoke-virtual/range {v0 .. v8}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule;->providesAssociatedDeviceCredentialsSyncCoordinator(Landroid/content/Context;Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;Landroid/app/job/JobScheduler;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;Lcom/google/gson/Gson;)Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncCoordinator;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 61
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncCoordinator;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ProvisioningServicesModule_ProvidesAssociatedDeviceCredentialsSyncCoordinatorFactory;->get()Lcom/amazon/whisperjoin/deviceprovisioningservice/smarthome/AssociatedDeviceCredentialsSyncCoordinator;

    move-result-object v0

    return-object v0
.end method
