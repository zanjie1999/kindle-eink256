.class Lcom/amazon/device/sync/SendDatasetsSyncOperation;
.super Lcom/amazon/device/sync/SyncOperation;
.source "SendDatasetsSyncOperation.java"


# instance fields
.field private final mAccountId:Ljava/lang/String;

.field private final mNamespace:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/dcp/framework/DCPLog;)V
    .locals 8

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const-string v1, "Sending datasets in %s"

    .line 29
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;->UPLOAD:Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;

    sget-object v6, Lcom/amazon/device/sync/Synchronizer$SyncActionScope;->DATASETS:Lcom/amazon/device/sync/Synchronizer$SyncActionScope;

    move-object v2, p0

    move v3, p1

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/amazon/device/sync/SyncOperation;-><init>(ILjava/lang/String;Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;Lcom/amazon/device/sync/Synchronizer$SyncActionScope;Lcom/amazon/whispersync/dcp/framework/DCPLog;)V

    .line 31
    iput-object p2, p0, Lcom/amazon/device/sync/SendDatasetsSyncOperation;->mAccountId:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/amazon/device/sync/SendDatasetsSyncOperation;->mNamespace:Ljava/lang/String;

    return-void
.end method

.method private createDataset(Lcom/amazon/device/sync/rpc/DatasetListRPC;Lcom/amazon/whispersync/Dataset;Ljava/lang/String;)Lcom/amazon/device/sync/rpc/DatasetRPCWrapper;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/device/sync/rpc/DatasetListRPC;",
            "Lcom/amazon/whispersync/Dataset;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/device/sync/rpc/DatasetRPCWrapper<",
            "Lcom/amazon/whispersync/CreateDatasetLinks;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    invoke-virtual {p2}, Lcom/amazon/whispersync/Dataset;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lcom/amazon/device/sync/rpc/DatasetListRPC;->createDataset(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/device/sync/rpc/DatasetRPCWrapper;

    move-result-object p1

    return-object p1
.end method

