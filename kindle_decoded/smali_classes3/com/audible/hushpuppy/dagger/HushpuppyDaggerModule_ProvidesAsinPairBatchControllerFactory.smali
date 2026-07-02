.class public final Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesAsinPairBatchControllerFactory;
.super Ljava/lang/Object;
.source "HushpuppyDaggerModule_ProvidesAsinPairBatchControllerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/audible/relationship/controller/IAsinPairBatchController;",
        ">;"
    }
.end annotation


# instance fields
.field private final asinPairBatchStorageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/controller/IAsinPairBatchStorage;",
            ">;"
        }
    .end annotation
.end field

.field private final dbScalingRelationshipManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/controller/IDBScalingRelationshipManager;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;


# direct methods
.method public constructor <init>(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/controller/IAsinPairBatchStorage;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/controller/IDBScalingRelationshipManager;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesAsinPairBatchControllerFactory;->module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    .line 24
    iput-object p2, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesAsinPairBatchControllerFactory;->asinPairBatchStorageProvider:Ljavax/inject/Provider;

    .line 25
    iput-object p3, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesAsinPairBatchControllerFactory;->dbScalingRelationshipManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesAsinPairBatchControllerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/controller/IAsinPairBatchStorage;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/controller/IDBScalingRelationshipManager;",
            ">;)",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesAsinPairBatchControllerFactory;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesAsinPairBatchControllerFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesAsinPairBatchControllerFactory;-><init>(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/relationship/controller/IAsinPairBatchController;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/controller/IAsinPairBatchStorage;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/controller/IDBScalingRelationshipManager;",
            ">;)",
            "Lcom/audible/relationship/controller/IAsinPairBatchController;"
        }
    .end annotation

    .line 39
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/relationship/controller/IAsinPairBatchStorage;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/audible/relationship/controller/IDBScalingRelationshipManager;

    .line 38
    invoke-static {p0, p1, p2}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesAsinPairBatchControllerFactory;->proxyProvidesAsinPairBatchController(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Lcom/audible/relationship/controller/IAsinPairBatchStorage;Lcom/audible/relationship/controller/IDBScalingRelationshipManager;)Lcom/audible/relationship/controller/IAsinPairBatchController;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvidesAsinPairBatchController(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Lcom/audible/relationship/controller/IAsinPairBatchStorage;Lcom/audible/relationship/controller/IDBScalingRelationshipManager;)Lcom/audible/relationship/controller/IAsinPairBatchController;
    .locals 0

    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;->providesAsinPairBatchController(Lcom/audible/relationship/controller/IAsinPairBatchStorage;Lcom/audible/relationship/controller/IDBScalingRelationshipManager;)Lcom/audible/relationship/controller/IAsinPairBatchController;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 54
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/audible/relationship/controller/IAsinPairBatchController;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/audible/relationship/controller/IAsinPairBatchController;
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesAsinPairBatchControllerFactory;->module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    iget-object v1, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesAsinPairBatchControllerFactory;->asinPairBatchStorageProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesAsinPairBatchControllerFactory;->dbScalingRelationshipManagerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesAsinPairBatchControllerFactory;->provideInstance(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/relationship/controller/IAsinPairBatchController;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesAsinPairBatchControllerFactory;->get()Lcom/audible/relationship/controller/IAsinPairBatchController;

    move-result-object v0

    return-object v0
.end method
