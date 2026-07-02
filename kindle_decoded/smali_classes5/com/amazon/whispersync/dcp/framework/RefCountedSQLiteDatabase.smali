.class public Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase;
.super Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;
.source "RefCountedSQLiteDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase$RefCountedCursor;,
        Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase$RefCountedSQLiteStatement;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.whispersync.dcp.framework.RefCountedSQLiteDatabase"


# instance fields
.field private final mOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mRefCounter:Lcom/amazon/whispersync/dcp/framework/ReferenceCounter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/amazon/whispersync/dcp/framework/ReferenceCounter;)V
    .locals 1

    .line 129
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 125
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase;->mOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p2, :cond_0

    .line 136
    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase;->mRefCounter:Lcom/amazon/whispersync/dcp/framework/ReferenceCounter;

    .line 137
    invoke-virtual {p2}, Lcom/amazon/whispersync/dcp/framework/ReferenceCounter;->increment()I

    return-void

    .line 133
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "counter can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase;)Lcom/amazon/whispersync/dcp/framework/ReferenceCounter;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase;->mRefCounter:Lcom/amazon/whispersync/dcp/framework/ReferenceCounter;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 14
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase;->decRef()V

    return-void
.end method

.method private decRef()V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase;->mRefCounter:Lcom/amazon/whispersync/dcp/framework/ReferenceCounter;

    monitor-enter v0

    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase;->mRefCounter:Lcom/amazon/whispersync/dcp/framework/ReferenceCounter;

    invoke-virtual {v1}, Lcom/amazon/whispersync/dcp/framework/ReferenceCounter;->decrement()I

    move-result v1

    if-nez v1, :cond_0

    .line 171
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->close()V

    .line 173
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private verifyDatabaseIsOpen()V
    .locals 2

    .line 306
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 308
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "database not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase;->mOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 162
    :cond_0
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase;->decRef()V

    return-void
.end method

.method public compileStatement(Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLiteStatementWrapper;
    .locals 1

    .line 185
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase;->verifyDatabaseIsOpen()V

    .line 187
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase$RefCountedSQLiteStatement;

    invoke-super {p0, p1}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->compileStatement(Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLiteStatementWrapper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase$RefCountedSQLiteStatement;-><init>(Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase;Lcom/amazon/whispersync/dcp/framework/SQLiteStatementWrapper;)V

    return-object v0
.end method

.method protected finalize()V
    .locals 4

    .line 145
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 146
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 150
    sget-object v1, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RefCountedSQLiteDatabase\'s finalizer threw: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public isOpen()Z
    .locals 1

    .line 179
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase;->mOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    .line 245
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase;->verifyDatabaseIsOpen()V

    .line 247
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase$RefCountedCursor;

    invoke-super/range {p0 .. p7}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    check-cast p1, Landroid/database/CrossProcessCursor;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase$RefCountedCursor;-><init>(Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase;Landroid/database/CrossProcessCursor;)V

    return-object v0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    .line 224
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase;->verifyDatabaseIsOpen()V

    .line 226
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase$RefCountedCursor;

    invoke-super/range {p0 .. p8}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    check-cast p1, Landroid/database/CrossProcessCursor;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase$RefCountedCursor;-><init>(Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase;Landroid/database/CrossProcessCursor;)V

    return-object v0
.end method

.method public query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    .line 201
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase;->verifyDatabaseIsOpen()V

    .line 203
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase$RefCountedCursor;

    invoke-super/range {p0 .. p9}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    check-cast p1, Landroid/database/CrossProcessCursor;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase$RefCountedCursor;-><init>(Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase;Landroid/database/CrossProcessCursor;)V

    return-object v0
.end method

.method public queryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    .line 268
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase;->verifyDatabaseIsOpen()V

    .line 270
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase$RefCountedCursor;

    invoke-super/range {p0 .. p10}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->queryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    check-cast p1, Landroid/database/CrossProcessCursor;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase$RefCountedCursor;-><init>(Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase;Landroid/database/CrossProcessCursor;)V

    return-object v0
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    .line 285
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase;->verifyDatabaseIsOpen()V

    .line 287
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase$RefCountedCursor;

    invoke-super {p0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    check-cast p1, Landroid/database/CrossProcessCursor;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase$RefCountedCursor;-><init>(Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase;Landroid/database/CrossProcessCursor;)V

    return-object v0
.end method

.method public rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    .line 296
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase;->verifyDatabaseIsOpen()V

    .line 298
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase$RefCountedCursor;

    invoke-super {p0, p1, p2, p3, p4}, Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    check-cast p1, Landroid/database/CrossProcessCursor;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase$RefCountedCursor;-><init>(Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase;Landroid/database/CrossProcessCursor;)V

    return-object v0
.end method
