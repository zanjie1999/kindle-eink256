.class public final Lcom/audible/pfm/repository/SideloadTestDevicePlatformConfigRepository;
.super Ljava/lang/Object;
.source "SideloadTestDevicePlatformConfigRepository.java"

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

.field private persistentReaderWriter:Lcom/audible/pfm/network/parser/IPfmReaderWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/pfm/repository/SideloadTestDevicePlatformConfigRepository;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/pfm/repository/SideloadTestDevicePlatformConfigRepository;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/audible/pfm/network/parser/IPfmReaderWriter;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "devicePlatformConfig can\'t be null"

    .line 33
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/audible/pfm/repository/SideloadTestDevicePlatformConfigRepository;->devicePlatform:Ljava/lang/String;

    const-string p1, "persistentReaderWriter can\'t be null"

    .line 34
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/pfm/network/parser/IPfmReaderWriter;

    iput-object p1, p0, Lcom/audible/pfm/repository/SideloadTestDevicePlatformConfigRepository;->persistentReaderWriter:Lcom/audible/pfm/network/parser/IPfmReaderWriter;

    return-void
.end method

.method private getDevicePlatformConfig()Lcom/audible/pfm/domain/DevicePlatformConfig;
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/audible/pfm/repository/SideloadTestDevicePlatformConfigRepository;->persistentReaderWriter:Lcom/audible/pfm/network/parser/IPfmReaderWriter;

    iget-object v1, p0, Lcom/audible/pfm/repository/SideloadTestDevicePlatformConfigRepository;->devicePlatform:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/audible/pfm/network/parser/IPfmReaderWriter;->read(Ljava/lang/String;)Lcom/audible/pfm/domain/DevicePlatformConfig;

    move-result-object v0

    if-nez v0, :cond_0

    .line 53
    sget-object v1, Lcom/audible/pfm/repository/SideloadTestDevicePlatformConfigRepository;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Error reading pfm file cache!"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public retrieve()Lcom/audible/pfm/domain/DevicePlatformConfig;
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/audible/pfm/repository/SideloadTestDevicePlatformConfigRepository;->getDevicePlatformConfig()Lcom/audible/pfm/domain/DevicePlatformConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retrieve()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/audible/pfm/repository/SideloadTestDevicePlatformConfigRepository;->retrieve()Lcom/audible/pfm/domain/DevicePlatformConfig;

    move-result-object v0

    return-object v0
.end method

.method public retrieveIgnoreCache()Lcom/audible/pfm/domain/DevicePlatformConfig;
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/audible/pfm/repository/SideloadTestDevicePlatformConfigRepository;->getDevicePlatformConfig()Lcom/audible/pfm/domain/DevicePlatformConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retrieveIgnoreCache()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/audible/pfm/repository/SideloadTestDevicePlatformConfigRepository;->retrieveIgnoreCache()Lcom/audible/pfm/domain/DevicePlatformConfig;

    move-result-object v0

    return-object v0
.end method
