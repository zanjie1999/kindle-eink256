.class public final Lcom/audible/pfm/repository/PersistentDevicePlatformConfigRepository;
.super Ljava/lang/Object;
.source "PersistentDevicePlatformConfigRepository.java"

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
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private devicePlatform:Ljava/lang/String;

.field private downloadClient:Lcom/audible/pfm/network/IPfmDownloadClient;

.field private persistentReaderWriter:Lcom/audible/pfm/network/parser/IPfmReaderWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/pfm/repository/PersistentDevicePlatformConfigRepository;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/pfm/repository/PersistentDevicePlatformConfigRepository;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/audible/pfm/network/IPfmDownloadClient;Lcom/audible/pfm/network/parser/IPfmReaderWriter;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "devicePlatformConfig can\'t be null"

    .line 47
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/audible/pfm/repository/PersistentDevicePlatformConfigRepository;->devicePlatform:Ljava/lang/String;

    const-string p1, "downloadClient can\'t be null"

    .line 48
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/pfm/network/IPfmDownloadClient;

    iput-object p1, p0, Lcom/audible/pfm/repository/PersistentDevicePlatformConfigRepository;->downloadClient:Lcom/audible/pfm/network/IPfmDownloadClient;

    const-string p1, "persistentReaderWriter can\'t be null"

    .line 49
    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/pfm/network/parser/IPfmReaderWriter;

    iput-object p1, p0, Lcom/audible/pfm/repository/PersistentDevicePlatformConfigRepository;->persistentReaderWriter:Lcom/audible/pfm/network/parser/IPfmReaderWriter;

    return-void
.end method

