.class Lcom/amazon/device/sync/SnapshotDatasetsTable$2;
.super Ljava/lang/Object;
.source "SnapshotDatasetsTable.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/sync/SnapshotDatasetsTable;->getDataset(Ljava/lang/String;)Lcom/amazon/whispersync/Dataset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/dcp/framework/Task<",
        "Lcom/amazon/whispersync/Dataset;",
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

    .line 149
    iput-object p1, p0, Lcom/amazon/device/sync/SnapshotDatasetsTable$2;->this$0:Lcom/amazon/device/sync/SnapshotDatasetsTable;

    iput-object p2, p0, Lcom/amazon/device/sync/SnapshotDatasetsTable$2;->val$cursor:Landroid/database/Cursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Landroid/database/Cursor;)Lcom/amazon/whispersync/Dataset;
    .locals 1

    .line 153
    iget-object p1, p0, Lcom/amazon/device/sync/SnapshotDatasetsTable$2;->val$cursor:Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 157
    :cond_0
    iget-object p1, p0, Lcom/amazon/device/sync/SnapshotDatasetsTable$2;->val$cursor:Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 158
    iget-object p1, p0, Lcom/amazon/device/sync/SnapshotDatasetsTable$2;->val$cursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/amazon/device/sync/SnapshotDatasetsTable$2;->this$0:Lcom/amazon/device/sync/SnapshotDatasetsTable;

    iget-object v0, v0, Lcom/amazon/device/sync/DatasetsTable;->mNamespace:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazon/device/sync/SnapshotDatasetsTable;->createDataset(Landroid/database/Cursor;Ljava/lang/String;)Lcom/amazon/whispersync/Dataset;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 149
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/amazon/device/sync/SnapshotDatasetsTable$2;->execute(Landroid/database/Cursor;)Lcom/amazon/whispersync/Dataset;

    move-result-object p1

    return-object p1
.end method
