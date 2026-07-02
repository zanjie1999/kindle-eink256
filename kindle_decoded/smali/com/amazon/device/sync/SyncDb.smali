.class public final Lcom/amazon/device/sync/SyncDb;
.super Ljava/lang/Object;
.source "SyncDb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/sync/SyncDb$DBHelper;
    }
.end annotation


# static fields
.field private static final ACCOUNTS_LOCK:Ljava/lang/Object;

.field private static final DATABASE_VERSION:I = 0x8

.field private static final DATABASE_VERSION_1:I = 0x1

.field private static final DATABASE_VERSION_2:I = 0x2

.field private static final DATABASE_VERSION_3:I = 0x3

.field private static final DATABASE_VERSION_4:I = 0x4

.field private static final DATABASE_VERSION_5:I = 0x5

.field private static final DATABASE_VERSION_6:I = 0x6

.field private static final DATABASE_VERSION_7:I = 0x7

.field private static final DATABASE_VERSION_8:I = 0x8

.field static final DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

.field private static final DB_NAME_PATTERN:Ljava/lang/String; = "%s-%s.db"

.field private static final DB_NAME_PREFIX:Ljava/lang/String; = "SyncStorage"

.field private static final JOURNAL_SUFFIX:Ljava/lang/String; = "-journal"

.field private static final LEGACY_DB_NAME:Ljava/lang/String; = "SyncStorage.db"

.field static final NOT_EXIST_ID:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "com.amazon.device.sync.SyncDb"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/amazon/device/sync/SyncDb;->ACCOUNTS_LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .line 27
    sget-object v0, Lcom/amazon/device/sync/SyncDb;->ACCOUNTS_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lcom/amazon/device/sync/SyncDb;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static delete(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 461
    sget-object v0, Lcom/amazon/device/sync/SyncDb;->ACCOUNTS_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "%s-%s.db"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "SyncStorage"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 463
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 465
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 467
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to delete file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 470
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/amazon/device/sync/SyncDb$DBHelper;->remove(Ljava/lang/String;)V

    .line 471
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static deleteAll(Landroid/content/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 436
    sget-object v0, Lcom/amazon/device/sync/SyncDb;->ACCOUNTS_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "db"

    .line 438
    invoke-virtual {p0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    .line 439
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 443
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 445
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/device/sync/SyncDb;->isSyncDb(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 447
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 449
    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to delete file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 455
    :cond_2
    invoke-static {}, Lcom/amazon/device/sync/SyncDb$DBHelper;->reset()V

    .line 456
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static getDbFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 487
    invoke-static {p0, p1}, Lcom/amazon/device/sync/SyncDb$DBHelper;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/device/sync/SyncDb$DBHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amazon/device/sync/SyncDb$DBHelper;->getDbFile()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static getNamespaceColumnName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "namespaces"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "%s.%s"

    .line 511
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getPendingDatasetColumnName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 517
    sget-object v1, Lcom/amazon/device/sync/SyncContract$Datasets;->PENDING_TABLE_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "%s.%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getPendingRecordColumnName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 529
    sget-object v1, Lcom/amazon/device/sync/SyncContract$Records;->PENDING_TABLE_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "%s.%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getSnapshotDatasetColumnName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 523
    sget-object v1, Lcom/amazon/device/sync/SyncContract$Datasets;->SNAPSHOT_TABLE_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "%s.%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static isDatasetExist(J)Z
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v2, p0, v0

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isNamespaceExist(J)Z
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v2, p0, v0

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isRecordExist(J)Z
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v2, p0, v0

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSyncDb(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "SyncStorage"

    .line 476
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static open(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;
    .locals 0

    .line 431
    invoke-static {p0, p1}, Lcom/amazon/device/sync/SyncDb$DBHelper;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/device/sync/SyncDb$DBHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteOpenHelper;->getWritableDatabase()Lcom/amazon/whispersync/dcp/framework/SQLiteDatabaseWrapper;

    move-result-object p0

    return-object p0
.end method

.method public static registerAccount(Ljava/lang/String;)V
    .locals 0

    .line 481
    invoke-static {p0}, Lcom/amazon/device/sync/SyncDb$DBHelper;->access$200(Ljava/lang/String;)V

    return-void
.end method
