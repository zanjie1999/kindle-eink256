.class public final Lcom/amazon/device/sync/rpc/DatasetListRPC;
.super Ljava/lang/Object;
.source "DatasetListRPC.java"


# instance fields
.field private final mAccountId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field private final mDirectoryUri:Ljava/lang/String;

.field private mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field private final mNamespace:Ljava/lang/String;

.field private mObjectMapper:Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field private final mRPC:Lcom/amazon/device/sync/rpc/SyncRPC;

.field private mRPCFactory:Lcom/amazon/device/sync/rpc/SyncRPC$Factory;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field private mWhispersyncConfig:Lcom/amazon/device/sync/platform/WhispersyncConfig;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/RoboContextWrapper;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/dcp/framework/RoboContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-static {v0, p0}, Lcom/amazon/device/sync/SyncGuiceHelper;->injectMembers(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iput-object p2, p0, Lcom/amazon/device/sync/rpc/DatasetListRPC;->mAccountId:Ljava/lang/String;

    .line 61
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "/whispersync/v2/data/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/datasets?quiet=true"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/sync/rpc/DatasetListRPC;->mDirectoryUri:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lcom/amazon/device/sync/rpc/DatasetListRPC;->mNamespace:Ljava/lang/String;

    .line 63
    iget-object p1, p0, Lcom/amazon/device/sync/rpc/DatasetListRPC;->mRPCFactory:Lcom/amazon/device/sync/rpc/SyncRPC$Factory;

    invoke-virtual {p1, p2}, Lcom/amazon/device/sync/rpc/SyncRPC$Factory;->create(Ljava/lang/String;)Lcom/amazon/device/sync/rpc/SyncRPC;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/sync/rpc/DatasetListRPC;->mRPC:Lcom/amazon/device/sync/rpc/SyncRPC;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/sync/rpc/DatasetListRPC;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/amazon/device/sync/rpc/DatasetListRPC;->getDirectoryUri(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/device/sync/rpc/DatasetListRPC;)Ljava/lang/String;
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/amazon/device/sync/rpc/DatasetListRPC;->getSubscriberId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/device/sync/rpc/DatasetListRPC;)Landroid/content/Context;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/amazon/device/sync/rpc/DatasetListRPC;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/device/sync/rpc/DatasetListRPC;)Lcom/amazon/device/sync/rpc/SyncRPC;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/amazon/device/sync/rpc/DatasetListRPC;->mRPC:Lcom/amazon/device/sync/rpc/SyncRPC;

    return-object p0
.end method

