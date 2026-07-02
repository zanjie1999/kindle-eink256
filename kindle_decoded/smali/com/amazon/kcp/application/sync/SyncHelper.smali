.class public Lcom/amazon/kcp/application/sync/SyncHelper;
.super Ljava/lang/Object;
.source "SyncHelper.java"


# static fields
.field private static final COLLECTIONS_FOREGROUND_SYNC_THROTTLE:J = 0x1499700L

.field private static final COLLECTIONS_FOREGROUND_SYNC_TIME:Ljava/lang/String; = "last_foreground_collections_sync"

.field protected static final TAG:Ljava/lang/String;

.field private static collectionsAppForegroundSyncThrottled:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    const-class v0, Lcom/amazon/kcp/application/sync/SyncHelper;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/sync/SyncHelper;->TAG:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/amazon/kcp/application/sync/SyncHelper;->collectionsAppForegroundSyncThrottled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLastSyncDate()Ljava/lang/String;
    .locals 2

    .line 115
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getSecureStorage()Lcom/amazon/kindle/persistence/ISecureStorage;

    move-result-object v0

    const-string v1, "last_syncmetadata_server_date"

    .line 116
    invoke-interface {v0, v1}, Lcom/amazon/kindle/persistence/ISecureStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initiateFullLibrarySync(Landroid/content/Context;)V
    .locals 3

    .line 60
    new-instance v0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    sget-object v1, Lcom/amazon/kcp/application/sync/internal/SyncType;->LIBRARY_MANUAL:Lcom/amazon/kcp/application/sync/internal/SyncType;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;-><init>(Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/kindle/model/content/ILocalBookInfo;Ljava/util/Date;Lcom/amazon/kindle/services/download/IStatusTracker;)V

    sget-object v1, Lcom/amazon/kindle/krx/sync/IManualSyncListener$ManualSyncType;->LIBRARY_SYNC:Lcom/amazon/kindle/krx/sync/IManualSyncListener$ManualSyncType;

    invoke-static {p0, v0, v1}, Lcom/amazon/kcp/application/sync/SyncHelper;->initiateFullSync(Landroid/content/Context;Lcom/amazon/kcp/application/sync/internal/SyncParameters;Lcom/amazon/kindle/krx/sync/IManualSyncListener$ManualSyncType;)V

    return-void
.end method

.method public static initiateFullReaderSync(Landroid/content/Context;Lcom/amazon/kindle/model/content/ILocalBookInfo;)V
    .locals 3

    .line 50
    new-instance v0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    sget-object v1, Lcom/amazon/kcp/application/sync/internal/SyncType;->BOOK_MANUAL_FULL:Lcom/amazon/kcp/application/sync/internal/SyncType;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2, v2}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;-><init>(Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/kindle/model/content/ILocalBookInfo;Ljava/util/Date;Lcom/amazon/kindle/services/download/IStatusTracker;)V

    sget-object p1, Lcom/amazon/kindle/krx/sync/IManualSyncListener$ManualSyncType;->READER_SYNC:Lcom/amazon/kindle/krx/sync/IManualSyncListener$ManualSyncType;

    invoke-static {p0, v0, p1}, Lcom/amazon/kcp/application/sync/SyncHelper;->initiateFullSync(Landroid/content/Context;Lcom/amazon/kcp/application/sync/internal/SyncParameters;Lcom/amazon/kindle/krx/sync/IManualSyncListener$ManualSyncType;)V

    return-void
.end method

