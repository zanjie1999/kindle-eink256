.class Lcom/amazon/device/sync/FetchDatasetsSyncOperation;
.super Lcom/amazon/device/sync/SyncOperation;
.source "FetchDatasetsSyncOperation.java"


# instance fields
.field private final mAccountId:Ljava/lang/String;

.field private final mReason:Lcom/amazon/whispersync/Reason;

.field private final mShouldEmbedRecords:Z

.field private mWhispersyncConfig:Lcom/amazon/device/sync/platform/WhispersyncConfig;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/amazon/whispersync/Reason;Lcom/amazon/whispersync/dcp/framework/DCPLog;ZLandroid/content/Context;)V
    .locals 6

    .line 54
    sget-object v3, Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;->DOWNLOAD:Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;

    sget-object v4, Lcom/amazon/device/sync/Synchronizer$SyncActionScope;->DATASETS:Lcom/amazon/device/sync/Synchronizer$SyncActionScope;

    const-string v2, "Fetching datasets"

    move-object v0, p0

    move v1, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/device/sync/SyncOperation;-><init>(ILjava/lang/String;Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;Lcom/amazon/device/sync/Synchronizer$SyncActionScope;Lcom/amazon/whispersync/dcp/framework/DCPLog;)V

    .line 56
    iput-object p2, p0, Lcom/amazon/device/sync/FetchDatasetsSyncOperation;->mAccountId:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/amazon/device/sync/FetchDatasetsSyncOperation;->mReason:Lcom/amazon/whispersync/Reason;

    .line 58
    invoke-static {p6, p0}, Lcom/amazon/device/sync/SyncGuiceHelper;->injectMembers(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object p1, p0, Lcom/amazon/device/sync/FetchDatasetsSyncOperation;->mWhispersyncConfig:Lcom/amazon/device/sync/platform/WhispersyncConfig;

    invoke-interface {p1}, Lcom/amazon/device/sync/platform/WhispersyncConfig;->getIsBatchingDisabled()Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz p5, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/amazon/device/sync/FetchDatasetsSyncOperation;->mShouldEmbedRecords:Z

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/amazon/whispersync/dcp/framework/DCPLog;ZLandroid/content/Context;)V
    .locals 7

    .line 43
    sget-object v3, Lcom/amazon/device/sync/gear/Constants;->STUB_REASON:Lcom/amazon/whispersync/Reason;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/amazon/device/sync/FetchDatasetsSyncOperation;-><init>(ILjava/lang/String;Lcom/amazon/whispersync/Reason;Lcom/amazon/whispersync/dcp/framework/DCPLog;ZLandroid/content/Context;)V

    return-void
.end method

