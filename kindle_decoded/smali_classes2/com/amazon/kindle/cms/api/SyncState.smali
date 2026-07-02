.class final Lcom/amazon/kindle/cms/api/SyncState;
.super Ljava/lang/Object;
.source "SyncState.java"


# static fields
.field private static final QUIESCENT_PERIOD:J = 0x1388L

.field private static final TAG:Ljava/lang/String; = "CmsApi.SyncState"


# instance fields
.field private final m_accessLock:Ljava/util/concurrent/locks/Lock;

.field private final m_canChangeCondition:Ljava/util/concurrent/locks/Condition;

.field private final m_canQueryCondition:Ljava/util/concurrent/locks/Condition;

.field private m_changeEndedTime:J

.field private final m_context:Landroid/content/Context;

.field private m_current:Ljava/lang/String;

.field private final m_db:Landroid/database/sqlite/SQLiteDatabase;

.field private final m_digest:Lcom/amazon/kindle/cms/ipc/Digest;

.field private final m_fullSyncProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private m_lockCount:I

.field private final m_sourceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p2, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_sourceId:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_db:Landroid/database/sqlite/SQLiteDatabase;

    .line 39
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_fullSyncProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    invoke-direct {p0}, Lcom/amazon/kindle/cms/api/SyncState;->readDigest()Lcom/amazon/kindle/cms/ipc/Digest;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_digest:Lcom/amazon/kindle/cms/ipc/Digest;

    .line 41
    invoke-virtual {p1}, Lcom/amazon/kindle/cms/ipc/Digest;->currentValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_current:Ljava/lang/String;

    .line 42
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_accessLock:Ljava/util/concurrent/locks/Lock;

    .line 43
    iput-object p3, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_context:Landroid/content/Context;

    .line 44
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_canChangeCondition:Ljava/util/concurrent/locks/Condition;

    .line 45
    iget-object p1, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_accessLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_canQueryCondition:Ljava/util/concurrent/locks/Condition;

    return-void
.end method

.method private readDigest()Lcom/amazon/kindle/cms/ipc/Digest;
    .locals 5

    const-string v0, "CmsApi.SyncState"

    const/4 v1, 0x0

    .line 236
    :try_start_0
    iget-object v2, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT hash_state FROM sync_hashes WHERE source_id = ?"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    const/4 v3, 0x1

    .line 237
    iget-object v4, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_sourceId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 238
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    const-string v2, "Unable to read sync hash due to corrupted db operation"

    .line 242
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v2, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_context:Landroid/content/Context;

    invoke-static {v2}, Lcom/amazon/kindle/cms/api/CMSApi;->instance(Landroid/content/Context;)Lcom/amazon/kindle/cms/api/CMSApi;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/cms/api/CMSApi;->onDatabaseCorruption(Landroid/database/sqlite/SQLiteDatabase;)V

    :catch_1
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_0

    .line 253
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v3, Landroid/util/Base64InputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v2, 0x0

    invoke-direct {v3, v4, v2}, Landroid/util/Base64InputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v1, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 258
    :cond_0
    :try_start_1
    new-instance v2, Lcom/amazon/kindle/cms/ipc/Digest;

    invoke-direct {v2, v1}, Lcom/amazon/kindle/cms/ipc/Digest;-><init>(Ljava/io/DataInputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v2

    :catch_2
    move-exception v1

    const-string v2, "Unable to read sync hash state"

    .line 262
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 263
    new-instance v0, Lcom/amazon/kindle/cms/ipc/Digest;

    invoke-direct {v0}, Lcom/amazon/kindle/cms/ipc/Digest;-><init>()V

    return-object v0
.end method


# virtual methods
.method addEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/cms/ipc/ItemPayload;)V
    .locals 1

    const-string v0, ""

    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_digest:Lcom/amazon/kindle/cms/ipc/Digest;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/cms/ipc/Digest;->add(Ljava/lang/String;)V

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_digest:Lcom/amazon/kindle/cms/ipc/Digest;

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/cms/ipc/Digest;->add(Ljava/lang/String;)V

    .line 74
    iget-object p1, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_digest:Lcom/amazon/kindle/cms/ipc/Digest;

    invoke-virtual {p1, p3}, Lcom/amazon/kindle/cms/ipc/Digest;->add(Ljava/lang/String;)V

    if-eqz p4, :cond_1

    .line 75
    instance-of p1, p4, Lcom/amazon/kindle/cms/ipc/Digestible;

    if-eqz p1, :cond_1

    .line 76
    check-cast p4, Lcom/amazon/kindle/cms/ipc/Digestible;

    iget-object p1, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_digest:Lcom/amazon/kindle/cms/ipc/Digest;

    invoke-interface {p4, p1}, Lcom/amazon/kindle/cms/ipc/Digestible;->digest(Lcom/amazon/kindle/cms/ipc/Digest;)V

    :cond_1
    return-void
