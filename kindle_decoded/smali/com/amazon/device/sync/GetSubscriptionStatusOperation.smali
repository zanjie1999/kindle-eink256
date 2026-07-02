.class Lcom/amazon/device/sync/GetSubscriptionStatusOperation;
.super Ljava/lang/Object;
.source "GetSubscriptionStatusOperation.java"


# instance fields
.field private final mAccountId:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mDatasetName:Ljava/lang/String;

.field private final mNamespace:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/amazon/device/sync/GetSubscriptionStatusOperation;->mContext:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/amazon/device/sync/GetSubscriptionStatusOperation;->mAccountId:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/amazon/device/sync/GetSubscriptionStatusOperation;->mNamespace:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcom/amazon/device/sync/GetSubscriptionStatusOperation;->mDatasetName:Ljava/lang/String;

    return-void
.end method

.method private executeWithDB(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)Z
    .locals 4

    .line 42
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->beginTransaction()V

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/amazon/device/sync/GetSubscriptionStatusOperation;->mNamespace:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazon/device/sync/NamespacesTable;->getIdOrCreate(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;)J

    move-result-wide v0

    .line 46
    new-instance v2, Lcom/amazon/device/sync/PendingDatasetsTable;

    iget-object v3, p0, Lcom/amazon/device/sync/GetSubscriptionStatusOperation;->mNamespace:Ljava/lang/String;

    invoke-direct {v2, p1, v3, v0, v1}, Lcom/amazon/device/sync/PendingDatasetsTable;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;J)V

    .line 47
    iget-object v0, p0, Lcom/amazon/device/sync/GetSubscriptionStatusOperation;->mDatasetName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/amazon/device/sync/DatasetsTable;->contains(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->endTransaction()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->endTransaction()V

    throw v0
.end method


# virtual methods
.method public execute()Z
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/amazon/device/sync/GetSubscriptionStatusOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/device/sync/GetSubscriptionStatusOperation;->mAccountId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/device/sync/SyncDb;->open(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    move-result-object v0

    .line 32
    :try_start_0
    invoke-direct {p0, v0}, Lcom/amazon/device/sync/GetSubscriptionStatusOperation;->executeWithDB(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->close()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->close()V

    throw v1
.end method