.method public static initiateFullSync(Landroid/content/Context;Lcom/amazon/kcp/application/sync/internal/SyncParameters;Lcom/amazon/kindle/krx/sync/IManualSyncListener$ManualSyncType;)V
    .locals 2

    .line 85
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->canPerformSync()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    new-instance v0, Lcom/amazon/kindle/network/WirelessUtils;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/network/WirelessUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/amazon/kindle/network/WirelessUtils;->hasNetworkConnectivity()Z

    move-result p0

    if-nez p0, :cond_0

    .line 87
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p0

    const/4 p1, 0x0

    const-string p2, "ConnectionError"

    invoke-interface {p0, p2, p1}, Lcom/amazon/kcp/application/IUIMessaging;->showAlert(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 92
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSynchronizationManager()Lcom/amazon/kindle/sync/SynchronizationManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/sync/SynchronizationManager;->sync(Lcom/amazon/kcp/application/sync/internal/SyncParameters;)Z

    .line 96
    sget-object p0, Lcom/amazon/kindle/collections/ICollectionsSyncManager$CollectionsSyncType;->FULL:Lcom/amazon/kindle/collections/ICollectionsSyncManager$CollectionsSyncType;

    invoke-static {p0}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->syncCollections(Lcom/amazon/kindle/collections/ICollectionsSyncManager$CollectionsSyncType;)V

    .line 98
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 100
    invoke-interface {p0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getSyncManager()Lcom/amazon/kindle/krx/sync/ISyncManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kindle/krx/sync/ISyncManager;->getManualSyncListeners()Ljava/util/List;

    move-result-object p0

    .line 101
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/sync/IManualSyncListener;

    .line 102
    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/sync/IManualSyncListener;->onManualSync(Lcom/amazon/kindle/krx/sync/IManualSyncListener$ManualSyncType;)V

    goto :goto_0

    .line 105
    :cond_1
    sget-object p0, Lcom/amazon/kcp/application/sync/SyncHelper;->TAG:Ljava/lang/String;

    const-string p1, "Wasn\'t able to run full sync due to null SDK"

    invoke-static {p0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p0

    new-instance p1, Lcom/amazon/kindle/krx/metrics/MetricsData;

    sget-object v0, Lcom/amazon/kcp/application/sync/SyncHelper;->TAG:Ljava/lang/String;

    const-string v1, "AmazonKindle"

    invoke-direct {p1, v1, v0}, Lcom/amazon/kindle/krx/metrics/MetricsData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 107
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setWithAppVersion(Z)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FullSyncFailureDueToNullSDK:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    .line 109
    invoke-virtual {p1, p2}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setMetricType(Lcom/amazon/kindle/krx/metrics/MetricType;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object p1

    .line 106
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    :cond_2
    return-void
.end method

.method public static initiateManualFullLibrarySync(Landroid/content/Context;)V
    .locals 3

    .line 71
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/sync/SyncHelper;->TAG:Ljava/lang/String;

    const-string v2, "LibraryManualSyncPressed_v2"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance v0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    sget-object v1, Lcom/amazon/kcp/application/sync/internal/SyncType;->LIBRARY_MANUAL:Lcom/amazon/kcp/application/sync/internal/SyncType;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;-><init>(Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/kindle/model/content/ILocalBookInfo;Ljava/util/Date;Lcom/amazon/kindle/services/download/IStatusTracker;)V

    sget-object v1, Lcom/amazon/kindle/krx/sync/IManualSyncListener$ManualSyncType;->LIBRARY_SYNC:Lcom/amazon/kindle/krx/sync/IManualSyncListener$ManualSyncType;

    invoke-static {p0, v0, v1}, Lcom/amazon/kcp/application/sync/SyncHelper;->initiateFullSync(Landroid/content/Context;Lcom/amazon/kcp/application/sync/internal/SyncParameters;Lcom/amazon/kindle/krx/sync/IManualSyncListener$ManualSyncType;)V

    return-void
.end method

.method public static syncCollectionsOnAppForeground()V
    .locals 1

    .line 127
    sget-object v0, Lcom/amazon/kindle/collections/ICollectionsSyncManager$CollectionsSyncType;->INCREMENTAL:Lcom/amazon/kindle/collections/ICollectionsSyncManager$CollectionsSyncType;

    invoke-static {v0}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->syncCollections(Lcom/amazon/kindle/collections/ICollectionsSyncManager$CollectionsSyncType;)V

    return-void
.end method
