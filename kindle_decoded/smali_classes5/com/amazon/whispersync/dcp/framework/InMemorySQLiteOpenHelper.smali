.class public abstract Lcom/amazon/whispersync/dcp/framework/InMemorySQLiteOpenHelper;
.super Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteOpenHelper;
.source "InMemorySQLiteOpenHelper.java"


# instance fields
.field private mDB:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

.field private final mOpen:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 12
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/InMemorySQLiteOpenHelper;->mOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private init()V
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/InMemorySQLiteOpenHelper;->mOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteOpenHelper;->getWritableDatabase()Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/InMemorySQLiteOpenHelper;->mDB:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized getReadableDatabase()Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 30
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/InMemorySQLiteOpenHelper;->init()V

    .line 32
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteOpenHelper;->getReadableDatabase()Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getWritableDatabase()Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;
    .locals 1

    monitor-enter p0

    .line 39
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/InMemorySQLiteOpenHelper;->init()V

    .line 40
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteOpenHelper;->getWritableDatabase()Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onUpgrade(Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;II)V
    .locals 0

    .line 22
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Should never upgrade"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final relinquish()V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/InMemorySQLiteOpenHelper;->mOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/InMemorySQLiteOpenHelper;->mDB:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->close()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/InMemorySQLiteOpenHelper;->mDB:Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    :cond_0
    return-void
.end method
