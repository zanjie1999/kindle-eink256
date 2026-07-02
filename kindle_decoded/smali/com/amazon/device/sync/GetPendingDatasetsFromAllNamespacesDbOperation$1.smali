.class Lcom/amazon/device/sync/GetPendingDatasetsFromAllNamespacesDbOperation$1;
.super Ljava/lang/Object;
.source "GetPendingDatasetsFromAllNamespacesDbOperation.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/sync/GetPendingDatasetsFromAllNamespacesDbOperation;->executeWithDB(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)Ljava/util/Map;
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
        "Ljava/util/Set<",
        "Lcom/amazon/whispersync/Dataset;",
        ">;>;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/sync/GetPendingDatasetsFromAllNamespacesDbOperation;

.field final synthetic val$ids:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/amazon/device/sync/GetPendingDatasetsFromAllNamespacesDbOperation;Ljava/util/Set;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/amazon/device/sync/GetPendingDatasetsFromAllNamespacesDbOperation$1;->this$0:Lcom/amazon/device/sync/GetPendingDatasetsFromAllNamespacesDbOperation;

    iput-object p2, p0, Lcom/amazon/device/sync/GetPendingDatasetsFromAllNamespacesDbOperation$1;->val$ids:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic execute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 66
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/amazon/device/sync/GetPendingDatasetsFromAllNamespacesDbOperation$1;->execute(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public execute(Landroid/database/Cursor;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/amazon/whispersync/Dataset;",
            ">;>;"
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 72
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    iget-object v1, p0, Lcom/amazon/device/sync/GetPendingDatasetsFromAllNamespacesDbOperation$1;->val$ids:Ljava/util/Set;

    const-string v2, "_id"

    invoke-static {p1, v2}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "namespace"

    .line 75
    invoke-static {p1, v1}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-static {p1, v1}, Lcom/amazon/device/sync/SnapshotDatasetsTable;->createDataset(Landroid/database/Cursor;Ljava/lang/String;)Lcom/amazon/whispersync/Dataset;

    move-result-object v2

    const-string/jumbo v3, "pending_action"

    .line 77
    invoke-static {p1, v3}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 79
    sget-object v4, Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;->DELETION:Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;

    invoke-virtual {v4}, Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;->value()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 80
    invoke-virtual {v2, v3}, Lcom/amazon/whispersync/Dataset;->setIsDeleted(Z)V

    .line 82
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    if-nez v3, :cond_0

    .line 85
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 86
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_0
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
