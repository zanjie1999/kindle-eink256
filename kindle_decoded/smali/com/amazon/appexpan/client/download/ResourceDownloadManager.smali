.class public Lcom/amazon/appexpan/client/download/ResourceDownloadManager;
.super Ljava/lang/Object;
.source "ResourceDownloadManager.java"


# static fields
.field private static final INITIAL_QUEUE_CAPACITY:I = 0xb

.field private static final INVALID_DOWNLOAD_ID:J = -0x1L

.field private static final MIN_AVAILABLE_STORAGE_THRESHOLD:J = 0x2bc00000L

.field private static final MIN_AVAILABLE_STORAGE_THRESHOLD_PERCENTAGE:I = 0xa

.field private static final PARALLEL_DOWNLOAD_LIMIT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "com.amazon.appexpan.client.download.ResourceDownloadManager"


# instance fields
.field private allowDownloadsOverWAN:Z

.field private final analytics:Lcom/amazon/appexpan/client/metrics/Analytics;

.field private final context:Landroid/content/Context;

.field private final dao:Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

.field private downloadIdToResourceMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Lcom/amazon/appexpan/client/model/ResourceModel;",
            ">;"
        }
    .end annotation
.end field

.field private downloadQueue:Lcom/amazon/appexpan/client/download/DownloadPriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/appexpan/client/download/DownloadPriorityQueue<",
            "Lcom/amazon/appexpan/client/model/ResourceModel;",
            ">;"
        }
    .end annotation
.end field

.field private final eventManager:Lcom/amazon/appexpan/client/event/ResourceSetEventManager;

.field private isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private resourceSetToResourcesMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/amazon/appexpan/client/model/ResourceSetModel;",
            "Ljava/util/Set<",
            "Lcom/amazon/appexpan/client/model/ResourceModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private resourceToResourceSetsMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/amazon/appexpan/client/model/ResourceModel;",
            "Ljava/util/Set<",
            "Lcom/amazon/appexpan/client/model/ResourceSetModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private final resourceURLHandler:Lcom/amazon/appexpan/client/download/ResourceURLHandler;

.field private shouldCancelPausedDownloads:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private systemDownloadManager:Landroid/app/DownloadManager;

.field private final uncompressor:Lcom/amazon/appexpan/client/download/CompressedResourceHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;Lcom/amazon/appexpan/client/event/ResourceSetEventManager;Lcom/amazon/appexpan/client/download/CompressedResourceHandler;Lcom/amazon/appexpan/client/download/ResourceURLHandler;Lcom/amazon/appexpan/client/metrics/Analytics;Landroid/content/Context;)V
    .locals 2

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->systemDownloadManager:Landroid/app/DownloadManager;

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->shouldCancelPausedDownloads:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    iput-boolean v1, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->allowDownloadsOverWAN:Z

    .line 80
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->downloadIdToResourceMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 84
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->resourceSetToResourcesMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 88
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->resourceToResourceSetsMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 95
    iput-object p1, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->dao:Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    .line 96
    iput-object p2, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->eventManager:Lcom/amazon/appexpan/client/event/ResourceSetEventManager;

    .line 97
    iput-object p3, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->uncompressor:Lcom/amazon/appexpan/client/download/CompressedResourceHandler;

    .line 98
    iput-object p4, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->resourceURLHandler:Lcom/amazon/appexpan/client/download/ResourceURLHandler;

    .line 99
    iput-object p6, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->context:Landroid/content/Context;

    .line 100
    iput-object p5, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->analytics:Lcom/amazon/appexpan/client/metrics/Analytics;

    return-void
.end method

