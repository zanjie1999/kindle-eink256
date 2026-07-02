.class Lcom/amazon/device/sync/FetchRecordsSyncOperation;
.super Lcom/amazon/device/sync/AbstractDatasetSyncOperation;
.source "FetchRecordsSyncOperation.java"


# instance fields
.field private final mAccountId:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mDatasetName:Ljava/lang/String;

.field private final mNamespace:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/dcp/framework/DCPLog;Landroid/content/Context;)V
    .locals 12

    move-object v9, p0

    move-object v10, p3

    move-object/from16 v11, p4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v10, v0, v1

    const/4 v1, 0x1

    aput-object v11, v0, v1

    const-string v1, "Fetching records in %s/%s"

    .line 36
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;->DOWNLOAD:Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;

    sget-object v7, Lcom/amazon/device/sync/Synchronizer$SyncActionScope;->RECORDS:Lcom/amazon/device/sync/Synchronizer$SyncActionScope;

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/amazon/device/sync/AbstractDatasetSyncOperation;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;Lcom/amazon/device/sync/Synchronizer$SyncActionScope;Lcom/amazon/whispersync/dcp/framework/DCPLog;)V

    move-object v0, p2

    .line 38
    iput-object v0, v9, Lcom/amazon/device/sync/FetchRecordsSyncOperation;->mAccountId:Ljava/lang/String;

    .line 39
    iput-object v10, v9, Lcom/amazon/device/sync/FetchRecordsSyncOperation;->mNamespace:Ljava/lang/String;

    .line 40
    iput-object v11, v9, Lcom/amazon/device/sync/FetchRecordsSyncOperation;->mDatasetName:Ljava/lang/String;

    move-object/from16 v0, p6

    .line 41
    iput-object v0, v9, Lcom/amazon/device/sync/FetchRecordsSyncOperation;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getDataset(Landroid/content/Context;)Lcom/amazon/whispersync/Dataset;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    new-instance v0, Lcom/amazon/device/sync/GetDatasetDbOperation;

    iget-object v1, p0, Lcom/amazon/device/sync/FetchRecordsSyncOperation;->mAccountId:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/device/sync/FetchRecordsSyncOperation;->mNamespace:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/device/sync/FetchRecordsSyncOperation;->mDatasetName:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/amazon/device/sync/GetDatasetDbOperation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0}, Lcom/amazon/device/sync/GetDatasetDbOperation;->execute()Lcom/amazon/whispersync/Dataset;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 108
    :cond_0
    new-instance v1, Lcom/amazon/device/sync/SendDatasetsSyncOperation;

    iget v2, p0, Lcom/amazon/device/sync/SyncOperation;->mId:I

    iget-object v3, p0, Lcom/amazon/device/sync/FetchRecordsSyncOperation;->mAccountId:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/device/sync/FetchRecordsSyncOperation;->mNamespace:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/device/sync/SyncOperation;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amazon/device/sync/SendDatasetsSyncOperation;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/dcp/framework/DCPLog;)V

    iget-object v2, p0, Lcom/amazon/device/sync/FetchRecordsSyncOperation;->mDatasetName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/amazon/device/sync/SendDatasetsSyncOperation;->executeWithPendingDatasets(Landroid/content/Context;Ljava/util/Collection;)Z

    .line 110
    invoke-virtual {v0}, Lcom/amazon/device/sync/GetDatasetDbOperation;->execute()Lcom/amazon/whispersync/Dataset;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    .line 116
    :cond_1
    new-instance v1, Lcom/amazon/device/sync/FetchDatasetsSyncOperation;

    iget v3, p0, Lcom/amazon/device/sync/SyncOperation;->mId:I

    iget-object v4, p0, Lcom/amazon/device/sync/FetchRecordsSyncOperation;->mAccountId:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/device/sync/SyncOperation;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/amazon/device/sync/FetchRecordsSyncOperation;->mContext:Landroid/content/Context;

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/amazon/device/sync/FetchDatasetsSyncOperation;-><init>(ILjava/lang/String;Lcom/amazon/whispersync/dcp/framework/DCPLog;ZLandroid/content/Context;)V

    iget-object v2, p0, Lcom/amazon/device/sync/SyncOperation;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    invoke-virtual {v1, p1, v2}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->execute(Landroid/content/Context;Lcom/amazon/whispersync/dcp/framework/DCPLog;)V

    .line 117
    invoke-virtual {v0}, Lcom/amazon/device/sync/GetDatasetDbOperation;->execute()Lcom/amazon/whispersync/Dataset;

    move-result-object p1

    return-object p1
