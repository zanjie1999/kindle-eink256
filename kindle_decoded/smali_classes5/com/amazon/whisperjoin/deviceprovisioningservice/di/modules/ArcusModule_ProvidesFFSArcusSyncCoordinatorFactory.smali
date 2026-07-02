.class public final Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule_ProvidesFFSArcusSyncCoordinatorFactory;
.super Ljava/lang/Object;
.source "ArcusModule_ProvidesFFSArcusSyncCoordinatorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;",
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

.field private final ffsArcusClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;",
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

.field private final module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule;

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
.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule;",
            "Ljavax/inject/Provider<",
            "Landroid/app/job/JobScheduler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule_ProvidesFFSArcusSyncCoordinatorFactory;->module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule;

    .line 40
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule_ProvidesFFSArcusSyncCoordinatorFactory;->jobSchedulerProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule_ProvidesFFSArcusSyncCoordinatorFactory;->jobInfoProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule_ProvidesFFSArcusSyncCoordinatorFactory;->contextProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p5, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule_ProvidesFFSArcusSyncCoordinatorFactory;->sharedPreferencesProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p6, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule_ProvidesFFSArcusSyncCoordinatorFactory;->clockProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p7, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule_ProvidesFFSArcusSyncCoordinatorFactory;->ffsArcusClientProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule;",
            "Ljavax/inject/Provider<",
            "Landroid/app/job/JobScheduler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;",
            ">;)",
            "Ldagger/internal/Factory<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;",
            ">;"
        }
    .end annotation

    .line 69
    new-instance v8, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule_ProvidesFFSArcusSyncCoordinatorFactory;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule_ProvidesFFSArcusSyncCoordinatorFactory;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v8
.end method


# virtual methods
.method public get()Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;
    .locals 7

    .line 50
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule_ProvidesFFSArcusSyncCoordinatorFactory;->module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule_ProvidesFFSArcusSyncCoordinatorFactory;->jobSchedulerProvider:Ljavax/inject/Provider;

    .line 52
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule_ProvidesFFSArcusSyncCoordinatorFactory;->jobInfoProvider:Ljavax/inject/Provider;

    .line 53
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;

    iget-object v3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule_ProvidesFFSArcusSyncCoordinatorFactory;->contextProvider:Ljavax/inject/Provider;

    .line 54
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    iget-object v4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule_ProvidesFFSArcusSyncCoordinatorFactory;->sharedPreferencesProvider:Ljavax/inject/Provider;

    .line 55
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;

    iget-object v5, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule_ProvidesFFSArcusSyncCoordinatorFactory;->clockProvider:Ljavax/inject/Provider;

    .line 56
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;

    iget-object v6, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule_ProvidesFFSArcusSyncCoordinatorFactory;->ffsArcusClientProvider:Ljavax/inject/Provider;

    .line 57
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;

    .line 51
    invoke-virtual/range {v0 .. v6}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule;->providesFFSArcusSyncCoordinator(Landroid/app/job/JobScheduler;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/Clock;Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusClient;)Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 50
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule_ProvidesFFSArcusSyncCoordinatorFactory;->get()Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/FFSArcusSyncCoordinator;

    move-result-object v0

    return-object v0
.end method
