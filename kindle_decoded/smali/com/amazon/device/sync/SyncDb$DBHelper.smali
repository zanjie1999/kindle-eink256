.class final Lcom/amazon/device/sync/SyncDb$DBHelper;
.super Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteOpenHelper;
.source "SyncDb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/sync/SyncDb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DBHelper"
.end annotation


# static fields
.field private static sDbHelpers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/device/sync/SyncDb$DBHelper;",
            ">;"
        }
    .end annotation
.end field

.field private static sFirstRegisteredAccount:Ljava/lang/String;


# instance fields
.field private final mDbFile:Ljava/io/File;

.field private mFirstOpen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/device/sync/SyncDb$DBHelper;->sDbHelpers:Ljava/util/Map;

    const/4 v0, 0x0

    .line 53
    sput-object v0, Lcom/amazon/device/sync/SyncDb$DBHelper;->sFirstRegisteredAccount:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "SyncStorage"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v4, 0x1

    aput-object p2, v1, v4

    const-string v5, "%s-%s.db"

    .line 65
    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    const/16 v7, 0x8

    invoke-direct {p0, p1, v1, v6, v7}, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v3

    aput-object p2, v0, v4

    .line 67
    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/sync/SyncDb$DBHelper;->mDbFile:Ljava/io/File;

    .line 68
    iput-boolean v4, p0, Lcom/amazon/device/sync/SyncDb$DBHelper;->mFirstOpen:Z

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-static {p0}, Lcom/amazon/device/sync/SyncDb$DBHelper;->registerAccount(Ljava/lang/String;)V

    return-void
.end method

