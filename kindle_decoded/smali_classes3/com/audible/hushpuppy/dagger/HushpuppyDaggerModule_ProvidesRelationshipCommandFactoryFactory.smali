.class public final Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipCommandFactoryFactory;
.super Ljava/lang/Object;
.source "HushpuppyDaggerModule_ProvidesRelationshipCommandFactoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/audible/relationship/controller/IRelationshipCommandFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final cmClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/network/client/ICompanionMappingClient;",
            ">;"
        }
    .end annotation
.end field

.field private final configurationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/db/IConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final debugHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final eventBusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

.field private final relationshipStorageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/db/IRelationshipStorage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/network/client/ICompanionMappingClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/db/IRelationshipStorage;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/db/IConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipCommandFactoryFactory;->module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    .line 36
    iput-object p2, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipCommandFactoryFactory;->eventBusProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p3, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipCommandFactoryFactory;->debugHelperProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p4, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipCommandFactoryFactory;->cmClientProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p5, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipCommandFactoryFactory;->relationshipStorageProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p6, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipCommandFactoryFactory;->configurationProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipCommandFactoryFactory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/network/client/ICompanionMappingClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/db/IRelationshipStorage;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/db/IConfiguration;",
            ">;)",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipCommandFactoryFactory;"
        }
    .end annotation

    .line 77
    new-instance v7, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipCommandFactoryFactory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipCommandFactoryFactory;-><init>(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static provideInstance(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/relationship/controller/IRelationshipCommandFactory;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/network/client/ICompanionMappingClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/db/IRelationshipStorage;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/db/IConfiguration;",
            ">;)",
            "Lcom/audible/relationship/controller/IRelationshipCommandFactory;"
        }
    .end annotation

    .line 63
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lde/greenrobot/event/EventBus;

    .line 64
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    .line 65
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/audible/relationship/network/client/ICompanionMappingClient;

    .line 66
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/audible/relationship/db/IRelationshipStorage;

    .line 67
    invoke-interface {p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/audible/relationship/db/IConfiguration;

    move-object v0, p0

    .line 61
    invoke-static/range {v0 .. v5}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipCommandFactoryFactory;->proxyProvidesRelationshipCommandFactory(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;Lcom/audible/relationship/network/client/ICompanionMappingClient;Lcom/audible/relationship/db/IRelationshipStorage;Lcom/audible/relationship/db/IConfiguration;)Lcom/audible/relationship/controller/IRelationshipCommandFactory;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvidesRelationshipCommandFactory(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;Lcom/audible/relationship/network/client/ICompanionMappingClient;Lcom/audible/relationship/db/IRelationshipStorage;Lcom/audible/relationship/db/IConfiguration;)Lcom/audible/relationship/controller/IRelationshipCommandFactory;
    .locals 0

    .line 94
    invoke-virtual/range {p0 .. p5}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;->providesRelationshipCommandFactory(Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;Lcom/audible/relationship/network/client/ICompanionMappingClient;Lcom/audible/relationship/db/IRelationshipStorage;Lcom/audible/relationship/db/IConfiguration;)Lcom/audible/relationship/controller/IRelationshipCommandFactory;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 93
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/audible/relationship/controller/IRelationshipCommandFactory;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/audible/relationship/controller/IRelationshipCommandFactory;
    .locals 6

    .line 45
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipCommandFactoryFactory;->module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    iget-object v1, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipCommandFactoryFactory;->eventBusProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipCommandFactoryFactory;->debugHelperProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipCommandFactoryFactory;->cmClientProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipCommandFactoryFactory;->relationshipStorageProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipCommandFactoryFactory;->configurationProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v5}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipCommandFactoryFactory;->provideInstance(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/relationship/controller/IRelationshipCommandFactory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipCommandFactoryFactory;->get()Lcom/audible/relationship/controller/IRelationshipCommandFactory;

    move-result-object v0

    return-object v0
.end method
