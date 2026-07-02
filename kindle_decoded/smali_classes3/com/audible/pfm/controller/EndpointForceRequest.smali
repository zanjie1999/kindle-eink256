.class public final Lcom/audible/pfm/controller/EndpointForceRequest;
.super Ljava/lang/Object;
.source "EndpointForceRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final callback:Lcom/audible/pfm/controller/IEndpointController$IEndpointCallback;

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

    .line 19
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/pfm/controller/EndpointForceRequest;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/pfm/controller/EndpointForceRequest;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/audible/pfm/repository/ICacheableRepository;Lcom/audible/pfm/controller/IEndpointController$IEndpointCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/pfm/repository/ICacheableRepository<",
            "Lcom/audible/pfm/domain/DevicePlatformConfig;",
            ">;",
            "Lcom/audible/pfm/controller/IEndpointController$IEndpointCallback;",
            ")V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "repository can\'t be null."

    .line 32
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/pfm/repository/ICacheableRepository;

    iput-object p1, p0, Lcom/audible/pfm/controller/EndpointForceRequest;->repository:Lcom/audible/pfm/repository/ICacheableRepository;

    const-string p1, "callback can\'t be null."

    .line 33
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/pfm/controller/IEndpointController$IEndpointCallback;

    iput-object p1, p0, Lcom/audible/pfm/controller/EndpointForceRequest;->callback:Lcom/audible/pfm/controller/IEndpointController$IEndpointCallback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 39
    sget-object v0, Lcom/audible/pfm/controller/EndpointForceRequest;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Retrieving device platform config from repository ignoring cache"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/audible/pfm/controller/EndpointForceRequest;->repository:Lcom/audible/pfm/repository/ICacheableRepository;

    invoke-interface {v0}, Lcom/audible/pfm/repository/ICacheableRepository;->retrieveIgnoreCache()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/pfm/domain/DevicePlatformConfig;

    .line 41
    iget-object v1, p0, Lcom/audible/pfm/controller/EndpointForceRequest;->callback:Lcom/audible/pfm/controller/IEndpointController$IEndpointCallback;

    invoke-interface {v1, v0}, Lcom/audible/pfm/controller/IEndpointController$IEndpointCallback;->onComplete(Lcom/audible/pfm/domain/DevicePlatformConfig;)V

    return-void
.end method
