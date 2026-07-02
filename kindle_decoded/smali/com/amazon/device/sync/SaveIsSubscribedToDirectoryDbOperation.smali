.class final Lcom/amazon/device/sync/SaveIsSubscribedToDirectoryDbOperation;
.super Ljava/lang/Object;
.source "SaveIsSubscribedToDirectoryDbOperation.java"


# instance fields
.field private final mAccountId:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/amazon/device/sync/SaveIsSubscribedToDirectoryDbOperation;->mContext:Landroid/content/Context;

    .line 18
    iput-object p2, p0, Lcom/amazon/device/sync/SaveIsSubscribedToDirectoryDbOperation;->mAccountId:Ljava/lang/String;

    return-void
.end method

.method private executeWithDB(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V
    .locals 2

    .line 37
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->beginTransaction()V

    .line 40
    :try_start_0
    new-instance v0, Lcom/amazon/device/sync/DirectoryTable;

    invoke-direct {v0, p1}, Lcom/amazon/device/sync/DirectoryTable;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V

    const-string v1, "SUBSCRIBED"

    .line 41
    invoke-virtual {v0, v1}, Lcom/amazon/device/sync/DirectoryTable;->updateIsSubscribedToDirectory(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->endTransaction()V

    throw v0
.end method


# virtual methods
.method public execute()V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/amazon/device/sync/SaveIsSubscribedToDirectoryDbOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/device/sync/SaveIsSubscribedToDirectoryDbOperation;->mAccountId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/device/sync/SyncDb;->open(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    move-result-object v0

    .line 27
    :try_start_0
    invoke-direct {p0, v0}, Lcom/amazon/device/sync/SaveIsSubscribedToDirectoryDbOperation;->executeWithDB(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->close()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->close()V

    throw v1
.end method
