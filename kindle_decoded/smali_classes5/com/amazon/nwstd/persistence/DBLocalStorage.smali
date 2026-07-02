.class public abstract Lcom/amazon/nwstd/persistence/DBLocalStorage;
.super Ljava/lang/Object;
.source "DBLocalStorage.java"

# interfaces
.implements Lcom/amazon/kcp/application/ILocalStorage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/nwstd/persistence/DBLocalStorage$LocalSQLiteOpenHelper;
    }
.end annotation


# static fields
.field private static final OPEN_DB_ATTEMPTS:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDBHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mIsDBInFailureMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/amazon/nwstd/persistence/DBLocalStorage;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/nwstd/persistence/DBLocalStorage;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Lcom/amazon/nwstd/persistence/DBLocalStorage$LocalSQLiteOpenHelper;

    invoke-direct {v0, p0, p1, p0}, Lcom/amazon/nwstd/persistence/DBLocalStorage$LocalSQLiteOpenHelper;-><init>(Lcom/amazon/nwstd/persistence/DBLocalStorage;Landroid/content/Context;Lcom/amazon/nwstd/persistence/DBLocalStorage;)V

    iput-object v0, p0, Lcom/amazon/nwstd/persistence/DBLocalStorage;->mDBHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 90
    iput-object p1, p0, Lcom/amazon/nwstd/persistence/DBLocalStorage;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 91
    iput-boolean p1, p0, Lcom/amazon/nwstd/persistence/DBLocalStorage;->mIsDBInFailureMode:Z

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lcom/amazon/nwstd/persistence/DBLocalStorage;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/amazon/nwstd/persistence/DBLocalStorage;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/amazon/nwstd/persistence/DBLocalStorage;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    .line 227
    iput-object v0, p0, Lcom/amazon/nwstd/persistence/DBLocalStorage;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    const/4 v0, 0x0

    .line 230
    iput-boolean v0, p0, Lcom/amazon/nwstd/persistence/DBLocalStorage;->mIsDBInFailureMode:Z

    .line 232
    iget-object v0, p0, Lcom/amazon/nwstd/persistence/DBLocalStorage;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/amazon/nwstd/persistence/DBLocalStorage;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 233
    sget-object v0, Lcom/amazon/nwstd/persistence/DBLocalStorage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Database \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/nwstd/persistence/DBLocalStorage;->getDatabaseName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' deleted successfully."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 235
    :cond_1
    sget-object v0, Lcom/amazon/nwstd/persistence/DBLocalStorage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Database \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/nwstd/persistence/DBLocalStorage;->getDatabaseName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' was not deleted."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 4

    monitor-enter p0

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/amazon/nwstd/persistence/DBLocalStorage;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 244
    sget-object v0, Lcom/amazon/nwstd/persistence/DBLocalStorage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Closing DB: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/nwstd/persistence/DBLocalStorage;->getDatabaseName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/amazon/nwstd/persistence/DBLocalStorage;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    .line 246
    iput-object v0, p0, Lcom/amazon/nwstd/persistence/DBLocalStorage;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    .line 249
    :cond_0
    sget-object v0, Lcom/amazon/nwstd/persistence/DBLocalStorage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DB already closed: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/nwstd/persistence/DBLocalStorage;->getDatabaseName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract getCreateTablesStatements()[Ljava/lang/String;
.end method

.method protected getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/amazon/nwstd/persistence/DBLocalStorage;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method protected abstract getDatabaseName()Ljava/lang/String;
.end method

.method protected abstract getDatabaseVersion()I
.end method

.method public abstract getDropTablesStatements()[Ljava/lang/String;
.end method

.method protected abstract getMigrateTablesStatements()[[Ljava/lang/String;
.end method

.method public declared-synchronized isAvailable()Z
    .locals 1

    monitor-enter p0

    .line 219
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/nwstd/persistence/DBLocalStorage;->mIsDBInFailureMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected openDB()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    iget-boolean v0, p0, Lcom/amazon/nwstd/persistence/DBLocalStorage;->mIsDBInFailureMode:Z

    const-string v1, "\' is unavailable."

    const-string v2, "Database \'"

    if-nez v0, :cond_3

    .line 188
    iget-object v0, p0, Lcom/amazon/nwstd/persistence/DBLocalStorage;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_2

    .line 190
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v0, 0x1

    const/4 v5, 0x1

    :goto_0
    const/4 v6, 0x2

    if-gt v5, v6, :cond_0

    .line 194
    :try_start_0
    iget-object v7, p0, Lcom/amazon/nwstd/persistence/DBLocalStorage;->mDBHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    iput-object v7, p0, Lcom/amazon/nwstd/persistence/DBLocalStorage;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    .line 197
    sget-object v7, Lcom/amazon/nwstd/persistence/DBLocalStorage;->TAG:Ljava/lang/String;

    const/16 v8, 0x10

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to open database \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/nwstd/persistence/DBLocalStorage;->getDatabaseName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\' (attempt "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9, v6}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    invoke-virtual {p0}, Lcom/amazon/nwstd/persistence/DBLocalStorage;->clear()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 202
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/amazon/nwstd/persistence/DBLocalStorage;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "NewsstandLocalStorage"

    if-eqz v7, :cond_1

    .line 203
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v3

    .line 204
    sget-object v3, Lcom/amazon/nwstd/persistence/DBLocalStorage;->TAG:Ljava/lang/String;

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/amazon/nwstd/persistence/DBLocalStorage;->getDatabaseName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v7

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v0

    const-string v1, "Opened DB: %s, took: %d millis"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v6, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    if-le v5, v0, :cond_2

    .line 206
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/services/metrics/MetricType;->ERROR:Lcom/amazon/kindle/services/metrics/MetricType;

    const-string v2, "OpenDBAfterInitialFailure"

    invoke-virtual {v0, v8, v2, v1}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/metrics/MetricType;)V

    goto :goto_2

    .line 210
    :cond_1
    iput-boolean v0, p0, Lcom/amazon/nwstd/persistence/DBLocalStorage;->mIsDBInFailureMode:Z

    .line 211
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v3, Lcom/amazon/kindle/services/metrics/MetricType;->ERROR:Lcom/amazon/kindle/services/metrics/MetricType;

    const-string v4, "UnableToOpenDB"

    invoke-virtual {v0, v8, v4, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/metrics/MetricType;)V

    .line 212
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/nwstd/persistence/DBLocalStorage;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_2
    return-void

    .line 185
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/nwstd/persistence/DBLocalStorage;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
