.class Lcom/amazon/device/sync/SnapshotDatasetsTable;
.super Lcom/amazon/device/sync/DatasetsTable;
.source "SnapshotDatasetsTable.java"


# static fields
.field private static final NEEDS_DOWNLOAD_WHERE_STATEMENT:Ljava/lang/String;

.field private static final TABLE_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 23
    sget-object v0, Lcom/amazon/device/sync/SyncContract$Datasets;->SNAPSHOT_TABLE_NAME:Ljava/lang/String;

    sput-object v0, Lcom/amazon/device/sync/SnapshotDatasetsTable;->TABLE_NAME:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "needs_download"

    aput-object v2, v0, v1

    const-string v1, "%s = ?"

    .line 24
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/sync/SnapshotDatasetsTable;->NEEDS_DOWNLOAD_WHERE_STATEMENT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;J)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/device/sync/DatasetsTable;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;J)V

    return-void
.end method

.method static createDataset(Landroid/database/Cursor;Ljava/lang/String;)Lcom/amazon/whispersync/Dataset;
    .locals 2

    const-string v0, "dataset_name"

    .line 219
    invoke-static {p0, v0}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-static {p0}, Lcom/amazon/device/sync/SnapshotDatasetsTable;->createDatasetLinks(Landroid/database/Cursor;)Lcom/amazon/whispersync/DatasetLinks;

    move-result-object p0

    .line 222
    new-instance v1, Lcom/amazon/whispersync/Dataset;

    invoke-direct {v1}, Lcom/amazon/whispersync/Dataset;-><init>()V

    .line 223
    invoke-virtual {v1, v0}, Lcom/amazon/whispersync/Dataset;->setName(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v1, p0}, Lcom/amazon/whispersync/Dataset;->setLinks(Lcom/amazon/whispersync/DatasetLinks;)V

    .line 225
    invoke-virtual {v1, p1}, Lcom/amazon/whispersync/Dataset;->setNamespace(Ljava/lang/String;)V

    return-object v1
.end method

.method private static createDatasetLinks(Landroid/database/Cursor;)Lcom/amazon/whispersync/DatasetLinks;
    .locals 3

    .line 243
    new-instance v0, Lcom/amazon/whispersync/DatasetLinks;

    invoke-direct {v0}, Lcom/amazon/whispersync/DatasetLinks;-><init>()V

    const-string/jumbo v1, "self_uri"

    .line 244
    invoke-static {p0, v1}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/DatasetLinks;->setSelf(Ljava/lang/String;)V

    const-string/jumbo v1, "records_uri"

    .line 245
    invoke-static {p0, v1}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/whispersync/DatasetLinks;->setRecords(Ljava/lang/String;)V

    const-string/jumbo v2, "subscription_uri"

    .line 246
    invoke-static {p0, v2}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/whispersync/DatasetLinks;->setSubscriptions(Ljava/lang/String;)V

    .line 247
    invoke-static {p0, v1}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/DatasetLinks;->setUpdates(Ljava/lang/String;)V

    return-object v0
.end method

