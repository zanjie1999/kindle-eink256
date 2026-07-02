.class public final Lcom/audible/relationship/db/RelationshipStorage;
.super Ljava/lang/Object;
.source "RelationshipStorage.java"

# interfaces
.implements Lcom/audible/relationship/db/IRelationshipStorage;


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private static final WHERE_EBOOK_ASIN:Ljava/lang/String; = "e_asin = ?"

.field private static final WHERE_OWNED_EBOOK_ASIN:Ljava/lang/String; = "e_asin = ? AND is_matched = 1"

.field private static final WHERE_SAMPLE:Ljava/lang/String; = "is_matched = 0"

.field private static final WHERE_SESSION_ID_IS_NOT:Ljava/lang/String; = "session_id != ?"


# instance fields
.field private final configuration:Lcom/audible/relationship/db/IConfiguration;

.field private final sqLiteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/relationship/db/RelationshipStorage;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/relationship/db/RelationshipStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;Lcom/audible/relationship/db/IConfiguration;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "sqLiteOpenHelper can\'t be null."

    .line 78
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "configuration can\'t be null."

    .line 79
    invoke-static {p2, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    iput-object p1, p0, Lcom/audible/relationship/db/RelationshipStorage;->sqLiteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 82
    iput-object p2, p0, Lcom/audible/relationship/db/RelationshipStorage;->configuration:Lcom/audible/relationship/db/IConfiguration;

    return-void
.end method

.method private extractRelationship(Landroid/database/Cursor;)Lcom/audible/relationship/domain/Relationship;
    .locals 7

    const-string v0, "e_asin"

    .line 350
    invoke-static {p1, v0}, Lcom/audible/relationship/db/DbUtils;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/mobile/domain/ImmutableAsinImpl;->nullSafeFactory(Ljava/lang/String;)Lcom/audible/mobile/domain/Asin;

    move-result-object v2

    const-string v0, "a_asin"

    .line 351
    invoke-static {p1, v0}, Lcom/audible/relationship/db/DbUtils;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/mobile/domain/ImmutableAsinImpl;->nullSafeFactory(Ljava/lang/String;)Lcom/audible/mobile/domain/Asin;

    move-result-object v3

    const-string v0, "a_amzn_asin"

    .line 352
    invoke-static {p1, v0}, Lcom/audible/relationship/db/DbUtils;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/mobile/domain/ImmutableAsinImpl;->nullSafeFactory(Ljava/lang/String;)Lcom/audible/mobile/domain/Asin;

    move-result-object v4

    const-string v0, "a_format"

    .line 353
    invoke-static {p1, v0}, Lcom/audible/relationship/db/DbUtils;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/audible/mobile/util/StringUtils;->defaultIfBlank(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    const-string v0, "is_matched"

    .line 355
    invoke-static {p1, v0}, Lcom/audible/relationship/db/DbUtils;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v6, 0x0

    .line 357
    :goto_0
    new-instance p1, Lcom/audible/relationship/domain/Relationship;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/audible/relationship/domain/Relationship;-><init>(Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/Asin;Ljava/lang/String;Z)V

    return-object p1
.end method

.method private logRelationshipList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/audible/relationship/domain/Relationship;",
            ">;)V"
        }
    .end annotation

    .line 339
    sget-object v0, Lcom/audible/relationship/db/RelationshipStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "List of Relationships with size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 340
    sget-object v0, Lcom/audible/relationship/db/RelationshipStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/relationship/domain/Relationship;

    .line 342
    sget-object v1, Lcom/audible/relationship/db/RelationshipStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/audible/relationship/domain/Relationship;->getEbookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v4

    invoke-interface {v4}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 343
    invoke-virtual {v0}, Lcom/audible/relationship/domain/Relationship;->getAudiobookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v4

    invoke-interface {v4}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {v0}, Lcom/audible/relationship/domain/Relationship;->getAudiobookAmazonAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "Relationship, eBookAsin:audiobookAsin:amznAudiobookAsin = [%s:%s:%s]"

    .line 342
    invoke-interface {v1, v0, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private queryListRelationships(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/audible/relationship/domain/Relationship;",
            ">;"
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lcom/audible/relationship/db/RelationshipStorage;->sqLiteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 321
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    :try_start_0
    const-string v2, "relationships"

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    .line 324
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 327
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 328
    invoke-direct {p0, v9}, Lcom/audible/relationship/db/RelationshipStorage;->extractRelationship(Landroid/database/Cursor;)Lcom/audible/relationship/domain/Relationship;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 332
    :cond_0
    invoke-static {v9}, Lcom/audible/relationship/db/DbUtils;->closeCursor(Landroid/database/Cursor;)V

    return-object v0

    :catchall_0
    move-exception p1

    invoke-static {v9}, Lcom/audible/relationship/db/DbUtils;->closeCursor(Landroid/database/Cursor;)V

    .line 333
    throw p1
.end method

.method private querySingleRelationshipByEbook(Lcom/audible/mobile/domain/Asin;Ljava/lang/String;)Lcom/audible/relationship/domain/Relationship;
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 286
    sget-object v1, Lcom/audible/mobile/domain/Asin;->NONE:Lcom/audible/mobile/domain/Asin;

    if-ne v1, p1, :cond_0

    goto/16 :goto_2

    .line 292
    :cond_0
    iget-object v1, p0, Lcom/audible/relationship/db/RelationshipStorage;->sqLiteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 294
    sget-object v1, Lcom/audible/relationship/db/RelationshipStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v3, "Querying a single Relationship from eBook ASIN"

    invoke-interface {v1, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    :try_start_0
    const-string v3, "relationships"

    const/4 v4, 0x0

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 299
    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, p2

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_1

    .line 300
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 301
    invoke-direct {p0, p1}, Lcom/audible/relationship/db/RelationshipStorage;->extractRelationship(Landroid/database/Cursor;)Lcom/audible/relationship/domain/Relationship;

    move-result-object v0

    .line 302
    sget-object p2, Lcom/audible/relationship/db/RelationshipStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Returned Relationship, eBookAsin:audiobookAsin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/audible/relationship/domain/Relationship;->getEbookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v2

    invoke-interface {v2}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {v0}, Lcom/audible/relationship/domain/Relationship;->getAudiobookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v2

    invoke-interface {v2}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 302
    invoke-interface {p2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 305
    :cond_1
    sget-object p2, Lcom/audible/relationship/db/RelationshipStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Failed to query the Relationship from database! Query was empty."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 308
    :goto_0
    invoke-static {p1}, Lcom/audible/relationship/db/DbUtils;->closeCursor(Landroid/database/Cursor;)V

    return-object v0

    :catchall_0
    move-exception p2

    move-object v0, p1

    goto :goto_1

    :catchall_1
    move-exception p2

    :goto_1
    invoke-static {v0}, Lcom/audible/relationship/db/DbUtils;->closeCursor(Landroid/database/Cursor;)V

    .line 309
    throw p2

    .line 287
    :cond_2
    :goto_2
    sget-object p1, Lcom/audible/relationship/db/RelationshipStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Tried to query single Relationship but eBook ASIN is null or NONE!"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    .line 288
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object p2, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageMetricKey;->RelationshipStorage_QuerySingle_NullEbookAsin:Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageMetricKey;

    sget-object v1, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;->ERROR:Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    invoke-virtual {p1, p2, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    return-object v0
.end method


# virtual methods
.method public deleteAllRelationships()I
    .locals 4

    .line 269
    sget-object v0, Lcom/audible/relationship/db/RelationshipStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Deleting all Relationships from the database"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 271
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    sget-object v1, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;->RelationshipStorage_DeleteAll_Timer:Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->startTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V

    .line 273
    iget-object v0, p0, Lcom/audible/relationship/db/RelationshipStorage;->sqLiteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "relationships"

    const-string v2, "1"

    const/4 v3, 0x0

    .line 274
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 276
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v1

    sget-object v2, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;->RelationshipStorage_DeleteAll_Timer:Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;

    invoke-virtual {v1, v2}, Lcom/audible/hushpuppy/common/metric/MetricManager;->stopTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V

    return v0
.end method

.method public deleteRelationships(Ljava/util/List;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/audible/relationship/domain/Relationship;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 210
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 216
    :cond_0
    sget-object v1, Lcom/audible/relationship/db/RelationshipStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Deleting a list of Relationships from the database"

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 217
    invoke-direct {p0, p1}, Lcom/audible/relationship/db/RelationshipStorage;->logRelationshipList(Ljava/util/List;)V

    .line 218
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v1

    sget-object v2, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;->RelationshipStorage_DeleteList_Timer:Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;

    invoke-virtual {v1, v2}, Lcom/audible/hushpuppy/common/metric/MetricManager;->startTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V

    .line 220
    iget-object v1, p0, Lcom/audible/relationship/db/RelationshipStorage;->sqLiteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 223
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 225
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/audible/relationship/domain/Relationship;

    const-string v4, "relationships"

    const-string v5, "e_asin = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    .line 226
    invoke-virtual {v3}, Lcom/audible/relationship/domain/Relationship;->getEbookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v7

    invoke-interface {v7}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-virtual {v1, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    .line 229
    sget-object v4, Lcom/audible/relationship/db/RelationshipStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to delete this Relationship! eBookAsin:audiobookAsin = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/audible/relationship/domain/Relationship;->getEbookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v6

    invoke-interface {v6}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v3}, Lcom/audible/relationship/domain/Relationship;->getAudiobookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v3

    invoke-interface {v3}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 229
    invoke-interface {v4, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 236
    :cond_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 237
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;->RelationshipStorage_DeleteList_Timer:Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;

    invoke-virtual {p1, v0}, Lcom/audible/hushpuppy/common/metric/MetricManager;->stopTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V

    .line 238
    sget-object p1, Lcom/audible/relationship/db/RelationshipStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleted "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " record(s) from database."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v2

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 241
    throw p1

    .line 211
    :cond_3
    :goto_1
    sget-object p1, Lcom/audible/relationship/db/RelationshipStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Tried to save Relationships but list is null or empty!"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    .line 212
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v1, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageMetricKey;->RelationshipStorage_DeleteList_NullList:Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageMetricKey;

    sget-object v2, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;->ERROR:Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    invoke-virtual {p1, v1, v2}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    return v0
.end method

.method public deleteRelationshipsForOldSessionId()I
    .locals 4

    .line 248
    iget-object v0, p0, Lcom/audible/relationship/db/RelationshipStorage;->configuration:Lcom/audible/relationship/db/IConfiguration;

    invoke-interface {v0}, Lcom/audible/relationship/db/IConfiguration;->getSessionId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 250
    sget-object v0, Lcom/audible/relationship/db/RelationshipStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Failed to delete Relationships for old session ID! Section ID was missing."

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    .line 251
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    sget-object v2, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageMetricKey;->RelationshipStorage_DeleteOldSession_NullSession:Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageMetricKey;

    sget-object v3, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;->ERROR:Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    invoke-virtual {v0, v2, v3}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    return v1

    .line 255
    :cond_0
    sget-object v2, Lcom/audible/relationship/db/RelationshipStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v3, "Deleting Relationships of old session id from the database"

    invoke-interface {v2, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 256
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v2

    sget-object v3, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;->RelationshipStorage_DeleteOldSession_Timer:Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;

    invoke-virtual {v2, v3}, Lcom/audible/hushpuppy/common/metric/MetricManager;->startTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V

    .line 258
    iget-object v2, p0, Lcom/audible/relationship/db/RelationshipStorage;->sqLiteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    .line 259
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    const-string v0, "relationships"

    const-string v1, "session_id != ?"

    invoke-virtual {v2, v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 261
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v1

    sget-object v2, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;->RelationshipStorage_DeleteOldSession_Timer:Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;

    invoke-virtual {v1, v2}, Lcom/audible/hushpuppy/common/metric/MetricManager;->stopTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V

    return v0
.end method

.method public listRelationships()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/audible/relationship/domain/Relationship;",
            ">;"
        }
    .end annotation

    .line 158
    sget-object v0, Lcom/audible/relationship/db/RelationshipStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Querying all Relationships from database"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 160
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    sget-object v1, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;->RelationshipStorage_QueryAll_Timer:Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->startTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V

    const/4 v0, 0x0

    .line 161
    invoke-direct {p0, v0}, Lcom/audible/relationship/db/RelationshipStorage;->queryListRelationships(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 162
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v1

    sget-object v2, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;->RelationshipStorage_QueryAll_Timer:Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;

    invoke-virtual {v1, v2}, Lcom/audible/hushpuppy/common/metric/MetricManager;->stopTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V

    .line 164
    invoke-direct {p0, v0}, Lcom/audible/relationship/db/RelationshipStorage;->logRelationshipList(Ljava/util/List;)V

    return-object v0
.end method

.method public queryOwnedRelationship(Lcom/audible/mobile/domain/Asin;)Lcom/audible/relationship/domain/Relationship;
    .locals 1

    const-string v0, "e_asin = ? AND is_matched = 1"

    .line 151
    invoke-direct {p0, p1, v0}, Lcom/audible/relationship/db/RelationshipStorage;->querySingleRelationshipByEbook(Lcom/audible/mobile/domain/Asin;Ljava/lang/String;)Lcom/audible/relationship/domain/Relationship;

    move-result-object p1

    return-object p1
.end method

.method public queryRelationship(Lcom/audible/mobile/domain/Asin;)Lcom/audible/relationship/domain/Relationship;
    .locals 1

    const-string v0, "e_asin = ?"

    .line 144
    invoke-direct {p0, p1, v0}, Lcom/audible/relationship/db/RelationshipStorage;->querySingleRelationshipByEbook(Lcom/audible/mobile/domain/Asin;Ljava/lang/String;)Lcom/audible/relationship/domain/Relationship;

    move-result-object p1

    return-object p1
.end method

.method public saveRelationships(Ljava/util/List;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/audible/relationship/domain/Relationship;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 88
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/audible/relationship/db/RelationshipStorage;->sqLiteOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 96
    sget-object v2, Lcom/audible/relationship/db/RelationshipStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v3, "Inserting or updating a list of Relationships in the database"

    invoke-interface {v2, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 101
    :try_start_0
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v2

    sget-object v3, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;->RelationshipStorage_SaveList_Timer:Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;

    invoke-virtual {v2, v3}, Lcom/audible/hushpuppy/common/metric/MetricManager;->startTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V

    .line 102
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 103
    iget-object v2, p0, Lcom/audible/relationship/db/RelationshipStorage;->configuration:Lcom/audible/relationship/db/IConfiguration;

    invoke-interface {v2}, Lcom/audible/relationship/db/IConfiguration;->getSessionId()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 135
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v0

    .line 107
    :cond_1
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/audible/relationship/domain/Relationship;

    .line 108
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "e_asin"

    .line 109
    invoke-virtual {v5}, Lcom/audible/relationship/domain/Relationship;->getEbookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v9

    invoke-interface {v9}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "a_asin"

    .line 110
    invoke-virtual {v5}, Lcom/audible/relationship/domain/Relationship;->getAudiobookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v9

    invoke-interface {v9}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "a_amzn_asin"

    .line 111
    invoke-virtual {v5}, Lcom/audible/relationship/domain/Relationship;->getAudiobookAmazonAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v9

    invoke-interface {v9}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "a_format"

    .line 112
    invoke-virtual {v5}, Lcom/audible/relationship/domain/Relationship;->getAudioFormat()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "is_matched"

    .line 113
    invoke-virtual {v5}, Lcom/audible/relationship/domain/Relationship;->isAudioBookOwned()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v8, "session_id"

    .line 114
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "relationships"

    const/4 v9, 0x0

    const/4 v10, 0x5

    .line 116
    invoke-virtual {v1, v8, v9, v7, v10}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v11, v7, v9

    if-nez v11, :cond_2

    .line 118
    sget-object v2, Lcom/audible/relationship/db/RelationshipStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-array v3, v6, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to insert or update this Relationship! eBookAsin:audiobookAsin = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/audible/relationship/domain/Relationship;->getEbookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v8

    invoke-interface {v8}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v5}, Lcom/audible/relationship/domain/Relationship;->getAudiobookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v5

    invoke-interface {v5}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v0

    .line 118
    invoke-interface {v2, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    .line 120
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v2

    sget-object v3, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageMetricKey;->RelationshipStorage_SaveList_Status:Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageMetricKey;

    sget-object v5, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;->ERROR:Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    invoke-virtual {v2, v3, v5}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 127
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne v4, p1, :cond_4

    .line 128
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 129
    sget-object p1, Lcom/audible/relationship/db/RelationshipStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Successfully inserted/updated all Relationships in database."

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 130
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageMetricKey;->RelationshipStorage_SaveList_Status:Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageMetricKey;

    sget-object v2, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;->SUCCESS:Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    invoke-virtual {p1, v0, v2}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 131
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;->RelationshipStorage_SaveList_Timer:Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;

    invoke-virtual {p1, v0}, Lcom/audible/hushpuppy/common/metric/MetricManager;->stopTimerMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    .line 135
    :cond_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v0

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 136
    throw p1

    .line 89
    :cond_5
    :goto_2
    sget-object p1, Lcom/audible/relationship/db/RelationshipStorage;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Tried to save Relationships but list is null or empty!"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v1, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageMetricKey;->RelationshipStorage_SaveList_NullList:Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageMetricKey;

    sget-object v2, Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;->ERROR:Lcom/audible/relationship/metric/IMetricKeyValue$MetricValue;

    invoke-virtual {p1, v1, v2}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    return v0
.end method
