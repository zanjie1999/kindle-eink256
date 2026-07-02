.class public Lcom/audible/application/stats/StatsManager$Builder;
.super Ljava/lang/Object;
.source "StatsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/application/stats/StatsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private automaticSetStatsDispatch:Ljava/lang/Boolean;

.field private badgeImageCallback:Lcom/audible/application/stats/util/IStatsBadgeImageCallback;

.field private badgeMetadataRepository:Lcom/audible/application/stats/storage/IBadgeMetadataRepository;

.field private connectivityManager:Lcom/audible/application/stats/util/IConnectivityManager;

.field private context:Landroid/content/Context;

.field private customerStatsRepository:Lcom/audible/application/stats/storage/ICustomerStatsRepository;

.field private demoManager:Lcom/audible/application/stats/util/IStatsDemoManager;

.field private endpoint:Ljava/net/URI;

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private httpClientManager:Lcom/audible/application/stats/util/IHttpClientManager;

.field private imageCacheDirectory:Ljava/io/File;

.field private logger:Lcom/audible/application/stats/util/ILogger;

.field private maxAttemptsToTransmitNetworkData:Ljava/lang/Integer;

.field private notificationManager:Lcom/audible/application/stats/util/IStatsNotificationManager;

.field private positionTracker:Lcom/audible/application/stats/util/IStatsPositionTracker;

.field private statsCalendarManager:Lcom/audible/application/stats/util/IStatsCalendarManager;

.field private statsRepository:Lcom/audible/application/stats/storage/IStatsCachedUploadRepository;

.field private storeType:Lcom/audible/application/stats/integration/StoreType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1985
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/audible/application/stats/StatsManager;
    .locals 22

    move-object/from16 v0, p0

    .line 2115
    iget-object v1, v0, Lcom/audible/application/stats/StatsManager$Builder;->logger:Lcom/audible/application/stats/util/ILogger;

    invoke-static {v1}, Lcom/audible/application/stats/util/LogController;->registerLoggerImplementation(Lcom/audible/application/stats/util/ILogger;)V

    .line 2116
    new-instance v1, Lcom/audible/application/stats/StatsManager;

    move-object v2, v1

    iget-object v3, v0, Lcom/audible/application/stats/StatsManager$Builder;->context:Landroid/content/Context;

    iget-object v4, v0, Lcom/audible/application/stats/StatsManager$Builder;->httpClientManager:Lcom/audible/application/stats/util/IHttpClientManager;

    iget-object v5, v0, Lcom/audible/application/stats/StatsManager$Builder;->connectivityManager:Lcom/audible/application/stats/util/IConnectivityManager;

    iget-object v6, v0, Lcom/audible/application/stats/StatsManager$Builder;->demoManager:Lcom/audible/application/stats/util/IStatsDemoManager;

    iget-object v7, v0, Lcom/audible/application/stats/StatsManager$Builder;->endpoint:Ljava/net/URI;

    iget-object v8, v0, Lcom/audible/application/stats/StatsManager$Builder;->imageCacheDirectory:Ljava/io/File;

    iget-object v9, v0, Lcom/audible/application/stats/StatsManager$Builder;->statsRepository:Lcom/audible/application/stats/storage/IStatsCachedUploadRepository;

    iget-object v10, v0, Lcom/audible/application/stats/StatsManager$Builder;->badgeMetadataRepository:Lcom/audible/application/stats/storage/IBadgeMetadataRepository;

    iget-object v11, v0, Lcom/audible/application/stats/StatsManager$Builder;->customerStatsRepository:Lcom/audible/application/stats/storage/ICustomerStatsRepository;

    iget-object v12, v0, Lcom/audible/application/stats/StatsManager$Builder;->notificationManager:Lcom/audible/application/stats/util/IStatsNotificationManager;

    iget-object v13, v0, Lcom/audible/application/stats/StatsManager$Builder;->badgeImageCallback:Lcom/audible/application/stats/util/IStatsBadgeImageCallback;

    iget-object v14, v0, Lcom/audible/application/stats/StatsManager$Builder;->statsCalendarManager:Lcom/audible/application/stats/util/IStatsCalendarManager;

    iget-object v15, v0, Lcom/audible/application/stats/StatsManager$Builder;->executorService:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/audible/application/stats/StatsManager$Builder;->maxAttemptsToTransmitNetworkData:Ljava/lang/Integer;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/audible/application/stats/StatsManager$Builder;->storeType:Lcom/audible/application/stats/integration/StoreType;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/audible/application/stats/StatsManager$Builder;->automaticSetStatsDispatch:Ljava/lang/Boolean;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/audible/application/stats/StatsManager$Builder;->positionTracker:Lcom/audible/application/stats/util/IStatsPositionTracker;

    move-object/from16 v19, v1

    const/16 v20, 0x0

    invoke-direct/range {v2 .. v20}, Lcom/audible/application/stats/StatsManager;-><init>(Landroid/content/Context;Lcom/audible/application/stats/util/IHttpClientManager;Lcom/audible/application/stats/util/IConnectivityManager;Lcom/audible/application/stats/util/IStatsDemoManager;Ljava/net/URI;Ljava/io/File;Lcom/audible/application/stats/storage/IStatsCachedUploadRepository;Lcom/audible/application/stats/storage/IBadgeMetadataRepository;Lcom/audible/application/stats/storage/ICustomerStatsRepository;Lcom/audible/application/stats/util/IStatsNotificationManager;Lcom/audible/application/stats/util/IStatsBadgeImageCallback;Lcom/audible/application/stats/util/IStatsCalendarManager;Ljava/util/concurrent/ExecutorService;Ljava/lang/Integer;Lcom/audible/application/stats/integration/StoreType;Ljava/lang/Boolean;Lcom/audible/application/stats/util/IStatsPositionTracker;Lcom/audible/application/stats/StatsManager$1;)V

    return-object v21
