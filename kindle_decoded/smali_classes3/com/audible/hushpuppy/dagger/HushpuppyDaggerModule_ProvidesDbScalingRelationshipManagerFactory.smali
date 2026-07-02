.class public final Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesDbScalingRelationshipManagerFactory;
.super Ljava/lang/Object;
.source "HushpuppyDaggerModule_ProvidesDbScalingRelationshipManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/audible/relationship/controller/IDBScalingRelationshipManager;",
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

.field private final relationshipUpdateControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/controller/IRelationshipUpdateController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/db/IRelationshipStorage;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/controller/IRelationshipUpdateController;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesDbScalingRelationshipManagerFactory;->module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    .line 32
    iput-object p2, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesDbScalingRelationshipManagerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p3, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesDbScalingRelationshipManagerFactory;->eventBusProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p4, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesDbScalingRelationshipManagerFactory;->relationshipStorageProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p5, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesDbScalingRelationshipManagerFactory;->relationshipUpdateControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesDbScalingRelationshipManagerFactory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/db/IRelationshipStorage;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/controller/IRelationshipUpdateController;",
            ">;)",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesDbScalingRelationshipManagerFactory;"
        }
    .end annotation

    .line 68
    new-instance v6, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesDbScalingRelationshipManagerFactory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesDbScalingRelationshipManagerFactory;-><init>(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static provideInstance(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/relationship/controller/IDBScalingRelationshipManager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/db/IRelationshipStorage;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/controller/IRelationshipUpdateController;",
            ">;)",
            "Lcom/audible/relationship/controller/IDBScalingRelationshipManager;"
        }
    .end annotation

    .line 56
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 57
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lde/greenrobot/event/EventBus;

    .line 58
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/audible/relationship/db/IRelationshipStorage;

    .line 59
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/audible/relationship/controller/IRelationshipUpdateController;

    .line 54
    invoke-static {p0, p1, p2, p3, p4}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesDbScalingRelationshipManagerFactory;->proxyProvidesDbScalingRelationshipManager(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Landroid/content/Context;Lde/greenrobot/event/EventBus;Lcom/audible/relationship/db/IRelationshipStorage;Lcom/audible/relationship/controller/IRelationshipUpdateController;)Lcom/audible/relationship/controller/IDBScalingRelationshipManager;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvidesDbScalingRelationshipManager(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Landroid/content/Context;Lde/greenrobot/event/EventBus;Lcom/audible/relationship/db/IRelationshipStorage;Lcom/audible/relationship/controller/IRelationshipUpdateController;)Lcom/audible/relationship/controller/IDBScalingRelationshipManager;
    .locals 0

    .line 83
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;->providesDbScalingRelationshipManager(Landroid/content/Context;Lde/greenrobot/event/EventBus;Lcom/audible/relationship/db/IRelationshipStorage;Lcom/audible/relationship/controller/IRelationshipUpdateController;)Lcom/audible/relationship/controller/IDBScalingRelationshipManager;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 82
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/audible/relationship/controller/IDBScalingRelationshipManager;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/audible/relationship/controller/IDBScalingRelationshipManager;
    .locals 5

    .line 40
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesDbScalingRelationshipManagerFactory;->module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    iget-object v1, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesDbScalingRelationshipManagerFactory;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesDbScalingRelationshipManagerFactory;->eventBusProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesDbScalingRelationshipManagerFactory;->relationshipStorageProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesDbScalingRelationshipManagerFactory;->relationshipUpdateControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesDbScalingRelationshipManagerFactory;->provideInstance(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/relationship/controller/IDBScalingRelationshipManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesDbScalingRelationshipManagerFactory;->get()Lcom/audible/relationship/controller/IDBScalingRelationshipManager;

    move-result-object v0

    return-object v0
.end method
