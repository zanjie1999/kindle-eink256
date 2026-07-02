.class Lcom/amazon/device/sync/Synchronizer$3;
.super Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$ListenableOperation;
.source "Synchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/sync/Synchronizer;->synchronizeDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/sync/Synchronizer;

.field final synthetic val$accountId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/device/sync/Synchronizer;Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;Ljava/lang/String;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/amazon/device/sync/Synchronizer$3;->this$0:Lcom/amazon/device/sync/Synchronizer;

    iput-object p3, p0, Lcom/amazon/device/sync/Synchronizer$3;->val$accountId:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$ListenableOperation;-><init>(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;)V

    return-void
.end method


# virtual methods
.method public onExecutionSuccessful()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$ListenableOperation;",
            ">;"
        }
    .end annotation

    .line 220
    new-instance v0, Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$ListenableOperation;

    new-instance v7, Lcom/amazon/device/sync/FetchDatasetsSyncOperation;

    iget-object v1, p0, Lcom/amazon/device/sync/Synchronizer$3;->this$0:Lcom/amazon/device/sync/Synchronizer;

    invoke-static {v1}, Lcom/amazon/device/sync/Synchronizer;->access$100(Lcom/amazon/device/sync/Synchronizer;)I

    move-result v2

    iget-object v3, p0, Lcom/amazon/device/sync/Synchronizer$3;->val$accountId:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/device/sync/Synchronizer$3;->this$0:Lcom/amazon/device/sync/Synchronizer;

    invoke-static {v1}, Lcom/amazon/device/sync/Synchronizer;->access$200(Lcom/amazon/device/sync/Synchronizer;)Lcom/amazon/whispersync/dcp/framework/DCPLog;

    move-result-object v4

    iget-object v1, p0, Lcom/amazon/device/sync/Synchronizer$3;->this$0:Lcom/amazon/device/sync/Synchronizer;

    invoke-static {v1}, Lcom/amazon/device/sync/Synchronizer;->access$000(Lcom/amazon/device/sync/Synchronizer;)Landroid/content/Context;

    move-result-object v6

    const/4 v5, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/amazon/device/sync/FetchDatasetsSyncOperation;-><init>(ILjava/lang/String;Lcom/amazon/whispersync/dcp/framework/DCPLog;ZLandroid/content/Context;)V

    invoke-direct {v0, v7}, Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$ListenableOperation;-><init>(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