.method private deleteDataset(Lcom/amazon/device/sync/rpc/DatasetListRPC;Lcom/amazon/whispersync/Dataset;)Lcom/amazon/device/sync/rpc/DatasetRPC;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    invoke-virtual {p1, p2}, Lcom/amazon/device/sync/rpc/DatasetListRPC;->createLocalDataset(Lcom/amazon/whispersync/Dataset;)Lcom/amazon/device/sync/rpc/DatasetRPC;

    move-result-object p1

    .line 142
    invoke-virtual {p2}, Lcom/amazon/whispersync/Dataset;->getLinks()Lcom/amazon/whispersync/DatasetLinks;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0}, Lcom/amazon/whispersync/DatasetLinks;->getSelf()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 145
    invoke-virtual {v0}, Lcom/amazon/whispersync/DatasetLinks;->getSelf()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/device/sync/rpc/DatasetRPC;->delete(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/amazon/device/sync/SyncOperation;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/amazon/device/sync/SendDatasetsSyncOperation;->mNamespace:Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-virtual {p2}, Lcom/amazon/whispersync/Dataset;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v1

    const-string p2, "Dataset \'%s/%s\' has been deleted on server"

    invoke-virtual {v0, p2, v3}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/sync/SyncOperation;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/amazon/device/sync/SendDatasetsSyncOperation;->mNamespace:Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-virtual {p2}, Lcom/amazon/whispersync/Dataset;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v1

    const-string p2, "Dataset \'%s/%s\' is not known to be exist on the server. Skip sending deletion request"

    invoke-virtual {v0, p2, v3}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-object p1
.end method

.method private executeWithDatasets(Landroid/content/Context;Ljava/util/Collection;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection<",
            "Lcom/amazon/whispersync/Dataset;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 77
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 78
    new-instance v0, Lcom/amazon/device/sync/rpc/DatasetListRPC;

    iget-object v1, p0, Lcom/amazon/device/sync/SendDatasetsSyncOperation;->mAccountId:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/device/sync/SendDatasetsSyncOperation;->mNamespace:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2}, Lcom/amazon/device/sync/rpc/DatasetListRPC;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0, p1}, Lcom/amazon/device/sync/SendDatasetsSyncOperation;->getDirectoryUriFromDB(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 81
    iget-object v2, p0, Lcom/amazon/device/sync/SyncOperation;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/Object;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/amazon/device/sync/SendDatasetsSyncOperation;->mNamespace:Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v7, v6, v9

    const-string v7, "Sending %d dataset update for \'%s\' namespace"

    invoke-virtual {v2, v7, v6}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 84
    :try_start_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v7, v1

    :goto_0
    :try_start_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/Dataset;

    .line 86
    invoke-virtual {v1}, Lcom/amazon/whispersync/Dataset;->isIsDeleted()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    xor-int/2addr v2, v9

    if-eqz v2, :cond_0

    .line 91
    :try_start_2
    invoke-direct {p0, v0, v1, v7}, Lcom/amazon/device/sync/SendDatasetsSyncOperation;->createDataset(Lcom/amazon/device/sync/rpc/DatasetListRPC;Lcom/amazon/whispersync/Dataset;Ljava/lang/String;)Lcom/amazon/device/sync/rpc/DatasetRPCWrapper;

    move-result-object v6

    .line 94
    invoke-virtual {v6}, Lcom/amazon/device/sync/rpc/DatasetRPCWrapper;->getLinks()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/amazon/whispersync/CreateDatasetLinks;

    invoke-virtual {v10}, Lcom/amazon/whispersync/CreateDatasetLinks;->getDirectory()Ljava/lang/String;

    move-result-object v7

    .line 96
    invoke-virtual {v6}, Lcom/amazon/device/sync/rpc/DatasetRPCWrapper;->getRPC()Lcom/amazon/device/sync/rpc/DatasetRPC;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v6, p0, Lcom/amazon/device/sync/SyncOperation;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    const-string v10, "dataset \'%s/%s\' has been created/subscribed to"

    new-array v11, v3, [Ljava/lang/Object;

    iget-object v12, p0, Lcom/amazon/device/sync/SendDatasetsSyncOperation;->mNamespace:Ljava/lang/String;

    aput-object v12, v11, v8

    invoke-virtual {v1}, Lcom/amazon/whispersync/Dataset;->getName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-virtual {v6, v10, v11}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 101
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/amazon/device/sync/SendDatasetsSyncOperation;->deleteDataset(Lcom/amazon/device/sync/rpc/DatasetListRPC;Lcom/amazon/whispersync/Dataset;)Lcom/amazon/device/sync/rpc/DatasetRPC;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p2

    if-eqz v2, :cond_1

    .line 108
    :try_start_3
    new-instance v0, Lcom/amazon/device/sync/HandleCreationRequestFailureDbOperation;

    iget-object v6, p0, Lcom/amazon/device/sync/SendDatasetsSyncOperation;->mAccountId:Ljava/lang/String;

    iget-object v10, p0, Lcom/amazon/device/sync/SendDatasetsSyncOperation;->mNamespace:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/amazon/whispersync/Dataset;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, p1, v6, v10, v11}, Lcom/amazon/device/sync/HandleCreationRequestFailureDbOperation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0}, Lcom/amazon/device/sync/HandleCreationRequestFailureDbOperation;->execute()V

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/amazon/device/sync/SyncOperation;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    const-string v6, "Failed to %s dataset \'%s\'"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    if-eqz v2, :cond_2

    const-string v2, "create"

    goto :goto_1

    :cond_2
    const-string v2, "delete"

    :goto_1
    aput-object v2, v10, v8

    invoke-virtual {v1}, Lcom/amazon/whispersync/Dataset;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v9

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v3

    invoke-virtual {v0, v6, v10}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 120
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 126
    :cond_3
    new-instance p2, Lcom/amazon/device/sync/SaveUpdatedDatasetsDbOperation;

    iget-object v2, p0, Lcom/amazon/device/sync/SendDatasetsSyncOperation;->mAccountId:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/device/sync/SendDatasetsSyncOperation;->mNamespace:Ljava/lang/String;

    iget v6, p0, Lcom/amazon/device/sync/SyncOperation;->mId:I

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/amazon/device/sync/SaveUpdatedDatasetsDbOperation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILjava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Lcom/amazon/device/sync/SaveUpdatedDatasetsDbOperation;->execute()V

    return v9

    :catchall_0
    move-exception p2

    goto :goto_2

    :catchall_1
    move-exception p2

    move-object v7, v1

    .line 126
    :goto_2
    new-instance v8, Lcom/amazon/device/sync/SaveUpdatedDatasetsDbOperation;

    iget-object v2, p0, Lcom/amazon/device/sync/SendDatasetsSyncOperation;->mAccountId:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/device/sync/SendDatasetsSyncOperation;->mNamespace:Ljava/lang/String;

    iget v6, p0, Lcom/amazon/device/sync/SyncOperation;->mId:I

    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/amazon/device/sync/SaveUpdatedDatasetsDbOperation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILjava/lang/String;)V

    .line 134
    invoke-virtual {v8}, Lcom/amazon/device/sync/SaveUpdatedDatasetsDbOperation;->execute()V

    .line 135
    throw p2
