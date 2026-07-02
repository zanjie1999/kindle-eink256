.class abstract Lcom/amazon/device/sync/DatasetsTable;
.super Ljava/lang/Object;
.source "DatasetsTable.java"


# static fields
.field protected static final DATASET_WHERE_STATEMENT:Ljava/lang/String;

.field public static final MAX_KEYS_IN_DATASETS_SQL:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

.field public static final MAX_KEYS_IN_DATASETS_SQL_DEFAULT:I = 0x1f4

.field protected static final NAMESPACE_SELECTION_PATTERN:Ljava/lang/String;

.field protected static final NAMESPACE_WHERE_STATEMENT:Ljava/lang/String;


# instance fields
.field protected final mDb:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

.field protected final mNamespace:Ljava/lang/String;

.field protected final mNamespaceId:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 28
    new-instance v0, Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    sget-object v1, Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;->DeviceGlobal:Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;

    const-string v2, "com.amazon.device.sync.MAX_KEYS_IN_DATASETS_SQL"

    const/16 v3, 0x1f4

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/whispersync/dcp/settings/SettingInteger;-><init>(Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/sync/DatasetsTable;->MAX_KEYS_IN_DATASETS_SQL:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-string/jumbo v2, "namespace_id"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v4, "(%s = ? AND (%%s))"

    .line 33
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/device/sync/DatasetsTable;->NAMESPACE_SELECTION_PATTERN:Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/Object;

    aput-object v2, v1, v3

    const-string v2, "%s = ?"

    .line 36
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/device/sync/DatasetsTable;->NAMESPACE_WHERE_STATEMENT:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "dataset_name"

    aput-object v1, v0, v3

    .line 37
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/sync/DatasetsTable;->DATASET_WHERE_STATEMENT:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;J)V
    .locals 4

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-class v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "db cannot be null"

    invoke-static {p1, v0, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    const-class v0, Ljava/lang/IllegalArgumentException;

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "namespace cannot be null"

    invoke-static {p1, v0, v3, v2}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v2, 0x0

    cmp-long v0, p3, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 49
    :goto_0
    const-class v2, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "namespaceId cannot be -1"

    invoke-static {v0, v2, v3, v1}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkTrue(ZLjava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    iput-object p1, p0, Lcom/amazon/device/sync/DatasetsTable;->mDb:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    .line 52
    iput-object p2, p0, Lcom/amazon/device/sync/DatasetsTable;->mNamespace:Ljava/lang/String;

    .line 53
    iput-wide p3, p0, Lcom/amazon/device/sync/DatasetsTable;->mNamespaceId:J

    return-void
.end method

.method private createDatasetsWhereSelection(I)Ljava/lang/String;
    .locals 3

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/device/sync/DatasetsTable;->DATASET_WHERE_STATEMENT:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    :goto_0
    if-ge v1, p1, :cond_0

    const-string v2, " OR "

    .line 152
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    sget-object v2, Lcom/amazon/device/sync/DatasetsTable;->DATASET_WHERE_STATEMENT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static generateINStatementPlaceholders(I)Ljava/lang/String;
    .locals 3

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p0, 0x2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x3f

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    if-ge v2, p0, :cond_0

    const-string v1, ",?"

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public varargs bulkDelete([Ljava/lang/String;)I
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 126
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    array-length v1, p1

    invoke-virtual {p0, v1}, Lcom/amazon/device/sync/DatasetsTable;->createNamespaceAndDatasetsWhereSelection(I)Ljava/lang/String;

    move-result-object v1

    .line 133
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

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/amazon/whispersync/dcp/framework/ArrayHelpers;->concatenate(Ljava/lang/Class;[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/amazon/device/sync/DatasetsTable;->mDb:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    invoke-virtual {p0}, Lcom/amazon/device/sync/DatasetsTable;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1, p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x1

    .line 103
    invoke-virtual {p0, v0}, Lcom/amazon/device/sync/DatasetsTable;->createNamespaceAndDatasetsWhereSelection(I)Ljava/lang/String;

    move-result-object v4

    .line 105
    iget-object v1, p0, Lcom/amazon/device/sync/DatasetsTable;->mDb:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    invoke-virtual {p0}, Lcom/amazon/device/sync/DatasetsTable;->getTableName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/String;

    iget-wide v6, p0, Lcom/amazon/device/sync/DatasetsTable;->mNamespaceId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    aput-object v3, v5, v6

    aput-object p1, v5, v0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 109
    new-instance v0, Lcom/amazon/device/sync/DatasetsTable$2;

    invoke-direct {v0, p0, p1}, Lcom/amazon/device/sync/DatasetsTable$2;-><init>(Lcom/amazon/device/sync/DatasetsTable;Landroid/database/Cursor;)V

    invoke-static {p1, v0}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->runWithCursorOrThrow(Landroid/database/Cursor;Lcom/amazon/whispersync/dcp/framework/Task;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method protected createNamespaceAndDatasetsWhereSelection(I)Ljava/lang/String;
    .locals 3

    .line 142
    invoke-direct {p0, p1}, Lcom/amazon/device/sync/DatasetsTable;->createDatasetsWhereSelection(I)Ljava/lang/String;

    move-result-object p1

    .line 143
    sget-object v0, Lcom/amazon/device/sync/DatasetsTable;->NAMESPACE_SELECTION_PATTERN:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public delete(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 121
    invoke-virtual {p0, v0}, Lcom/amazon/device/sync/DatasetsTable;->bulkDelete([Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getDatasetsIDs(Ljava/util/Set;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 76
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/device/sync/DatasetsTable;->createNamespaceAndDatasetsWhereSelection(I)Ljava/lang/String;

    move-result-object v4

    .line 77
    const-class v0, [Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [[Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    iget-wide v5, p0, Lcom/amazon/device/sync/DatasetsTable;->mNamespaceId:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    aput-object v3, v1, v6

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/amazon/whispersync/dcp/framework/ArrayHelpers;->concatenate(Ljava/lang/Class;[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, [Ljava/lang/String;

    .line 80
    iget-object v1, p0, Lcom/amazon/device/sync/DatasetsTable;->mDb:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    invoke-virtual {p0}, Lcom/amazon/device/sync/DatasetsTable;->getTableName()Ljava/lang/String;

    move-result-object v2

    const-string p1, "_id"

    const-string v0, "dataset_name"

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 85
    new-instance v0, Lcom/amazon/device/sync/DatasetsTable$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/device/sync/DatasetsTable$1;-><init>(Lcom/amazon/device/sync/DatasetsTable;Landroid/database/Cursor;)V

    invoke-static {p1, v0}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->runWithCursorOrThrow(Landroid/database/Cursor;Lcom/amazon/whispersync/dcp/framework/Task;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public getId(Ljava/lang/String;)J
    .locals 9

    const/4 v0, 0x1

    .line 58
    invoke-virtual {p0, v0}, Lcom/amazon/device/sync/DatasetsTable;->createNamespaceAndDatasetsWhereSelection(I)Ljava/lang/String;

    move-result-object v4

    .line 61
    :try_start_0
    iget-object v1, p0, Lcom/amazon/device/sync/DatasetsTable;->mDb:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    invoke-virtual {p0}, Lcom/amazon/device/sync/DatasetsTable;->getTableName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "_id"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-wide v7, p0, Lcom/amazon/device/sync/DatasetsTable;->mNamespaceId:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object p1, v5, v0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->querySingleResultOrThrow(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 66
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Lcom/amazon/whispersync/dcp/framework/EmptyCursorException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method protected abstract getTableName()Ljava/lang/String;
.end method
