.class public final Lcom/audible/pfm/repository/InMemoryDevicePlatformConfigRepository;
.super Ljava/lang/Object;
.source "InMemoryDevicePlatformConfigRepository.java"

# interfaces
.implements Lcom/audible/pfm/repository/ICacheableRepository;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/audible/pfm/repository/ICacheableRepository<",
        "Lcom/audible/pfm/domain/DevicePlatformConfig;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_THROTTLE_PERIOD:J

.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private devicePlatformConfig:Lcom/audible/pfm/domain/DevicePlatformConfig;

.field private sourceRepository:Lcom/audible/pfm/repository/ICacheableRepository;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/audible/pfm/repository/ICacheableRepository<",
            "Lcom/audible/pfm/domain/DevicePlatformConfig;",
            ">;"
        }
    .end annotation
.end field

.field private throttlePeriod:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/pfm/repository/InMemoryDevicePlatformConfigRepository;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/pfm/repository/InMemoryDevicePlatformConfigRepository;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    .line 31
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/audible/pfm/repository/InMemoryDevicePlatformConfigRepository;->DEFAULT_THROTTLE_PERIOD:J

    return-void
.end method

.method public constructor <init>(Lcom/audible/pfm/repository/ICacheableRepository;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/pfm/repository/ICacheableRepository<",
            "Lcom/audible/pfm/domain/DevicePlatformConfig;",
            ">;)V"
        }
    .end annotation

    .line 49
    sget-wide v0, Lcom/audible/pfm/repository/InMemoryDevicePlatformConfigRepository;->DEFAULT_THROTTLE_PERIOD:J

    invoke-direct {p0, p1, v0, v1}, Lcom/audible/pfm/repository/InMemoryDevicePlatformConfigRepository;-><init>(Lcom/audible/pfm/repository/ICacheableRepository;J)V

    return-void
.end method

