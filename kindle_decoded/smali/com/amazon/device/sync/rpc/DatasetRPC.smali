.class public final Lcom/amazon/device/sync/rpc/DatasetRPC;
.super Ljava/lang/Object;
.source "DatasetRPC.java"


# instance fields
.field private final mConsumerId:Ljava/lang/String;

.field private final mDataset:Lcom/amazon/whispersync/Dataset;

.field private final mDirSubscriberId:Ljava/lang/String;

.field private final mRPC:Lcom/amazon/device/sync/rpc/SyncRPC;

.field private final mSubscription:Lcom/amazon/whispersync/Subscription;


# direct methods
.method constructor <init>(Lcom/amazon/device/sync/rpc/SyncRPC;Lcom/amazon/whispersync/Dataset;Lcom/amazon/whispersync/Subscription;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/amazon/device/sync/rpc/DatasetRPC;->mRPC:Lcom/amazon/device/sync/rpc/SyncRPC;

    .line 44
    iput-object p2, p0, Lcom/amazon/device/sync/rpc/DatasetRPC;->mDataset:Lcom/amazon/whispersync/Dataset;

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 45
    :goto_0
    iput-object p3, p0, Lcom/amazon/device/sync/rpc/DatasetRPC;->mSubscription:Lcom/amazon/whispersync/Subscription;

    .line 46
    iput-object p4, p0, Lcom/amazon/device/sync/rpc/DatasetRPC;->mDirSubscriberId:Ljava/lang/String;

    .line 47
    iput-object p5, p0, Lcom/amazon/device/sync/rpc/DatasetRPC;->mConsumerId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/sync/rpc/DatasetRPC;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/amazon/device/sync/rpc/DatasetRPC;->mDirSubscriberId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/device/sync/rpc/DatasetRPC;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/amazon/device/sync/rpc/DatasetRPC;->mConsumerId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/device/sync/rpc/DatasetRPC;)Lcom/amazon/device/sync/rpc/SyncRPC;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/amazon/device/sync/rpc/DatasetRPC;->mRPC:Lcom/amazon/device/sync/rpc/SyncRPC;

    return-object p0
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/amazon/device/sync/rpc/DatasetRPC;->mRPC:Lcom/amazon/device/sync/rpc/SyncRPC;

    const/4 v1, 0x0

    sget-object v2, Lcom/amazon/device/sync/rpc/SyncCallMetadata;->DELETE_DATASET:Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;

    iget-object v3, p0, Lcom/amazon/device/sync/rpc/DatasetRPC;->mDirSubscriberId:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/device/sync/rpc/DatasetRPC;->mConsumerId:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/amazon/device/sync/rpc/SyncCallMetadata;->constructInstance(Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/device/sync/rpc/SyncCallMetadata;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/amazon/device/sync/rpc/SyncRPC;->makeRequest(Ljava/lang/String;Ljava/lang/Object;Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallMetadata;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;
    :try_end_0
    .catch Lcom/amazon/device/sync/failures/WhispersyncServerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 100
    invoke-virtual {p0}, Lcom/amazon/device/sync/rpc/DatasetRPC;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/device/sync/failures/WhispersyncClientException;->setDatasetName(Ljava/lang/String;)V

    const-string v0, "Error deleting dataset"

    .line 101
    invoke-virtual {p1, v0}, Lcom/amazon/device/sync/failures/WhispersyncClientException;->setDescription(Ljava/lang/String;)V

    .line 102
    sget-object v0, Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;->UPLOAD:Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;

    invoke-virtual {p1, v0}, Lcom/amazon/device/sync/failures/WhispersyncClientException;->setSyncDirection(Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;)V

    .line 103
    throw p1
.end method

.method public getDataset()Lcom/amazon/whispersync/Dataset;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/amazon/device/sync/rpc/DatasetRPC;->mDataset:Lcom/amazon/whispersync/Dataset;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/amazon/device/sync/rpc/DatasetRPC;->mDataset:Lcom/amazon/whispersync/Dataset;

    invoke-virtual {v0}, Lcom/amazon/whispersync/Dataset;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLinks()Lcom/amazon/whispersync/DatasetLinks;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/amazon/device/sync/rpc/DatasetRPC;->mDataset:Lcom/amazon/whispersync/Dataset;

    invoke-virtual {v0}, Lcom/amazon/whispersync/Dataset;->getLinks()Lcom/amazon/whispersync/DatasetLinks;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/amazon/device/sync/rpc/DatasetRPC;->mDataset:Lcom/amazon/whispersync/Dataset;

    invoke-virtual {v0}, Lcom/amazon/whispersync/Dataset;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/device/sync/rpc/DatasetRPC;->mDataset:Lcom/amazon/whispersync/Dataset;

    invoke-virtual {v0}, Lcom/amazon/whispersync/Dataset;->getNamespace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwner()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazon/device/sync/rpc/DatasetRPC;->mDataset:Lcom/amazon/whispersync/Dataset;

    invoke-virtual {v0}, Lcom/amazon/whispersync/Dataset;->getOwner()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecords(Ljava/lang/String;)Lcom/amazon/device/sync/rpc/PaginatedResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/device/sync/rpc/PaginatedResponse<",
            "Lcom/amazon/whispersync/Record;",
            "Lcom/amazon/whispersync/GetRecordsLinks;",
            ">;"
        }
    .end annotation

    .line 109
    new-instance v0, Lcom/amazon/device/sync/rpc/DatasetRPC$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/device/sync/rpc/DatasetRPC$1;-><init>(Lcom/amazon/device/sync/rpc/DatasetRPC;Ljava/lang/String;)V

    return-object v0
.end method

.method public getSubscription()Lcom/amazon/whispersync/Subscription;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/amazon/device/sync/rpc/DatasetRPC;->mSubscription:Lcom/amazon/whispersync/Subscription;

    return-object v0
.end method

.method public isDeleted()Z
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/amazon/device/sync/rpc/DatasetRPC;->mDataset:Lcom/amazon/whispersync/Dataset;

    invoke-virtual {v0}, Lcom/amazon/whispersync/Dataset;->isIsDeleted()Z

    move-result v0

    return v0
.end method

.method public isSubscribed()Z
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/amazon/device/sync/rpc/DatasetRPC;->mSubscription:Lcom/amazon/whispersync/Subscription;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public updateRecords(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/PostUpdatesResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/whispersync/Record;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/whispersync/PostUpdatesResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 151
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/Record;

    .line 153
    invoke-virtual {v1}, Lcom/amazon/whispersync/Record;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 155
    :cond_0
    new-instance p1, Lcom/amazon/whispersync/PostUpdatesRequest;

    invoke-direct {p1}, Lcom/amazon/whispersync/PostUpdatesRequest;-><init>()V

    .line 156
    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/PostUpdatesRequest;->setUpdates(Ljava/util/Map;)V

    .line 157
    new-instance v0, Lcom/amazon/whispersync/DirectoryRequestLinks;

    invoke-direct {v0}, Lcom/amazon/whispersync/DirectoryRequestLinks;-><init>()V

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/PostUpdatesRequest;->setLinks(Lcom/amazon/whispersync/DirectoryRequestLinks;)V

    .line 158
    invoke-virtual {p1}, Lcom/amazon/whispersync/PostUpdatesRequest;->getLinks()Lcom/amazon/whispersync/DirectoryRequestLinks;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/amazon/whispersync/DirectoryRequestLinks;->setDirectory(Ljava/lang/String;)V

    .line 162
    :try_start_0
    iget-object p3, p0, Lcom/amazon/device/sync/rpc/DatasetRPC;->mRPC:Lcom/amazon/device/sync/rpc/SyncRPC;

    sget-object v0, Lcom/amazon/device/sync/rpc/SyncCallMetadata;->POST_UPDATES:Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;

    iget-object v1, p0, Lcom/amazon/device/sync/rpc/DatasetRPC;->mDirSubscriberId:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/device/sync/rpc/DatasetRPC;->mConsumerId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/amazon/device/sync/rpc/SyncCallMetadata;->constructInstance(Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/device/sync/rpc/SyncCallMetadata;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p3, p2, p1, v0, v1}, Lcom/amazon/device/sync/rpc/SyncRPC;->makeRequest(Ljava/lang/String;Ljava/lang/Object;Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallMetadata;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;

    move-result-object p1
    :try_end_0
    .catch Lcom/amazon/device/sync/failures/WhispersyncServerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->getResponse()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/PostUpdatesResponse;

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "Uploading records"

    .line 169
    invoke-virtual {p1, p2}, Lcom/amazon/device/sync/failures/WhispersyncClientException;->setDescription(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/amazon/device/sync/rpc/DatasetRPC;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/device/sync/failures/WhispersyncClientException;->setDatasetName(Ljava/lang/String;)V

    .line 171
    sget-object p2, Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;->UPLOAD:Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;

    invoke-virtual {p1, p2}, Lcom/amazon/device/sync/failures/WhispersyncClientException;->setSyncDirection(Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;)V

    .line 172
    throw p1
.end method
