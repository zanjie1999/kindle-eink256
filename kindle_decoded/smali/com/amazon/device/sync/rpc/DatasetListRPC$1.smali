.class Lcom/amazon/device/sync/rpc/DatasetListRPC$1;
.super Lcom/amazon/device/sync/rpc/PaginatedResponse;
.source "DatasetListRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/sync/rpc/DatasetListRPC;->getDatasets(Ljava/lang/String;Lcom/amazon/whispersync/Reason;Z)Lcom/amazon/device/sync/rpc/PaginatedResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/device/sync/rpc/PaginatedResponse<",
        "Lcom/amazon/device/sync/rpc/DatasetRPC;",
        "Lcom/amazon/whispersync/GetDirectoryLinks;",
        ">;"
    }
.end annotation


# instance fields
.field mFirstTime:Z

.field final synthetic this$0:Lcom/amazon/device/sync/rpc/DatasetListRPC;

.field final synthetic val$reason:Lcom/amazon/whispersync/Reason;

.field final synthetic val$serializedReason:Ljava/lang/String;

.field final synthetic val$shouldEmbedRecords:Z


# direct methods
.method constructor <init>(Lcom/amazon/device/sync/rpc/DatasetListRPC;Ljava/lang/String;ZLjava/lang/String;Lcom/amazon/whispersync/Reason;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/amazon/device/sync/rpc/DatasetListRPC$1;->this$0:Lcom/amazon/device/sync/rpc/DatasetListRPC;

    iput-boolean p3, p0, Lcom/amazon/device/sync/rpc/DatasetListRPC$1;->val$shouldEmbedRecords:Z

    iput-object p4, p0, Lcom/amazon/device/sync/rpc/DatasetListRPC$1;->val$serializedReason:Ljava/lang/String;

    iput-object p5, p0, Lcom/amazon/device/sync/rpc/DatasetListRPC$1;->val$reason:Lcom/amazon/whispersync/Reason;

    invoke-direct {p0, p2}, Lcom/amazon/device/sync/rpc/PaginatedResponse;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 141
    iput-boolean p1, p0, Lcom/amazon/device/sync/rpc/DatasetListRPC$1;->mFirstTime:Z

    return-void
.end method


# virtual methods
.method protected createNextPage(Ljava/lang/String;)Lcom/amazon/device/sync/rpc/PaginatedResponse$Page;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/device/sync/rpc/PaginatedResponse<",
            "Lcom/amazon/device/sync/rpc/DatasetRPC;",
            "Lcom/amazon/whispersync/GetDirectoryLinks;",
            ">.Page<",
            "Lcom/amazon/device/sync/rpc/DatasetRPC;",
            "Lcom/amazon/whispersync/GetDirectoryLinks;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ""

    .line 149
    :try_start_0
    iget-object v1, p0, Lcom/amazon/device/sync/rpc/DatasetListRPC$1;->this$0:Lcom/amazon/device/sync/rpc/DatasetListRPC;

    invoke-static {v1}, Lcom/amazon/device/sync/rpc/DatasetListRPC;->access$300(Lcom/amazon/device/sync/rpc/DatasetListRPC;)Lcom/amazon/device/sync/rpc/SyncRPC;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/device/sync/rpc/DatasetListRPC$1;->this$0:Lcom/amazon/device/sync/rpc/DatasetListRPC;

    iget-boolean v3, p0, Lcom/amazon/device/sync/rpc/DatasetListRPC$1;->val$shouldEmbedRecords:Z

    invoke-static {v2, p1, v3}, Lcom/amazon/device/sync/rpc/DatasetListRPC;->access$000(Lcom/amazon/device/sync/rpc/DatasetListRPC;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/amazon/device/sync/rpc/DatasetListRPC$1;->mFirstTime:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/amazon/device/sync/rpc/SyncCallMetadata;->GET_DIRECTORY:Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;

    iget-object v4, p0, Lcom/amazon/device/sync/rpc/DatasetListRPC$1;->this$0:Lcom/amazon/device/sync/rpc/DatasetListRPC;

    invoke-static {v4}, Lcom/amazon/device/sync/rpc/DatasetListRPC;->access$100(Lcom/amazon/device/sync/rpc/DatasetListRPC;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/device/sync/rpc/DatasetListRPC$1;->val$serializedReason:Ljava/lang/String;

    iget-object v6, p0, Lcom/amazon/device/sync/rpc/DatasetListRPC$1;->this$0:Lcom/amazon/device/sync/rpc/DatasetListRPC;

    invoke-static {v6}, Lcom/amazon/device/sync/rpc/DatasetListRPC;->access$200(Lcom/amazon/device/sync/rpc/DatasetListRPC;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/amazon/device/sync/gear/StaticUtils;->readConsumerId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/amazon/device/sync/rpc/SyncCallMetadata;->constructInstance(Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/device/sync/rpc/SyncCallMetadata;

    move-result-object v3

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/amazon/device/sync/rpc/SyncCallMetadata;->GET_DIRECTORY:Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;

    iget-object v4, p0, Lcom/amazon/device/sync/rpc/DatasetListRPC$1;->this$0:Lcom/amazon/device/sync/rpc/DatasetListRPC;

    invoke-static {v4}, Lcom/amazon/device/sync/rpc/DatasetListRPC;->access$100(Lcom/amazon/device/sync/rpc/DatasetListRPC;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/device/sync/rpc/DatasetListRPC$1;->this$0:Lcom/amazon/device/sync/rpc/DatasetListRPC;

    invoke-static {v5}, Lcom/amazon/device/sync/rpc/DatasetListRPC;->access$200(Lcom/amazon/device/sync/rpc/DatasetListRPC;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/amazon/device/sync/gear/StaticUtils;->readConsumerId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/amazon/device/sync/rpc/SyncCallMetadata;->constructInstance(Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/device/sync/rpc/SyncCallMetadata;

    move-result-object v3

    :goto_0
    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/amazon/device/sync/rpc/SyncRPC;->makeRequest(Ljava/lang/String;Ljava/lang/Object;Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallMetadata;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;

    move-result-object p1

    const/4 v1, 0x0

    .line 156
    iput-boolean v1, p0, Lcom/amazon/device/sync/rpc/DatasetListRPC$1;->mFirstTime:Z
    :try_end_0
    .catch Lcom/amazon/device/sync/failures/WhispersyncServerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->getResponse()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/GetDirectoryResponse;

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 169
    invoke-virtual {p1}, Lcom/amazon/whispersync/GetDirectoryResponse;->getDatasets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/amazon/whispersync/Dataset;

    .line 171
    new-instance v2, Lcom/amazon/device/sync/rpc/DatasetRPC;

    iget-object v3, p0, Lcom/amazon/device/sync/rpc/DatasetListRPC$1;->this$0:Lcom/amazon/device/sync/rpc/DatasetListRPC;

    invoke-static {v3}, Lcom/amazon/device/sync/rpc/DatasetListRPC;->access$300(Lcom/amazon/device/sync/rpc/DatasetListRPC;)Lcom/amazon/device/sync/rpc/SyncRPC;

    move-result-object v4

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/amazon/device/sync/rpc/DatasetListRPC$1;->this$0:Lcom/amazon/device/sync/rpc/DatasetListRPC;

    invoke-static {v3}, Lcom/amazon/device/sync/rpc/DatasetListRPC;->access$100(Lcom/amazon/device/sync/rpc/DatasetListRPC;)Ljava/lang/String;

    move-result-object v7

    iget-object v3, p0, Lcom/amazon/device/sync/rpc/DatasetListRPC$1;->this$0:Lcom/amazon/device/sync/rpc/DatasetListRPC;

    invoke-static {v3}, Lcom/amazon/device/sync/rpc/DatasetListRPC;->access$200(Lcom/amazon/device/sync/rpc/DatasetListRPC;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/device/sync/gear/StaticUtils;->readConsumerId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/amazon/device/sync/rpc/DatasetRPC;-><init>(Lcom/amazon/device/sync/rpc/SyncRPC;Lcom/amazon/whispersync/Dataset;Lcom/amazon/whispersync/Subscription;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 175
    :cond_1
    new-instance v1, Lcom/amazon/device/sync/rpc/PaginatedResponse$Page;

    invoke-virtual {p1}, Lcom/amazon/whispersync/GetDirectoryResponse;->getLinks()Lcom/amazon/whispersync/BackwardCompatibleGetDirectoryLinks;

    move-result-object p1

    invoke-direct {v1, p0, v0, p1}, Lcom/amazon/device/sync/rpc/PaginatedResponse$Page;-><init>(Lcom/amazon/device/sync/rpc/PaginatedResponse;Ljava/util/List;Lcom/amazon/whispersync/GetDirectoryLinks;)V

    return-object v1

    :catch_0
    move-exception p1

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error downloading directory."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/device/sync/rpc/DatasetListRPC$1;->val$reason:Lcom/amazon/whispersync/Reason;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",Tried downloading due to :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/device/sync/rpc/DatasetListRPC$1;->val$reason:Lcom/amazon/whispersync/Reason;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/device/sync/failures/WhispersyncClientException;->setDescription(Ljava/lang/String;)V

    .line 163
    sget-object v0, Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;->DOWNLOAD:Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;

    invoke-virtual {p1, v0}, Lcom/amazon/device/sync/failures/WhispersyncClientException;->setSyncDirection(Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;)V

    .line 164
    throw p1
.end method
