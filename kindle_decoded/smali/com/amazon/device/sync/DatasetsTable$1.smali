.class Lcom/amazon/device/sync/DatasetsTable$1;
.super Ljava/lang/Object;
.source "DatasetsTable.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/sync/DatasetsTable;->getDatasetsIDs(Ljava/util/Set;)Ljava/util/Map;
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
        "Ljava/lang/Long;",
        ">;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/sync/DatasetsTable;

.field final synthetic val$cursor:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/amazon/device/sync/DatasetsTable;Landroid/database/Cursor;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/amazon/device/sync/DatasetsTable$1;->this$0:Lcom/amazon/device/sync/DatasetsTable;

    iput-object p2, p0, Lcom/amazon/device/sync/DatasetsTable$1;->val$cursor:Landroid/database/Cursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic execute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 86
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/amazon/device/sync/DatasetsTable$1;->execute(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public execute(Landroid/database/Cursor;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 90
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 91
    :goto_0
    iget-object v0, p0, Lcom/amazon/device/sync/DatasetsTable$1;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/amazon/device/sync/DatasetsTable$1;->val$cursor:Landroid/database/Cursor;

    const-string v1, "dataset_name"

    invoke-static {v0, v1}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/sync/DatasetsTable$1;->val$cursor:Landroid/database/Cursor;

    const-string v2, "_id"

    invoke-static {v1, v2}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object p1
.end method