.method private cancelPausedPendingDownloads()I
    .locals 9

    .line 1099
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->dao:Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    invoke-interface {v0}, Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;->getDownloadIdsOfDownloadingResources()Ljava/util/List;

    move-result-object v0

    .line 1102
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_3

    .line 1104
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1106
    invoke-direct {p0, v3, v4}, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->getDownloadStatus(J)Lcom/amazon/appexpan/client/download/DownloadStatus;

    move-result-object v5

    .line 1108
    invoke-virtual {v5}, Lcom/amazon/appexpan/client/download/DownloadStatus;->getStatus()I

    move-result v6

    const/4 v7, 0x4

    const/4 v8, 0x1

    if-eq v6, v7, :cond_1

    invoke-virtual {v5}, Lcom/amazon/appexpan/client/download/DownloadStatus;->getStatus()I

    move-result v5

    if-ne v5, v8, :cond_0

    .line 1111
    :cond_1
    iget-object v5, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->systemDownloadManager:Landroid/app/DownloadManager;

    new-array v6, v8, [J

    aput-wide v3, v6, v2

    invoke-virtual {v5, v6}, Landroid/app/DownloadManager;->remove([J)I

    move-result v5

    add-int/2addr v1, v5

    .line 1112
    invoke-direct {p0, v3, v4}, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->updateCancelledDownloadState(J)V

    goto :goto_0

    :cond_2
    move v2, v1

    :cond_3
    return v2
.end method

.method private getCancellableResourcesFromResourceSet(Lcom/amazon/appexpan/client/model/ResourceSetModel;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/appexpan/client/model/ResourceSetModel;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/appexpan/client/model/ResourceModel;",
            ">;"
        }
    .end annotation

    .line 1070
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->dao:Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    invoke-interface {v0, p1}, Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;->getResourcesForResourceSet(Lcom/amazon/appexpan/client/model/ResourceSetModel;)Ljava/util/List;

    move-result-object v0

    .line 1072
    iget-object v1, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->dao:Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    invoke-interface {v1}, Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;->getAllActiveRemoteResourceSets()Ljava/util/List;

    move-result-object v1

    .line 1073
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/appexpan/client/model/ResourceSetModel;

    .line 1075
    invoke-virtual {v2, p1}, Lcom/amazon/appexpan/client/model/ResourceSetModel;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1077
    iget-object v3, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->dao:Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    invoke-interface {v3, v2}, Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;->getResourcesForResourceSet(Lcom/amazon/appexpan/client/model/ResourceSetModel;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/appexpan/client/model/ResourceModel;

    .line 1079
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1081
    sget-object v4, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resource "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/amazon/appexpan/client/model/ResourceModel;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " found in other resource sets, cannot be canceled"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/amazon/appexpan/client/AppExpanLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getDownloadStatus(J)Lcom/amazon/appexpan/client/download/DownloadStatus;
    .locals 4

    .line 650
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->systemDownloadManager:Landroid/app/DownloadManager;

    new-instance v1, Landroid/app/DownloadManager$Query;

    invoke-direct {v1}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v3, 0x0

    aput-wide p1, v2, v3

    invoke-virtual {v1, v2}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object p1

    const/16 p2, 0x10

    const/4 v0, -0x1

    if-eqz p1, :cond_1

    .line 656
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "status"

    .line 658
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v2, "local_uri"

    .line 659
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-ne v1, p2, :cond_0

    const-string/jumbo p2, "reason"

    .line 663
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    move v0, p2

    .line 665
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    move p2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 667
    :goto_0
    invoke-static {}, Lcom/amazon/appexpan/client/download/DownloadStatus;->builder()Lcom/amazon/appexpan/client/download/DownloadStatus$DownloadStatusBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/amazon/appexpan/client/download/DownloadStatus$DownloadStatusBuilder;->status(I)Lcom/amazon/appexpan/client/download/DownloadStatus$DownloadStatusBuilder;

    invoke-virtual {p1, v0}, Lcom/amazon/appexpan/client/download/DownloadStatus$DownloadStatusBuilder;->errorReasonCode(I)Lcom/amazon/appexpan/client/download/DownloadStatus$DownloadStatusBuilder;

    invoke-virtual {p1, v2}, Lcom/amazon/appexpan/client/download/DownloadStatus$DownloadStatusBuilder;->fileUri(Ljava/lang/String;)Lcom/amazon/appexpan/client/download/DownloadStatus$DownloadStatusBuilder;

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/download/DownloadStatus$DownloadStatusBuilder;->build()Lcom/amazon/appexpan/client/download/DownloadStatus;

    move-result-object p1

    return-object p1
.end method

.method private getResourceForDownloadId(J)Lcom/amazon/appexpan/client/model/ResourceModel;
    .locals 2

    .line 682
    monitor-enter p0

    .line 684
    :try_start_0
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->downloadIdToResourceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/appexpan/client/model/ResourceModel;

    .line 685
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 689
    sget-object v0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->TAG:Ljava/lang/String;

    const-string v1, "Resource not found in the cache"

    invoke-static {v0, v1}, Lcom/amazon/appexpan/client/AppExpanLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->dao:Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    invoke-interface {v0, p1, p2}, Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;->getResourceForDownloadId(J)Lcom/amazon/appexpan/client/model/ResourceModel;

    move-result-object v0

    :cond_0
    return-object v0

    :catchall_0
    move-exception p1

    .line 685
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private declared-synchronized getResourcesToEnqueue(Lcom/amazon/appexpan/client/model/ResourceSetModel;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/appexpan/client/model/ResourceSetModel;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/appexpan/client/model/ResourceModel;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 237
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 239
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->dao:Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    invoke-interface {v2, p1}, Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;->getAllNonLocalResourcesForResourceSet(Lcom/amazon/appexpan/client/model/ResourceSetModel;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 243
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    invoke-direct {p0, p1}, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->promoteResourceSetToLocal(Lcom/amazon/appexpan/client/model/ResourceSetModel;)V

    .line 247
    sget-object v1, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource-set is already LOCAL for name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceSetModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceSetModel;->getVersion()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/appexpan/client/AppExpanLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 251
    :cond_0
    iget-object v2, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->resourceSetToResourcesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceSetModel;->getPriority()Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/appexpan/client/model/ResourceSetModel$Priority;->getValue()I

    move-result v2

    .line 254
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/appexpan/client/model/ResourceModel;

    .line 257
    invoke-virtual {v3, v2}, Lcom/amazon/appexpan/client/model/ResourceModel;->setPriority(I)V

    .line 260
    iget-object v4, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->resourceToResourceSetsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 262
    iget-object v4, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->resourceToResourceSetsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 266
    :cond_2
    iget-object v4, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->resourceToResourceSetsMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v5, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4, v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    :goto_1
    invoke-direct {p0, v3, p1}, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->shouldQueueResourceForDownload(Lcom/amazon/appexpan/client/model/ResourceModel;Lcom/amazon/appexpan/client/model/ResourceSetModel;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 271
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 276
    :cond_3
    :goto_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getUpdatedResource(Lcom/amazon/appexpan/client/model/ResourceModel;)Lcom/amazon/appexpan/client/model/ResourceModel;
    .locals 5

    .line 546
    invoke-static {}, Lcom/amazon/appexpan/client/AppExpanClient;->getInstance()Lcom/amazon/appexpan/client/AppExpanClient;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/amazon/appexpan/client/AppExpanClient;->setEncodingStatus(ZLandroid/content/Context;)V

    .line 547
    invoke-static {}, Lcom/amazon/appexpan/client/AppExpanClient;->getInstance()Lcom/amazon/appexpan/client/AppExpanClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/appexpan/client/AppExpanClient;->fetchManifestByForce()V

    .line 548
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->dao:Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    invoke-interface {v0}, Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;->getAllActiveRemoteResourceSets()Ljava/util/List;

    move-result-object v0

    .line 550
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/appexpan/client/model/ResourceSetModel;

    .line 552
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->dao:Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    invoke-interface {v3, v1}, Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;->getAllNonLocalResourcesForResourceSet(Lcom/amazon/appexpan/client/model/ResourceSetModel;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 554
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/appexpan/client/model/ResourceModel;

    .line 556
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/amazon/appexpan/client/model/ResourceModel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private handleResourceFailure(Lcom/amazon/appexpan/client/model/ResourceModel;JZ)V
    .locals 4

    .line 839
    sget-object p4, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating retry count and time for failed resource "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceModel;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 839
    invoke-static {p4, v0}, Lcom/amazon/appexpan/client/AppExpanLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    iget-object p4, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->resourceToResourceSetsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Set;

    if-eqz p4, :cond_0

    .line 846
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/appexpan/client/model/ResourceSetModel;

    .line 848
    iget-object v1, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->eventManager:Lcom/amazon/appexpan/client/event/ResourceSetEventManager;

    invoke-virtual {v0}, Lcom/amazon/appexpan/client/model/ResourceSetModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/appexpan/client/event/ResourceSetEventManager;->onResourceSetDownloadFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 852
    :cond_0
    sget-object p4, Lcom/amazon/appexpan/client/model/ResourceModel$State;->FAILED:Lcom/amazon/appexpan/client/model/ResourceModel$State;

    .line 854
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 888
    invoke-static {}, Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry;->builder()Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry$DownloadRetryBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry$DownloadRetryBuilder;->retryCount(I)Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry$DownloadRetryBuilder;

    .line 889
    invoke-virtual {v3, v0, v1}, Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry$DownloadRetryBuilder;->retryTimestamp(J)Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry$DownloadRetryBuilder;

    invoke-virtual {v3}, Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry$DownloadRetryBuilder;->build()Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry;

    move-result-object v0

    .line 892
    iget-object v1, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->dao:Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v1, p1, p4, p2, v0}, Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;->updateResourceState(Lcom/amazon/appexpan/client/model/ResourceModel;Lcom/amazon/appexpan/client/model/ResourceModel$State;Ljava/lang/Long;Lcom/amazon/appexpan/client/model/ResourceModel$DownloadRetry;)V

    .line 894
    sget-object p2, Lcom/amazon/appexpan/client/model/ResourceModel$State;->INVALID:Lcom/amazon/appexpan/client/model/ResourceModel$State;

    if-ne p4, p2, :cond_1

    .line 896
    iget-object p2, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->analytics:Lcom/amazon/appexpan/client/metrics/Analytics;

    invoke-virtual {p2, p1}, Lcom/amazon/appexpan/client/metrics/Analytics;->publishResourceInvalidEvent(Lcom/amazon/appexpan/client/model/ResourceModel;)V

    :cond_1
    return-void
.end method

.method private isDiskSpaceAvailable()Z
    .locals 7

    .line 379
    invoke-static {}, Lcom/amazon/appexpan/client/util/DeviceInformationUtils;->getAvailableStorageSize()J

    move-result-wide v0

    const-wide/32 v2, 0x2bc00000

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    long-to-double v2, v0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double v2, v2, v4

    .line 385
    invoke-static {}, Lcom/amazon/appexpan/client/util/DeviceInformationUtils;->getTotalStorageSize()J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    cmpg-double v6, v2, v4

    if-gez v6, :cond_0

    .line 389
    sget-object v4, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Available storage space ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, "%) is below minimum required storage"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/amazon/appexpan/client/AppExpanLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 395
    :cond_0
    sget-object v2, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Available storage : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/amazon/appexpan/client/AppExpanLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method private isResourceValid(Lcom/amazon/appexpan/client/model/ResourceModel;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 526
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/appexpan/client/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 531
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceModel;->getLocation()Lcom/amazon/appexpan/client/model/ResourceModel$Location;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 532
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceModel;->getLocation()Lcom/amazon/appexpan/client/model/ResourceModel$Location;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceModel$Location;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/appexpan/client/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method private onDownloadFailure(Lcom/amazon/appexpan/client/model/ResourceModel;JLcom/amazon/appexpan/client/download/DownloadStatus;)V
    .locals 1

    .line 808
    invoke-virtual {p4}, Lcom/amazon/appexpan/client/download/DownloadStatus;->getErrorReasonCode()I

    move-result p4

    const/16 v0, 0x3e9

    if-eq p4, v0, :cond_0

    packed-switch p4, :pswitch_data_0

    const/4 p4, 0x1

    .line 826
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->handleResourceFailure(Lcom/amazon/appexpan/client/model/ResourceModel;JZ)V

    goto :goto_0

    :cond_0
    :pswitch_0
    const/4 p4, 0x0

    .line 820
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->handleResourceFailure(Lcom/amazon/appexpan/client/model/ResourceModel;JZ)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3ee
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onDownloadSuccess(Lcom/amazon/appexpan/client/model/ResourceModel;JLjava/io/File;)V
    .locals 1

    .line 712
    invoke-direct {p0, p1, p4}, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->onResourceDownloadSuccess(Lcom/amazon/appexpan/client/model/ResourceModel;Ljava/io/File;)Lcom/amazon/appexpan/client/model/ResourceModel$State;

    move-result-object p4

    .line 713
    sget-object v0, Lcom/amazon/appexpan/client/model/ResourceModel$State;->FAILED:Lcom/amazon/appexpan/client/model/ResourceModel$State;

    if-ne p4, v0, :cond_0

    const/4 p4, 0x0

    .line 715
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->handleResourceFailure(Lcom/amazon/appexpan/client/model/ResourceModel;JZ)V

    goto :goto_0

    .line 720
    :cond_0
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->dao:Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p4, p2}, Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;->updateResourceState(Lcom/amazon/appexpan/client/model/ResourceModel;Lcom/amazon/appexpan/client/model/ResourceModel$State;Ljava/lang/Long;)V

    :goto_0
    return-void
.end method

.method private onResourceDownloadSuccess(Lcom/amazon/appexpan/client/model/ResourceModel;Ljava/io/File;)Lcom/amazon/appexpan/client/model/ResourceModel$State;
    .locals 4

    if-eqz p2, :cond_8

    .line 728
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->context:Landroid/content/Context;

    .line 737
    invoke-static {v0}, Lcom/amazon/appexpan/client/download/ResourceLocationManager;->getInstance(Landroid/content/Context;)Lcom/amazon/appexpan/client/download/ResourceLocationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/appexpan/client/download/ResourceLocationManager;->getDestinationResourceFile(Lcom/amazon/appexpan/client/model/ResourceModel;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    .line 742
    iget-object p2, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->analytics:Lcom/amazon/appexpan/client/metrics/Analytics;

    const-string v0, "DestinationFileCreationFailed"

    invoke-virtual {p2, p1, v0}, Lcom/amazon/appexpan/client/metrics/Analytics;->publishResourceDownloadFailEvent(Lcom/amazon/appexpan/client/model/ResourceModel;Ljava/lang/String;)V

    .line 744
    sget-object p1, Lcom/amazon/appexpan/client/model/ResourceModel$State;->FAILED:Lcom/amazon/appexpan/client/model/ResourceModel$State;

    return-object p1

    .line 748
    :cond_1
    iget-object v1, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->uncompressor:Lcom/amazon/appexpan/client/download/CompressedResourceHandler;

    invoke-virtual {v1, p2}, Lcom/amazon/appexpan/client/download/CompressedResourceHandler;->isCompressedResource(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 750
    iget-object v1, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->uncompressor:Lcom/amazon/appexpan/client/download/CompressedResourceHandler;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Lcom/amazon/appexpan/client/download/CompressedResourceHandler;->uncompressResource(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 753
    iget-object p2, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->analytics:Lcom/amazon/appexpan/client/metrics/Analytics;

    invoke-virtual {p2, p1}, Lcom/amazon/appexpan/client/metrics/Analytics;->publishResourceDownloadSuccessEvent(Lcom/amazon/appexpan/client/model/ResourceModel;)V

    .line 754
    sget-object p1, Lcom/amazon/appexpan/client/model/ResourceModel$State;->LOCAL:Lcom/amazon/appexpan/client/model/ResourceModel$State;

    return-object p1

    .line 757
    :cond_2
    sget-object v0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to uncompress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/amazon/appexpan/client/AppExpanLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    iget-object p2, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->analytics:Lcom/amazon/appexpan/client/metrics/Analytics;

    const-string v0, "UncompressFailed"

    invoke-virtual {p2, p1, v0}, Lcom/amazon/appexpan/client/metrics/Analytics;->publishResourceDownloadFailEvent(Lcom/amazon/appexpan/client/model/ResourceModel;Ljava/lang/String;)V

    .line 760
    sget-object p1, Lcom/amazon/appexpan/client/model/ResourceModel$State;->FAILED:Lcom/amazon/appexpan/client/model/ResourceModel$State;

    return-object p1

    .line 764
    :cond_3
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 766
    invoke-static {p2, v0}, Lcom/amazon/appexpan/client/io/FileSystemHelper;->move(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 768
    iget-object p2, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->analytics:Lcom/amazon/appexpan/client/metrics/Analytics;

    invoke-virtual {p2, p1}, Lcom/amazon/appexpan/client/metrics/Analytics;->publishResourceDownloadSuccessEvent(Lcom/amazon/appexpan/client/model/ResourceModel;)V

    .line 769
    sget-object p1, Lcom/amazon/appexpan/client/model/ResourceModel$State;->LOCAL:Lcom/amazon/appexpan/client/model/ResourceModel$State;

    return-object p1

    .line 773
    :cond_4
    invoke-static {p2, v0}, Lcom/amazon/appexpan/client/io/FileSystemHelper;->copy(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 776
    invoke-static {p2}, Lcom/amazon/appexpan/client/io/FileSystemHelper;->delete(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 779
    sget-object v0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " after copy"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/amazon/appexpan/client/AppExpanLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    iget-object p2, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->analytics:Lcom/amazon/appexpan/client/metrics/Analytics;

    invoke-virtual {p2, p1}, Lcom/amazon/appexpan/client/metrics/Analytics;->publishFileDeletionFailedEvent(Lcom/amazon/appexpan/client/model/ResourceModel;)V

    .line 783
    :cond_5
    iget-object p2, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->analytics:Lcom/amazon/appexpan/client/metrics/Analytics;

    invoke-virtual {p2, p1}, Lcom/amazon/appexpan/client/metrics/Analytics;->publishResourceDownloadSuccessEvent(Lcom/amazon/appexpan/client/model/ResourceModel;)V

    .line 784
    sget-object p1, Lcom/amazon/appexpan/client/model/ResourceModel$State;->LOCAL:Lcom/amazon/appexpan/client/model/ResourceModel$State;

    return-object p1

    .line 787
    :cond_6
    sget-object v1, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in moving "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/amazon/appexpan/client/AppExpanLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    iget-object p2, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->analytics:Lcom/amazon/appexpan/client/metrics/Analytics;

    const-string v0, "MoveFailed"

    invoke-virtual {p2, p1, v0}, Lcom/amazon/appexpan/client/metrics/Analytics;->publishResourceDownloadFailEvent(Lcom/amazon/appexpan/client/model/ResourceModel;Ljava/lang/String;)V

    .line 790
    sget-object p1, Lcom/amazon/appexpan/client/model/ResourceModel$State;->FAILED:Lcom/amazon/appexpan/client/model/ResourceModel$State;

    return-object p1

    .line 794
    :cond_7
    iget-object p2, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->analytics:Lcom/amazon/appexpan/client/metrics/Analytics;

    invoke-virtual {p2, p1}, Lcom/amazon/appexpan/client/metrics/Analytics;->publishResourceDownloadSuccessEvent(Lcom/amazon/appexpan/client/model/ResourceModel;)V

    .line 795
    sget-object p1, Lcom/amazon/appexpan/client/model/ResourceModel$State;->LOCAL:Lcom/amazon/appexpan/client/model/ResourceModel$State;

    return-object p1

    .line 730
    :cond_8
    :goto_0
    sget-object v0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download file doesn\'t exist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/amazon/appexpan/client/AppExpanLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    iget-object p2, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->analytics:Lcom/amazon/appexpan/client/metrics/Analytics;

    const-string v0, "InvalidDownloadedFile"

    invoke-virtual {p2, p1, v0}, Lcom/amazon/appexpan/client/metrics/Analytics;->publishResourceDownloadFailEvent(Lcom/amazon/appexpan/client/model/ResourceModel;Ljava/lang/String;)V

    .line 733
    sget-object p1, Lcom/amazon/appexpan/client/model/ResourceModel$State;->FAILED:Lcom/amazon/appexpan/client/model/ResourceModel$State;

    return-object p1
.end method

.method private declared-synchronized populateDownloadQueue()V
    .locals 3

    monitor-enter p0

    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->dao:Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    invoke-interface {v0}, Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;->getAllActiveRemoteResourceSets()Ljava/util/List;

    move-result-object v0

    .line 220
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/appexpan/client/model/ResourceSetModel;

    .line 222
    iget-object v2, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->downloadQueue:Lcom/amazon/appexpan/client/download/DownloadPriorityQueue;

    invoke-direct {p0, v1}, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->getResourcesToEnqueue(Lcom/amazon/appexpan/client/model/ResourceSetModel;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/PriorityQueue;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 224
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private prioritizeSetInDownloadQueue(Lcom/amazon/appexpan/client/model/ResourceSetModel;)Z
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->downloadQueue:Lcom/amazon/appexpan/client/download/DownloadPriorityQueue;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->getResourcesToEnqueue(Lcom/amazon/appexpan/client/model/ResourceSetModel;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->addAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private promoteResourceSetToLocal(Lcom/amazon/appexpan/client/model/ResourceSetModel;)V
    .locals 2

    .line 968
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->dao:Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    invoke-interface {v0, p1}, Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;->promoteResourceSetToLocal(Lcom/amazon/appexpan/client/model/ResourceSetModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 970
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->eventManager:Lcom/amazon/appexpan/client/event/ResourceSetEventManager;

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceSetModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/appexpan/client/event/ResourceSetEventManager;->onResourceSetAvailable(Ljava/lang/String;)V

    .line 972
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->analytics:Lcom/amazon/appexpan/client/metrics/Analytics;

    invoke-virtual {v0, p1}, Lcom/amazon/appexpan/client/metrics/Analytics;->publishResourceSetPromotedEvent(Lcom/amazon/appexpan/client/model/ResourceSetModel;)V

    :cond_0
    return-void
.end method

.method private shouldQueueResourceForDownload(Lcom/amazon/appexpan/client/model/ResourceModel;Lcom/amazon/appexpan/client/model/ResourceSetModel;)Z
    .locals 3

    .line 287
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceModel;->getState()Lcom/amazon/appexpan/client/model/ResourceModel$State;

    move-result-object v0

    sget-object v1, Lcom/amazon/appexpan/client/model/ResourceModel$State;->REMOTE:Lcom/amazon/appexpan/client/model/ResourceModel$State;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 293
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceModel;->getState()Lcom/amazon/appexpan/client/model/ResourceModel$State;

    move-result-object v0

    sget-object v2, Lcom/amazon/appexpan/client/model/ResourceModel$State;->FAILED:Lcom/amazon/appexpan/client/model/ResourceModel$State;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 324
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceModel;->getState()Lcom/amazon/appexpan/client/model/ResourceModel$State;

    move-result-object p1

    sget-object v0, Lcom/amazon/appexpan/client/model/ResourceModel$State;->INVALID:Lcom/amazon/appexpan/client/model/ResourceModel$State;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 326
    iget-object p1, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->dao:Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    invoke-interface {p1, p2}, Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;->promoteResourceSetToFailure(Lcom/amazon/appexpan/client/model/ResourceSetModel;)Z

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private declared-synchronized startDownloads()V
    .locals 7

    monitor-enter p0

    .line 341
    :try_start_0
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->downloadQueue:Lcom/amazon/appexpan/client/download/DownloadPriorityQueue;

    if-eqz v0, :cond_2

    .line 343
    invoke-direct {p0}, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->isDiskSpaceAvailable()Z

    move-result v0

    const/4 v1, 0x0

    const-wide/16 v2, -0x2

    if-eqz v0, :cond_1

    .line 346
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->downloadQueue:Lcom/amazon/appexpan/client/download/DownloadPriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->downloadIdToResourceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const/4 v4, 0x2

    if-ge v0, v4, :cond_2

    .line 348
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->downloadQueue:Lcom/amazon/appexpan/client/download/DownloadPriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/appexpan/client/model/ResourceModel;

    .line 350
    invoke-virtual {p0, v0}, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->downloadResource(Lcom/amazon/appexpan/client/model/ResourceModel;)J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-nez v6, :cond_0

    .line 354
    sget-object v4, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing failed resource "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/amazon/appexpan/client/model/ResourceModel;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/amazon/appexpan/client/model/ResourceModel;->getVersion()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " from the queue. It will be retried later"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/amazon/appexpan/client/AppExpanLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-direct {p0, v0, v2, v3, v1}, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->handleResourceFailure(Lcom/amazon/appexpan/client/model/ResourceModel;JZ)V

    goto :goto_0

    .line 362
    :cond_1
    sget-object v0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->TAG:Ljava/lang/String;

    const-string v4, "Unable to start resource download. Available storage space is below minimum required storage."

    invoke-static {v0, v4}, Lcom/amazon/appexpan/client/AppExpanLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->downloadQueue:Lcom/amazon/appexpan/client/download/DownloadPriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/appexpan/client/model/ResourceModel;

    .line 367
    invoke-direct {p0, v4, v2, v3, v1}, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->handleResourceFailure(Lcom/amazon/appexpan/client/model/ResourceModel;JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 371
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateCancelledDownloadState(J)V
    .locals 5

    .line 1126
    invoke-direct {p0, p1, p2}, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->getResourceForDownloadId(J)Lcom/amazon/appexpan/client/model/ResourceModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1131
    iget-object v1, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->dao:Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    sget-object v2, Lcom/amazon/appexpan/client/model/ResourceModel$State;->REMOTE:Lcom/amazon/appexpan/client/model/ResourceModel$State;

    const-wide/16 v3, -0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;->updateResourceState(Lcom/amazon/appexpan/client/model/ResourceModel;Lcom/amazon/appexpan/client/model/ResourceModel$State;Ljava/lang/Long;)V

    .line 1134
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->downloadIdToResourceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private updateDownloadingResourceState()V
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->dao:Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    invoke-interface {v0}, Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;->getDownloadIdsOfDownloadingResources()Ljava/util/List;

    move-result-object v0

    .line 144
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 146
    invoke-virtual {p0, v1, v2}, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->updateResourceState(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private declared-synchronized updateResourceSetState(Lcom/amazon/appexpan/client/model/ResourceModel;)V
    .locals 5

    monitor-enter p0

    .line 928
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceModel;->getState()Lcom/amazon/appexpan/client/model/ResourceModel$State;

    move-result-object v0

    sget-object v1, Lcom/amazon/appexpan/client/model/ResourceModel$State;->LOCAL:Lcom/amazon/appexpan/client/model/ResourceModel$State;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 931
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->resourceToResourceSetsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 938
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/appexpan/client/model/ResourceSetModel;

    .line 940
    iget-object v2, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->resourceSetToResourcesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 943
    iget-object v2, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->resourceSetToResourcesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 947
    iget-object v2, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->resourceSetToResourcesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 950
    invoke-direct {p0, v1}, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->promoteResourceSetToLocal(Lcom/amazon/appexpan/client/model/ResourceSetModel;)V

    .line 951
    sget-object v2, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource-set is marked LOCAL for name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/amazon/appexpan/client/model/ResourceSetModel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 952
    invoke-virtual {v1}, Lcom/amazon/appexpan/client/model/ResourceSetModel;->getVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 951
    invoke-static {v2, v3}, Lcom/amazon/appexpan/client/AppExpanLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    iget-object v2, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->resourceSetToResourcesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 962
    :cond_1
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->resourceToResourceSetsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 964
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public allowDownloadsOverWAN(Z)V
    .locals 3

    .line 984
    iget-boolean v0, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->allowDownloadsOverWAN:Z

    if-eq v0, p1, :cond_1

    .line 986
    iput-boolean p1, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->allowDownloadsOverWAN:Z

    .line 987
    sget-object v0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting allowDownloadsOverWAN flag to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/appexpan/client/AppExpanLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    iget-object p1, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 996
    invoke-direct {p0}, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->cancelPausedPendingDownloads()I

    move-result p1

    if-lez p1, :cond_1

    .line 1001
    sget-object p1, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->TAG:Ljava/lang/String;

    const-string v0, "Requeueing paused downloads on WAN restriction change"

    invoke-static {p1, v0}, Lcom/amazon/appexpan/client/AppExpanLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    invoke-virtual {p0}, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->downloadResources()V

    goto :goto_0

    .line 1008
    :cond_0
    iget-object p1, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->shouldCancelPausedDownloads:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized cancelResourceDownloadsForResourceSet(Lcom/amazon/appexpan/client/model/ResourceSetModel;)V
    .locals 9

    monitor-enter p0

    .line 1020
    :try_start_0
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1022
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->resourceSetToResourcesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    invoke-direct {p0, p1}, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->getCancellableResourcesFromResourceSet(Lcom/amazon/appexpan/client/model/ResourceSetModel;)Ljava/util/List;

    move-result-object v0

    .line 1025
    iget-object v1, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->dao:Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    invoke-interface {v1}, Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;->getDownloadIdsOfDownloadingResources()Ljava/util/List;

    move-result-object v1

    .line 1027
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 1029
    iget-object v3, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->dao:Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;->getResourceForDownloadId(J)Lcom/amazon/appexpan/client/model/ResourceModel;

    move-result-object v3

    .line 1030
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1032
    sget-object v4, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempting to cancel download for resource "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/amazon/appexpan/client/model/ResourceModel;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " from resource set "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceSetModel;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/amazon/appexpan/client/AppExpanLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    iget-object v4, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->systemDownloadManager:Landroid/app/DownloadManager;

    const/4 v5, 0x1

    new-array v5, v5, [J

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    aput-wide v7, v5, v6

    invoke-virtual {v4, v5}, Landroid/app/DownloadManager;->remove([J)I

    .line 1034
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->updateCancelledDownloadState(J)V

    .line 1036
    iget-object v2, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->resourceToResourceSetsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1038
    iget-object v2, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->resourceToResourceSetsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1043
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/appexpan/client/model/ResourceModel;

    .line 1045
    iget-object v2, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->downloadQueue:Lcom/amazon/appexpan/client/download/DownloadPriorityQueue;

    invoke-virtual {v2, v1}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1047
    sget-object v2, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing download for resource "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/amazon/appexpan/client/model/ResourceModel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from resource set "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceSetModel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from the downloadqueue"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/appexpan/client/AppExpanLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    iget-object v2, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->downloadQueue:Lcom/amazon/appexpan/client/download/DownloadPriorityQueue;

    invoke-virtual {v2, v1}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 1050
    iget-object v2, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->resourceToResourceSetsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1052
    iget-object v2, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->resourceToResourceSetsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1057
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized downloadResource(Lcom/amazon/appexpan/client/model/ResourceModel;)J
    .locals 7

    monitor-enter p0

    .line 417
    :try_start_0
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->context:Landroid/content/Context;

    sput-object v0, Lcom/amazon/appexpan/client/util/CipherUtils;->mContext:Landroid/content/Context;

    .line 418
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceModel;->getLocation()Lcom/amazon/appexpan/client/model/ResourceModel$Location;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/appexpan/client/model/ResourceModel$Location;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/appexpan/client/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, -0x2

    if-eqz v0, :cond_0

    .line 420
    invoke-direct {p0, p1}, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->getUpdatedResource(Lcom/amazon/appexpan/client/model/ResourceModel;)Lcom/amazon/appexpan/client/model/ResourceModel;

    move-result-object p1

    .line 423
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceModel;->getLocation()Lcom/amazon/appexpan/client/model/ResourceModel$Location;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/appexpan/client/model/ResourceModel$Location;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/appexpan/client/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 425
    monitor-exit p0

    return-wide v1

    .line 433
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->isResourceValid(Lcom/amazon/appexpan/client/model/ResourceModel;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 435
    monitor-exit p0

    return-wide v1

    .line 438
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceModel;->getState()Lcom/amazon/appexpan/client/model/ResourceModel$State;

    move-result-object v0

    sget-object v3, Lcom/amazon/appexpan/client/model/ResourceModel$State;->LOCAL:Lcom/amazon/appexpan/client/model/ResourceModel$State;

    if-eq v0, v3, :cond_7

    .line 439
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceModel;->getState()Lcom/amazon/appexpan/client/model/ResourceModel$State;

    move-result-object v0

    sget-object v3, Lcom/amazon/appexpan/client/model/ResourceModel$State;->DOWNLOADING:Lcom/amazon/appexpan/client/model/ResourceModel$State;

    if-ne v0, v3, :cond_2

    goto/16 :goto_2

    .line 444
    :cond_2
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/appexpan/client/download/ResourceLocationManager;->getInstance(Landroid/content/Context;)Lcom/amazon/appexpan/client/download/ResourceLocationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/appexpan/client/download/ResourceLocationManager;->getResourceDownloadFile(Lcom/amazon/appexpan/client/model/ResourceModel;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_3

    .line 448
    sget-object v0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get download file for resource name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceModel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " resource version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceModel;->getVersion()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 448
    invoke-static {v0, p1}, Lcom/amazon/appexpan/client/AppExpanLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 450
    monitor-exit p0

    return-wide v1

    .line 453
    :cond_3
    :try_start_3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 458
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 460
    sget-object v3, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleting resource file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to start a fresh download."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/amazon/appexpan/client/AppExpanLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 465
    :cond_4
    sget-object v3, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to delete resource file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to start a fresh download."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/amazon/appexpan/client/AppExpanLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 476
    :cond_5
    :goto_0
    :try_start_4
    iget-object v3, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->resourceURLHandler:Lcom/amazon/appexpan/client/download/ResourceURLHandler;

    invoke-virtual {v3, p1}, Lcom/amazon/appexpan/client/download/ResourceURLHandler;->getUriForResource(Lcom/amazon/appexpan/client/model/ResourceModel;)Landroid/net/Uri;

    move-result-object v3

    .line 477
    new-instance v4, Landroid/app/DownloadManager$Request;

    invoke-direct {v4, v3}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 488
    :try_start_5
    iget-boolean v3, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->allowDownloadsOverWAN:Z

    const/4 v5, 0x2

    if-nez v3, :cond_6

    .line 490
    invoke-virtual {v4, v5}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    .line 493
    :cond_6
    invoke-virtual {v4, v5}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 495
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/DownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 502
    :try_start_6
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->systemDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v0, v4}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v3

    .line 505
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->dao:Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    sget-object v5, Lcom/amazon/appexpan/client/model/ResourceModel$State;->DOWNLOADING:Lcom/amazon/appexpan/client/model/ResourceModel$State;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, p1, v5, v6}, Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;->updateResourceState(Lcom/amazon/appexpan/client/model/ResourceModel;Lcom/amazon/appexpan/client/model/ResourceModel$State;Ljava/lang/Long;)V

    .line 506
    sget-object v0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Download enqueued to the download manager for the resource "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceModel;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceModel;->getVersion()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " with download id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/amazon/appexpan/client/AppExpanLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->downloadIdToResourceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-wide v1, v3

    goto :goto_1

    :catch_0
    move-exception v0

    .line 513
    :try_start_7
    sget-object v3, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in enqueueing the resource "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceModel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceModel;->getVersion()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to the download manager"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v0}, Lcom/amazon/appexpan/client/AppExpanLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 516
    :goto_1
    monitor-exit p0

    return-wide v1

    :catch_1
    move-exception v0

    .line 481
    :try_start_8
    sget-object v3, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to generate URI for downloading resource "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceModel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceModel;->getVersion()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 481
    invoke-static {v3, v4, v0}, Lcom/amazon/appexpan/client/AppExpanLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 484
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->analytics:Lcom/amazon/appexpan/client/metrics/Analytics;

    invoke-virtual {v0, p1}, Lcom/amazon/appexpan/client/metrics/Analytics;->publishInvalidResourceUrlEvent(Lcom/amazon/appexpan/client/model/ResourceModel;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 485
    monitor-exit p0

    return-wide v1

    :cond_7
    :goto_2
    const-wide/16 v0, -0x1

    .line 441
    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized downloadResources()V
    .locals 3

    monitor-enter p0

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->downloadQueue:Lcom/amazon/appexpan/client/download/DownloadPriorityQueue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->downloadQueue:Lcom/amazon/appexpan/client/download/DownloadPriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->populateDownloadQueue()V

    .line 172
    sget-object v0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating download queue. Size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->downloadQueue:Lcom/amazon/appexpan/client/download/DownloadPriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/appexpan/client/AppExpanLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_0
    invoke-direct {p0}, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->startDownloads()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public initialize(Landroid/os/HandlerThread;)V
    .locals 7

    .line 109
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->context:Landroid/content/Context;

    const-string v3, "download"

    .line 112
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    iput-object v0, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->systemDownloadManager:Landroid/app/DownloadManager;

    .line 116
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->context:Landroid/content/Context;

    new-instance v3, Lcom/amazon/appexpan/client/download/DownloadBroadcastReceiver;

    invoke-direct {v3, p0}, Lcom/amazon/appexpan/client/download/DownloadBroadcastReceiver;-><init>(Lcom/amazon/appexpan/client/download/ResourceDownloadManager;)V

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    new-instance v6, Landroid/os/Handler;

    .line 119
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v6, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 116
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 122
    invoke-direct {p0}, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->updateDownloadingResourceState()V

    .line 125
    iget-object p1, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->shouldCancelPausedDownloads:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->cancelPausedPendingDownloads()I

    .line 130
    :cond_0
    new-instance p1, Lcom/amazon/appexpan/client/download/DownloadPriorityQueue;

    const/16 v0, 0xb

    new-instance v1, Lcom/amazon/appexpan/client/download/ResourceModelPriorityComparator;

    invoke-direct {v1}, Lcom/amazon/appexpan/client/download/ResourceModelPriorityComparator;-><init>()V

    invoke-direct {p1, v0, v1}, Lcom/amazon/appexpan/client/download/DownloadPriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object p1, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->downloadQueue:Lcom/amazon/appexpan/client/download/DownloadPriorityQueue;

    .line 132
    invoke-virtual {p0}, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->downloadResources()V

    :cond_1
    return-void
.end method

.method public prioritizeDownloadWhenApplicable(Lcom/amazon/appexpan/client/model/ResourceSetModel;)V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-direct {p0, p1}, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->prioritizeSetInDownloadQueue(Lcom/amazon/appexpan/client/model/ResourceSetModel;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->startDownloads()V

    :cond_0
    return-void
.end method

.method updateResourceState(J)V
    .locals 5

    .line 574
    invoke-direct {p0, p1, p2}, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->getDownloadStatus(J)Lcom/amazon/appexpan/client/download/DownloadStatus;

    move-result-object v0

    .line 576
    sget-object v1, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got onDownloadComplete callback for downloadID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/amazon/appexpan/client/download/DownloadStatus;->getStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/appexpan/client/AppExpanLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    invoke-direct {p0, p1, p2}, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->getResourceForDownloadId(J)Lcom/amazon/appexpan/client/model/ResourceModel;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 582
    invoke-virtual {v0}, Lcom/amazon/appexpan/client/download/DownloadStatus;->getStatus()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    const/16 v3, 0x10

    if-eq v2, v3, :cond_0

    .line 623
    sget-object p1, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got status of "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " from download manager for the resource: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/amazon/appexpan/client/model/ResourceModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " version: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/amazon/appexpan/client/model/ResourceModel;->getVersion()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/appexpan/client/AppExpanLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 612
    :cond_0
    invoke-direct {p0, v1, p1, p2, v0}, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->onDownloadFailure(Lcom/amazon/appexpan/client/model/ResourceModel;JLcom/amazon/appexpan/client/download/DownloadStatus;)V

    .line 613
    sget-object v2, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download failed for the resource "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/amazon/appexpan/client/model/ResourceModel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/amazon/appexpan/client/model/ResourceModel;->getVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " with reason code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    invoke-virtual {v0}, Lcom/amazon/appexpan/client/download/DownloadStatus;->getErrorReasonCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 613
    invoke-static {v2, v3}, Lcom/amazon/appexpan/client/AppExpanLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    iget-object v2, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->analytics:Lcom/amazon/appexpan/client/metrics/Analytics;

    .line 618
    invoke-virtual {v0}, Lcom/amazon/appexpan/client/download/DownloadStatus;->getErrorReasonCode()I

    move-result v0

    const-string v3, "DownloadManagerError"

    .line 616
    invoke-virtual {v2, v1, v3, v0}, Lcom/amazon/appexpan/client/metrics/Analytics;->publishResourceDownloadFailEvent(Lcom/amazon/appexpan/client/model/ResourceModel;Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 588
    invoke-virtual {v0}, Lcom/amazon/appexpan/client/download/DownloadStatus;->getFileUri()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 592
    :try_start_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/net/URI;

    invoke-virtual {v0}, Lcom/amazon/appexpan/client/download/DownloadStatus;->getFileUri()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    .line 596
    :catch_0
    sget-object v0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to retrieve downloaded file URI for downloadID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/amazon/appexpan/client/AppExpanLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    if-nez v2, :cond_3

    .line 602
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/appexpan/client/download/ResourceLocationManager;->getInstance(Landroid/content/Context;)Lcom/amazon/appexpan/client/download/ResourceLocationManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amazon/appexpan/client/download/ResourceLocationManager;->getResourceDownloadFile(Lcom/amazon/appexpan/client/model/ResourceModel;)Ljava/io/File;

    move-result-object v2

    .line 606
    :cond_3
    invoke-direct {p0, v1, p1, p2, v2}, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->onDownloadSuccess(Lcom/amazon/appexpan/client/model/ResourceModel;JLjava/io/File;)V

    .line 628
    :goto_1
    invoke-direct {p0, v1}, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->updateResourceSetState(Lcom/amazon/appexpan/client/model/ResourceModel;)V

    .line 631
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->downloadIdToResourceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    invoke-direct {p0}, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->startDownloads()V

    goto :goto_2

    .line 638
    :cond_4
    sget-object v0, Lcom/amazon/appexpan/client/download/ResourceDownloadManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resource not found for the download id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/appexpan/client/AppExpanLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
