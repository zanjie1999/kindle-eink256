.class Lcom/amazon/device/sync/SnapshotDatasetsTable$4;
.super Ljava/lang/Object;
.source "SnapshotDatasetsTable.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/sync/SnapshotDatasetsTable;->getDatasetsThatNeedDownload()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/dcp/framework/Task<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Lcom/amazon/whispersync/Dataset;",
        ">;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/sync/SnapshotDatasetsTable;

.field final synthetic val$cursor:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/amazon/device/sync/SnapshotDatasetsTable;Landroid/database/Cursor;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/amazon/device/sync/SnapshotDatasetsTable$4;->this$0:Lcom/amazon/device/sync/SnapshotDatasetsTable;

    iput-object p2, p0, Lcom/amazon/device/sync/SnapshotDatasetsTable$4;->val$cursor:Landroid/database/Cursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic execute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 200
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/amazon/device/sync/SnapshotDatasetsTable$4;->execute(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public execute(Landroid/database/Cursor;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/Dataset;",
            ">;"
        }
    .end annotation

    .line 204
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 205
    :goto_0
    iget-object v0, p0, Lcom/amazon/device/sync/SnapshotDatasetsTable$4;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/amazon/device/sync/SnapshotDatasetsTable$4;->val$cursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/amazon/device/sync/SnapshotDatasetsTable$4;->this$0:Lcom/amazon/device/sync/SnapshotDatasetsTable;

    iget-object v1, v1, Lcom/amazon/device/sync/DatasetsTable;->mNamespace:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/device/sync/SnapshotDatasetsTable;->createDataset(Landroid/database/Cursor;Ljava/lang/String;)Lcom/amazon/whispersync/Dataset;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Lcom/amazon/whispersync/Dataset;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p1
.end method
