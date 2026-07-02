.class Lcom/amazon/device/sync/PendingDatasetsTable$1;
.super Ljava/lang/Object;
.source "PendingDatasetsTable.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/sync/PendingDatasetsTable;->getDatasetsByPendingAction([Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;)Ljava/util/Map;
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
.field final synthetic this$0:Lcom/amazon/device/sync/PendingDatasetsTable;


# direct methods
.method constructor <init>(Lcom/amazon/device/sync/PendingDatasetsTable;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/amazon/device/sync/PendingDatasetsTable$1;->this$0:Lcom/amazon/device/sync/PendingDatasetsTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic execute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 94
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/amazon/device/sync/PendingDatasetsTable$1;->execute(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public execute(Landroid/database/Cursor;)Ljava/util/Map;
    .locals 4
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

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 99
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "dataset_name"

    .line 101
    invoke-static {p1, v1}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "pending_action"

    .line 102
    invoke-static {p1, v2}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 104
    iget-object v3, p0, Lcom/amazon/device/sync/PendingDatasetsTable$1;->this$0:Lcom/amazon/device/sync/PendingDatasetsTable;

    invoke-static {v3, v1, v2}, Lcom/amazon/device/sync/PendingDatasetsTable;->access$000(Lcom/amazon/device/sync/PendingDatasetsTable;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/Dataset;

    move-result-object v2

    .line 105
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method
