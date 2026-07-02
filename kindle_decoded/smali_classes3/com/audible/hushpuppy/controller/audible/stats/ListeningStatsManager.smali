.class public final Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;
.super Ljava/lang/Object;
.source "ListeningStatsManager.java"

# interfaces
.implements Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsManager;


# static fields
.field private static final HTTP_RETRY_COUNT:I = 0x5

.field private static final LISTEN_TIME_UPDATE_INTERVAL_SECONDS:J = 0x3cL

.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private customerId:Ljava/lang/String;

.field private final endpointFactory:Lcom/audible/pfm/endpoint/IEndpointFactory;

.field private final kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private marketplaceId:Ljava/lang/String;

.field private final scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final statsBuilder:Lcom/audible/application/stats/StatsManager$Builder;

.field private final statsService:Lcom/audible/application/stats/StatsService;

.field private updateListeningStatsFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final updateListeningStatsRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/pfm/endpoint/IEndpointFactory;)V
    .locals 6

    .line 85
    new-instance v4, Lcom/audible/application/stats/StatsManager$Builder;

    invoke-direct {v4}, Lcom/audible/application/stats/StatsManager$Builder;-><init>()V

    const-string v0, "listening_stats_manager"

    invoke-static {v0}, Lcom/audible/mobile/util/Executors;->newSingleThreadScheduledExecutor(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/pfm/endpoint/IEndpointFactory;Lcom/audible/application/stats/StatsManager$Builder;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/pfm/endpoint/IEndpointFactory;Lcom/audible/application/stats/StatsManager$Builder;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager$1;

    invoke-direct {v0, p0}, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager$1;-><init>(Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;)V

    iput-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->updateListeningStatsRunnable:Ljava/lang/Runnable;

    const-string v0, "The kindleReaderSDK param must not be null"

    .line 93
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The audibleService param must not be null"

    .line 94
    invoke-static {p2, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The endpointFactory param must not be null"

    .line 95
    invoke-static {p3, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The statsBuilder param must not be null"

    .line 96
    invoke-static {p4, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The scheduledExecutorService param must not be null"

    .line 97
    invoke-static {p5, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 99
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 100
    iput-object p3, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->endpointFactory:Lcom/audible/pfm/endpoint/IEndpointFactory;

    .line 101
    iput-object p4, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->statsBuilder:Lcom/audible/application/stats/StatsManager$Builder;

    .line 102
    iput-object p5, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 103
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 104
    new-instance p3, Lcom/audible/hushpuppy/controller/audible/stats/db/HushpuppyStatsContentProviderConfiguration;

    invoke-direct {p3, p1}, Lcom/audible/hushpuppy/controller/audible/stats/db/HushpuppyStatsContentProviderConfiguration;-><init>(Landroid/content/Context;)V

    .line 106
    iget-object p5, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->statsBuilder:Lcom/audible/application/stats/StatsManager$Builder;

    invoke-virtual {p5, p1}, Lcom/audible/application/stats/StatsManager$Builder;->withContext(Landroid/content/Context;)Lcom/audible/application/stats/StatsManager$Builder;

    .line 107
    iget-object p5, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->statsBuilder:Lcom/audible/application/stats/StatsManager$Builder;

    new-instance v0, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsHttpClientManager;

    invoke-direct {v0, p1}, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsHttpClientManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p5, v0}, Lcom/audible/application/stats/StatsManager$Builder;->withHttpClientManager(Lcom/audible/application/stats/util/IHttpClientManager;)Lcom/audible/application/stats/StatsManager$Builder;

    .line 108
    iget-object p5, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->statsBuilder:Lcom/audible/application/stats/StatsManager$Builder;

    new-instance v0, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;

    invoke-direct {v0, p1, p3}, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;-><init>(Landroid/content/Context;Lcom/audible/mobile/stats/persistence/StatsContentProviderConfiguration;)V

    invoke-virtual {p5, v0}, Lcom/audible/application/stats/StatsManager$Builder;->withStatsCachedUploadRepository(Lcom/audible/application/stats/storage/IStatsCachedUploadRepository;)Lcom/audible/application/stats/StatsManager$Builder;

    .line 109
    iget-object p5, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->statsBuilder:Lcom/audible/application/stats/StatsManager$Builder;

    new-instance v0, Lcom/audible/application/stats/storage/BadgeMetadataPersistentRepository;

    invoke-direct {v0, p1, p3}, Lcom/audible/application/stats/storage/BadgeMetadataPersistentRepository;-><init>(Landroid/content/Context;Lcom/audible/mobile/stats/persistence/StatsContentProviderConfiguration;)V

    invoke-virtual {p5, v0}, Lcom/audible/application/stats/StatsManager$Builder;->withBadgeMetadataRepository(Lcom/audible/application/stats/storage/IBadgeMetadataRepository;)Lcom/audible/application/stats/StatsManager$Builder;

    .line 110
    iget-object p5, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->statsBuilder:Lcom/audible/application/stats/StatsManager$Builder;

    new-instance v0, Lcom/audible/application/stats/storage/CustomerStatsPersistentRepository;

    invoke-direct {v0, p1, p3}, Lcom/audible/application/stats/storage/CustomerStatsPersistentRepository;-><init>(Landroid/content/Context;Lcom/audible/mobile/stats/persistence/StatsContentProviderConfiguration;)V

    invoke-virtual {p5, v0}, Lcom/audible/application/stats/StatsManager$Builder;->withCustomerStatsRepository(Lcom/audible/application/stats/storage/ICustomerStatsRepository;)Lcom/audible/application/stats/StatsManager$Builder;

    .line 111
    iget-object p3, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->statsBuilder:Lcom/audible/application/stats/StatsManager$Builder;

    new-instance p5, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsConnectivityManager;

    invoke-direct {p5, p1}, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsConnectivityManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, p5}, Lcom/audible/application/stats/StatsManager$Builder;->withConnectivityManager(Lcom/audible/application/stats/util/IConnectivityManager;)Lcom/audible/application/stats/StatsManager$Builder;

    .line 112
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->statsBuilder:Lcom/audible/application/stats/StatsManager$Builder;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/audible/application/stats/StatsManager$Builder;->withNotificationManager(Lcom/audible/application/stats/util/IStatsNotificationManager;)Lcom/audible/application/stats/StatsManager$Builder;

    .line 113
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->statsBuilder:Lcom/audible/application/stats/StatsManager$Builder;

    invoke-virtual {p1, p3}, Lcom/audible/application/stats/StatsManager$Builder;->withBadgeImageCallback(Lcom/audible/application/stats/util/IStatsBadgeImageCallback;)Lcom/audible/application/stats/StatsManager$Builder;

    .line 114
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->statsBuilder:Lcom/audible/application/stats/StatsManager$Builder;

    new-instance p5, Lcom/audible/application/stats/util/DefaultStatsCalendarManagerImpl;

    invoke-direct {p5}, Lcom/audible/application/stats/util/DefaultStatsCalendarManagerImpl;-><init>()V

    invoke-virtual {p1, p5}, Lcom/audible/application/stats/StatsManager$Builder;->withStatsCalendarManager(Lcom/audible/application/stats/util/IStatsCalendarManager;)Lcom/audible/application/stats/StatsManager$Builder;

    .line 115
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->statsBuilder:Lcom/audible/application/stats/StatsManager$Builder;

    invoke-virtual {p1, p3}, Lcom/audible/application/stats/StatsManager$Builder;->withDemoManager(Lcom/audible/application/stats/util/IStatsDemoManager;)Lcom/audible/application/stats/StatsManager$Builder;

    .line 116
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->statsBuilder:Lcom/audible/application/stats/StatsManager$Builder;

    new-instance p5, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsLogger;

    invoke-direct {p5}, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsLogger;-><init>()V

    invoke-virtual {p1, p5}, Lcom/audible/application/stats/StatsManager$Builder;->withLogger(Lcom/audible/application/stats/util/ILogger;)Lcom/audible/application/stats/StatsManager$Builder;

    .line 117
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->statsBuilder:Lcom/audible/application/stats/StatsManager$Builder;

    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->getStatsEndpointURI()Ljava/net/URI;

    move-result-object p5

    invoke-virtual {p1, p5}, Lcom/audible/application/stats/StatsManager$Builder;->withEndpoint(Ljava/net/URI;)Lcom/audible/application/stats/StatsManager$Builder;

    .line 118
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->statsBuilder:Lcom/audible/application/stats/StatsManager$Builder;

    const/4 p5, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p1, p5}, Lcom/audible/application/stats/StatsManager$Builder;->withMaximumAttemptsToTransmitNetworkData(Ljava/lang/Integer;)Lcom/audible/application/stats/StatsManager$Builder;

    .line 119
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->statsBuilder:Lcom/audible/application/stats/StatsManager$Builder;

    const-class p5, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;

    invoke-virtual {p5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Lcom/audible/mobile/util/Executors;->newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p5

    invoke-virtual {p1, p5}, Lcom/audible/application/stats/StatsManager$Builder;->withExecutorService(Ljava/util/concurrent/ExecutorService;)Lcom/audible/application/stats/StatsManager$Builder;

    .line 120
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->statsBuilder:Lcom/audible/application/stats/StatsManager$Builder;

    new-instance p5, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsPositionTracker;

    invoke-direct {p5, p2}, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsPositionTracker;-><init>(Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;)V

    invoke-virtual {p1, p5}, Lcom/audible/application/stats/StatsManager$Builder;->withStatsPositionTracker(Lcom/audible/application/stats/util/IStatsPositionTracker;)Lcom/audible/application/stats/StatsManager$Builder;

    .line 121
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->statsBuilder:Lcom/audible/application/stats/StatsManager$Builder;

    invoke-virtual {p1, p3}, Lcom/audible/application/stats/StatsManager$Builder;->withImageCacheDirectory(Ljava/io/File;)Lcom/audible/application/stats/StatsManager$Builder;

    .line 122
    invoke-virtual {p4}, Lcom/audible/application/stats/StatsManager$Builder;->build()Lcom/audible/application/stats/StatsManager;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->statsService:Lcom/audible/application/stats/StatsService;

    .line 124
    invoke-virtual {p0}, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->initialize()V

    return-void
.end method

.method private cancleUpdateListeningStats()V
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->updateListeningStatsFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 259
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Cancel scheduled stats update"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->updateListeningStatsFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 261
    iput-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->updateListeningStatsFuture:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method private getCustomerId()Ljava/lang/String;
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 317
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getMarketplace()Ljava/lang/String;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 307
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getStatsEndpointURI()Ljava/net/URI;
    .locals 5

    .line 267
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 269
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Active user is null!"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    return-object v1

    .line 273
    :cond_0
    iget-object v2, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->endpointFactory:Lcom/audible/pfm/endpoint/IEndpointFactory;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/audible/pfm/endpoint/IEndpointFactory;->getEndpoints(Ljava/lang/String;)Lcom/audible/pfm/endpoint/INetworkEndpoints;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 274
    invoke-interface {v0}, Lcom/audible/pfm/endpoint/INetworkEndpoints;->getStatsEndpoint()Ljava/net/URL;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 280
    :cond_1
    :try_start_0
    sget-object v2, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v3, "Stats endpoint is %s"

    invoke-interface {v0}, Lcom/audible/pfm/endpoint/INetworkEndpoints;->getStatsEndpoint()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 281
    invoke-interface {v0}, Lcom/audible/pfm/endpoint/INetworkEndpoints;->getStatsEndpoint()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 283
    sget-object v2, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v3, "URISyntaxException"

    invoke-interface {v2, v3, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    .line 275
    :cond_2
    :goto_0
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Stats Endpoint is null"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    return-object v1
.end method

.method private scheduleUpdateListeningStats()V
    .locals 9

    .line 251
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->cancleUpdateListeningStats()V

    .line 252
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Scheduling repeating stats update"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 253
    iget-object v2, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v3, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->updateListeningStatsRunnable:Ljava/lang/Runnable;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x3c

    const-wide/16 v6, 0x3c

    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->updateListeningStatsFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private shouldInitializeStatsService()Z
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->customerId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->marketplaceId:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->getCustomerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->marketplaceId:Ljava/lang/String;

    .line 297
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->getMarketplace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private updateStatsEndpoint()V
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->statsService:Lcom/audible/application/stats/StatsService;

    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->getStatsEndpointURI()Ljava/net/URI;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/application/stats/StatsService;->updateStatsEndpoint(Ljava/net/URI;)V

    return-void
.end method


# virtual methods
.method public clearStoredStatsData()V
    .locals 2

    .line 142
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Clear local stored stats data."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->statsService:Lcom/audible/application/stats/StatsService;

    invoke-interface {v0}, Lcom/audible/application/stats/StatsService;->resetDatabase()V

    return-void
.end method

.method public connectionChangedUpdate()V
    .locals 2

    .line 170
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Connection change update."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->statsService:Lcom/audible/application/stats/StatsService;

    invoke-interface {v0}, Lcom/audible/application/stats/StatsService;->connectionChangedUpdate()V

    return-void
.end method

.method public initialize()V
    .locals 3

    .line 130
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->shouldInitializeStatsService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Initializing our stats service"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 133
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->getCustomerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->customerId:Ljava/lang/String;

    .line 134
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->getMarketplace()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->marketplaceId:Ljava/lang/String;

    .line 135
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->statsService:Lcom/audible/application/stats/StatsService;

    iget-object v2, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->customerId:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/audible/application/stats/StatsService;->init(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public login()V
    .locals 2

    .line 149
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Logging in => initializing stats."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->initialize()V

    return-void
.end method

.method public onEventAsync(Lcom/audible/pfm/event/PfmEnabledAndUpdatedEvent;)V
    .locals 1

    .line 244
    sget-object p1, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Received PfmEnabledAndUpdatedEvent"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 246
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->updateStatsEndpoint()V

    return-void
.end method

.method public recordStartListening(Lcom/audible/application/stats/integration/StatsMediaItem;)V
    .locals 3

    if-nez p1, :cond_0

    .line 206
    sget-object p1, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Record user started listening ignored as the StatsMediaItem is null"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    return-void

    .line 210
    :cond_0
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->scheduleUpdateListeningStats()V

    .line 211
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Record user started listening to audiobook with Asin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/audible/application/stats/integration/StatsMediaItem;->getAsin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->statsService:Lcom/audible/application/stats/StatsService;

    invoke-interface {v0, p1}, Lcom/audible/application/stats/StatsService;->startListening(Lcom/audible/application/stats/integration/StatsMediaItem;)V

    return-void
.end method

.method public recordStopListening()V
    .locals 2

    .line 218
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->cancleUpdateListeningStats()V

    .line 219
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Record user stopped listening to audiobook"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->statsService:Lcom/audible/application/stats/StatsService;

    invoke-interface {v0}, Lcom/audible/application/stats/StatsService;->stopListening()V

    return-void
.end method

.method public resetDatabaseMetadata()V
    .locals 2

    .line 184
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Reset database meta data."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->statsService:Lcom/audible/application/stats/StatsService;

    invoke-interface {v0}, Lcom/audible/application/stats/StatsService;->resetDatabaseMetadata()V

    return-void
.end method

.method public resetSdcardBadgeIcons()V
    .locals 2

    .line 177
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Reset SD card badge icons."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->statsService:Lcom/audible/application/stats/StatsService;

    invoke-interface {v0}, Lcom/audible/application/stats/StatsService;->resetSdcardBadgeIcons()V

    return-void
.end method

.method public stopAndRecreateListeningEvent()V
    .locals 2

    .line 198
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Stop and recreate listening stats event."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->statsService:Lcom/audible/application/stats/StatsService;

    invoke-interface {v0}, Lcom/audible/application/stats/StatsService;->stopAndRecreateListeningEvent()V

    return-void
.end method

.method public syncBadgeMetadata()V
    .locals 2

    .line 191
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Sync badge meta data."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->statsService:Lcom/audible/application/stats/StatsService;

    invoke-interface {v0}, Lcom/audible/application/stats/StatsService;->syncBadgeMetadata()V

    return-void
.end method

.method public updateCurrentListeningEventTime()V
    .locals 2

    .line 163
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Update current listening event time."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsManager;->statsService:Lcom/audible/application/stats/StatsService;

    check-cast v0, Lcom/audible/application/stats/StatsManager;

    invoke-virtual {v0}, Lcom/audible/application/stats/StatsManager;->updateCurrentListeningEventTime()V

    return-void
.end method