.end method

.method private getDirectoryUriFromDB(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 200
    new-instance v0, Lcom/amazon/device/sync/GetDatasetUpdatesUriDbOperation;

    iget-object v1, p0, Lcom/amazon/device/sync/SendDatasetsSyncOperation;->mAccountId:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/amazon/device/sync/GetDatasetUpdatesUriDbOperation;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/device/sync/GetDatasetUpdatesUriDbOperation;->execute()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected doExecute(Landroid/content/Context;Lcom/amazon/whispersync/dcp/framework/DCPLog;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    new-instance p2, Lcom/amazon/device/sync/GetPendingDatasetsDbOperation;

    iget-object v0, p0, Lcom/amazon/device/sync/SendDatasetsSyncOperation;->mAccountId:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/device/sync/SendDatasetsSyncOperation;->mNamespace:Ljava/lang/String;

    iget v2, p0, Lcom/amazon/device/sync/SyncOperation;->mId:I

    invoke-direct {p2, p1, v0, v1, v2}, Lcom/amazon/device/sync/GetPendingDatasetsDbOperation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 40
    invoke-virtual {p2}, Lcom/amazon/device/sync/GetPendingDatasetsDbOperation;->execute()Ljava/util/Map;

    move-result-object p2

    .line 42
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/device/sync/SendDatasetsSyncOperation;->executeWithDatasets(Landroid/content/Context;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 168
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 172
    :cond_1
    invoke-super {p0, p1}, Lcom/amazon/device/sync/SyncOperation;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 177
    :cond_2
    check-cast p1, Lcom/amazon/device/sync/SendDatasetsSyncOperation;

    .line 179
    iget-object v0, p0, Lcom/amazon/device/sync/SendDatasetsSyncOperation;->mNamespace:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/device/sync/SendDatasetsSyncOperation;->mNamespace:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public executeWithPendingDatasets(Landroid/content/Context;Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    new-instance v0, Lcom/amazon/device/sync/GetPendingDatasetsDbOperation;

    iget-object v1, p0, Lcom/amazon/device/sync/SendDatasetsSyncOperation;->mAccountId:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/device/sync/SendDatasetsSyncOperation;->mNamespace:Ljava/lang/String;

    iget v3, p0, Lcom/amazon/device/sync/SyncOperation;->mId:I

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/amazon/device/sync/GetPendingDatasetsDbOperation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 59
    invoke-virtual {v0}, Lcom/amazon/device/sync/GetPendingDatasetsDbOperation;->execute()Ljava/util/Map;

    move-result-object v0

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 62
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 64
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 70
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/amazon/device/sync/SendDatasetsSyncOperation;->executeWithDatasets(Landroid/content/Context;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method protected getLockKey()Ljava/lang/String;
    .locals 1

    .line 206
    sget-object v0, Lcom/amazon/device/sync/Synchronizer$SyncActionScope;->DATASETS:Lcom/amazon/device/sync/Synchronizer$SyncActionScope;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 186
    invoke-super {p0}, Lcom/amazon/device/sync/SyncOperation;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 187
    iget-object v1, p0, Lcom/amazon/device/sync/SendDatasetsSyncOperation;->mNamespace:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