.end method

.method public withBadgeImageCallback(Lcom/audible/application/stats/util/IStatsBadgeImageCallback;)Lcom/audible/application/stats/StatsManager$Builder;
    .locals 0

    .line 2067
    iput-object p1, p0, Lcom/audible/application/stats/StatsManager$Builder;->badgeImageCallback:Lcom/audible/application/stats/util/IStatsBadgeImageCallback;

    return-object p0
.end method

.method public withBadgeMetadataRepository(Lcom/audible/application/stats/storage/IBadgeMetadataRepository;)Lcom/audible/application/stats/StatsManager$Builder;
    .locals 0

    .line 2043
    iput-object p1, p0, Lcom/audible/application/stats/StatsManager$Builder;->badgeMetadataRepository:Lcom/audible/application/stats/storage/IBadgeMetadataRepository;

    return-object p0
.end method

.method public withConnectivityManager(Lcom/audible/application/stats/util/IConnectivityManager;)Lcom/audible/application/stats/StatsManager$Builder;
    .locals 0

    .line 2025
    iput-object p1, p0, Lcom/audible/application/stats/StatsManager$Builder;->connectivityManager:Lcom/audible/application/stats/util/IConnectivityManager;

    return-object p0
.end method

.method public withContext(Landroid/content/Context;)Lcom/audible/application/stats/StatsManager$Builder;
    .locals 0

    .line 2007
    iput-object p1, p0, Lcom/audible/application/stats/StatsManager$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method public withCustomerStatsRepository(Lcom/audible/application/stats/storage/ICustomerStatsRepository;)Lcom/audible/application/stats/StatsManager$Builder;
    .locals 0

    .line 2049
    iput-object p1, p0, Lcom/audible/application/stats/StatsManager$Builder;->customerStatsRepository:Lcom/audible/application/stats/storage/ICustomerStatsRepository;

    return-object p0
.end method