.method private downloadEndpoints()Z
    .locals 4

    const/4 v0, 0x0

    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/audible/pfm/repository/PersistentDevicePlatformConfigRepository;->downloadClient:Lcom/audible/pfm/network/IPfmDownloadClient;

    invoke-interface {v1}, Lcom/audible/pfm/network/IPfmDownloadClient;->getEndpointConfigSyncForce()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 140
    sget-object v1, Lcom/audible/pfm/repository/PersistentDevicePlatformConfigRepository;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Download JSON is null!"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    return v0

    .line 144
    :cond_0
    sget-object v2, Lcom/audible/pfm/repository/PersistentDevicePlatformConfigRepository;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v3, "Writing pfm json from n/w call to file cache"

    invoke-interface {v2, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 145
    iget-object v2, p0, Lcom/audible/pfm/repository/PersistentDevicePlatformConfigRepository;->persistentReaderWriter:Lcom/audible/pfm/network/parser/IPfmReaderWriter;

    invoke-interface {v2, v1}, Lcom/audible/pfm/network/parser/IPfmReaderWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    .line 148
    sget-object v2, Lcom/audible/pfm/repository/PersistentDevicePlatformConfigRepository;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v3, "Error writing pfm json to file"

    invoke-interface {v2, v3, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method private refreshDevicePlatformConfigIfNecessary(Lcom/audible/pfm/domain/DevicePlatformConfig;)Lcom/audible/pfm/domain/DevicePlatformConfig;
    .locals 3

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/audible/pfm/repository/PersistentDevicePlatformConfigRepository;->downloadClient:Lcom/audible/pfm/network/IPfmDownloadClient;

    invoke-virtual {p1}, Lcom/audible/pfm/domain/DevicePlatformConfig;->getLastModifiedFileTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/audible/pfm/network/IPfmDownloadClient;->getEndpointConfigSyncNonForce(J)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 106
    sget-object v0, Lcom/audible/pfm/repository/PersistentDevicePlatformConfigRepository;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Assume no change, updating timestamp and reuse the previous config."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/audible/pfm/repository/PersistentDevicePlatformConfigRepository;->persistentReaderWriter:Lcom/audible/pfm/network/parser/IPfmReaderWriter;

    invoke-interface {v0, p1}, Lcom/audible/pfm/network/parser/IPfmReaderWriter;->updateTimestamp(Lcom/audible/pfm/domain/DevicePlatformConfig;)V

    return-object p1

    .line 112
    :cond_0
    sget-object v1, Lcom/audible/pfm/repository/PersistentDevicePlatformConfigRepository;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "New endpoint is downloaded. Writing pfm json from n/w call to file cache"

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/audible/pfm/repository/PersistentDevicePlatformConfigRepository;->persistentReaderWriter:Lcom/audible/pfm/network/parser/IPfmReaderWriter;

    invoke-interface {v1, v0}, Lcom/audible/pfm/network/parser/IPfmReaderWriter;->write(Ljava/lang/String;)V

    .line 115
    sget-object v0, Lcom/audible/pfm/repository/PersistentDevicePlatformConfigRepository;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Reading data from pfm file cache"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/audible/pfm/repository/PersistentDevicePlatformConfigRepository;->persistentReaderWriter:Lcom/audible/pfm/network/parser/IPfmReaderWriter;

    iget-object v1, p0, Lcom/audible/pfm/repository/PersistentDevicePlatformConfigRepository;->devicePlatform:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/audible/pfm/network/parser/IPfmReaderWriter;->read(Ljava/lang/String;)Lcom/audible/pfm/domain/DevicePlatformConfig;

    move-result-object v0

    if-nez v0, :cond_1

    .line 118
    sget-object v0, Lcom/audible/pfm/repository/PersistentDevicePlatformConfigRepository;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Failed to read pfm file cache! Returning the previous loaded config."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    .line 124
    sget-object v1, Lcom/audible/pfm/repository/PersistentDevicePlatformConfigRepository;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Error retrieving device platform config. Using the previous loaded one."

    invoke-interface {v1, v2, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p1
.end method


# virtual methods
.method public retrieve()Lcom/audible/pfm/domain/DevicePlatformConfig;
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/audible/pfm/repository/PersistentDevicePlatformConfigRepository;->persistentReaderWriter:Lcom/audible/pfm/network/parser/IPfmReaderWriter;

    iget-object v1, p0, Lcom/audible/pfm/repository/PersistentDevicePlatformConfigRepository;->devicePlatform:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/audible/pfm/network/parser/IPfmReaderWriter;->read(Ljava/lang/String;)Lcom/audible/pfm/domain/DevicePlatformConfig;

    move-result-object v0

    if-nez v0, :cond_0

    .line 59
    sget-object v0, Lcom/audible/pfm/repository/PersistentDevicePlatformConfigRepository;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "File cache doesn\'t exist or can\'t be parsed."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/audible/pfm/repository/PersistentDevicePlatformConfigRepository;->retrieveIgnoreCache()Lcom/audible/pfm/domain/DevicePlatformConfig;

    move-result-object v0

    return-object v0

    .line 64
    :cond_0
    invoke-static {v0}, Lcom/audible/pfm/domain/DevicePlatformConfigUtils;->expired(Lcom/audible/pfm/domain/DevicePlatformConfig;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 65
    sget-object v1, Lcom/audible/pfm/repository/PersistentDevicePlatformConfigRepository;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "File cache is not expired."

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    return-object v0

    .line 70
    :cond_1
    sget-object v1, Lcom/audible/pfm/repository/PersistentDevicePlatformConfigRepository;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "File is expired. Downloading new config from server cache."

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 71
    invoke-direct {p0, v0}, Lcom/audible/pfm/repository/PersistentDevicePlatformConfigRepository;->refreshDevicePlatformConfigIfNecessary(Lcom/audible/pfm/domain/DevicePlatformConfig;)Lcom/audible/pfm/domain/DevicePlatformConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retrieve()Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/audible/pfm/repository/PersistentDevicePlatformConfigRepository;->retrieve()Lcom/audible/pfm/domain/DevicePlatformConfig;

    move-result-object v0

    return-object v0
.end method

.method public retrieveIgnoreCache()Lcom/audible/pfm/domain/DevicePlatformConfig;
    .locals 3

    .line 77
    invoke-direct {p0}, Lcom/audible/pfm/repository/PersistentDevicePlatformConfigRepository;->downloadEndpoints()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    sget-object v0, Lcom/audible/pfm/repository/PersistentDevicePlatformConfigRepository;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Failed to force download endpoints"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    .line 83
    :cond_0
    sget-object v0, Lcom/audible/pfm/repository/PersistentDevicePlatformConfigRepository;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Reading data from pfm file cache"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/audible/pfm/repository/PersistentDevicePlatformConfigRepository;->persistentReaderWriter:Lcom/audible/pfm/network/parser/IPfmReaderWriter;

    iget-object v1, p0, Lcom/audible/pfm/repository/PersistentDevicePlatformConfigRepository;->devicePlatform:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/audible/pfm/network/parser/IPfmReaderWriter;->read(Ljava/lang/String;)Lcom/audible/pfm/domain/DevicePlatformConfig;

    move-result-object v0

    if-nez v0, :cond_1

    .line 86
    sget-object v1, Lcom/audible/pfm/repository/PersistentDevicePlatformConfigRepository;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Error reading data from pfm file!"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public bridge synthetic retrieveIgnoreCache()Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/audible/pfm/repository/PersistentDevicePlatformConfigRepository;->retrieveIgnoreCache()Lcom/audible/pfm/domain/DevicePlatformConfig;

    move-result-object v0

    return-object v0
.end method