.method private createTables(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V
    .locals 4

    const/4 v0, 0x0

    .line 212
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 213
    invoke-direct {p0}, Lcom/amazon/device/sync/SyncDb$DBHelper;->defineDirectoryTable()Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-direct {p0}, Lcom/amazon/device/sync/SyncDb$DBHelper;->defineNamespacesTable()Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    invoke-direct {p0}, Lcom/amazon/device/sync/SyncDb$DBHelper;->defineDatasetsTables()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 216
    invoke-direct {p0}, Lcom/amazon/device/sync/SyncDb$DBHelper;->defineRecordsTables()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 218
    invoke-static {p1, v1}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->createTablesInDB(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/util/List;)V

    const/4 v0, 0x1

    .line 220
    invoke-static {}, Lcom/amazon/device/sync/SyncDb;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Created tables for version 8"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    if-nez v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/amazon/device/sync/SyncDb$DBHelper;->mDbFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 227
    invoke-static {}, Lcom/amazon/device/sync/SyncDb;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed creating tables in SyncDB. Attempt to delete SyncDB "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "succeeded"

    goto :goto_0

    :cond_0
    const-string v0, "failed"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_1
    throw p1
.end method

.method private defineConflictRecordsTable()Lcom/amazon/whispersync/dcp/framework/SQLTable;
    .locals 6

    .line 396
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/SQLTable;

    sget-object v1, Lcom/amazon/device/sync/SyncContract$Records;->CONFLICT_TABLE_NAME:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dcp/framework/SQLTable;-><init>(Ljava/lang/String;)V

    const-string v1, "_id"

    const-string v2, "INTEGER PRIMARY KEY"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->addColumn(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object v0

    sget-object v2, Lcom/amazon/device/sync/SyncContract$Datasets;->SNAPSHOT_TABLE_NAME:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "INTEGER NOT NULL"

    const-string/jumbo v5, "snapshot_dataset_id"

    invoke-virtual {v0, v5, v4, v2, v3}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->addForeignKeyWithCascadingDelete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object v0

    sget-object v2, Lcom/amazon/device/sync/SyncContract$Records;->SNAPSHOT_TABLE_NAME:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "snapshot_record_id"

    invoke-virtual {v0, v3, v4, v2, v1}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->addForeignKeyWithCascadingDelete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object v0

    const-string/jumbo v1, "record_key"

    const-string v2, "TEXT NOT NULL"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->addColumn(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object v0

    const-string/jumbo v1, "record_conflicted_client_value"

    const-string v2, "TEXT NULL"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->addColumn(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "is_deleted"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->addBooleanColumn(Ljava/lang/String;Z)Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v1

    const-string v1, "UNIQUE (%s) ON CONFLICT FAIL"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->addConstraint(Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object v0

    return-object v0
.end method

.method private defineDatasetsTables()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/dcp/framework/SQLTable;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/whispersync/dcp/framework/SQLTable;

    .line 317
    invoke-direct {p0}, Lcom/amazon/device/sync/SyncDb$DBHelper;->defineSnapshotDatasetsTable()Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0}, Lcom/amazon/device/sync/SyncDb$DBHelper;->definePendingDatasetsTable()Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private defineDirectoryTable()Lcom/amazon/whispersync/dcp/framework/SQLTable;
    .locals 3

    .line 301
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/SQLTable;

    const-string v1, "directory"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dcp/framework/SQLTable;-><init>(Ljava/lang/String;)V

    const-string v1, "_id"

    const-string v2, "INTEGER PRIMARY KEY"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->addColumn(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object v0

    const-string v1, "TEXT NULL"

    const-string v2, "datasets_update_uri"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->addColumn(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object v0

    const-string v2, "is_subscribed_to_directory"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->addColumn(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object v0

    const-string v2, "directory_subscription_uri"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->addColumn(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object v0

    return-object v0
.end method

.method private defineNamespacesTable()Lcom/amazon/whispersync/dcp/framework/SQLTable;
    .locals 3

    .line 310
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/SQLTable;

    const-string/jumbo v1, "namespaces"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dcp/framework/SQLTable;-><init>(Ljava/lang/String;)V

    const-string v1, "_id"

    const-string v2, "INTEGER PRIMARY KEY"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->addColumn(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object v0

    const-string/jumbo v1, "namespace"

    const-string v2, "TEXT NOT NULL"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->addColumn(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object v0

    return-object v0
.end method

.method private definePendingDatasetsTable()Lcom/amazon/whispersync/dcp/framework/SQLTable;
    .locals 9

    .line 338
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/SQLTable;

    sget-object v1, Lcom/amazon/device/sync/SyncContract$Datasets;->PENDING_TABLE_NAME:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dcp/framework/SQLTable;-><init>(Ljava/lang/String;)V

    const-string v1, "_id"

    const-string v2, "INTEGER PRIMARY KEY"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->addColumn(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object v0

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "namespace_id"

    const-string v3, "INTEGER NOT NULL"

    const-string/jumbo v4, "namespaces"

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->addForeignKeyWithCascadingDelete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object v0

    const-string v1, "dataset_name"

    const-string v3, "TEXT NOT NULL"

    invoke-virtual {v0, v1, v3}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->addColumn(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TEXT NOT NULL DEFAULT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;->NONE:Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;

    invoke-virtual {v4}, Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;->value()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;->CREATION:Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;

    invoke-virtual {v5}, Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;->value()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;->DELETION:Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;

    invoke-virtual {v5}, Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;->value()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    sget-object v5, Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;->NONE:Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;

    invoke-virtual {v5}, Lcom/amazon/device/sync/SyncContract$Datasets$PendingAction;->value()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x2

    aput-object v5, v4, v8

    const-string/jumbo v5, "pending_action"

    invoke-virtual {v0, v5, v3, v4}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->addEnumColumn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object v0

    const-string/jumbo v3, "operation_id"

    const-string v4, "INTEGER NOT NULL DEFAULT -1"

    invoke-virtual {v0, v3, v4}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->addColumn(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object v0

    const-string v3, "attempt_count"

    const-string v4, "INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {v0, v3, v4}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->addColumn(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object v0

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v1, v3, v6

    aput-object v2, v3, v7

    const-string v1, "UNIQUE (%s, %s) ON CONFLICT FAIL"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->addConstraint(Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object v0

    return-object v0
.end method

.method private definePendingRecordsTable()Lcom/amazon/whispersync/dcp/framework/SQLTable;
    .locals 7

    .line 377
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/SQLTable;

    sget-object v1, Lcom/amazon/device/sync/SyncContract$Records;->PENDING_TABLE_NAME:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dcp/framework/SQLTable;-><init>(Ljava/lang/String;)V

    const-string v1, "_id"

    const-string v2, "INTEGER PRIMARY KEY"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->addColumn(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object v0

    sget-object v2, Lcom/amazon/device/sync/SyncContract$Datasets;->PENDING_TABLE_NAME:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v3, "INTEGER NOT NULL"

    const-string/jumbo v4, "pending_dataset_id"

    invoke-virtual {v0, v4, v3, v2, v1}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->addForeignKeyWithCascadingDelete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object v0

    const-string/jumbo v1, "record_key"

    const-string v2, "TEXT NOT NULL"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->addColumn(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object v0

    const-string/jumbo v2, "record_value"

    const-string v5, "TEXT NULL"

    invoke-virtual {v0, v2, v5}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->addColumn(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object v0

    const-string/jumbo v2, "server_sync_count"

    invoke-virtual {v0, v2, v3}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->addColumn(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object v0

    const-string v2, "last_updated_utc_time"

    const-string v3, "DATE NOT NULL"

    invoke-virtual {v0, v2, v3}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->addColumn(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "is_deleted"

    invoke-virtual {v0, v3, v2}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->addBooleanColumn(Ljava/lang/String;Z)Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object v0

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "INTEGER NOT NULL DEFAULT %s"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "operation_id"

    invoke-virtual {v0, v6, v5}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->addColumn(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object v0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v2

    aput-object v4, v5, v3

    const-string v1, "UNIQUE (%s, %s) ON CONFLICT FAIL"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->addConstraint(Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object v0

    return-object v0
.end method

.method private defineRecordsTables()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/dcp/framework/SQLTable;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amazon/whispersync/dcp/framework/SQLTable;

    .line 354
    invoke-direct {p0}, Lcom/amazon/device/sync/SyncDb$DBHelper;->defineSnapshotRecordsTable()Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0}, Lcom/amazon/device/sync/SyncDb$DBHelper;->definePendingRecordsTable()Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-direct {p0}, Lcom/amazon/device/sync/SyncDb$DBHelper;->defineConflictRecordsTable()Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private defineSnapshotDatasetsTable()Lcom/amazon/whispersync/dcp/framework/SQLTable;
    .locals 6

    .line 323
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/SQLTable;

    sget-object v1, Lcom/amazon/device/sync/SyncContract$Datasets;->SNAPSHOT_TABLE_NAME:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dcp/framework/SQLTable;-><init>(Ljava/lang/String;)V

    const-string v1, "_id"

    const-string v2, "INTEGER PRIMARY KEY"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->addColumn(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object v0

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "namespace_id"

    const-string v3, "INTEGER NOT NULL"

    const-string/jumbo v4, "namespaces"

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->addForeignKeyWithCascadingDelete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object v0

    const-string v1, "dataset_name"

    const-string v3, "TEXT NOT NULL"

    invoke-virtual {v0, v1, v3}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->addColumn(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object v0

    const-string/jumbo v4, "self_uri"

    invoke-virtual {v0, v4, v3}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->addColumn(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object v0

    const-string/jumbo v4, "records_uri"

    invoke-virtual {v0, v4, v3}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->addColumn(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object v0

    const-string/jumbo v4, "subscription_uri"

    invoke-virtual {v0, v4, v3}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->addColumn(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object v0

    const/4 v3, 0x1

    const-string/jumbo v4, "needs_download"

    invoke-virtual {v0, v4, v3}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->addBooleanColumn(Ljava/lang/String;Z)Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object v0

    const-string v4, "is_subscribed_to_dataset"

    const-string v5, "TEXT NULL"

    invoke-virtual {v0, v4, v5}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->addColumn(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object v0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    aput-object v2, v4, v3

    const-string v1, "UNIQUE (%s, %s) ON CONFLICT FAIL"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->addConstraint(Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object v0

    return-object v0
.end method

.method private defineSnapshotRecordsTable()Lcom/amazon/whispersync/dcp/framework/SQLTable;
    .locals 6

    .line 361
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/SQLTable;

    sget-object v1, Lcom/amazon/device/sync/SyncContract$Records;->SNAPSHOT_TABLE_NAME:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dcp/framework/SQLTable;-><init>(Ljava/lang/String;)V

    const-string v1, "_id"

    const-string v2, "INTEGER PRIMARY KEY"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->addColumn(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object v0

    sget-object v2, Lcom/amazon/device/sync/SyncContract$Datasets;->SNAPSHOT_TABLE_NAME:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v3, "INTEGER NOT NULL"

    const-string/jumbo v4, "snapshot_dataset_id"

    invoke-virtual {v0, v4, v3, v2, v1}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->addForeignKeyWithCascadingDelete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object v0

    const-string/jumbo v1, "record_key"

    const-string v2, "TEXT NOT NULL"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->addColumn(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object v0

    const-string/jumbo v2, "record_value"

    const-string v5, "TEXT NULL"

    invoke-virtual {v0, v2, v5}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->addColumn(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object v0

    const-string/jumbo v2, "server_sync_count"

    invoke-virtual {v0, v2, v3}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->addColumn(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "is_deleted"

    invoke-virtual {v0, v3, v2}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->addBooleanColumn(Ljava/lang/String;Z)Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    const/4 v1, 0x1

    aput-object v4, v3, v1

    const-string v1, "UNIQUE (%s, %s) ON CONFLICT FAIL"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/dcp/framework/SQLTable;->addConstraint(Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/device/sync/SyncDb$DBHelper;
    .locals 2

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 75
    invoke-static {}, Lcom/amazon/device/sync/SyncDb;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 77
    :try_start_0
    sget-object v1, Lcom/amazon/device/sync/SyncDb$DBHelper;->sDbHelpers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/device/sync/SyncDb$DBHelper;

    if-nez v1, :cond_1

    .line 82
    sget-object v1, Lcom/amazon/device/sync/SyncDb$DBHelper;->sFirstRegisteredAccount:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 86
    sget-object v1, Lcom/amazon/device/sync/SyncDb$DBHelper;->sFirstRegisteredAccount:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/amazon/device/sync/SyncDb$DBHelper;->renameLegacyDbFileIfExists(Landroid/content/Context;Ljava/lang/String;)V

    .line 88
    new-instance v1, Lcom/amazon/device/sync/SyncDb$DBHelper;

    invoke-direct {v1, p0, p1}, Lcom/amazon/device/sync/SyncDb$DBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 89
    sget-object p0, Lcom/amazon/device/sync/SyncDb$DBHelper;->sDbHelpers:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 84
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "firstRegisteredAccount cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 91
    :cond_1
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 92
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static registerAccount(Ljava/lang/String;)V
    .locals 1

    .line 137
    sget-object v0, Lcom/amazon/device/sync/SyncDb$DBHelper;->sFirstRegisteredAccount:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 140
    sput-object p0, Lcom/amazon/device/sync/SyncDb$DBHelper;->sFirstRegisteredAccount:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static declared-synchronized remove(Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/amazon/device/sync/SyncDb$DBHelper;

    monitor-enter v0

    .line 421
    :try_start_0
    sget-object v1, Lcom/amazon/device/sync/SyncDb$DBHelper;->sDbHelpers:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static renameLegacyDbFileIfExists(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    const-string v0, "SyncStorage.db"

    .line 97
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 98
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-journal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "SyncStorage"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const-string p1, "%s-%s.db"

    .line 99
    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 101
    new-instance p1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v5

    const-string p0, "Both %s and %s db files exist"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 109
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 111
    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    .line 112
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v3, :cond_2

    .line 114
    invoke-virtual {v1, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    .line 118
    invoke-static {}, Lcom/amazon/device/sync/SyncDb;->access$100()Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v5

    const-string p0, "Renamed legacy db file %s to %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 123
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v5

    const-string p0, "Failed to rename %s to %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    return-void
.end method

.method public static declared-synchronized reset()V
    .locals 2

    const-class v0, Lcom/amazon/device/sync/SyncDb$DBHelper;

    monitor-enter v0

    .line 416
    :try_start_0
    sget-object v1, Lcom/amazon/device/sync/SyncDb$DBHelper;->sDbHelpers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private upgradeDbToV2(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "accounts"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "is_subscribed_to_directory"

    aput-object v2, v0, v1

    const-string v1, "ALTER TABLE %s ADD COLUMN %s TEXT NULL;"

    .line 237
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->execSQL(Ljava/lang/String;)V

    .line 240
    invoke-static {}, Lcom/amazon/device/sync/SyncDb;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Upgraded tables to version 2"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private upgradeDbToV3(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 245
    sget-object v1, Lcom/amazon/device/sync/SyncContract$Records;->SNAPSHOT_TABLE_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "is_deleted"

    aput-object v2, v0, v1

    const-string v1, "ALTER TABLE %s ADD COLUMN %s INTEGER DEFAULT 0;"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->execSQL(Ljava/lang/String;)V

    .line 248
    invoke-static {}, Lcom/amazon/device/sync/SyncDb;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Upgraded tables to version 3"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private upgradeDbToV4(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "accounts"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v3, "directory"

    aput-object v3, v0, v1

    const-string v1, "ALTER TABLE %s RENAME TO %s;"

    .line 254
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->execSQL(Ljava/lang/String;)V

    const-string v0, "DELETE FROM directory WHERE _id > (select MIN(_id) FROM directory);"

    .line 256
    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->execSQL(Ljava/lang/String;)V

    const-string v0, "UPDATE directory SET _id = 1;"

    .line 259
    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->execSQL(Ljava/lang/String;)V

    .line 262
    invoke-direct {p0}, Lcom/amazon/device/sync/SyncDb$DBHelper;->defineNamespacesTable()Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->upgradeTable(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Lcom/amazon/whispersync/dcp/framework/SQLTable;[Ljava/lang/String;)V

    .line 263
    invoke-static {}, Lcom/amazon/device/sync/SyncDb;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Upgraded tables to version 4"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private upgradeDbToV5(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 268
    sget-object v1, Lcom/amazon/device/sync/SyncContract$Datasets;->SNAPSHOT_TABLE_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "needs_download"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "ALTER TABLE %s ADD COLUMN %s INTEGER NOT NULL DEFAULT 1 CHECK (%s BETWEEN 0 AND 1)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->execSQL(Ljava/lang/String;)V

    .line 273
    invoke-static {}, Lcom/amazon/device/sync/SyncDb;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Upgraded tables to version 5"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private upgradeDbToV6(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V
    .locals 2

    .line 278
    invoke-direct {p0}, Lcom/amazon/device/sync/SyncDb$DBHelper;->defineSnapshotDatasetsTable()Lcom/amazon/whispersync/dcp/framework/SQLTable;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->upgradeTable(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Lcom/amazon/whispersync/dcp/framework/SQLTable;[Ljava/lang/String;)V

    .line 280
    invoke-static {}, Lcom/amazon/device/sync/SyncDb;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Upgraded tables to version 6"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private upgradeDbToV7(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "directory"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "directory_subscription_uri"

    aput-object v2, v0, v1

    const-string v1, "ALTER TABLE %s ADD COLUMN %s TEXT NULL;"

    .line 285
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->execSQL(Ljava/lang/String;)V

    .line 288
    invoke-static {}, Lcom/amazon/device/sync/SyncDb;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Upgraded tables to version 7"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private upgradeDbToV8(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 293
    sget-object v1, Lcom/amazon/device/sync/SyncContract$Datasets;->SNAPSHOT_TABLE_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "is_subscribed_to_dataset"

    aput-object v2, v0, v1

    const-string v1, "ALTER TABLE %s ADD COLUMN %s TEXT NULL;"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->execSQL(Ljava/lang/String;)V

    .line 296
    invoke-static {}, Lcom/amazon/device/sync/SyncDb;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Upgraded tables to version 7"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getDbFile()Ljava/io/File;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/amazon/device/sync/SyncDb$DBHelper;->mDbFile:Ljava/io/File;

    return-object v0
.end method

.method public onCreate(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V
    .locals 4

    .line 147
    invoke-static {}, Lcom/amazon/device/sync/SyncDb;->access$100()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Creating Sync DB version %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-direct {p0, p1}, Lcom/amazon/device/sync/SyncDb$DBHelper;->createTables(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V

    return-void
.end method

.method public onOpen(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V
    .locals 1

    .line 197
    invoke-super {p0, p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteOpenHelperWrapper;->onOpen(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V

    const-string v0, "PRAGMA foreign_keys=ON;"

    .line 198
    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->execSQL(Ljava/lang/String;)V

    .line 199
    iget-boolean v0, p0, Lcom/amazon/device/sync/SyncDb$DBHelper;->mFirstOpen:Z

    if-eqz v0, :cond_0

    .line 201
    invoke-static {p1}, Lcom/amazon/device/sync/PendingDatasetsTable;->markAllDatasetsNotInProgress(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)I

    .line 202
    invoke-static {p1}, Lcom/amazon/device/sync/PendingRecordsTable;->markAllRecordsAsNotInProgress(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V

    const/4 p1, 0x0

    .line 203
    iput-boolean p1, p0, Lcom/amazon/device/sync/SyncDb$DBHelper;->mFirstOpen:Z

    :cond_0
    return-void
.end method

.method public onUpgrade(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;II)V
    .locals 5

    .line 154
    invoke-static {}, Lcom/amazon/device/sync/SyncDb;->access$100()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const-string p3, "Upgrading Sync DB version from %d => %d."

    invoke-static {p3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p2, v3, :cond_0

    .line 160
    invoke-direct {p0, p1}, Lcom/amazon/device/sync/SyncDb$DBHelper;->upgradeDbToV2(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V

    add-int/lit8 p2, p2, 0x1

    :cond_0
    if-ne p2, v1, :cond_1

    .line 165
    invoke-direct {p0, p1}, Lcom/amazon/device/sync/SyncDb$DBHelper;->upgradeDbToV3(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V

    add-int/lit8 p2, p2, 0x1

    :cond_1
    const/4 p3, 0x3

    if-ne p2, p3, :cond_2

    .line 170
    invoke-direct {p0, p1}, Lcom/amazon/device/sync/SyncDb$DBHelper;->upgradeDbToV4(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V

    add-int/lit8 p2, p2, 0x1

    :cond_2
    const/4 p3, 0x4

    if-ne p2, p3, :cond_3

    .line 175
    invoke-direct {p0, p1}, Lcom/amazon/device/sync/SyncDb$DBHelper;->upgradeDbToV5(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V

    add-int/lit8 p2, p2, 0x1

    :cond_3
    const/4 p3, 0x5

    if-ne p2, p3, :cond_4

    .line 180
    invoke-direct {p0, p1}, Lcom/amazon/device/sync/SyncDb$DBHelper;->upgradeDbToV6(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V

    add-int/lit8 p2, p2, 0x1

    :cond_4
    const/4 p3, 0x6

    if-ne p2, p3, :cond_5

    .line 185
    invoke-direct {p0, p1}, Lcom/amazon/device/sync/SyncDb$DBHelper;->upgradeDbToV7(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V

    add-int/lit8 p2, p2, 0x1

    :cond_5
    const/4 p3, 0x7

    if-ne p2, p3, :cond_6

    .line 190
    invoke-direct {p0, p1}, Lcom/amazon/device/sync/SyncDb$DBHelper;->upgradeDbToV8(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V

    :cond_6
    return-void
.end method
