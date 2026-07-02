.class final Lcom/amazon/device/sync/DirectoryTable;
.super Ljava/lang/Object;
.source "DirectoryTable.java"


# static fields
.field static final DIRECTORY_PK_ID:I = 0x1


# instance fields
.field private final mDb:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/amazon/device/sync/DirectoryTable;->mDb:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    return-void
.end method


# virtual methods
.method public getDirectorySubscriptionUri()Ljava/lang/String;
    .locals 5

    .line 46
    iget-object v0, p0, Lcom/amazon/device/sync/DirectoryTable;->mDb:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "_id"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%s = ?"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    const-string v1, "directory"

    const-string v4, "directory_subscription_uri"

    invoke-static {v0, v1, v4, v2, v3}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->querySingleResult(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsSubscribedToDirectory()Ljava/lang/String;
    .locals 5

    .line 36
    iget-object v0, p0, Lcom/amazon/device/sync/DirectoryTable;->mDb:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "_id"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%s = ?"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    const-string v1, "directory"

    const-string v4, "is_subscribed_to_directory"

    invoke-static {v0, v1, v4, v2, v3}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->querySingleResult(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateUri()Ljava/lang/String;
    .locals 5

    .line 26
    iget-object v0, p0, Lcom/amazon/device/sync/DirectoryTable;->mDb:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "_id"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%s = ?"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    const-string v1, "directory"

    const-string v4, "datasets_update_uri"

    invoke-static {v0, v1, v4, v2, v3}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->querySingleResult(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateDatasetsUpdateUri(Ljava/lang/String;)V
    .locals 5

    .line 55
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "datasets_update_uri"

    .line 56
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 57
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 58
    iget-object v1, p0, Lcom/amazon/device/sync/DirectoryTable;->mDb:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    new-array v3, p1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const-string v2, "%s = ?"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, p1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    const-string p1, "directory"

    invoke-static {v1, p1, v0, v2, v3}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->upsert(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J

    return-void
.end method

.method public updateDirectoryUri(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 79
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "datasets_update_uri"

    .line 80
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "directory_subscription_uri"

    .line 81
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 82
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 83
    iget-object p2, p0, Lcom/amazon/device/sync/DirectoryTable;->mDb:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    new-array v2, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "%s = ?"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, p1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "directory"

    invoke-static {p2, p1, v0, v1, v2}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->upsert(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J

    return-void
.end method

.method public updateIsSubscribedToDirectory(Ljava/lang/String;)V
    .locals 5

    .line 67
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "is_subscribed_to_directory"

    .line 68
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 69
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 70
    iget-object v1, p0, Lcom/amazon/device/sync/DirectoryTable;->mDb:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    new-array v3, p1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const-string v2, "%s = ?"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, p1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    const-string p1, "directory"

    invoke-static {v1, p1, v0, v2, v3}, Lcom/amazon/whispersync/dcp/framework/DBHelpers;->upsert(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J

    return-void
.end method
