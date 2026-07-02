.class public abstract Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteOpenHelper;
.super Lcom/amazon/whispersync/dcp/framework/SQLiteOpenHelperWrapper;
.source "RefCountedSQLiteOpenHelper.java"


# instance fields
.field private final mWritableRefCounter:Lcom/amazon/whispersync/dcp/framework/ReferenceCounter;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/whispersync/dcp/framework/SQLiteOpenHelperWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 9
    new-instance p1, Lcom/amazon/whispersync/dcp/framework/ReferenceCounter;

    invoke-direct {p1}, Lcom/amazon/whispersync/dcp/framework/ReferenceCounter;-><init>()V

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteOpenHelper;->mWritableRefCounter:Lcom/amazon/whispersync/dcp/framework/ReferenceCounter;

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    .line 22
    :try_start_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use the close methods on the database objects"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getReadableDatabase()Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 30
    :try_start_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use getWritableDatabase instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getRefCount()I
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteOpenHelper;->mWritableRefCounter:Lcom/amazon/whispersync/dcp/framework/ReferenceCounter;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/ReferenceCounter;->get()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getWritableDatabase()Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;
    .locals 4

    monitor-enter p0

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteOpenHelper;->mWritableRefCounter:Lcom/amazon/whispersync/dcp/framework/ReferenceCounter;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 38
    :try_start_1
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/SQLiteOpenHelperWrapper;->getWritableDatabase()Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 41
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 44
    :cond_0
    :try_start_2
    new-instance v2, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase;

    invoke-virtual {v1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->getInner()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v3, p0, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteOpenHelper;->mWritableRefCounter:Lcom/amazon/whispersync/dcp/framework/ReferenceCounter;

    invoke-direct {v2, v1, v3}, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/amazon/whispersync/dcp/framework/ReferenceCounter;)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v1

    .line 45
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
