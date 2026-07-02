.class final Lcom/localytics/android/LocalyticsProvider;
.super Ljava/lang/Object;
.source "LocalyticsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/LocalyticsProvider$AttributesDbColumns;,
        Lcom/localytics/android/LocalyticsProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final DATABASE_VERSION:I = 0xd

.field private static final sCountProjectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLocalyticsProviderIntrinsicLock:[Ljava/lang/Object;

.field private static final sLocalyticsProviderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/localytics/android/LocalyticsProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static final sValidTables:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDb:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/localytics/android/LocalyticsProvider;->sLocalyticsProviderMap:Ljava/util/Map;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 83
    sput-object v0, Lcom/localytics/android/LocalyticsProvider;->sLocalyticsProviderIntrinsicLock:[Ljava/lang/Object;

    .line 88
    invoke-static {}, Lcom/localytics/android/LocalyticsProvider;->getCountProjectionMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/localytics/android/LocalyticsProvider;->sCountProjectionMap:Ljava/util/Map;

    .line 93
    invoke-static {}, Lcom/localytics/android/LocalyticsProvider;->getValidTables()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/localytics/android/LocalyticsProvider;->sValidTables:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    new-instance v0, Lcom/localytics/android/LocalyticsProvider$DatabaseHelper;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2, v2}, Lcom/localytics/android/DatapointHelper;->getSha256_buggy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string p2, "com.localytics.android.%s.sqlite"

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0xd

    invoke-direct {v0, p1, p2, v1}, Lcom/localytics/android/LocalyticsProvider$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/localytics/android/LocalyticsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method private static deleteDirectory(Ljava/io/File;)Z
    .locals 6

    .line 474
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 476
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 478
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/localytics/android/LocalyticsProvider;->deleteDirectory(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 487
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0
.end method

.method static deleteOldFiles(Landroid/content/Context;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 463
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "localytics"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/localytics/android/LocalyticsProvider;->deleteDirectory(Ljava/io/File;)Z

    return-void

    .line 459
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "context cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getCountProjectionMap()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 439
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "_count"

    const-string v2, "COUNT(*)"

    .line 440
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/localytics/android/LocalyticsProvider;
    .locals 2

    if-eqz p0, :cond_2

    .line 131
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.test.RenamingDelegatingContext"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Lcom/localytics/android/LocalyticsProvider;

    invoke-direct {v0, p0, p1}, Lcom/localytics/android/LocalyticsProvider;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0

    .line 136
    :cond_0
    sget-object v0, Lcom/localytics/android/LocalyticsProvider;->sLocalyticsProviderIntrinsicLock:[Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_0
    sget-object v1, Lcom/localytics/android/LocalyticsProvider;->sLocalyticsProviderMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/localytics/android/LocalyticsProvider;

    if-nez v1, :cond_1

    .line 142
    new-instance v1, Lcom/localytics/android/LocalyticsProvider;

    invoke-direct {v1, p0, p1}, Lcom/localytics/android/LocalyticsProvider;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 143
    sget-object p0, Lcom/localytics/android/LocalyticsProvider;->sLocalyticsProviderMap:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 147
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 123
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getValidTables()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 419
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "api_keys"

    .line 421
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "attributes"

    .line 422
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "events"

    .line 423
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "event_history"

    .line 424
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "sessions"

    .line 425
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "upload_blobs"

    .line 426
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "upload_blob_events"

    .line 427
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "info"

    .line 428
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "identifiers"

    .line 429
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static isValidTable(Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 409
    :cond_0
    sget-object v0, Lcom/localytics/android/LocalyticsProvider;->sValidTables:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .line 304
    invoke-static {p1}, Lcom/localytics/android/LocalyticsProvider;->isValidTable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    .line 318
    iget-object p2, p0, Lcom/localytics/android/LocalyticsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 p3, 0x0

    const-string v0, "1"

    invoke-virtual {p2, p1, v0, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/localytics/android/LocalyticsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    :goto_0
    return p1

    .line 306
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p3, v0

    const-string p1, "tableName %s is invalid"

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public insert(Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2

    .line 183
    invoke-static {p1}, Lcom/localytics/android/LocalyticsProvider;->isValidTable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 199
    iget-object v0, p0, Lcom/localytics/android/LocalyticsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    return-wide p1

    .line 190
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "values cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 185
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "tableName %s is invalid"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .line 227
    invoke-static {p1}, Lcom/localytics/android/LocalyticsProvider;->isValidTable(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    .line 238
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 239
    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 241
    array-length v0, p2

    if-ne v4, v0, :cond_0

    aget-object v0, p2, v3

    const-string v3, "_count"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    sget-object v0, Lcom/localytics/android/LocalyticsProvider;->sCountProjectionMap:Ljava/util/Map;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 246
    :cond_0
    iget-object v3, p0, Lcom/localytics/android/LocalyticsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v1

    move-object v1, v3

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 229
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const-string v0, "tableName %s is invalid"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public runBatchTransaction(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 356
    iget-object v0, p0, Lcom/localytics/android/LocalyticsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 359
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 360
    iget-object p1, p0, Lcom/localytics/android/LocalyticsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    iget-object p1, p0, Lcom/localytics/android/LocalyticsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/localytics/android/LocalyticsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 365
    throw p1

    .line 352
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "runnable cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .line 274
    invoke-static {p1}, Lcom/localytics/android/LocalyticsProvider;->isValidTable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/localytics/android/LocalyticsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    .line 276
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object p1, p3, p4

    const-string p1, "tableName %s is invalid"

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
