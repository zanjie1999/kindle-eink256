.class Lcom/amazon/device/sync/Synchronizer$1;
.super Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$ListenableOperation;
.source "Synchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/sync/Synchronizer;->uploadAll(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/sync/Synchronizer;

.field final synthetic val$accountId:Ljava/lang/String;

.field final synthetic val$namespace:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/device/sync/Synchronizer;Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/amazon/device/sync/Synchronizer$1;->this$0:Lcom/amazon/device/sync/Synchronizer;

    iput-object p3, p0, Lcom/amazon/device/sync/Synchronizer$1;->val$accountId:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/device/sync/Synchronizer$1;->val$namespace:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$ListenableOperation;-><init>(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;)V

    return-void
.end method


# virtual methods
.method public onExecutionSuccessful()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$ListenableOperation;",
            ">;"
        }
    .end annotation

    .line 159
    new-instance v0, Lcom/amazon/device/sync/GetPendingRecordsFromAllDatasetsDbOperation;

    iget-object v1, p0, Lcom/amazon/device/sync/Synchronizer$1;->this$0:Lcom/amazon/device/sync/Synchronizer;

    invoke-static {v1}, Lcom/amazon/device/sync/Synchronizer;->access$000(Lcom/amazon/device/sync/Synchronizer;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/device/sync/Synchronizer$1;->val$accountId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/amazon/device/sync/GetPendingRecordsFromAllDatasetsDbOperation;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/device/sync/GetPendingRecordsFromAllDatasetsDbOperation;->execute()Ljava/util/Map;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/amazon/device/sync/Synchronizer$1;->val$namespace:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 165
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 168
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    .line 170
    new-instance v2, Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$ListenableOperation;

    new-instance v9, Lcom/amazon/device/sync/SendRecordsSyncOperation;

    iget-object v3, p0, Lcom/amazon/device/sync/Synchronizer$1;->this$0:Lcom/amazon/device/sync/Synchronizer;

    invoke-static {v3}, Lcom/amazon/device/sync/Synchronizer;->access$100(Lcom/amazon/device/sync/Synchronizer;)I

    move-result v4

    iget-object v5, p0, Lcom/amazon/device/sync/Synchronizer$1;->val$accountId:Ljava/lang/String;

    iget-object v6, p0, Lcom/amazon/device/sync/Synchronizer$1;->val$namespace:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/device/sync/Synchronizer$1;->this$0:Lcom/amazon/device/sync/Synchronizer;

    invoke-static {v3}, Lcom/amazon/device/sync/Synchronizer;->access$200(Lcom/amazon/device/sync/Synchronizer;)Lcom/amazon/whispersync/dcp/framework/DCPLog;

    move-result-object v8

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/amazon/device/sync/SendRecordsSyncOperation;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/dcp/framework/DCPLog;)V

    invoke-direct {v2, v9}, Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$ListenableOperation;-><init>(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1

    .line 178
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