.end method

.method currentValue()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_current:Ljava/lang/String;

    return-object v0
.end method

.method getSyncHash()Ljava/lang/String;
    .locals 4

    .line 116
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 117
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v2, Landroid/util/Base64OutputStream;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v3}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 119
    iget-object v2, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_digest:Lcom/amazon/kindle/cms/ipc/Digest;

    invoke-virtual {v2, v1}, Lcom/amazon/kindle/cms/ipc/Digest;->persist(Ljava/io/DataOutputStream;)V

    .line 120
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 121
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 123
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CmsApi.SyncState"

    const-string v2, "Unable to persist sync hash state"

    .line 127
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v1, ""

    :goto_0
    return-object v1
.end method

.method isFullSyncInProgress()Z
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_fullSyncProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method lockForChange()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_accessLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 139
    :catch_0
    :goto_0
    :try_start_0
    iget v0, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_lockCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v0, :cond_0

    .line 143
    :try_start_1
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_canChangeCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 150
    :cond_0
    :try_start_2
    iget v0, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_lockCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_lockCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 154
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_accessLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_accessLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method lockForQuery()V
    .locals 7

    .line 178
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_accessLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 181
    :catch_0
    :goto_0
    :try_start_0
    iget v0, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_lockCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    .line 185
    :try_start_1
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_canQueryCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 192
    :cond_0
    :try_start_2
    iget v0, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_lockCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_lockCount:I

    if-nez v0, :cond_1

    .line 196
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 197
    :goto_1
    iget-wide v2, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_changeEndedTime:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1388

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    .line 201
    :try_start_3
    iget-wide v2, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_changeEndedTime:J

    add-long/2addr v2, v4

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 206
    :catch_1
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 213
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_accessLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_accessLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method reset()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_digest:Lcom/amazon/kindle/cms/ipc/Digest;

    invoke-virtual {v0}, Lcom/amazon/kindle/cms/ipc/Digest;->reset()V

    .line 56
    invoke-virtual {p0}, Lcom/amazon/kindle/cms/api/SyncState;->save()Ljava/lang/String;

    return-void
.end method

.method save()Ljava/lang/String;
    .locals 5

    .line 81
    invoke-virtual {p0}, Lcom/amazon/kindle/cms/api/SyncState;->getSyncHash()Ljava/lang/String;

    move-result-object v0

    .line 83
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 84
    iget-object v2, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_sourceId:Ljava/lang/String;

    const-string v3, "source_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "hash_state"

    .line 85
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :try_start_0
    iget-object v2, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :try_start_1
    iget-object v2, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "sync_hashes"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 92
    iget-object v1, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    :try_start_2
    iget-object v1, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_0
    const-string v2, "CmsApi.SyncState"

    const-string v3, "Unable to update sync hash. Corrupted db detected"

    .line 101
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    iget-object v1, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_context:Landroid/content/Context;

    invoke-static {v1}, Lcom/amazon/kindle/cms/api/CMSApi;->instance(Landroid/content/Context;)Lcom/amazon/kindle/cms/api/CMSApi;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/cms/api/CMSApi;->onDatabaseCorruption(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 105
    :goto_1
    iget-object v1, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_digest:Lcom/amazon/kindle/cms/ipc/Digest;

    invoke-virtual {v1}, Lcom/amazon/kindle/cms/ipc/Digest;->currentValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_current:Ljava/lang/String;

    return-object v0
.end method

.method setFullSyncInProgress(Z)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_fullSyncProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method unlockForChange()V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_accessLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 163
    :try_start_0
    iget v0, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_lockCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_lockCount:I

    if-nez v0, :cond_0

    .line 166
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_changeEndedTime:J

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_canQueryCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_accessLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_accessLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method unlockForQuery()V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_accessLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 221
    :try_start_0
    iget v0, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_lockCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_lockCount:I

    .line 222
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_canChangeCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_accessLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amazon/kindle/cms/api/SyncState;->m_accessLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
