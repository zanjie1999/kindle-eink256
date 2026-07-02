.class Lcom/amazon/device/sync/GetPendingRecordsFromAllDatasetsDbOperation$1;
.super Ljava/lang/Object;
.source "GetPendingRecordsFromAllDatasetsDbOperation.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/sync/GetPendingRecordsFromAllDatasetsDbOperation;->executionImpl(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)Ljava/util/Map;
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
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/util/Set<",
        "Lcom/amazon/whispersync/Record;",
        ">;>;>;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/sync/GetPendingRecordsFromAllDatasetsDbOperation;

.field final synthetic val$ids:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/amazon/device/sync/GetPendingRecordsFromAllDatasetsDbOperation;Ljava/util/Set;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/amazon/device/sync/GetPendingRecordsFromAllDatasetsDbOperation$1;->this$0:Lcom/amazon/device/sync/GetPendingRecordsFromAllDatasetsDbOperation;

    iput-object p2, p0, Lcom/amazon/device/sync/GetPendingRecordsFromAllDatasetsDbOperation$1;->val$ids:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic execute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 58
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/amazon/device/sync/GetPendingRecordsFromAllDatasetsDbOperation$1;->execute(Landroid/database/Cursor;)Ljava/util/Map;

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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/amazon/whispersync/Record;",
            ">;>;>;"
        }
    .end annotation

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 66
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 68
    iget-object v1, p0, Lcom/amazon/device/sync/GetPendingRecordsFromAllDatasetsDbOperation$1;->val$ids:Ljava/util/Set;

    const-string v2, "_id"

    invoke-static {p1, v2}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "namespace"

    .line 69
    invoke-static {p1, v1}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dataset_name"

    .line 70
    invoke-static {p1, v2}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-static {p1}, Lcom/amazon/device/sync/PendingRecordsTable;->createPendingRecord(Landroid/database/Cursor;)Lcom/amazon/whispersync/Record;

    move-result-object v3

    .line 73
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-nez v4, :cond_0

    .line 76
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 77
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_0
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-nez v1, :cond_1

    .line 83
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 84
    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method
