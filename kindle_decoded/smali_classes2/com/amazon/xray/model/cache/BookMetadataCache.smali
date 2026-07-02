.class public Lcom/amazon/xray/model/cache/BookMetadataCache;
.super Ljava/lang/Object;
.source "BookMetadataCache.java"


# static fields
.field private static final QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;


# instance fields
.field private final db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

.field private metadata:Lcom/amazon/xray/model/object/BookMetadata;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 18
    new-instance v0, Lcom/amazon/xray/model/sql/QueryBuilder;

    invoke-direct {v0}, Lcom/amazon/xray/model/sql/QueryBuilder;-><init>()V

    const/16 v1, 0x9

    new-array v1, v1, [Lcom/amazon/xray/model/sql/Selectable;

    sget-object v2, Lcom/amazon/xray/model/DB;->BOOK_METADATA:Lcom/amazon/xray/model/DB$BookMetadataTable;

    iget-object v3, v2, Lcom/amazon/xray/model/DB$BookMetadataTable;->SRL:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    iget-object v3, v2, Lcom/amazon/xray/model/DB$BookMetadataTable;->ERL:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const/4 v4, 0x1

    aput-object v3, v1, v4

    iget-object v3, v2, Lcom/amazon/xray/model/DB$BookMetadataTable;->HAS_IMAGES:Lcom/amazon/xray/model/sql/column/BooleanColumn;

    const/4 v5, 0x2

    aput-object v3, v1, v5

    iget-object v3, v2, Lcom/amazon/xray/model/DB$BookMetadataTable;->HAS_EXCERPTS:Lcom/amazon/xray/model/sql/column/BooleanColumn;

    const/4 v5, 0x3

    aput-object v3, v1, v5

    iget-object v3, v2, Lcom/amazon/xray/model/DB$BookMetadataTable;->SHOW_SPOILERS_DEFAULT:Lcom/amazon/xray/model/sql/column/BooleanColumn;

    const/4 v5, 0x4

    aput-object v3, v1, v5

    iget-object v3, v2, Lcom/amazon/xray/model/DB$BookMetadataTable;->NUM_PEOPLE:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const/4 v5, 0x5

    aput-object v3, v1, v5

    iget-object v3, v2, Lcom/amazon/xray/model/DB$BookMetadataTable;->NUM_TERMS:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const/4 v5, 0x6

    aput-object v3, v1, v5

    iget-object v3, v2, Lcom/amazon/xray/model/DB$BookMetadataTable;->NUM_IMAGES:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const/4 v5, 0x7

    aput-object v3, v1, v5

    iget-object v2, v2, Lcom/amazon/xray/model/DB$BookMetadataTable;->PREVIEW_IMAGES:Lcom/amazon/xray/model/sql/column/StringColumn;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    .line 19
    invoke-virtual {v0, v1}, Lcom/amazon/xray/model/sql/QueryBuilder;->select([Lcom/amazon/xray/model/sql/Selectable;)Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v1, Lcom/amazon/xray/model/DB;->BOOK_METADATA:Lcom/amazon/xray/model/DB$BookMetadataTable;

    .line 28
    invoke-virtual {v0, v1}, Lcom/amazon/xray/model/sql/QueryBuilder;->from(Lcom/amazon/xray/model/sql/table/Table;)Lcom/amazon/xray/model/sql/QueryBuilder;

    .line 29
    invoke-virtual {v0, v4}, Lcom/amazon/xray/model/sql/QueryBuilder;->limit(I)Lcom/amazon/xray/model/sql/QueryBuilder;

    sput-object v0, Lcom/amazon/xray/model/cache/BookMetadataCache;->QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/xray/model/SidecarDatabaseAdapter;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1}, Lcom/amazon/xray/util/Validate;->notNull(Ljava/lang/Object;)V

    .line 46
    iput-object p1, p0, Lcom/amazon/xray/model/cache/BookMetadataCache;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    return-void
.end method

.method private initCache()V
    .locals 12

    .line 63
    sget-object v0, Lcom/amazon/xray/model/cache/BookMetadataCache;->QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    iget-object v1, p0, Lcom/amazon/xray/model/cache/BookMetadataCache;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    invoke-virtual {v1}, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/xray/model/sql/QueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v0

    .line 65
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 66
    new-instance v11, Lcom/amazon/xray/model/object/BookMetadata;

    sget-object v1, Lcom/amazon/xray/model/cache/BookMetadataCache;->QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v2, Lcom/amazon/xray/model/DB;->BOOK_METADATA:Lcom/amazon/xray/model/DB$BookMetadataTable;

    iget-object v2, v2, Lcom/amazon/xray/model/DB$BookMetadataTable;->SRL:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    .line 67
    invoke-virtual {v1, v0, v2}, Lcom/amazon/xray/model/sql/QueryBuilder;->get(Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/IntegerColumn;)I

    move-result v2

    sget-object v1, Lcom/amazon/xray/model/cache/BookMetadataCache;->QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v3, Lcom/amazon/xray/model/DB;->BOOK_METADATA:Lcom/amazon/xray/model/DB$BookMetadataTable;

    iget-object v3, v3, Lcom/amazon/xray/model/DB$BookMetadataTable;->ERL:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    .line 68
    invoke-virtual {v1, v0, v3}, Lcom/amazon/xray/model/sql/QueryBuilder;->get(Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/IntegerColumn;)I

    move-result v3

    sget-object v1, Lcom/amazon/xray/model/cache/BookMetadataCache;->QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v4, Lcom/amazon/xray/model/DB;->BOOK_METADATA:Lcom/amazon/xray/model/DB$BookMetadataTable;

    iget-object v4, v4, Lcom/amazon/xray/model/DB$BookMetadataTable;->HAS_IMAGES:Lcom/amazon/xray/model/sql/column/BooleanColumn;

    .line 69
    invoke-virtual {v1, v0, v4}, Lcom/amazon/xray/model/sql/QueryBuilder;->get(Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/BooleanColumn;)Z

    move-result v4

    sget-object v1, Lcom/amazon/xray/model/cache/BookMetadataCache;->QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v5, Lcom/amazon/xray/model/DB;->BOOK_METADATA:Lcom/amazon/xray/model/DB$BookMetadataTable;

    iget-object v5, v5, Lcom/amazon/xray/model/DB$BookMetadataTable;->HAS_EXCERPTS:Lcom/amazon/xray/model/sql/column/BooleanColumn;

    .line 70
    invoke-virtual {v1, v0, v5}, Lcom/amazon/xray/model/sql/QueryBuilder;->get(Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/BooleanColumn;)Z

    move-result v5

    sget-object v1, Lcom/amazon/xray/model/cache/BookMetadataCache;->QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v6, Lcom/amazon/xray/model/DB;->BOOK_METADATA:Lcom/amazon/xray/model/DB$BookMetadataTable;

    iget-object v6, v6, Lcom/amazon/xray/model/DB$BookMetadataTable;->SHOW_SPOILERS_DEFAULT:Lcom/amazon/xray/model/sql/column/BooleanColumn;

    .line 71
    invoke-virtual {v1, v0, v6}, Lcom/amazon/xray/model/sql/QueryBuilder;->get(Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/BooleanColumn;)Z

    move-result v6

    sget-object v1, Lcom/amazon/xray/model/cache/BookMetadataCache;->QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v7, Lcom/amazon/xray/model/DB;->BOOK_METADATA:Lcom/amazon/xray/model/DB$BookMetadataTable;

    iget-object v7, v7, Lcom/amazon/xray/model/DB$BookMetadataTable;->NUM_PEOPLE:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    .line 72
    invoke-virtual {v1, v0, v7}, Lcom/amazon/xray/model/sql/QueryBuilder;->get(Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/IntegerColumn;)I

    move-result v7

    sget-object v1, Lcom/amazon/xray/model/cache/BookMetadataCache;->QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v8, Lcom/amazon/xray/model/DB;->BOOK_METADATA:Lcom/amazon/xray/model/DB$BookMetadataTable;

    iget-object v8, v8, Lcom/amazon/xray/model/DB$BookMetadataTable;->NUM_TERMS:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    .line 73
    invoke-virtual {v1, v0, v8}, Lcom/amazon/xray/model/sql/QueryBuilder;->get(Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/IntegerColumn;)I

    move-result v8

    sget-object v1, Lcom/amazon/xray/model/cache/BookMetadataCache;->QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v9, Lcom/amazon/xray/model/DB;->BOOK_METADATA:Lcom/amazon/xray/model/DB$BookMetadataTable;

    iget-object v9, v9, Lcom/amazon/xray/model/DB$BookMetadataTable;->NUM_IMAGES:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    .line 74
    invoke-virtual {v1, v0, v9}, Lcom/amazon/xray/model/sql/QueryBuilder;->get(Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/IntegerColumn;)I

    move-result v9

    sget-object v1, Lcom/amazon/xray/model/cache/BookMetadataCache;->QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v10, Lcom/amazon/xray/model/DB;->BOOK_METADATA:Lcom/amazon/xray/model/DB$BookMetadataTable;

    iget-object v10, v10, Lcom/amazon/xray/model/DB$BookMetadataTable;->PREVIEW_IMAGES:Lcom/amazon/xray/model/sql/column/StringColumn;

    .line 75
    invoke-virtual {v1, v0, v10}, Lcom/amazon/xray/model/sql/QueryBuilder;->get(Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/StringColumn;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/xray/model/util/DatabaseStringUtil;->parseIntegers(Ljava/lang/String;)[I

    move-result-object v10

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/amazon/xray/model/object/BookMetadata;-><init>(IIZZZIII[I)V

    iput-object v11, p0, Lcom/amazon/xray/model/cache/BookMetadataCache;->metadata:Lcom/amazon/xray/model/object/BookMetadata;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 78
    throw v1
.end method


# virtual methods
.method public declared-synchronized get()Lcom/amazon/xray/model/object/BookMetadata;
    .locals 1

    monitor-enter p0

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/amazon/xray/model/cache/BookMetadataCache;->metadata:Lcom/amazon/xray/model/object/BookMetadata;

    if-nez v0, :cond_0

    .line 54
    invoke-direct {p0}, Lcom/amazon/xray/model/cache/BookMetadataCache;->initCache()V

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/amazon/xray/model/cache/BookMetadataCache;->metadata:Lcom/amazon/xray/model/object/BookMetadata;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
