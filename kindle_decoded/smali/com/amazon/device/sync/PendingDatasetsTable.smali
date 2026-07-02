.class Lcom/amazon/device/sync/PendingDatasetsTable;
.super Lcom/amazon/device/sync/DatasetsTable;
.source "PendingDatasetsTable.java"


# static fields
.field private static final DATASET_NAME_WHERE_STATEMENT:Ljava/lang/String;

.field private static final OPERATION_ID_WHERE_STATEMENT:Ljava/lang/String;

.field private static final PENDING_ACTION_WHERE_STATEMENT:Ljava/lang/String;

.field private static final TABLE_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 29
    sget-object v0, Lcom/amazon/device/sync/SyncContract$Datasets;->PENDING_TABLE_NAME:Ljava/lang/String;

    sput-object v0, Lcom/amazon/device/sync/PendingDatasetsTable;->TABLE_NAME:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-string/jumbo v2, "pending_action"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%s = ?"

    .line 30
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/device/sync/PendingDatasetsTable;->PENDING_ACTION_WHERE_STATEMENT:Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/Object;

    const-string/jumbo v4, "operation_id"

    aput-object v4, v1, v3

    .line 31
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/device/sync/PendingDatasetsTable;->OPERATION_ID_WHERE_STATEMENT:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "dataset_name"

    aput-object v1, v0, v3

    .line 32
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/sync/PendingDatasetsTable;->DATASET_NAME_WHERE_STATEMENT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;J)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/device/sync/DatasetsTable;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/sync/PendingDatasetsTable;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/Dataset;
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/amazon/device/sync/PendingDatasetsTable;->createDataset(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/Dataset;

    move-result-object p0

    return-object p0
.end method

.method private createDataset(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/Dataset;
    .locals 1

    .line 247
    new-instance v0, Lcom/amazon/whispersync/Dataset;

    invoke-direct {v0}, Lcom/amazon/whispersync/Dataset;-><init>()V

    .line 248
    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/Dataset;->setName(Ljava/lang/String;)V

    .line 249
    iget-object p1, p0, Lcom/amazon/device/sync/DatasetsTable;->mNamespace:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/Dataset;->setNamespace(Ljava/lang/String;)V

    .line 251
    sget-object p1, Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;->DELETION:Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;

    invoke-virtual {p1}, Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;->value()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 252
    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/Dataset;->setIsDeleted(Z)V

    return-object v0
.end method

.method private createDatasetRow(Ljava/lang/String;Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;)Landroid/content/ContentValues;
    .locals 3

    .line 259
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "dataset_name"

    .line 260
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-wide v1, p0, Lcom/amazon/device/sync/DatasetsTable;->mNamespaceId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string/jumbo v1, "namespace_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 262
    invoke-virtual {p2}, Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;->value()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "pending_action"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 263
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p2, "operation_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method private createNamespaceAndPendingActionSelectionArgs([Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;)[Ljava/lang/String;
    .locals 4

    .line 299
    array-length v0, p1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    .line 300
    iget-wide v2, p0, Lcom/amazon/device/sync/DatasetsTable;->mNamespaceId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x1

    .line 301
    :goto_0
    array-length v3, p1

    add-int/2addr v3, v1

    if-ge v2, v3, :cond_0

    add-int/lit8 v3, v2, -0x1

    .line 303
    aget-object v3, p1, v3

    invoke-virtual {v3}, Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;->value()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static createOperationIdRow(I)Landroid/content/ContentValues;
    .locals 2

    .line 270
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 271
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string/jumbo v1, "operation_id"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method private createPendingActionRow(Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;)Landroid/content/ContentValues;
    .locals 2

    .line 278
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 279
    invoke-virtual {p1}, Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;->value()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "pending_action"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static createPendingActionWhereSelection(I)Ljava/lang/String;
    .locals 3

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/device/sync/PendingDatasetsTable;->PENDING_ACTION_WHERE_STATEMENT:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    :goto_0
    if-ge v1, p0, :cond_0

    const-string v2, " OR "

    .line 290
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    sget-object v2, Lcom/amazon/device/sync/PendingDatasetsTable;->PENDING_ACTION_WHERE_STATEMENT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 294
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getFailedAttempts(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;)I
    .locals 9

    .line 353
    sget-object v1, Lcom/amazon/device/sync/PendingDatasetsTable;->TABLE_NAME:Ljava/lang/String;

    const-string v8, "attempt_count"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazon/device/sync/PendingDatasetsTable;->DATASET_NAME_WHERE_STATEMENT:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 360
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 361
    invoke-static {p0, v8}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return p1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1
.end method

.method public static getId(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;JLjava/lang/String;)J
    .locals 1

    .line 44
    new-instance v0, Lcom/amazon/device/sync/PendingDatasetsTable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/device/sync/PendingDatasetsTable;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;J)V

    .line 45
    invoke-virtual {v0, p4}, Lcom/amazon/device/sync/DatasetsTable;->getId(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static incrementRetryCount(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;)V
    .locals 5

    .line 345
    invoke-static {p0, p1}, Lcom/amazon/device/sync/PendingDatasetsTable;->getFailedAttempts(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 346
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 347
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "attempt_count"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 348
    sget-object v0, Lcom/amazon/device/sync/PendingDatasetsTable;->TABLE_NAME:Ljava/lang/String;

    sget-object v3, Lcom/amazon/device/sync/PendingDatasetsTable;->DATASET_NAME_WHERE_STATEMENT:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v1, v4

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static markAllDatasetsNotInProgress(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)I
    .locals 3

    const/4 v0, -0x1

    .line 50
    invoke-static {v0}, Lcom/amazon/device/sync/PendingDatasetsTable;->createOperationIdRow(I)Landroid/content/ContentValues;

    move-result-object v0

    .line 51
    sget-object v1, Lcom/amazon/device/sync/PendingDatasetsTable;->TABLE_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, v2}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static markDatsetsInProgress(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;ILjava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 319
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 324
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 325
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 327
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 331
    :cond_1
    sget-object p2, Lcom/amazon/device/sync/DatasetsTable;->MAX_KEYS_IN_DATASETS_SQL:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    invoke-virtual {p2}, Lcom/amazon/whispersync/dcp/settings/SettingInteger;->getValue()I

    move-result p2

    invoke-static {v0, p2}, Lcom/amazon/device/sync/gear/StaticUtils;->splitCollection(Ljava/util/Collection;I)Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 333
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-static {v3}, Lcom/amazon/device/sync/DatasetsTable;->generateINStatementPlaceholders(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "%s in (%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 337
    invoke-static {p1}, Lcom/amazon/device/sync/PendingDatasetsTable;->createOperationIdRow(I)Landroid/content/ContentValues;

    move-result-object v2

    .line 338
    sget-object v3, Lcom/amazon/device/sync/PendingDatasetsTable;->TABLE_NAME:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v3, v2, v1, v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public deleteByName(Ljava/util/Collection;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 180
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "namespace_id"

    aput-object v2, v1, v0

    const-string v2, "dataset_name"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 185
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-static {v2}, Lcom/amazon/device/sync/DatasetsTable;->generateINStatementPlaceholders(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    const-string v2, "%s = ? AND (%s IN (%s))"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 190
    const-class v2, [Ljava/lang/String;

    new-array v4, v4, [[Ljava/lang/String;

    new-array v5, v3, [Ljava/lang/String;

    iget-wide v6, p0, Lcom/amazon/device/sync/DatasetsTable;->mNamespaceId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    aput-object v5, v4, v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    aput-object p1, v4, v3

    invoke-static {v2, v4}, Lcom/amazon/whispersync/dcp/framework/ArrayHelpers;->concatenate(Ljava/lang/Class;[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lcom/amazon/device/sync/DatasetsTable;->mDb:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    sget-object v2, Lcom/amazon/device/sync/PendingDatasetsTable;->TABLE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2, v1, p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public varargs deleteByNameAndPendingAction(Ljava/util/Collection;[Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;[",
            "Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 143
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_3

    .line 148
    array-length v1, p2

    if-nez v1, :cond_1

    goto :goto_1

    .line 153
    :cond_1
    invoke-direct {p0, p2}, Lcom/amazon/device/sync/PendingDatasetsTable;->createNamespaceAndPendingActionSelectionArgs([Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;)[Ljava/lang/String;

    move-result-object v1

    .line 159
    sget-object v2, Lcom/amazon/device/sync/DatasetsTable;->MAX_KEYS_IN_DATASETS_SQL:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    invoke-virtual {v2}, Lcom/amazon/whispersync/dcp/settings/SettingInteger;->getValue()I

    move-result v2

    invoke-static {p1, v2}, Lcom/amazon/device/sync/gear/StaticUtils;->splitCollection(Ljava/util/Collection;I)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "namespace_id"

    aput-object v5, v4, v0

    const-string/jumbo v5, "pending_action"

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 161
    array-length v5, p2

    invoke-static {v5}, Lcom/amazon/device/sync/DatasetsTable;->generateINStatementPlaceholders(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x2

    aput-object v5, v4, v7

    const/4 v5, 0x3

    const-string v8, "dataset_name"

    aput-object v8, v4, v5

    const/4 v5, 0x4

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v8

    invoke-static {v8}, Lcom/amazon/device/sync/DatasetsTable;->generateINStatementPlaceholders(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const-string v5, "%s = ? AND (%s IN (%s)) AND (%s IN (%s))"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 168
    const-class v5, [Ljava/lang/String;

    new-array v7, v7, [[Ljava/lang/String;

    aput-object v1, v7, v0

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-interface {v3, v8}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    aput-object v3, v7, v6

    invoke-static {v5, v7}, Lcom/amazon/whispersync/dcp/framework/ArrayHelpers;->concatenate(Ljava/lang/Class;[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 173
    iget-object v5, p0, Lcom/amazon/device/sync/DatasetsTable;->mDb:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    sget-object v6, Lcom/amazon/device/sync/PendingDatasetsTable;->TABLE_NAME:Ljava/lang/String;

    invoke-virtual {v5, v6, v4, v3}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_1
    return v0
.end method

.method public getDatasetNamesInProgress()Ljava/util/Set;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 115
    sget-object v1, Lcom/amazon/device/sync/DatasetsTable;->NAMESPACE_WHERE_STATEMENT:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "operation_id"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "%s AND (%s != %s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/String;

    .line 119
    iget-wide v0, p0, Lcom/amazon/device/sync/DatasetsTable;->mNamespaceId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v2

    .line 120
    iget-object v4, p0, Lcom/amazon/device/sync/DatasetsTable;->mDb:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    sget-object v5, Lcom/amazon/device/sync/PendingDatasetsTable;->TABLE_NAME:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 125
    new-instance v1, Lcom/amazon/device/sync/PendingDatasetsTable$2;

    invoke-direct {v1, p0}, Lcom/amazon/device/sync/PendingDatasetsTable$2;-><init>(Lcom/amazon/device/sync/PendingDatasetsTable;)V

    invoke-static {v0, v1}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->runWithCursorOrThrow(Landroid/database/Cursor;Lcom/amazon/whispersync/dcp/framework/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public varargs getDatasetsByPendingAction([Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/Dataset;",
            ">;"
        }
    .end annotation

    .line 81
    const-class v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "pendingAction cannot be null or empty"

    invoke-static {p1, v0, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotEmpty([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    array-length v0, p1

    invoke-static {v0}, Lcom/amazon/device/sync/PendingDatasetsTable;->createPendingActionWhereSelection(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-direct {p0, p1}, Lcom/amazon/device/sync/PendingDatasetsTable;->createNamespaceAndPendingActionSelectionArgs([Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;)[Ljava/lang/String;

    move-result-object v6

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 86
    sget-object v2, Lcom/amazon/device/sync/DatasetsTable;->NAMESPACE_WHERE_STATEMENT:Ljava/lang/String;

    aput-object v2, p1, v1

    const/4 v1, 0x1

    aput-object v0, p1, v1

    const-string v0, "%s AND (%s)"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 87
    iget-object v2, p0, Lcom/amazon/device/sync/DatasetsTable;->mDb:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    sget-object v3, Lcom/amazon/device/sync/PendingDatasetsTable;->TABLE_NAME:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "attempt_count"

    invoke-virtual/range {v2 .. v9}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 93
    new-instance v0, Lcom/amazon/device/sync/PendingDatasetsTable$1;

    invoke-direct {v0, p0}, Lcom/amazon/device/sync/PendingDatasetsTable$1;-><init>(Lcom/amazon/device/sync/PendingDatasetsTable;)V

    invoke-static {p1, v0}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->runWithCursorOrThrow(Landroid/database/Cursor;Lcom/amazon/whispersync/dcp/framework/Task;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public getDatasetsCreatedOffline()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/Dataset;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;

    .line 71
    sget-object v1, Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;->CREATION:Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/amazon/device/sync/PendingDatasetsTable;->getDatasetsByPendingAction([Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDatasetsDeletedOffline()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/Dataset;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;

    .line 76
    sget-object v1, Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;->DELETION:Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/amazon/device/sync/PendingDatasetsTable;->getDatasetsByPendingAction([Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected getTableName()Ljava/lang/String;
    .locals 1

    .line 312
    sget-object v0, Lcom/amazon/device/sync/PendingDatasetsTable;->TABLE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public markDatasetsAsInProgress(Ljava/util/Collection;I)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 207
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/amazon/device/sync/DatasetsTable;->createNamespaceAndDatasetsWhereSelection(I)Ljava/lang/String;

    move-result-object v1

    .line 213
    const-class v2, [Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [[Ljava/lang/String;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    iget-wide v6, p0, Lcom/amazon/device/sync/DatasetsTable;->mNamespaceId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    aput-object v5, v3, v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/amazon/whispersync/dcp/framework/ArrayHelpers;->concatenate(Ljava/lang/Class;[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 217
    invoke-static {p2}, Lcom/amazon/device/sync/PendingDatasetsTable;->createOperationIdRow(I)Landroid/content/ContentValues;

    move-result-object p2

    .line 219
    iget-object v0, p0, Lcom/amazon/device/sync/DatasetsTable;->mDb:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    sget-object v2, Lcom/amazon/device/sync/PendingDatasetsTable;->TABLE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2, p2, v1, p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public markDatasetsAsNotInProgressById(I)I
    .locals 6

    const/4 v0, -0x1

    .line 199
    invoke-static {v0}, Lcom/amazon/device/sync/PendingDatasetsTable;->createOperationIdRow(I)Landroid/content/ContentValues;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lcom/amazon/device/sync/DatasetsTable;->mDb:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    sget-object v2, Lcom/amazon/device/sync/PendingDatasetsTable;->TABLE_NAME:Ljava/lang/String;

    sget-object v3, Lcom/amazon/device/sync/PendingDatasetsTable;->OPERATION_ID_WHERE_STATEMENT:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public updatePendingAction(Ljava/util/Collection;Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;",
            "Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;",
            ")I"
        }
    .end annotation

    .line 226
    const-class v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "datasetNames cannot be null"

    invoke-static {p1, v0, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    .line 227
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 232
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/device/sync/DatasetsTable;->createNamespaceAndDatasetsWhereSelection(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v0, v3, v1

    .line 233
    sget-object v0, Lcom/amazon/device/sync/PendingDatasetsTable;->PENDING_ACTION_WHERE_STATEMENT:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const-string v0, "%s AND %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 236
    const-class v3, [Ljava/lang/String;

    const/4 v5, 0x3

    new-array v5, v5, [[Ljava/lang/String;

    new-array v6, v4, [Ljava/lang/String;

    iget-wide v7, p0, Lcom/amazon/device/sync/DatasetsTable;->mNamespaceId:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    aput-object v6, v5, v1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {p1, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    aput-object p1, v5, v4

    new-array p1, v4, [Ljava/lang/String;

    invoke-virtual {p2}, Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;->value()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    aput-object p1, v5, v2

    invoke-static {v3, v5}, Lcom/amazon/whispersync/dcp/framework/ArrayHelpers;->concatenate(Ljava/lang/Class;[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 241
    invoke-direct {p0, p3}, Lcom/amazon/device/sync/PendingDatasetsTable;->createPendingActionRow(Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;)Landroid/content/ContentValues;

    move-result-object p2

    .line 242
    iget-object p3, p0, Lcom/amazon/device/sync/DatasetsTable;->mDb:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    sget-object v1, Lcom/amazon/device/sync/PendingDatasetsTable;->TABLE_NAME:Ljava/lang/String;

    invoke-virtual {p3, v1, p2, v0, p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method public upsert(Ljava/lang/String;)J
    .locals 2

    .line 56
    sget-object v0, Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;->NONE:Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/sync/PendingDatasetsTable;->upsert(Ljava/lang/String;Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;)J

    move-result-wide v0

    return-wide v0
.end method

.method public upsert(Ljava/lang/String;Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;)J
    .locals 5

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/amazon/device/sync/PendingDatasetsTable;->createDatasetRow(Ljava/lang/String;Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;)Landroid/content/ContentValues;

    move-result-object p2

    const/4 v0, 0x1

    .line 63
    invoke-virtual {p0, v0}, Lcom/amazon/device/sync/DatasetsTable;->createNamespaceAndDatasetsWhereSelection(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 64
    iget-wide v3, p0, Lcom/amazon/device/sync/DatasetsTable;->mNamespaceId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    aput-object p1, v2, v0

    .line 66
    iget-object p1, p0, Lcom/amazon/device/sync/DatasetsTable;->mDb:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    sget-object v0, Lcom/amazon/device/sync/PendingDatasetsTable;->TABLE_NAME:Ljava/lang/String;

    invoke-static {p1, v0, p2, v1, v2}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->upsert(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method