.method private getDirectoryUriFromDB(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 139
    new-instance v0, Lcom/amazon/device/sync/GetDatasetUpdatesUriDbOperation;

    iget-object v1, p0, Lcom/amazon/device/sync/FetchDatasetsSyncOperation;->mAccountId:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/amazon/device/sync/GetDatasetUpdatesUriDbOperation;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/device/sync/GetDatasetUpdatesUriDbOperation;->execute()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected doExecute(Landroid/content/Context;Lcom/amazon/whispersync/dcp/framework/DCPLog;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    new-instance p2, Lcom/amazon/device/sync/rpc/DatasetListRPC;

    iget-object v0, p0, Lcom/amazon/device/sync/FetchDatasetsSyncOperation;->mAccountId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p2, p1, v0, v1}, Lcom/amazon/device/sync/rpc/DatasetListRPC;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0, p1}, Lcom/amazon/device/sync/FetchDatasetsSyncOperation;->getDirectoryUriFromDB(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/amazon/device/sync/FetchDatasetsSyncOperation;->mReason:Lcom/amazon/whispersync/Reason;

    iget-boolean v2, p0, Lcom/amazon/device/sync/FetchDatasetsSyncOperation;->mShouldEmbedRecords:Z

    invoke-virtual {p2, v0, v1, v2}, Lcom/amazon/device/sync/rpc/DatasetListRPC;->getDatasets(Ljava/lang/String;Lcom/amazon/whispersync/Reason;Z)Lcom/amazon/device/sync/rpc/PaginatedResponse;

    move-result-object p2

    .line 75
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/device/sync/rpc/PaginatedResponse;->next()Ljava/util/List;

    move-result-object v6

    .line 76
    invoke-virtual {p2}, Lcom/amazon/device/sync/rpc/PaginatedResponse;->getUpdatesUri()Ljava/lang/String;

    move-result-object v4

    .line 77
    invoke-virtual {p2}, Lcom/amazon/device/sync/rpc/PaginatedResponse;->getSubscriptionUri()Ljava/lang/String;

    move-result-object v5

    .line 79
    new-instance v7, Lcom/amazon/device/sync/SaveFetchedDatasetsDbOperation;

    iget-object v2, p0, Lcom/amazon/device/sync/FetchDatasetsSyncOperation;->mAccountId:Ljava/lang/String;

    move-object v0, v7

    move-object v1, p1

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/device/sync/SaveFetchedDatasetsDbOperation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v7}, Lcom/amazon/device/sync/SaveFetchedDatasetsDbOperation;->execute()V

    .line 86
    iget-boolean v0, p0, Lcom/amazon/device/sync/FetchDatasetsSyncOperation;->mShouldEmbedRecords:Z

    if-eqz v0, :cond_6

    .line 88
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/amazon/device/sync/rpc/DatasetRPC;

    .line 90
    invoke-virtual {v5}, Lcom/amazon/device/sync/rpc/DatasetRPC;->getDataset()Lcom/amazon/whispersync/Dataset;

    move-result-object v1

    .line 91
    invoke-virtual {v1}, Lcom/amazon/whispersync/Dataset;->getRecords()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/amazon/whispersync/Dataset;->getRecords()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-virtual {v1}, Lcom/amazon/whispersync/Dataset;->getLinks()Lcom/amazon/whispersync/DatasetLinks;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/whispersync/DatasetLinks;->getFuture()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 94
    :cond_3
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 95
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 97
    invoke-virtual {v1}, Lcom/amazon/whispersync/Dataset;->getRecords()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whispersync/Record;

    .line 99
    invoke-virtual {v3}, Lcom/amazon/whispersync/Record;->isIsDeleted()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 101
    invoke-interface {v6, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 105
    :cond_4
    invoke-interface {v7, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 109
    :cond_5
    new-instance v8, Lcom/amazon/whispersync/GetRecordsLinks;

    invoke-direct {v8}, Lcom/amazon/whispersync/GetRecordsLinks;-><init>()V

    .line 110
    invoke-virtual {v1}, Lcom/amazon/whispersync/Dataset;->getLinks()Lcom/amazon/whispersync/DatasetLinks;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/whispersync/DatasetLinks;->getSelf()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/amazon/whispersync/GetRecordsLinks;->setDataset(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v1}, Lcom/amazon/whispersync/Dataset;->getLinks()Lcom/amazon/whispersync/DatasetLinks;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/whispersync/DatasetLinks;->getFuture()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/amazon/whispersync/GetRecordsLinks;->setFuture(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v1}, Lcom/amazon/whispersync/Dataset;->getLinks()Lcom/amazon/whispersync/DatasetLinks;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/whispersync/PaginationLinks;->getNext()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/amazon/whispersync/PaginationLinks;->setNext(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v1}, Lcom/amazon/whispersync/Dataset;->getLinks()Lcom/amazon/whispersync/DatasetLinks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispersync/PaginationLinks;->getPrev()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/amazon/whispersync/PaginationLinks;->setPrev(Ljava/lang/String;)V

    .line 117
    :try_start_0
    new-instance v1, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation;

    iget-object v4, p0, Lcom/amazon/device/sync/FetchDatasetsSyncOperation;->mAccountId:Ljava/lang/String;

    move-object v2, v1

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/device/sync/rpc/DatasetRPC;Ljava/util/Set;Ljava/util/Set;Lcom/amazon/whispersync/GetRecordsLinks;)V

    invoke-virtual {v1}, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation;->execute()V
    :try_end_0
    .catch Lcom/amazon/whispersync/ResourceNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    nop

    goto/16 :goto_0

    .line 132
    :cond_6
    invoke-virtual {p2}, Lcom/amazon/device/sync/rpc/PaginatedResponse;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method protected getLockKey()Ljava/lang/String;
    .locals 1

    .line 145
    sget-object v0, Lcom/amazon/device/sync/Synchronizer$SyncActionScope;->DATASETS:Lcom/amazon/device/sync/Synchronizer$SyncActionScope;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