.method private getDirectoryUri(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 213
    :cond_0
    iget-object p1, p0, Lcom/amazon/device/sync/rpc/DatasetListRPC;->mDirectoryUri:Ljava/lang/String;

    :goto_0
    if-eqz p2, :cond_1

    const-string p2, "embed"

    const-string/jumbo v0, "records.first_page"

    .line 216
    invoke-static {p1, p2, v0}, Lcom/amazon/whispersync/dcp/framework/URIHelpers;->addParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private getReasonString(Ljava/lang/String;Lcom/amazon/whispersync/Reason;)Ljava/lang/String;
    .locals 3

    .line 182
    sget-object v0, Lcom/amazon/device/sync/gear/Constants;->STUB_REASON:Lcom/amazon/whispersync/Reason;

    invoke-virtual {v0, p2}, Lcom/amazon/whispersync/Reason;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    if-nez p1, :cond_1

    .line 190
    sget-object p2, Lcom/amazon/device/sync/gear/Constants;->BOOTSTRAP:Lcom/amazon/whispersync/Reason;

    :cond_1
    if-eqz p2, :cond_2

    .line 196
    :try_start_0
    iget-object p1, p0, Lcom/amazon/device/sync/rpc/DatasetListRPC;->mObjectMapper:Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 200
    iget-object p2, p0, Lcom/amazon/device/sync/rpc/DatasetListRPC;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const-string p1, "IO Exception while serializing reason"

    invoke-virtual {p2, p1, v0}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_2
    :goto_0
    return-object v1
.end method

.method private getSubscriberId()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/amazon/device/sync/rpc/DatasetListRPC;->mWhispersyncConfig:Lcom/amazon/device/sync/platform/WhispersyncConfig;

    invoke-interface {v0}, Lcom/amazon/device/sync/platform/WhispersyncConfig;->supportsPushNotifications()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/device/sync/rpc/DatasetListRPC;->mWhispersyncConfig:Lcom/amazon/device/sync/platform/WhispersyncConfig;

    invoke-interface {v0}, Lcom/amazon/device/sync/platform/WhispersyncConfig;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public createDataset(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/device/sync/rpc/DatasetRPCWrapper;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    .line 74
    new-instance v0, Lcom/amazon/whispersync/CreateDatasetRequest;

    invoke-direct {v0}, Lcom/amazon/whispersync/CreateDatasetRequest;-><init>()V

    .line 75
    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/CreateDatasetRequest;->setName(Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/amazon/device/sync/rpc/DatasetListRPC;->mNamespace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/CreateDatasetRequest;->setNamespace(Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/amazon/device/sync/rpc/DatasetListRPC;->mWhispersyncConfig:Lcom/amazon/device/sync/platform/WhispersyncConfig;

    invoke-interface {v1}, Lcom/amazon/device/sync/platform/WhispersyncConfig;->supportsPushNotifications()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/amazon/device/sync/rpc/DatasetListRPC;->mWhispersyncConfig:Lcom/amazon/device/sync/platform/WhispersyncConfig;

    iget-object v2, p0, Lcom/amazon/device/sync/rpc/DatasetListRPC;->mAccountId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/amazon/device/sync/platform/WhispersyncConfig;->getPushSubscription(Ljava/lang/String;)Lcom/amazon/whispersync/Subscription;

    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/CreateDatasetRequest;->setSubscription(Lcom/amazon/whispersync/Subscription;)V

    .line 86
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/amazon/device/sync/rpc/DatasetListRPC;->mRPC:Lcom/amazon/device/sync/rpc/SyncRPC;

    const/4 v2, 0x0

    invoke-direct {p0, p2, v2}, Lcom/amazon/device/sync/rpc/DatasetListRPC;->getDirectoryUri(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    sget-object v2, Lcom/amazon/device/sync/rpc/SyncCallMetadata;->CREATE_DATASET:Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;

    invoke-direct {p0}, Lcom/amazon/device/sync/rpc/DatasetListRPC;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/device/sync/rpc/DatasetListRPC;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/amazon/device/sync/gear/StaticUtils;->readConsumerId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/amazon/device/sync/rpc/SyncCallMetadata;->constructInstance(Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/device/sync/rpc/SyncCallMetadata;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v1, p2, v0, v2, v3}, Lcom/amazon/device/sync/rpc/SyncRPC;->makeRequest(Ljava/lang/String;Ljava/lang/Object;Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallMetadata;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;

    move-result-object p1
    :try_end_0
    .catch Lcom/amazon/device/sync/failures/WhispersyncServerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    new-instance p2, Lcom/amazon/device/sync/rpc/DatasetRPCWrapper;

    new-instance v6, Lcom/amazon/device/sync/rpc/DatasetRPC;

    iget-object v1, p0, Lcom/amazon/device/sync/rpc/DatasetListRPC;->mRPC:Lcom/amazon/device/sync/rpc/SyncRPC;

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->getResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/CreateDatasetResponse;

    invoke-virtual {v0}, Lcom/amazon/whispersync/CreateDatasetResponse;->getDataset()Lcom/amazon/whispersync/Dataset;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->getResponse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/CreateDatasetResponse;

    invoke-virtual {v0}, Lcom/amazon/whispersync/CreateDatasetResponse;->getSubscription()Lcom/amazon/whispersync/Subscription;

    move-result-object v3

    invoke-direct {p0}, Lcom/amazon/device/sync/rpc/DatasetListRPC;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/amazon/device/sync/rpc/DatasetListRPC;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/device/sync/gear/StaticUtils;->readConsumerId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/device/sync/rpc/DatasetRPC;-><init>(Lcom/amazon/device/sync/rpc/SyncRPC;Lcom/amazon/whispersync/Dataset;Lcom/amazon/whispersync/Subscription;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->getResponse()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/CreateDatasetResponse;

    invoke-virtual {p1}, Lcom/amazon/whispersync/CreateDatasetResponse;->getLinks()Lcom/amazon/whispersync/CreateDatasetLinks;

    move-result-object p1

    invoke-direct {p2, v6, p1}, Lcom/amazon/device/sync/rpc/DatasetRPCWrapper;-><init>(Lcom/amazon/device/sync/rpc/DatasetRPC;Ljava/lang/Object;)V

    return-object p2

    :catch_0
    move-exception p2

    .line 92
    invoke-virtual {p2, p1}, Lcom/amazon/device/sync/failures/WhispersyncClientException;->setDatasetName(Ljava/lang/String;)V

    const-string p1, "Error creating dataset"

    .line 93
    invoke-virtual {p2, p1}, Lcom/amazon/device/sync/failures/WhispersyncClientException;->setDescription(Ljava/lang/String;)V

    .line 94
    sget-object p1, Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;->UPLOAD:Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;

    invoke-virtual {p2, p1}, Lcom/amazon/device/sync/failures/WhispersyncClientException;->setSyncDirection(Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;)V

    .line 95
    throw p2
.end method

.method public createLocalDataset(Lcom/amazon/whispersync/Dataset;)Lcom/amazon/device/sync/rpc/DatasetRPC;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    new-instance v6, Lcom/amazon/device/sync/rpc/DatasetRPC;

    iget-object v1, p0, Lcom/amazon/device/sync/rpc/DatasetListRPC;->mRPC:Lcom/amazon/device/sync/rpc/SyncRPC;

    invoke-direct {p0}, Lcom/amazon/device/sync/rpc/DatasetListRPC;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/amazon/device/sync/rpc/DatasetListRPC;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/device/sync/gear/StaticUtils;->readConsumerId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/device/sync/rpc/DatasetRPC;-><init>(Lcom/amazon/device/sync/rpc/SyncRPC;Lcom/amazon/whispersync/Dataset;Lcom/amazon/whispersync/Subscription;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public deleteAll()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/amazon/device/sync/rpc/DatasetListRPC;->mRPC:Lcom/amazon/device/sync/rpc/SyncRPC;

    iget-object v1, p0, Lcom/amazon/device/sync/rpc/DatasetListRPC;->mDirectoryUri:Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/amazon/device/sync/rpc/SyncCallMetadata;->DELETE_ALL_DATASETS:Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;

    invoke-direct {p0}, Lcom/amazon/device/sync/rpc/DatasetListRPC;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/device/sync/rpc/DatasetListRPC;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/amazon/device/sync/gear/StaticUtils;->readConsumerId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/amazon/device/sync/rpc/SyncCallMetadata;->constructInstance(Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/device/sync/rpc/SyncCallMetadata;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amazon/device/sync/rpc/SyncRPC;->makeRequest(Ljava/lang/String;Ljava/lang/Object;Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallMetadata;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;
    :try_end_0
    .catch Lcom/amazon/device/sync/failures/WhispersyncServerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Error deleting directory"

    .line 232
    invoke-virtual {v0, v1}, Lcom/amazon/device/sync/failures/WhispersyncClientException;->setDescription(Ljava/lang/String;)V

    .line 233
    sget-object v1, Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;->UPLOAD:Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;

    invoke-virtual {v0, v1}, Lcom/amazon/device/sync/failures/WhispersyncClientException;->setSyncDirection(Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;)V

    .line 234
    throw v0
.end method

.method public getDataset(Ljava/lang/String;)Lcom/amazon/device/sync/rpc/DatasetRPCWrapper;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/device/sync/rpc/DatasetRPCWrapper<",
            "Lcom/amazon/whispersync/DatasetLinks;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/amazon/device/sync/rpc/DatasetListRPC;->mRPC:Lcom/amazon/device/sync/rpc/SyncRPC;

    const/4 v1, 0x0

    sget-object v2, Lcom/amazon/device/sync/rpc/SyncCallMetadata;->GET_DATASET:Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;

    invoke-direct {p0}, Lcom/amazon/device/sync/rpc/DatasetListRPC;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/device/sync/rpc/DatasetListRPC;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/amazon/device/sync/gear/StaticUtils;->readConsumerId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/amazon/device/sync/rpc/SyncCallMetadata;->constructInstance(Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/device/sync/rpc/SyncCallMetadata;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/amazon/device/sync/rpc/SyncRPC;->makeRequest(Ljava/lang/String;Ljava/lang/Object;Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallMetadata;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;

    move-result-object p1
    :try_end_0
    .catch Lcom/amazon/device/sync/failures/WhispersyncServerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    new-instance v0, Lcom/amazon/device/sync/rpc/DatasetRPCWrapper;

    new-instance v7, Lcom/amazon/device/sync/rpc/DatasetRPC;

    iget-object v2, p0, Lcom/amazon/device/sync/rpc/DatasetListRPC;->mRPC:Lcom/amazon/device/sync/rpc/SyncRPC;

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->getResponse()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/GetDatasetResponse;

    invoke-virtual {v1}, Lcom/amazon/whispersync/GetDatasetResponse;->getDataset()Lcom/amazon/whispersync/Dataset;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/amazon/device/sync/rpc/DatasetListRPC;->getSubscriberId()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/amazon/device/sync/rpc/DatasetListRPC;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/amazon/device/sync/gear/StaticUtils;->readConsumerId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/amazon/device/sync/rpc/DatasetRPC;-><init>(Lcom/amazon/device/sync/rpc/SyncRPC;Lcom/amazon/whispersync/Dataset;Lcom/amazon/whispersync/Subscription;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->getResponse()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/GetDatasetResponse;

    invoke-virtual {p1}, Lcom/amazon/whispersync/GetDatasetResponse;->getDataset()Lcom/amazon/whispersync/Dataset;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/Dataset;->getLinks()Lcom/amazon/whispersync/DatasetLinks;

    move-result-object p1

    invoke-direct {v0, v7, p1}, Lcom/amazon/device/sync/rpc/DatasetRPCWrapper;-><init>(Lcom/amazon/device/sync/rpc/DatasetRPC;Ljava/lang/Object;)V

    return-object v0

    :catch_0
    move-exception v0

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error fetching dataset info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/device/sync/failures/WhispersyncClientException;->setDescription(Ljava/lang/String;)V

    .line 119
    sget-object p1, Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;->DOWNLOAD:Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;

    invoke-virtual {v0, p1}, Lcom/amazon/device/sync/failures/WhispersyncClientException;->setSyncDirection(Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;)V

    .line 120
    throw v0
.end method

.method public getDatasets(Ljava/lang/String;Lcom/amazon/whispersync/Reason;Z)Lcom/amazon/device/sync/rpc/PaginatedResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/Reason;",
            "Z)",
            "Lcom/amazon/device/sync/rpc/PaginatedResponse<",
            "Lcom/amazon/device/sync/rpc/DatasetRPC;",
            "Lcom/amazon/whispersync/GetDirectoryLinks;",
            ">;"
        }
    .end annotation

    .line 138
    invoke-direct {p0, p1, p2}, Lcom/amazon/device/sync/rpc/DatasetListRPC;->getReasonString(Ljava/lang/String;Lcom/amazon/whispersync/Reason;)Ljava/lang/String;

    move-result-object v4

    .line 139
    new-instance v6, Lcom/amazon/device/sync/rpc/DatasetListRPC$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/device/sync/rpc/DatasetListRPC$1;-><init>(Lcom/amazon/device/sync/rpc/DatasetListRPC;Ljava/lang/String;ZLjava/lang/String;Lcom/amazon/whispersync/Reason;)V

    return-object v6
.end method
