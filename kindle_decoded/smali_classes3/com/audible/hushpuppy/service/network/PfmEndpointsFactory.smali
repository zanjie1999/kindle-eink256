.class public final Lcom/audible/hushpuppy/service/network/PfmEndpointsFactory;
.super Ljava/lang/Object;
.source "PfmEndpointsFactory.java"

# interfaces
.implements Lcom/audible/pfm/endpoint/IEndpointFactory;


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private cacheNetworkEndpoints:Lcom/audible/pfm/endpoint/INetworkEndpoints;

.field private currentNetworkEndpoints:Lcom/audible/pfm/endpoint/INetworkEndpoints;

.field private devicePlatformConfig:Lcom/audible/pfm/domain/DevicePlatformConfig;

.field private lastLoggedPfm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/service/network/PfmEndpointsFactory;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/service/network/PfmEndpointsFactory;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getPfmConfig(Ljava/lang/String;)Lcom/audible/pfm/domain/PfmConfig;
    .locals 4

    .line 95
    invoke-virtual {p0}, Lcom/audible/hushpuppy/service/network/PfmEndpointsFactory;->getDevicePlatformConfig()Lcom/audible/pfm/domain/DevicePlatformConfig;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 96
    sget-object p1, Lcom/audible/hushpuppy/service/network/PfmEndpointsFactory;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Device Platform config is null, Returning null endpoints."

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-object v1

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/audible/hushpuppy/service/network/PfmEndpointsFactory;->getDevicePlatformConfig()Lcom/audible/pfm/domain/DevicePlatformConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audible/pfm/domain/DevicePlatformConfig;->getPfmConfig()Ljava/util/List;

    move-result-object v0

    .line 103
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/audible/pfm/domain/PfmConfig;

    if-eqz v2, :cond_1

    .line 104
    invoke-virtual {v2}, Lcom/audible/pfm/domain/PfmConfig;->getMarketplaceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v2

    :cond_2
    return-object v1
.end method

.method private resetCache()V
    .locals 2

    .line 114
    sget-object v0, Lcom/audible/hushpuppy/service/network/PfmEndpointsFactory;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Resetting the endpoints cache"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 115
    invoke-virtual {p0, v0}, Lcom/audible/hushpuppy/service/network/PfmEndpointsFactory;->setNetworkEndpoints(Lcom/audible/pfm/endpoint/INetworkEndpoints;)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/audible/hushpuppy/service/network/PfmEndpointsFactory;->setLastLoggedPfm(Ljava/lang/String;)V

    return-void
.end method

.method private setCache(Ljava/lang/String;Lcom/audible/pfm/endpoint/INetworkEndpoints;)V
    .locals 3

    .line 121
    sget-object v0, Lcom/audible/hushpuppy/service/network/PfmEndpointsFactory;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting the endpoints cache for pfm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/service/network/PfmEndpointsFactory;->setLastLoggedPfm(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0, p2}, Lcom/audible/hushpuppy/service/network/PfmEndpointsFactory;->setNetworkEndpoints(Lcom/audible/pfm/endpoint/INetworkEndpoints;)V

    return-void
.end method


# virtual methods
.method public getCurrentPfmEndpoints()Lcom/audible/pfm/endpoint/INetworkEndpoints;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/audible/hushpuppy/service/network/PfmEndpointsFactory;->currentNetworkEndpoints:Lcom/audible/pfm/endpoint/INetworkEndpoints;

    return-object v0
.end method

.method getDevicePlatformConfig()Lcom/audible/pfm/domain/DevicePlatformConfig;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/audible/hushpuppy/service/network/PfmEndpointsFactory;->devicePlatformConfig:Lcom/audible/pfm/domain/DevicePlatformConfig;

    return-object v0
.end method

