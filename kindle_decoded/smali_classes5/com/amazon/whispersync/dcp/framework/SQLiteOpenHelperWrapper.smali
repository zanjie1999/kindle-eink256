.class public abstract Lcom/amazon/whispersync/dcp/framework/SQLiteOpenHelperWrapper;
.super Ljava/lang/Object;
.source "SQLiteOpenHelperWrapper.java"


# instance fields
.field private mInner:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 7

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v6, Lcom/amazon/whispersync/dcp/framework/SQLiteOpenHelperWrapper$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/whispersync/dcp/framework/SQLiteOpenHelperWrapper$1;-><init>(Lcom/amazon/whispersync/dcp/framework/SQLiteOpenHelperWrapper;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v6, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteOpenHelperWrapper;->mInner:Landroid/database/sqlite/SQLiteOpenHelper;

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteOpenHelperWrapper;->mInner:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    return-void

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

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteOpenHelperWrapper;->mInner:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 71
    monitor-exit p0

    return-object v0

    .line 74
    :cond_0
    :try_start_1
    new-instance v1, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    invoke-direct {v1, v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWritableDatabase()Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;
    .locals 2

    monitor-enter p0

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteOpenHelperWrapper;->mInner:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 82
    monitor-exit p0

    return-object v0

    .line 85
    :cond_0
    :try_start_1
    new-instance v1, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    invoke-direct {v1, v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract onCreate(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V
.end method

.method public onOpen(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;)V
    .locals 0

    return-void
.end method

.method public abstract onUpgrade(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;II)V
.end method