.method public withDemoManager(Lcom/audible/application/stats/util/IStatsDemoManager;)Lcom/audible/application/stats/StatsManager$Builder;
    .locals 0

    .line 2055
    iput-object p1, p0, Lcom/audible/application/stats/StatsManager$Builder;->demoManager:Lcom/audible/application/stats/util/IStatsDemoManager;

    return-object p0
.end method

.method public withEndpoint(Ljava/net/URI;)Lcom/audible/application/stats/StatsManager$Builder;
    .locals 0

    .line 2019
    iput-object p1, p0, Lcom/audible/application/stats/StatsManager$Builder;->endpoint:Ljava/net/URI;

    return-object p0
.end method

.method public withExecutorService(Ljava/util/concurrent/ExecutorService;)Lcom/audible/application/stats/StatsManager$Builder;
    .locals 0

    .line 2085
    iput-object p1, p0, Lcom/audible/application/stats/StatsManager$Builder;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public withHttpClientManager(Lcom/audible/application/stats/util/IHttpClientManager;)Lcom/audible/application/stats/StatsManager$Builder;
    .locals 0

    .line 2013
    iput-object p1, p0, Lcom/audible/application/stats/StatsManager$Builder;->httpClientManager:Lcom/audible/application/stats/util/IHttpClientManager;

    return-object p0
.end method

.method public withImageCacheDirectory(Ljava/io/File;)Lcom/audible/application/stats/StatsManager$Builder;
    .locals 0

    .line 2037
    iput-object p1, p0, Lcom/audible/application/stats/StatsManager$Builder;->imageCacheDirectory:Ljava/io/File;

    return-object p0
.end method

.method public withLogger(Lcom/audible/application/stats/util/ILogger;)Lcom/audible/application/stats/StatsManager$Builder;
    .locals 0

    .line 2073
    iput-object p1, p0, Lcom/audible/application/stats/StatsManager$Builder;->logger:Lcom/audible/application/stats/util/ILogger;

    return-object p0
.end method

.method public withMaximumAttemptsToTransmitNetworkData(Ljava/lang/Integer;)Lcom/audible/application/stats/StatsManager$Builder;
    .locals 0

    .line 2091
    iput-object p1, p0, Lcom/audible/application/stats/StatsManager$Builder;->maxAttemptsToTransmitNetworkData:Ljava/lang/Integer;

    return-object p0
.end method

.method public withNotificationManager(Lcom/audible/application/stats/util/IStatsNotificationManager;)Lcom/audible/application/stats/StatsManager$Builder;
    .locals 0

    .line 2061
    iput-object p1, p0, Lcom/audible/application/stats/StatsManager$Builder;->notificationManager:Lcom/audible/application/stats/util/IStatsNotificationManager;

    return-object p0
.end method

.method public withStatsCachedUploadRepository(Lcom/audible/application/stats/storage/IStatsCachedUploadRepository;)Lcom/audible/application/stats/StatsManager$Builder;
    .locals 0

    .line 2031
    iput-object p1, p0, Lcom/audible/application/stats/StatsManager$Builder;->statsRepository:Lcom/audible/application/stats/storage/IStatsCachedUploadRepository;

    return-object p0
.end method

.method public withStatsCalendarManager(Lcom/audible/application/stats/util/IStatsCalendarManager;)Lcom/audible/application/stats/StatsManager$Builder;
    .locals 0

    .line 2079
    iput-object p1, p0, Lcom/audible/application/stats/StatsManager$Builder;->statsCalendarManager:Lcom/audible/application/stats/util/IStatsCalendarManager;

    return-object p0
.end method

.method public withStatsPositionTracker(Lcom/audible/application/stats/util/IStatsPositionTracker;)Lcom/audible/application/stats/StatsManager$Builder;
    .locals 0

    .line 2109
    iput-object p1, p0, Lcom/audible/application/stats/StatsManager$Builder;->positionTracker:Lcom/audible/application/stats/util/IStatsPositionTracker;

    return-object p0
.end method