.method constructor <init>(Lcom/audible/pfm/repository/ICacheableRepository;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/pfm/repository/ICacheableRepository<",
            "Lcom/audible/pfm/domain/DevicePlatformConfig;",
            ">;J)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "sourceRepository can\'t be null."

    .line 61
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/pfm/repository/ICacheableRepository;

    iput-object p1, p0, Lcom/audible/pfm/repository/InMemoryDevicePlatformConfigRepository;->sourceRepository:Lcom/audible/pfm/repository/ICacheableRepository;

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-ltz p1, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    sget-wide p2, Lcom/audible/pfm/repository/InMemoryDevicePlatformConfigRepository;->DEFAULT_THROTTLE_PERIOD:J

    :goto_0
    iput-wide p2, p0, Lcom/audible/pfm/repository/InMemoryDevicePlatformConfigRepository;->throttlePeriod:J

    return-void
.end method

.method private shouldThrottle()Z
    .locals 8

    .line 109
    iget-object v0, p0, Lcom/audible/pfm/repository/InMemoryDevicePlatformConfigRepository;->devicePlatformConfig:Lcom/audible/pfm/domain/DevicePlatformConfig;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 110
    sget-object v0, Lcom/audible/pfm/repository/InMemoryDevicePlatformConfigRepository;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "No cache, no point to throttle"

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return v1

    .line 115
    :cond_0
    invoke-virtual {v0}, Lcom/audible/pfm/domain/DevicePlatformConfig;->getLastModifiedFileTimeMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/audible/pfm/repository/InMemoryDevicePlatformConfigRepository;->throttlePeriod:J

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 117
    sget-object v0, Lcom/audible/pfm/repository/InMemoryDevicePlatformConfigRepository;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wait Time = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method


# virtual methods
.method public retrieve()Lcom/audible/pfm/domain/DevicePlatformConfig;
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/audible/pfm/repository/InMemoryDevicePlatformConfigRepository;->devicePlatformConfig:Lcom/audible/pfm/domain/DevicePlatformConfig;

    if-nez v0, :cond_0

    .line 69
    sget-object v0, Lcom/audible/pfm/repository/InMemoryDevicePlatformConfigRepository;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Memory cache is null. Retrieving from source repository."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/audible/pfm/repository/InMemoryDevicePlatformConfigRepository;->sourceRepository:Lcom/audible/pfm/repository/ICacheableRepository;

    invoke-interface {v0}, Lcom/audible/pfm/repository/ICacheableRepository;->retrieve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/pfm/domain/DevicePlatformConfig;

    iput-object v0, p0, Lcom/audible/pfm/repository/InMemoryDevicePlatformConfigRepository;->devicePlatformConfig:Lcom/audible/pfm/domain/DevicePlatformConfig;

    goto :goto_0

    .line 71
    :cond_0
    invoke-static {v0}, Lcom/audible/pfm/domain/DevicePlatformConfigUtils;->expired(Lcom/audible/pfm/domain/DevicePlatformConfig;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    sget-object v0, Lcom/audible/pfm/repository/InMemoryDevicePlatformConfigRepository;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Memory cache expired. Retrieving from source repository."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/audible/pfm/repository/InMemoryDevicePlatformConfigRepository;->sourceRepository:Lcom/audible/pfm/repository/ICacheableRepository;

    invoke-interface {v0}, Lcom/audible/pfm/repository/ICacheableRepository;->retrieve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/pfm/domain/DevicePlatformConfig;

    iput-object v0, p0, Lcom/audible/pfm/repository/InMemoryDevicePlatformConfigRepository;->devicePlatformConfig:Lcom/audible/pfm/domain/DevicePlatformConfig;

    .line 75
    :cond_1
    :goto_0
    sget-object v0, Lcom/audible/pfm/repository/InMemoryDevicePlatformConfigRepository;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Memory cache is NOT expired. Returning memory cache data."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/audible/pfm/repository/InMemoryDevicePlatformConfigRepository;->devicePlatformConfig:Lcom/audible/pfm/domain/DevicePlatformConfig;

    return-object v0
.end method

.method public bridge synthetic retrieve()Ljava/lang/Object;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/audible/pfm/repository/InMemoryDevicePlatformConfigRepository;->retrieve()Lcom/audible/pfm/domain/DevicePlatformConfig;

    move-result-object v0

    return-object v0
.end method

.method public retrieveIgnoreCache()Lcom/audible/pfm/domain/DevicePlatformConfig;
    .locals 2

    .line 91
    invoke-direct {p0}, Lcom/audible/pfm/repository/InMemoryDevicePlatformConfigRepository;->shouldThrottle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    sget-object v0, Lcom/audible/pfm/repository/InMemoryDevicePlatformConfigRepository;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Throttling request for retrieve ignore cache"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/audible/pfm/repository/InMemoryDevicePlatformConfigRepository;->devicePlatformConfig:Lcom/audible/pfm/domain/DevicePlatformConfig;

    return-object v0

    .line 95
    :cond_0
    sget-object v0, Lcom/audible/pfm/repository/InMemoryDevicePlatformConfigRepository;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Retrieving devicePlatformConfig from source repository"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/audible/pfm/repository/InMemoryDevicePlatformConfigRepository;->sourceRepository:Lcom/audible/pfm/repository/ICacheableRepository;

    invoke-interface {v0}, Lcom/audible/pfm/repository/ICacheableRepository;->retrieveIgnoreCache()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/pfm/domain/DevicePlatformConfig;

    iput-object v0, p0, Lcom/audible/pfm/repository/InMemoryDevicePlatformConfigRepository;->devicePlatformConfig:Lcom/audible/pfm/domain/DevicePlatformConfig;

    return-object v0
.end method

.method public bridge synthetic retrieveIgnoreCache()Ljava/lang/Object;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/audible/pfm/repository/InMemoryDevicePlatformConfigRepository;->retrieveIgnoreCache()Lcom/audible/pfm/domain/DevicePlatformConfig;

    move-result-object v0

    return-object v0
.end method
