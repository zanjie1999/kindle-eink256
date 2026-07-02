.class public final Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipUpdateControllerFactory;
.super Ljava/lang/Object;
.source "HushpuppyDaggerModule_ProvidesRelationshipUpdateControllerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/audible/relationship/controller/IRelationshipUpdateController;",
        ">;"
    }
.end annotation


# instance fields
.field private final commandFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/controller/IRelationshipCommandFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

.field private final requestStorageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/db/IRelationshipRequestStorage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/db/IRelationshipRequestStorage;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/controller/IRelationshipCommandFactory;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipUpdateControllerFactory;->module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    .line 24
    iput-object p2, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipUpdateControllerFactory;->requestStorageProvider:Ljavax/inject/Provider;

    .line 25
    iput-object p3, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipUpdateControllerFactory;->commandFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipUpdateControllerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/db/IRelationshipRequestStorage;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/controller/IRelationshipCommandFactory;",
            ">;)",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipUpdateControllerFactory;"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipUpdateControllerFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipUpdateControllerFactory;-><init>(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/relationship/controller/IRelationshipUpdateController;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/db/IRelationshipRequestStorage;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/controller/IRelationshipCommandFactory;",
            ">;)",
            "Lcom/audible/relationship/controller/IRelationshipUpdateController;"
        }
    .end annotation

    .line 38
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/relationship/db/IRelationshipRequestStorage;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/audible/relationship/controller/IRelationshipCommandFactory;

    .line 37
    invoke-static {p0, p1, p2}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipUpdateControllerFactory;->proxyProvidesRelationshipUpdateController(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Lcom/audible/relationship/db/IRelationshipRequestStorage;Lcom/audible/relationship/controller/IRelationshipCommandFactory;)Lcom/audible/relationship/controller/IRelationshipUpdateController;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvidesRelationshipUpdateController(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Lcom/audible/relationship/db/IRelationshipRequestStorage;Lcom/audible/relationship/controller/IRelationshipCommandFactory;)Lcom/audible/relationship/controller/IRelationshipUpdateController;
    .locals 0

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;->providesRelationshipUpdateController(Lcom/audible/relationship/db/IRelationshipRequestStorage;Lcom/audible/relationship/controller/IRelationshipCommandFactory;)Lcom/audible/relationship/controller/IRelationshipUpdateController;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 53
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/audible/relationship/controller/IRelationshipUpdateController;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/audible/relationship/controller/IRelationshipUpdateController;
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipUpdateControllerFactory;->module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    iget-object v1, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipUpdateControllerFactory;->requestStorageProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipUpdateControllerFactory;->commandFactoryProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipUpdateControllerFactory;->provideInstance(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/relationship/controller/IRelationshipUpdateController;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesRelationshipUpdateControllerFactory;->get()Lcom/audible/relationship/controller/IRelationshipUpdateController;

    move-result-object v0

    return-object v0
.end method