.end method

.method private saveUpdates(Landroid/content/Context;Lcom/amazon/device/sync/rpc/DatasetRPC;Ljava/util/List;Lcom/amazon/whispersync/GetRecordsLinks;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amazon/device/sync/rpc/DatasetRPC;",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/Record;",
            ">;",
            "Lcom/amazon/whispersync/GetRecordsLinks;",
            ")V"
        }
    .end annotation

    .line 73
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 74
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 76
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/Record;

    .line 78
    invoke-virtual {v0}, Lcom/amazon/whispersync/Record;->isIsDeleted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 84
    :cond_0
    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 88
    :cond_1
    new-instance p3, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation;

    iget-object v2, p0, Lcom/amazon/device/sync/FetchRecordsSyncOperation;->mAccountId:Ljava/lang/String;

    move-object v0, p3

    move-object v1, p1

    move-object v3, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/device/sync/rpc/DatasetRPC;Ljava/util/Set;Ljava/util/Set;Lcom/amazon/whispersync/GetRecordsLinks;)V

    .line 94
    invoke-virtual {p3}, Lcom/amazon/device/sync/SaveFetchedRecordsDbOperation;->execute()V

    return-void
.end method


# virtual methods
.method protected doExecute(Landroid/content/Context;Lcom/amazon/whispersync/dcp/framework/DCPLog;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1}, Lcom/amazon/device/sync/FetchRecordsSyncOperation;->getDataset(Landroid/content/Context;)Lcom/amazon/whispersync/Dataset;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 52
    :cond_0
    new-instance v0, Lcom/amazon/device/sync/rpc/DatasetListRPC;

    iget-object v1, p0, Lcom/amazon/device/sync/FetchRecordsSyncOperation;->mAccountId:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/device/sync/FetchRecordsSyncOperation;->mNamespace:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2}, Lcom/amazon/device/sync/rpc/DatasetListRPC;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0, p2}, Lcom/amazon/device/sync/rpc/DatasetListRPC;->createLocalDataset(Lcom/amazon/whispersync/Dataset;)Lcom/amazon/device/sync/rpc/DatasetRPC;

    move-result-object v0

    .line 55
    invoke-virtual {p2}, Lcom/amazon/whispersync/Dataset;->getLinks()Lcom/amazon/whispersync/DatasetLinks;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/whispersync/DatasetLinks;->getRecords()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/amazon/device/sync/rpc/DatasetRPC;->getRecords(Ljava/lang/String;)Lcom/amazon/device/sync/rpc/PaginatedResponse;

    move-result-object p2

    .line 60
    :cond_1
    invoke-virtual {p2}, Lcom/amazon/device/sync/rpc/PaginatedResponse;->next()Ljava/util/List;

    move-result-object v1

    .line 62
    invoke-virtual {p2}, Lcom/amazon/device/sync/rpc/PaginatedResponse;->getLinks()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/GetRecordsLinks;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/amazon/device/sync/FetchRecordsSyncOperation;->saveUpdates(Landroid/content/Context;Lcom/amazon/device/sync/rpc/DatasetRPC;Ljava/util/List;Lcom/amazon/whispersync/GetRecordsLinks;)V

    .line 65
    invoke-virtual {p2}, Lcom/amazon/device/sync/rpc/PaginatedResponse;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 127
    const-class v1, Lcom/amazon/device/sync/FetchRecordsSyncOperation;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 131
    :cond_1
    invoke-super {p0, p1}, Lcom/amazon/device/sync/AbstractDatasetSyncOperation;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 136
    :cond_2
    check-cast p1, Lcom/amazon/device/sync/FetchRecordsSyncOperation;

    .line 138
    iget-object v1, p0, Lcom/amazon/device/sync/FetchRecordsSyncOperation;->mDatasetName:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/device/sync/FetchRecordsSyncOperation;->mDatasetName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 142
    :cond_3
    iget-object v0, p0, Lcom/amazon/device/sync/FetchRecordsSyncOperation;->mNamespace:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/device/sync/FetchRecordsSyncOperation;->mNamespace:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method protected getLockKey()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/amazon/device/sync/FetchRecordsSyncOperation;->mDatasetName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 149
    invoke-super {p0}, Lcom/amazon/device/sync/AbstractDatasetSyncOperation;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 150
    iget-object v1, p0, Lcom/amazon/device/sync/FetchRecordsSyncOperation;->mNamespace:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 151
    iget-object v1, p0, Lcom/amazon/device/sync/FetchRecordsSyncOperation;->mDatasetName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
