.class Lcom/amazon/device/sync/rpc/DatasetRPC$1;
.super Lcom/amazon/device/sync/rpc/PaginatedResponse;
.source "DatasetRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/sync/rpc/DatasetRPC;->getRecords(Ljava/lang/String;)Lcom/amazon/device/sync/rpc/PaginatedResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/device/sync/rpc/PaginatedResponse<",
        "Lcom/amazon/whispersync/Record;",
        "Lcom/amazon/whispersync/GetRecordsLinks;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/sync/rpc/DatasetRPC;


# direct methods
.method constructor <init>(Lcom/amazon/device/sync/rpc/DatasetRPC;Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/amazon/device/sync/rpc/DatasetRPC$1;->this$0:Lcom/amazon/device/sync/rpc/DatasetRPC;

    invoke-direct {p0, p2}, Lcom/amazon/device/sync/rpc/PaginatedResponse;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected createNextPage(Ljava/lang/String;)Lcom/amazon/device/sync/rpc/PaginatedResponse$Page;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/device/sync/rpc/PaginatedResponse<",
            "Lcom/amazon/whispersync/Record;",
            "Lcom/amazon/whispersync/GetRecordsLinks;",
            ">.Page<",
            "Lcom/amazon/whispersync/Record;",
            "Lcom/amazon/whispersync/GetRecordsLinks;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/amazon/device/sync/rpc/DatasetRPC$1;->this$0:Lcom/amazon/device/sync/rpc/DatasetRPC;

    invoke-static {v0}, Lcom/amazon/device/sync/rpc/DatasetRPC;->access$200(Lcom/amazon/device/sync/rpc/DatasetRPC;)Lcom/amazon/device/sync/rpc/SyncRPC;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/amazon/device/sync/rpc/SyncCallMetadata;->GET_RECORDS:Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;

    iget-object v3, p0, Lcom/amazon/device/sync/rpc/DatasetRPC$1;->this$0:Lcom/amazon/device/sync/rpc/DatasetRPC;

    invoke-static {v3}, Lcom/amazon/device/sync/rpc/DatasetRPC;->access$000(Lcom/amazon/device/sync/rpc/DatasetRPC;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/device/sync/rpc/DatasetRPC$1;->this$0:Lcom/amazon/device/sync/rpc/DatasetRPC;

    invoke-static {v4}, Lcom/amazon/device/sync/rpc/DatasetRPC;->access$100(Lcom/amazon/device/sync/rpc/DatasetRPC;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/amazon/device/sync/rpc/SyncCallMetadata;->constructInstance(Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/device/sync/rpc/SyncCallMetadata;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/amazon/device/sync/rpc/SyncRPC;->makeRequest(Ljava/lang/String;Ljava/lang/Object;Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallMetadata;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;

    move-result-object p1
    :try_end_0
    .catch Lcom/amazon/device/sync/failures/WhispersyncServerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/webrpc/ExecutionResult;->getResponse()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/GetRecordsResponse;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/amazon/whispersync/GetRecordsResponse;->getRecords()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 133
    new-instance v1, Lcom/amazon/device/sync/rpc/PaginatedResponse$Page;

    invoke-virtual {p1}, Lcom/amazon/whispersync/GetRecordsResponse;->getLinks()Lcom/amazon/whispersync/BackwardCompatibleGetRecordsLinks;

    move-result-object p1

    invoke-direct {v1, p0, v0, p1}, Lcom/amazon/device/sync/rpc/PaginatedResponse$Page;-><init>(Lcom/amazon/device/sync/rpc/PaginatedResponse;Ljava/util/List;Lcom/amazon/whispersync/GetRecordsLinks;)V

    return-object v1

    :catch_0
    move-exception p1

    .line 124
    iget-object v0, p0, Lcom/amazon/device/sync/rpc/DatasetRPC$1;->this$0:Lcom/amazon/device/sync/rpc/DatasetRPC;

    invoke-virtual {v0}, Lcom/amazon/device/sync/rpc/DatasetRPC;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/device/sync/failures/WhispersyncClientException;->setDatasetName(Ljava/lang/String;)V

    const-string v0, "Error fetching records"

    .line 125
    invoke-virtual {p1, v0}, Lcom/amazon/device/sync/failures/WhispersyncClientException;->setDescription(Ljava/lang/String;)V

    .line 126
    sget-object v0, Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;->DOWNLOAD:Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;

    invoke-virtual {p1, v0}, Lcom/amazon/device/sync/failures/WhispersyncClientException;->setSyncDirection(Lcom/amazon/device/sync/failures/WhispersyncClientException$SyncDirection;)V

    .line 127
    throw p1
.end method
