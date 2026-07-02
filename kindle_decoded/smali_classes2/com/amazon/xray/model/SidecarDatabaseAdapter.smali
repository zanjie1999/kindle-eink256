.class public Lcom/amazon/xray/model/SidecarDatabaseAdapter;
.super Ljava/lang/Object;
.source "SidecarDatabaseAdapter.java"


# static fields
.field private static final DATABASE_VERSION:I = 0x1

.field private static final QUERY_INDEX_ENTITY_EXCERPT:Lcom/amazon/xray/model/sql/QueryBuilder;

.field private static final QUERY_INDEX_ENTITY_TYPE:Lcom/amazon/xray/model/sql/QueryBuilder;

.field private static final QUERY_INDEX_OCCURRENCE_START:Lcom/amazon/xray/model/sql/QueryBuilder;

.field private static final TAG:Ljava/lang/String; = "com.amazon.xray.model.SidecarDatabaseAdapter"


# instance fields
.field private final asin:Ljava/lang/String;

.field private final bookId:Ljava/lang/String;

.field private final bookMetadataCache:Lcom/amazon/xray/model/cache/BookMetadataCache;

.field private closed:Z

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private final entityTypeCache:Lcom/amazon/xray/model/cache/EntityTypeCache;

.field private final feedbackErrorsTableCache:Lcom/amazon/xray/model/cache/FeedbackErrorsTableCache;

.field private final file:Ljava/io/File;

.field private final guid:Ljava/lang/String;

.field private final localizedStringCache:Lcom/amazon/xray/model/cache/LocalizedStringCache;

.field protected referenceCount:I

