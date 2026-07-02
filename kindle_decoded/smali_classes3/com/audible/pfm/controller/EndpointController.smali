.class public final Lcom/audible/pfm/controller/EndpointController;
.super Ljava/lang/Object;
.source "EndpointController.java"

# interfaces
.implements Lcom/audible/pfm/controller/IEndpointController;


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final repository:Lcom/audible/pfm/repository/ICacheableRepository;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/audible/pfm/repository/ICacheableRepository<",
            "Lcom/audible/pfm/domain/DevicePlatformConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/pfm/controller/EndpointController;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/pfm/controller/EndpointController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/audible/pfm/repository/ICacheableRepository;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/pfm/repository/ICacheableRepository<",
            "Lcom/audible/pfm/domain/DevicePlatformConfig;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/audible/pfm/controller/EndpointController;-><init>(Lcom/audible/pfm/repository/ICacheableRepository;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method constructor <init>(Lcom/audible/pfm/repository/ICacheableRepository;Ljava/util/concurrent/ExecutorService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/pfm/repository/ICacheableRepository<",
            "Lcom/audible/pfm/domain/DevicePlatformConfig;",
            ">;",
            "Ljava/util/concurrent/ExecutorService;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "repository can\'t be null."

    .line 37
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/pfm/repository/ICacheableRepository;

    iput-object p1, p0, Lcom/audible/pfm/controller/EndpointController;->repository:Lcom/audible/pfm/repository/ICacheableRepository;

    .line 38
    iput-object p2, p0, Lcom/audible/pfm/controller/EndpointController;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private executeRequest(Ljava/lang/Runnable;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/audible/pfm/controller/EndpointController;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getDevicePlatformConfig(Lcom/audible/pfm/controller/IEndpointController$IEndpointCallback;)V
    .locals 2

    .line 44
    sget-object v0, Lcom/audible/pfm/controller/EndpointController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Received request to get device platform config"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 45
    new-instance v0, Lcom/audible/pfm/controller/EndpointCacheRequest;

    iget-object v1, p0, Lcom/audible/pfm/controller/EndpointController;->repository:Lcom/audible/pfm/repository/ICacheableRepository;

    invoke-direct {v0, v1, p1}, Lcom/audible/pfm/controller/EndpointCacheRequest;-><init>(Lcom/audible/pfm/repository/ICacheableRepository;Lcom/audible/pfm/controller/IEndpointController$IEndpointCallback;)V

    invoke-direct {p0, v0}, Lcom/audible/pfm/controller/EndpointController;->executeRequest(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getDevicePlatformConfigIgnoreCache(Lcom/audible/pfm/controller/IEndpointController$IEndpointCallback;)V
    .locals 2

    .line 51
    sget-object v0, Lcom/audible/pfm/controller/EndpointController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Received request to get device platform config ignore cache"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 52
    new-instance v0, Lcom/audible/pfm/controller/EndpointForceRequest;

    iget-object v1, p0, Lcom/audible/pfm/controller/EndpointController;->repository:Lcom/audible/pfm/repository/ICacheableRepository;

    invoke-direct {v0, v1, p1}, Lcom/audible/pfm/controller/EndpointForceRequest;-><init>(Lcom/audible/pfm/repository/ICacheableRepository;Lcom/audible/pfm/controller/IEndpointController$IEndpointCallback;)V

    invoke-direct {p0, v0}, Lcom/audible/pfm/controller/EndpointController;->executeRequest(Ljava/lang/Runnable;)V

    return-void
.end method