.method public getEndpoints(Ljava/lang/String;)Lcom/audible/pfm/endpoint/INetworkEndpoints;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 55
    sget-object p1, Lcom/audible/hushpuppy/service/network/PfmEndpointsFactory;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "UserAccount pfm is required, Returning null endpoints"

    invoke-interface {p1, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-object v0

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/audible/hushpuppy/service/network/PfmEndpointsFactory;->getNetworkEndpoints()Lcom/audible/pfm/endpoint/INetworkEndpoints;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/audible/hushpuppy/service/network/PfmEndpointsFactory;->lastLoggedPfm:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    sget-object p1, Lcom/audible/hushpuppy/service/network/PfmEndpointsFactory;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Returning the cached endpoints"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 61
    iget-object p1, p0, Lcom/audible/hushpuppy/service/network/PfmEndpointsFactory;->cacheNetworkEndpoints:Lcom/audible/pfm/endpoint/INetworkEndpoints;

    return-object p1

    .line 64
    :cond_1
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/service/network/PfmEndpointsFactory;->getPfmConfig(Ljava/lang/String;)Lcom/audible/pfm/domain/PfmConfig;

    move-result-object v1

    if-nez v1, :cond_2

    .line 67
    sget-object p1, Lcom/audible/hushpuppy/service/network/PfmEndpointsFactory;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "PFM config is null, Returning null endpoints."

    invoke-interface {p1, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-object v0

    .line 71
    :cond_2
    sget-object v0, Lcom/audible/hushpuppy/service/network/PfmEndpointsFactory;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating network endpoints for pfm "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 72
    new-instance v0, Lcom/audible/hushpuppy/common/endpoint/NetworkEndpointsUrl;

    invoke-direct {v0, v1}, Lcom/audible/hushpuppy/common/endpoint/NetworkEndpointsUrl;-><init>(Lcom/audible/pfm/domain/PfmConfig;)V

    .line 74
    invoke-direct {p0, p1, v0}, Lcom/audible/hushpuppy/service/network/PfmEndpointsFactory;->setCache(Ljava/lang/String;Lcom/audible/pfm/endpoint/INetworkEndpoints;)V

    return-object v0
.end method

.method getNetworkEndpoints()Lcom/audible/pfm/endpoint/INetworkEndpoints;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/audible/hushpuppy/service/network/PfmEndpointsFactory;->cacheNetworkEndpoints:Lcom/audible/pfm/endpoint/INetworkEndpoints;

    return-object v0
.end method

.method public setDevicePlatformConfig(Lcom/audible/pfm/domain/DevicePlatformConfig;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/audible/hushpuppy/service/network/PfmEndpointsFactory;->resetCache()V

    .line 47
    iput-object p1, p0, Lcom/audible/hushpuppy/service/network/PfmEndpointsFactory;->devicePlatformConfig:Lcom/audible/pfm/domain/DevicePlatformConfig;

    return-void
.end method

.method setLastLoggedPfm(Ljava/lang/String;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/audible/hushpuppy/service/network/PfmEndpointsFactory;->lastLoggedPfm:Ljava/lang/String;

    return-void
.end method

.method setNetworkEndpoints(Lcom/audible/pfm/endpoint/INetworkEndpoints;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/audible/hushpuppy/service/network/PfmEndpointsFactory;->cacheNetworkEndpoints:Lcom/audible/pfm/endpoint/INetworkEndpoints;

    return-void
.end method

.method public setUserPfm(Ljava/lang/String;)V
    .locals 2

    .line 82
    sget-object v0, Lcom/audible/hushpuppy/service/network/PfmEndpointsFactory;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Setting current PFM to %s"

    invoke-interface {v0, v1, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/service/network/PfmEndpointsFactory;->getEndpoints(Ljava/lang/String;)Lcom/audible/pfm/endpoint/INetworkEndpoints;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/hushpuppy/service/network/PfmEndpointsFactory;->currentNetworkEndpoints:Lcom/audible/pfm/endpoint/INetworkEndpoints;

    return-void
.end method