.field private final tableNameCache:Lcom/amazon/xray/model/cache/TableNameCache;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 35
    new-instance v0, Lcom/amazon/xray/model/sql/QueryBuilder;

    invoke-direct {v0}, Lcom/amazon/xray/model/sql/QueryBuilder;-><init>()V

    sget-object v1, Lcom/amazon/xray/model/DB;->OCCURRENCE:Lcom/amazon/xray/model/DB$OccurrenceTable;

    const/4 v2, 0x1

    new-array v3, v2, [Lcom/amazon/xray/model/sql/column/Column;

    iget-object v4, v1, Lcom/amazon/xray/model/DB$OccurrenceTable;->START:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "idx_occurrence_start"

    .line 36
    invoke-virtual {v0, v4, v1, v3}, Lcom/amazon/xray/model/sql/QueryBuilder;->createIndex(Ljava/lang/String;Lcom/amazon/xray/model/sql/table/Table;[Lcom/amazon/xray/model/sql/column/Column;)Lcom/amazon/xray/model/sql/QueryBuilder;

    sput-object v0, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->QUERY_INDEX_OCCURRENCE_START:Lcom/amazon/xray/model/sql/QueryBuilder;

    .line 40
    new-instance v0, Lcom/amazon/xray/model/sql/QueryBuilder;

    invoke-direct {v0}, Lcom/amazon/xray/model/sql/QueryBuilder;-><init>()V

    sget-object v1, Lcom/amazon/xray/model/DB;->ENTITY_EXCERPT:Lcom/amazon/xray/model/DB$EntityExcerptTable;

    new-array v3, v2, [Lcom/amazon/xray/model/sql/column/Column;

    iget-object v4, v1, Lcom/amazon/xray/model/DB$EntityExcerptTable;->ENTITY:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    aput-object v4, v3, v5

    const-string v4, "idx_entity_excerpt"

    .line 41
    invoke-virtual {v0, v4, v1, v3}, Lcom/amazon/xray/model/sql/QueryBuilder;->createIndex(Ljava/lang/String;Lcom/amazon/xray/model/sql/table/Table;[Lcom/amazon/xray/model/sql/column/Column;)Lcom/amazon/xray/model/sql/QueryBuilder;

    sput-object v0, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->QUERY_INDEX_ENTITY_EXCERPT:Lcom/amazon/xray/model/sql/QueryBuilder;

    .line 45
    new-instance v0, Lcom/amazon/xray/model/sql/QueryBuilder;

    invoke-direct {v0}, Lcom/amazon/xray/model/sql/QueryBuilder;-><init>()V

    sget-object v1, Lcom/amazon/xray/model/DB;->ENTITY:Lcom/amazon/xray/model/DB$EntityTable;

    new-array v2, v2, [Lcom/amazon/xray/model/sql/column/Column;

    iget-object v3, v1, Lcom/amazon/xray/model/DB$EntityTable;->TYPE:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    aput-object v3, v2, v5

    const-string v3, "idx_entity_type"

    .line 46
    invoke-virtual {v0, v3, v1, v2}, Lcom/amazon/xray/model/sql/QueryBuilder;->createIndex(Ljava/lang/String;Lcom/amazon/xray/model/sql/table/Table;[Lcom/amazon/xray/model/sql/column/Column;)Lcom/amazon/xray/model/sql/QueryBuilder;

    sput-object v0, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->QUERY_INDEX_ENTITY_TYPE:Lcom/amazon/xray/model/sql/QueryBuilder;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->referenceCount:I

    .line 91
    iput-object p1, p0, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->bookId:Ljava/lang/String;

    .line 92
    iput-object p2, p0, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->asin:Ljava/lang/String;

    .line 93
    iput-object p3, p0, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->guid:Ljava/lang/String;

    .line 94
    iput-object p4, p0, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->file:Ljava/io/File;

    .line 96
    new-instance p1, Lcom/amazon/xray/model/cache/TableNameCache;

    invoke-direct {p1, p0}, Lcom/amazon/xray/model/cache/TableNameCache;-><init>(Lcom/amazon/xray/model/SidecarDatabaseAdapter;)V

    iput-object p1, p0, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->tableNameCache:Lcom/amazon/xray/model/cache/TableNameCache;

    .line 97
    new-instance p1, Lcom/amazon/xray/model/cache/LocalizedStringCache;

    invoke-direct {p1, p0}, Lcom/amazon/xray/model/cache/LocalizedStringCache;-><init>(Lcom/amazon/xray/model/SidecarDatabaseAdapter;)V

    iput-object p1, p0, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->localizedStringCache:Lcom/amazon/xray/model/cache/LocalizedStringCache;

    .line 98
    new-instance p1, Lcom/amazon/xray/model/cache/EntityTypeCache;

    invoke-direct {p1, p0}, Lcom/amazon/xray/model/cache/EntityTypeCache;-><init>(Lcom/amazon/xray/model/SidecarDatabaseAdapter;)V

    iput-object p1, p0, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->entityTypeCache:Lcom/amazon/xray/model/cache/EntityTypeCache;

    .line 99
    new-instance p1, Lcom/amazon/xray/model/cache/BookMetadataCache;

    invoke-direct {p1, p0}, Lcom/amazon/xray/model/cache/BookMetadataCache;-><init>(Lcom/amazon/xray/model/SidecarDatabaseAdapter;)V

    iput-object p1, p0, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->bookMetadataCache:Lcom/amazon/xray/model/cache/BookMetadataCache;

    .line 100
    new-instance p1, Lcom/amazon/xray/model/cache/FeedbackErrorsTableCache;

    invoke-direct {p1, p0}, Lcom/amazon/xray/model/cache/FeedbackErrorsTableCache;-><init>(Lcom/amazon/xray/model/SidecarDatabaseAdapter;)V

    iput-object p1, p0, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->feedbackErrorsTableCache:Lcom/amazon/xray/model/cache/FeedbackErrorsTableCache;

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    .line 189
    :try_start_0
    iput-boolean v0, p0, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->closed:Z

    .line 191
    iget-object v0, p0, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 193
    :try_start_1
    iget-object v0, p0, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 195
    :try_start_2
    sget-object v1, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->TAG:Ljava/lang/String;

    const-string v2, "Exception closing database"

    invoke-static {v1, v2, v0}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    .line 197
    iput-object v0, p0, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 199
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBookId()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->bookId:Ljava/lang/String;

    return-object v0
.end method

.method public getBookMetadata()Lcom/amazon/xray/model/object/BookMetadata;
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->bookMetadataCache:Lcom/amazon/xray/model/cache/BookMetadataCache;

    invoke-virtual {v0}, Lcom/amazon/xray/model/cache/BookMetadataCache;->get()Lcom/amazon/xray/model/object/BookMetadata;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 5

    monitor-enter p0

    .line 147
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 158
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 159
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 165
    iget-object v0, p0, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/amazon/xray/model/util/DatabaseUpgradeUtil;->performUpgradeCheck(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 168
    sget-object v0, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->QUERY_INDEX_OCCURRENCE_START:Lcom/amazon/xray/model/sql/QueryBuilder;

    iget-object v2, p0, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v2}, Lcom/amazon/xray/model/sql/QueryBuilder;->execute(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 169
    sget-object v0, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->QUERY_INDEX_ENTITY_EXCERPT:Lcom/amazon/xray/model/sql/QueryBuilder;

    iget-object v2, p0, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v2}, Lcom/amazon/xray/model/sql/QueryBuilder;->execute(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 170
    sget-object v0, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->QUERY_INDEX_ENTITY_TYPE:Lcom/amazon/xray/model/sql/QueryBuilder;

    iget-object v2, p0, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v2}, Lcom/amazon/xray/model/sql/QueryBuilder;->execute(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    :try_start_2
    iget-object v0, p0, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 161
    :cond_1
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLiteDatabase unsupported version [version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->throwSQLiteException(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :catch_0
    move-exception v0

    .line 173
    :try_start_4
    invoke-virtual {p0}, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->close()V

    .line 176
    iget-object v2, p0, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->bookId:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->asin:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->guid:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/amazon/xray/model/SidecarDatabaseManager;->deleteFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "SQLiteDatabase exception opening or preparing database; assuming corrupt"

    .line 178
    invoke-virtual {p0, v2, v0}, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->throwSQLiteException(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    :cond_2
    :try_start_5
    const-string v0, "SQLiteDatabase adapter is closed"

    .line 148
    invoke-virtual {p0, v0, v1}, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->throwSQLiteException(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getEntityType(I)Lcom/amazon/xray/model/object/EntityType;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->entityTypeCache:Lcom/amazon/xray/model/cache/EntityTypeCache;

    invoke-virtual {v0, p1}, Lcom/amazon/xray/model/cache/EntityTypeCache;->get(I)Lcom/amazon/xray/model/object/EntityType;

    move-result-object p1

    return-object p1
.end method

.method public getEntityTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/xray/model/object/EntityType;",
            ">;"
        }
    .end annotation

    .line 318
    iget-object v0, p0, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->entityTypeCache:Lcom/amazon/xray/model/cache/EntityTypeCache;

    invoke-virtual {v0}, Lcom/amazon/xray/model/cache/EntityTypeCache;->get()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFeedbackErrorsFromDB()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/xray/model/FeedbackErrorType;",
            ">;"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->feedbackErrorsTableCache:Lcom/amazon/xray/model/cache/FeedbackErrorsTableCache;

    invoke-virtual {v0}, Lcom/amazon/xray/model/cache/FeedbackErrorsTableCache;->get()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLocalizedString(Lcom/amazon/xray/model/sql/QueryBuilder;Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/IntegerColumn;)Ljava/lang/String;
    .locals 1

    .line 246
    invoke-virtual {p1, p2, p3}, Lcom/amazon/xray/model/sql/QueryBuilder;->isNull(Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/Column;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->localizedStringCache:Lcom/amazon/xray/model/cache/LocalizedStringCache;

    invoke-virtual {p1, p2, p3}, Lcom/amazon/xray/model/sql/QueryBuilder;->get(Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/IntegerColumn;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amazon/xray/model/cache/LocalizedStringCache;->get(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 247
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Null value in non-nullable string column [column="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {p3}, Lcom/amazon/xray/model/sql/column/Column;->getQualifiedName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "]"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getNullableEntityType(Lcom/amazon/xray/model/sql/QueryBuilder;Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/IntegerColumn;)Lcom/amazon/xray/model/object/EntityType;
    .locals 1

    .line 297
    invoke-virtual {p1, p2, p3}, Lcom/amazon/xray/model/sql/QueryBuilder;->isNull(Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/Column;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->entityTypeCache:Lcom/amazon/xray/model/cache/EntityTypeCache;

    invoke-virtual {p1, p2, p3}, Lcom/amazon/xray/model/sql/QueryBuilder;->get(Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/IntegerColumn;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amazon/xray/model/cache/EntityTypeCache;->get(I)Lcom/amazon/xray/model/object/EntityType;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getNullableLocalizedString(Lcom/amazon/xray/model/sql/QueryBuilder;Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/IntegerColumn;)Ljava/lang/String;
    .locals 1

    .line 267
    invoke-virtual {p1, p2, p3}, Lcom/amazon/xray/model/sql/QueryBuilder;->isNull(Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/Column;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->localizedStringCache:Lcom/amazon/xray/model/cache/LocalizedStringCache;

    invoke-virtual {p1, p2, p3}, Lcom/amazon/xray/model/sql/QueryBuilder;->get(Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/IntegerColumn;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amazon/xray/model/cache/LocalizedStringCache;->get(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getOverrideString(I)Ljava/lang/String;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->localizedStringCache:Lcom/amazon/xray/model/cache/LocalizedStringCache;

    invoke-virtual {v0, p1}, Lcom/amazon/xray/model/cache/LocalizedStringCache;->getOptional(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hasTable(Ljava/lang/String;)Z
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->tableNameCache:Lcom/amazon/xray/model/cache/TableNameCache;

    invoke-virtual {v0, p1}, Lcom/amazon/xray/model/cache/TableNameCache;->hasTable(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isClosed()Z
    .locals 1

    .line 205
    iget-boolean v0, p0, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->closed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected throwSQLiteException(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .line 340
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 341
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    invoke-direct {v0, p1, p2}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 343
    :cond_0
    new-instance p2, Landroid/database/sqlite/SQLiteException;

    invoke-direct {p2, p1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
