.class abstract Lcom/amazon/device/sync/RecordsTable;
.super Ljava/lang/Object;
.source "RecordsTable.java"


# static fields
.field public static final MAX_KEYS_IN_RECORDS_SQL:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

.field public static final MAX_KEYS_IN_RECORDS_SQL_DEFAULT:I = 0x1f4


# instance fields
.field protected final mCreateRecordSetTask:Lcom/amazon/whispersync/dcp/framework/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/dcp/framework/Task<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/Record;",
            ">;",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field protected final mDatasetId:J

.field protected final mDb:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 31
    new-instance v0, Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    sget-object v1, Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;->DeviceGlobal:Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;

    const-string v2, "com.amazon.device.sync.MAX_KEYS_IN_RECORDS_SQL"

    const/16 v3, 0x1f4

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/whispersync/dcp/settings/SettingInteger;-><init>(Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/sync/RecordsTable;->MAX_KEYS_IN_RECORDS_SQL:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;J)V
    .locals 4

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/amazon/device/sync/RecordsTable$1;

    invoke-direct {v0, p0}, Lcom/amazon/device/sync/RecordsTable$1;-><init>(Lcom/amazon/device/sync/RecordsTable;)V

    iput-object v0, p0, Lcom/amazon/device/sync/RecordsTable;->mCreateRecordSetTask:Lcom/amazon/whispersync/dcp/framework/Task;

    .line 56
    const-class v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "db cannot be null"

    invoke-static {p1, v0, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 57
    :goto_0
    const-class v2, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "datasetId must be a positive integer"

    invoke-static {v0, v2, v3, v1}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkTrue(ZLjava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    iput-object p1, p0, Lcom/amazon/device/sync/RecordsTable;->mDb:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    .line 60
    iput-wide p2, p0, Lcom/amazon/device/sync/RecordsTable;->mDatasetId:J

    return-void
.end method

.method static generateINStatementPlaceholders(I)Ljava/lang/String;
    .locals 3

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p0, 0x2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x3f

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    if-ge v2, p0, :cond_0

    const-string v1, ",?"

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bulkDelete(Ljava/util/Collection;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 132
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 140
    :cond_0
    sget-object v0, Lcom/amazon/device/sync/RecordsTable;->MAX_KEYS_IN_RECORDS_SQL:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/settings/SettingInteger;->getValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/amazon/device/sync/gear/StaticUtils;->splitCollection(Ljava/util/Collection;I)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 142
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/amazon/device/sync/RecordsTable;->createDatasetIdAndKeySelection(I)Ljava/lang/String;

    move-result-object v3

    .line 143
    const-class v4, [Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [[Ljava/lang/String;

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/String;

    iget-wide v8, p0, Lcom/amazon/device/sync/RecordsTable;->mDatasetId:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    aput-object v7, v5, v1

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Lcom/amazon/whispersync/dcp/framework/ArrayHelpers;->concatenate(Ljava/lang/Class;[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 146
    iget-object v4, p0, Lcom/amazon/device/sync/RecordsTable;->mDb:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    invoke-virtual {p0}, Lcom/amazon/device/sync/RecordsTable;->getTableName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3, v2}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    return v0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 2

    .line 105
    invoke-virtual {p0, p1}, Lcom/amazon/device/sync/RecordsTable;->getId(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/amazon/device/sync/SyncDb;->isRecordExist(J)Z

    move-result p1

    return p1
.end method

.method protected createDatasetIdAndKeySelection(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 154
    invoke-virtual {p0}, Lcom/amazon/device/sync/RecordsTable;->getDatasetIdColumnName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string/jumbo v2, "record_key"

    aput-object v2, v0, v1

    invoke-static {p1}, Lcom/amazon/device/sync/RecordsTable;->generateINStatementPlaceholders(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const-string p1, "(%s = ?) AND %s IN (%s)"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected abstract createRecord(Landroid/database/Cursor;)Lcom/amazon/whispersync/Record;
.end method

.method protected abstract createRecordRow(Lcom/amazon/whispersync/Record;)Landroid/content/ContentValues;
.end method

.method public delete(Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x1

    .line 117
    invoke-virtual {p0, v0}, Lcom/amazon/device/sync/RecordsTable;->createDatasetIdAndKeySelection(I)Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-virtual {p0}, Lcom/amazon/device/sync/RecordsTable;->getTableName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    .line 119
    iget-wide v4, p0, Lcom/amazon/device/sync/RecordsTable;->mDatasetId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    aput-object p1, v3, v0

    .line 120
    iget-object p1, p0, Lcom/amazon/device/sync/RecordsTable;->mDb:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    invoke-virtual {p1, v2, v1, v3}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public deleteAll()I
    .locals 4

    .line 125
    invoke-virtual {p0}, Lcom/amazon/device/sync/RecordsTable;->getDatasetSelection()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 126
    iget-wide v2, p0, Lcom/amazon/device/sync/RecordsTable;->mDatasetId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 127
    iget-object v2, p0, Lcom/amazon/device/sync/RecordsTable;->mDb:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    invoke-virtual {p0}, Lcom/amazon/device/sync/RecordsTable;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected abstract getDatasetIdColumnName()Ljava/lang/String;
.end method

.method getDatasetSelection()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 173
    invoke-virtual {p0}, Lcom/amazon/device/sync/RecordsTable;->getDatasetIdColumnName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%s = ?"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId(Ljava/lang/String;)J
    .locals 9

    const/4 v0, 0x1

    .line 87
    invoke-virtual {p0, v0}, Lcom/amazon/device/sync/RecordsTable;->createDatasetIdAndKeySelection(I)Ljava/lang/String;

    move-result-object v4

    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/amazon/device/sync/RecordsTable;->mDb:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    invoke-virtual {p0}, Lcom/amazon/device/sync/RecordsTable;->getTableName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "_id"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-wide v7, p0, Lcom/amazon/device/sync/RecordsTable;->mDatasetId:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object p1, v5, v0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->querySingleResultOrThrow(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 95
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Lcom/amazon/whispersync/dcp/framework/EmptyCursorException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getRecords()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/Record;",
            ">;"
        }
    .end annotation

    .line 65
    invoke-virtual {p0}, Lcom/amazon/device/sync/RecordsTable;->getDatasetSelection()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .line 66
    iget-wide v0, p0, Lcom/amazon/device/sync/RecordsTable;->mDatasetId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v4, v1

    .line 67
    iget-object v0, p0, Lcom/amazon/device/sync/RecordsTable;->mDb:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    invoke-virtual {p0}, Lcom/amazon/device/sync/RecordsTable;->getTableName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/amazon/device/sync/RecordsTable;->mCreateRecordSetTask:Lcom/amazon/whispersync/dcp/framework/Task;

    invoke-static {v0, v1}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->runWithCursorOrThrow(Landroid/database/Cursor;Lcom/amazon/whispersync/dcp/framework/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method protected abstract getTableName()Ljava/lang/String;
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x1

    .line 77
    invoke-virtual {p0, v0}, Lcom/amazon/device/sync/RecordsTable;->createDatasetIdAndKeySelection(I)Ljava/lang/String;

    move-result-object v4

    .line 78
    iget-object v1, p0, Lcom/amazon/device/sync/RecordsTable;->mDb:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    invoke-virtual {p0}, Lcom/amazon/device/sync/RecordsTable;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/device/sync/RecordsTable;->getValueColumnName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    iget-wide v6, p0, Lcom/amazon/device/sync/RecordsTable;->mDatasetId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    aput-object p1, v5, v0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->querySingleResult(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected abstract getValueColumnName()Ljava/lang/String;
.end method

.method protected upsertRecordRow(Landroid/content/ContentValues;Ljava/lang/String;)J
    .locals 5

    const/4 v0, 0x1

    .line 110
    invoke-virtual {p0, v0}, Lcom/amazon/device/sync/RecordsTable;->createDatasetIdAndKeySelection(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 111
    iget-wide v3, p0, Lcom/amazon/device/sync/RecordsTable;->mDatasetId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    aput-object p2, v2, v0

    .line 112
    iget-object p2, p0, Lcom/amazon/device/sync/RecordsTable;->mDb:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    invoke-virtual {p0}, Lcom/amazon/device/sync/RecordsTable;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1, v1, v2}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->upsert(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method
