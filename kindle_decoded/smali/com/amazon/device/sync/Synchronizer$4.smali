.class Lcom/amazon/device/sync/Synchronizer$4;
.super Lcom/amazon/device/sync/SendDatasetsSyncOperation;
.source "Synchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/sync/Synchronizer;->createDatasetSubscription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/sync/Synchronizer;

.field final synthetic val$accountId:Ljava/lang/String;

.field final synthetic val$dataset:Ljava/lang/String;

.field final synthetic val$namespace:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/device/sync/Synchronizer;ILjava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/dcp/framework/DCPLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/amazon/device/sync/Synchronizer$4;->this$0:Lcom/amazon/device/sync/Synchronizer;

    iput-object p6, p0, Lcom/amazon/device/sync/Synchronizer$4;->val$accountId:Ljava/lang/String;

    iput-object p7, p0, Lcom/amazon/device/sync/Synchronizer$4;->val$namespace:Ljava/lang/String;

    iput-object p8, p0, Lcom/amazon/device/sync/Synchronizer$4;->val$dataset:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/amazon/device/sync/SendDatasetsSyncOperation;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/amazon/whispersync/dcp/framework/DCPLog;)V

    return-void
.end method


# virtual methods
.method protected doExecute(Landroid/content/Context;Lcom/amazon/whispersync/dcp/framework/DCPLog;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    new-instance p1, Lcom/amazon/device/sync/CreateDatasetDbOperation;

    iget-object p2, p0, Lcom/amazon/device/sync/Synchronizer$4;->this$0:Lcom/amazon/device/sync/Synchronizer;

    invoke-static {p2}, Lcom/amazon/device/sync/Synchronizer;->access$000(Lcom/amazon/device/sync/Synchronizer;)Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/amazon/device/sync/Synchronizer$4;->val$accountId:Ljava/lang/String;

    new-instance v1, Lcom/amazon/device/sync/SyncableDatasetInfo;

    iget-object v2, p0, Lcom/amazon/device/sync/Synchronizer$4;->val$namespace:Ljava/lang/String;

    sget-object v3, Lcom/amazon/device/sync/DatasetType;->StringMap:Lcom/amazon/device/sync/DatasetType;

    iget-object v4, p0, Lcom/amazon/device/sync/Synchronizer$4;->val$dataset:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/device/sync/SyncableDatasetInfo;-><init>(Ljava/lang/String;Lcom/amazon/device/sync/DatasetType;Ljava/lang/String;)V

    invoke-direct {p1, p2, v0, v1}, Lcom/amazon/device/sync/CreateDatasetDbOperation;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/device/sync/SyncableDatasetInfo;)V

    invoke-virtual {p1}, Lcom/amazon/device/sync/CreateDatasetDbOperation;->execute()V

    .line 264
    iget-object p1, p0, Lcom/amazon/device/sync/Synchronizer$4;->this$0:Lcom/amazon/device/sync/Synchronizer;

    invoke-static {p1}, Lcom/amazon/device/sync/Synchronizer;->access$000(Lcom/amazon/device/sync/Synchronizer;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/device/sync/Synchronizer$4;->val$dataset:Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lcom/amazon/device/sync/SendDatasetsSyncOperation;->executeWithPendingDatasets(Landroid/content/Context;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method
