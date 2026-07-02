.class public final Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesEndpointControllerFactory;
.super Ljava/lang/Object;
.source "HushpuppyDaggerModule_ProvidesEndpointControllerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/audible/pfm/controller/IEndpointController;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

.field private final repositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/pfm/repository/ICacheableRepository<",
            "Lcom/audible/pfm/domain/DevicePlatformConfig;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/pfm/repository/ICacheableRepository<",
            "Lcom/audible/pfm/domain/DevicePlatformConfig;",
            ">;>;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesEndpointControllerFactory;->module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    .line 21
    iput-object p2, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesEndpointControllerFactory;->repositoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesEndpointControllerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/pfm/repository/ICacheableRepository<",
            "Lcom/audible/pfm/domain/DevicePlatformConfig;",
            ">;>;)",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesEndpointControllerFactory;"
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesEndpointControllerFactory;

    invoke-direct {v0, p0, p1}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesEndpointControllerFactory;-><init>(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)Lcom/audible/pfm/controller/IEndpointController;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/pfm/repository/ICacheableRepository<",
            "Lcom/audible/pfm/domain/DevicePlatformConfig;",
            ">;>;)",
            "Lcom/audible/pfm/controller/IEndpointController;"
        }
    .end annotation

    .line 32
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/pfm/repository/ICacheableRepository;

    invoke-static {p0, p1}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesEndpointControllerFactory;->proxyProvidesEndpointController(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Lcom/audible/pfm/repository/ICacheableRepository;)Lcom/audible/pfm/controller/IEndpointController;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvidesEndpointController(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Lcom/audible/pfm/repository/ICacheableRepository;)Lcom/audible/pfm/controller/IEndpointController;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Lcom/audible/pfm/repository/ICacheableRepository<",
            "Lcom/audible/pfm/domain/DevicePlatformConfig;",
            ">;)",
            "Lcom/audible/pfm/controller/IEndpointController;"
        }
    .end annotation

    .line 44
    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;->providesEndpointController(Lcom/audible/pfm/repository/ICacheableRepository;)Lcom/audible/pfm/controller/IEndpointController;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 43
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/audible/pfm/controller/IEndpointController;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/audible/pfm/controller/IEndpointController;
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesEndpointControllerFactory;->module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    iget-object v1, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesEndpointControllerFactory;->repositoryProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesEndpointControllerFactory;->provideInstance(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;)Lcom/audible/pfm/controller/IEndpointController;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvidesEndpointControllerFactory;->get()Lcom/audible/pfm/controller/IEndpointController;

    move-result-object v0

    return-object v0
.end method