.method private createDatasetRow(Lcom/amazon/whispersync/Dataset;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 3

    .line 232
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 233
    invoke-virtual {p1}, Lcom/amazon/whispersync/Dataset;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dataset_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-wide v1, p0, Lcom/amazon/device/sync/DatasetsTable;->mNamespaceId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "namespace_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v1, 0x1

    .line 235
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "needs_download"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 236
    invoke-direct {p0, p1, v0}, Lcom/amazon/device/sync/SnapshotDatasetsTable;->populateLinks(Lcom/amazon/whispersync/Dataset;Landroid/content/ContentValues;)V

    const-string p1, "is_subscribed_to_dataset"

    .line 237
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getId(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;JLjava/lang/String;)J
    .locals 1

    .line 34
    new-instance v0, Lcom/amazon/device/sync/SnapshotDatasetsTable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/device/sync/SnapshotDatasetsTable;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;J)V

    .line 35
    invoke-virtual {v0, p4}, Lcom/amazon/device/sync/DatasetsTable;->getId(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method private getNamespaceAndDatasetSelection()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 53
    sget-object v1, Lcom/amazon/device/sync/DatasetsTable;->NAMESPACE_WHERE_STATEMENT:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/device/sync/DatasetsTable;->DATASET_WHERE_STATEMENT:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s AND %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNamespaceAndNeedsDownloadSelection()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 58
    sget-object v1, Lcom/amazon/device/sync/DatasetsTable;->NAMESPACE_WHERE_STATEMENT:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/device/sync/SnapshotDatasetsTable;->NEEDS_DOWNLOAD_WHERE_STATEMENT:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s AND %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private populateLinks(Lcom/amazon/whispersync/Dataset;Landroid/content/ContentValues;)V
    .locals 2

    .line 253
    invoke-virtual {p1}, Lcom/amazon/whispersync/Dataset;->getLinks()Lcom/amazon/whispersync/DatasetLinks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/DatasetLinks;->getSelf()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "self_uri"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-virtual {p1}, Lcom/amazon/whispersync/Dataset;->getLinks()Lcom/amazon/whispersync/DatasetLinks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/DatasetLinks;->getRecords()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "records_uri"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-virtual {p1}, Lcom/amazon/whispersync/Dataset;->getLinks()Lcom/amazon/whispersync/DatasetLinks;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/DatasetLinks;->getSubscriptions()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "subscription_uri"

    invoke-virtual {p2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bulkUpsert(Ljava/util/Collection;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/whispersync/Dataset;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 63
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 65
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/Dataset;

    .line 67
    invoke-virtual {p0, v1}, Lcom/amazon/device/sync/SnapshotDatasetsTable;->upsert(Lcom/amazon/whispersync/Dataset;)J

    move-result-wide v1

    .line 68
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getDataset(Ljava/lang/String;)Lcom/amazon/whispersync/Dataset;
    .locals 8

    .line 141
    invoke-direct {p0}, Lcom/amazon/device/sync/SnapshotDatasetsTable;->getNamespaceAndDatasetSelection()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    .line 142
    iget-wide v0, p0, Lcom/amazon/device/sync/DatasetsTable;->mNamespaceId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v4, v1

    const/4 v0, 0x1

    aput-object p1, v4, v0

    .line 143
    iget-object v0, p0, Lcom/amazon/device/sync/DatasetsTable;->mDb:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    sget-object v1, Lcom/amazon/device/sync/SnapshotDatasetsTable;->TABLE_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 148
    new-instance v0, Lcom/amazon/device/sync/SnapshotDatasetsTable$2;

    invoke-direct {v0, p0, p1}, Lcom/amazon/device/sync/SnapshotDatasetsTable$2;-><init>(Lcom/amazon/device/sync/SnapshotDatasetsTable;Landroid/database/Cursor;)V

    invoke-static {p1, v0}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->runWithCursorOrThrow(Landroid/database/Cursor;Lcom/amazon/whispersync/dcp/framework/Task;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/Dataset;

    return-object p1
.end method

.method public getDatasets()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/Dataset;",
            ">;"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/amazon/device/sync/DatasetsTable;->mDb:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    sget-object v1, Lcom/amazon/device/sync/SnapshotDatasetsTable;->TABLE_NAME:Ljava/lang/String;

    sget-object v3, Lcom/amazon/device/sync/DatasetsTable;->NAMESPACE_WHERE_STATEMENT:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    iget-wide v5, p0, Lcom/amazon/device/sync/DatasetsTable;->mNamespaceId:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 172
    new-instance v1, Lcom/amazon/device/sync/SnapshotDatasetsTable$3;

    invoke-direct {v1, p0, v0}, Lcom/amazon/device/sync/SnapshotDatasetsTable$3;-><init>(Lcom/amazon/device/sync/SnapshotDatasetsTable;Landroid/database/Cursor;)V

    invoke-static {v0, v1}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->runWithCursorOrThrow(Landroid/database/Cursor;Lcom/amazon/whispersync/dcp/framework/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public getDatasetsThatNeedDownload()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/Dataset;",
            ">;"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/amazon/device/sync/DatasetsTable;->mDb:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    sget-object v1, Lcom/amazon/device/sync/SnapshotDatasetsTable;->TABLE_NAME:Ljava/lang/String;

    invoke-direct {p0}, Lcom/amazon/device/sync/SnapshotDatasetsTable;->getNamespaceAndNeedsDownloadSelection()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    iget-wide v5, p0, Lcom/amazon/device/sync/DatasetsTable;->mNamespaceId:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    const-string v5, "1"

    aput-object v5, v4, v2

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 199
    new-instance v1, Lcom/amazon/device/sync/SnapshotDatasetsTable$4;

    invoke-direct {v1, p0, v0}, Lcom/amazon/device/sync/SnapshotDatasetsTable$4;-><init>(Lcom/amazon/device/sync/SnapshotDatasetsTable;Landroid/database/Cursor;)V

    invoke-static {v0, v1}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->runWithCursorOrThrow(Landroid/database/Cursor;Lcom/amazon/whispersync/dcp/framework/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public getIsSubscribedToDataset(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 116
    invoke-direct {p0}, Lcom/amazon/device/sync/SnapshotDatasetsTable;->getNamespaceAndDatasetSelection()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    .line 117
    iget-wide v0, p0, Lcom/amazon/device/sync/DatasetsTable;->mNamespaceId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v4, v1

    const/4 v0, 0x1

    aput-object p1, v4, v0

    .line 118
    iget-object v0, p0, Lcom/amazon/device/sync/DatasetsTable;->mDb:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    sget-object v1, Lcom/amazon/device/sync/SnapshotDatasetsTable;->TABLE_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 123
    new-instance v0, Lcom/amazon/device/sync/SnapshotDatasetsTable$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/device/sync/SnapshotDatasetsTable$1;-><init>(Lcom/amazon/device/sync/SnapshotDatasetsTable;Landroid/database/Cursor;)V

    invoke-static {p1, v0}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->runWithCursorOrThrow(Landroid/database/Cursor;Lcom/amazon/whispersync/dcp/framework/Task;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method protected getTableName()Ljava/lang/String;
    .locals 1

    .line 261
    sget-object v0, Lcom/amazon/device/sync/SnapshotDatasetsTable;->TABLE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public markAsDownloaded(Ljava/lang/String;)I
    .locals 9

    const/4 v0, 0x1

    .line 96
    invoke-virtual {p0, v0}, Lcom/amazon/device/sync/DatasetsTable;->createNamespaceAndDatasetsWhereSelection(I)Ljava/lang/String;

    move-result-object v1

    .line 97
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const/4 v3, 0x0

    .line 98
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string/jumbo v5, "needs_download"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 100
    iget-object v4, p0, Lcom/amazon/device/sync/DatasetsTable;->mDb:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    sget-object v5, Lcom/amazon/device/sync/SnapshotDatasetsTable;->TABLE_NAME:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    iget-wide v7, p0, Lcom/amazon/device/sync/DatasetsTable;->mNamespaceId:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    aput-object p1, v6, v0

    invoke-virtual {v4, v5, v2, v1, v6}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public updateRecordsLink(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    const/4 v0, 0x1

    .line 86
    invoke-virtual {p0, v0}, Lcom/amazon/device/sync/DatasetsTable;->createNamespaceAndDatasetsWhereSelection(I)Ljava/lang/String;

    move-result-object v1

    .line 87
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "records_uri"

    .line 88
    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object p2, p0, Lcom/amazon/device/sync/DatasetsTable;->mDb:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    sget-object v3, Lcom/amazon/device/sync/SnapshotDatasetsTable;->TABLE_NAME:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    iget-wide v5, p0, Lcom/amazon/device/sync/DatasetsTable;->mNamespaceId:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    aput-object p1, v4, v0

    invoke-virtual {p2, v3, v2, v1, v4}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public updateSelfLink(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    const/4 v0, 0x1

    .line 106
    invoke-virtual {p0, v0}, Lcom/amazon/device/sync/DatasetsTable;->createNamespaceAndDatasetsWhereSelection(I)Ljava/lang/String;

    move-result-object v1

    .line 107
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "self_uri"

    .line 108
    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object p2, p0, Lcom/amazon/device/sync/DatasetsTable;->mDb:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    sget-object v3, Lcom/amazon/device/sync/SnapshotDatasetsTable;->TABLE_NAME:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    iget-wide v5, p0, Lcom/amazon/device/sync/DatasetsTable;->mNamespaceId:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    aput-object p1, v4, v0

    invoke-virtual {p2, v3, v2, v1, v4}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public updateSubscriptionLink(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    const/4 v0, 0x1

    .line 76
    invoke-virtual {p0, v0}, Lcom/amazon/device/sync/DatasetsTable;->createNamespaceAndDatasetsWhereSelection(I)Ljava/lang/String;

    move-result-object v1

    .line 77
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "subscription_uri"

    .line 78
    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object p2, p0, Lcom/amazon/device/sync/DatasetsTable;->mDb:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    sget-object v3, Lcom/amazon/device/sync/SnapshotDatasetsTable;->TABLE_NAME:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    iget-wide v5, p0, Lcom/amazon/device/sync/DatasetsTable;->mNamespaceId:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    aput-object p1, v4, v0

    invoke-virtual {p2, v3, v2, v1, v4}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public upsert(Lcom/amazon/whispersync/Dataset;)J
    .locals 2

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/sync/SnapshotDatasetsTable;->upsert(Lcom/amazon/whispersync/Dataset;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public upsert(Lcom/amazon/whispersync/Dataset;Ljava/lang/String;)J
    .locals 4

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/amazon/device/sync/SnapshotDatasetsTable;->createDatasetRow(Lcom/amazon/whispersync/Dataset;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p2

    .line 46
    invoke-direct {p0}, Lcom/amazon/device/sync/SnapshotDatasetsTable;->getNamespaceAndDatasetSelection()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 47
    iget-wide v2, p0, Lcom/amazon/device/sync/DatasetsTable;->mNamespaceId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/amazon/whispersync/Dataset;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    .line 48
    iget-object p1, p0, Lcom/amazon/device/sync/DatasetsTable;->mDb:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    sget-object v2, Lcom/amazon/device/sync/SnapshotDatasetsTable;->TABLE_NAME:Ljava/lang/String;

    invoke-static {p1, v2, p2, v0, v1}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->upsert(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method
