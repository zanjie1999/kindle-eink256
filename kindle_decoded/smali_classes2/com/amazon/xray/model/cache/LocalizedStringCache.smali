.class public Lcom/amazon/xray/model/cache/LocalizedStringCache;
.super Ljava/lang/Object;
.source "LocalizedStringCache.java"


# instance fields
.field private final db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

.field private strings:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/xray/model/SidecarDatabaseAdapter;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Lcom/amazon/xray/util/Validate;->notNull(Ljava/lang/Object;)V

    .line 38
    iput-object p1, p0, Lcom/amazon/xray/model/cache/LocalizedStringCache;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    return-void
.end method

.method private initCache()V
    .locals 8

    .line 81
    invoke-static {}, Lcom/amazon/xray/model/util/LocalizationUtil;->getLanguageTags()Ljava/util/List;

    move-result-object v0

    .line 82
    new-instance v1, Lcom/amazon/xray/model/sql/QueryBuilder;

    invoke-direct {v1}, Lcom/amazon/xray/model/sql/QueryBuilder;-><init>()V

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/amazon/xray/model/sql/Selectable;

    sget-object v3, Lcom/amazon/xray/model/DB;->STRING:Lcom/amazon/xray/model/DB$StringTable;

    iget-object v4, v3, Lcom/amazon/xray/model/DB$StringTable;->ID:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const/4 v5, 0x0

    aput-object v4, v2, v5

    iget-object v4, v3, Lcom/amazon/xray/model/DB$StringTable;->TEXT:Lcom/amazon/xray/model/sql/column/StringColumn;

    const/4 v5, 0x1

    aput-object v4, v2, v5

    iget-object v3, v3, Lcom/amazon/xray/model/DB$StringTable;->LANGUAGE:Lcom/amazon/xray/model/sql/column/StringColumn;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 83
    invoke-virtual {v1, v2}, Lcom/amazon/xray/model/sql/QueryBuilder;->select([Lcom/amazon/xray/model/sql/Selectable;)Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v2, Lcom/amazon/xray/model/DB;->STRING:Lcom/amazon/xray/model/DB$StringTable;

    .line 86
    invoke-virtual {v1, v2}, Lcom/amazon/xray/model/sql/QueryBuilder;->from(Lcom/amazon/xray/model/sql/table/Table;)Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v2, Lcom/amazon/xray/model/DB;->STRING:Lcom/amazon/xray/model/DB$StringTable;

    iget-object v2, v2, Lcom/amazon/xray/model/DB$StringTable;->LANGUAGE:Lcom/amazon/xray/model/sql/column/StringColumn;

    .line 87
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/amazon/xray/model/sql/QueryBuilder;->whereIn(Lcom/amazon/xray/model/sql/column/Column;I)Lcom/amazon/xray/model/sql/QueryBuilder;

    .line 89
    iget-object v2, p0, Lcom/amazon/xray/model/cache/LocalizedStringCache;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    invoke-virtual {v2}, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/amazon/xray/model/sql/QueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 94
    :try_start_0
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/amazon/xray/model/cache/LocalizedStringCache;->strings:Landroid/util/SparseArray;

    .line 95
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v5

    :goto_0
    if-ltz v3, :cond_2

    .line 96
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, -0x1

    .line 98
    invoke-interface {v2, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 99
    :cond_0
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 100
    sget-object v5, Lcom/amazon/xray/model/DB;->STRING:Lcom/amazon/xray/model/DB$StringTable;

    iget-object v5, v5, Lcom/amazon/xray/model/DB$StringTable;->LANGUAGE:Lcom/amazon/xray/model/sql/column/StringColumn;

    invoke-virtual {v1, v2, v5}, Lcom/amazon/xray/model/sql/QueryBuilder;->get(Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/StringColumn;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 101
    iget-object v5, p0, Lcom/amazon/xray/model/cache/LocalizedStringCache;->strings:Landroid/util/SparseArray;

    sget-object v6, Lcom/amazon/xray/model/DB;->STRING:Lcom/amazon/xray/model/DB$StringTable;

    iget-object v6, v6, Lcom/amazon/xray/model/DB$StringTable;->ID:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    invoke-virtual {v1, v2, v6}, Lcom/amazon/xray/model/sql/QueryBuilder;->get(Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/IntegerColumn;)I

    move-result v6

    sget-object v7, Lcom/amazon/xray/model/DB;->STRING:Lcom/amazon/xray/model/DB$StringTable;

    iget-object v7, v7, Lcom/amazon/xray/model/DB$StringTable;->TEXT:Lcom/amazon/xray/model/sql/column/StringColumn;

    invoke-virtual {v1, v2, v7}, Lcom/amazon/xray/model/sql/QueryBuilder;->get(Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/StringColumn;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 106
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 107
    throw v0
.end method


# virtual methods
.method public declared-synchronized get(I)Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/amazon/xray/model/cache/LocalizedStringCache;->strings:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/amazon/xray/model/cache/LocalizedStringCache;->initCache()V

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/amazon/xray/model/cache/LocalizedStringCache;->strings:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 59
    monitor-exit p0

    return-object v0

    .line 57
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No value for localized string [id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getOptional(I)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/amazon/xray/model/cache/LocalizedStringCache;->strings:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 70
    invoke-direct {p0}, Lcom/amazon/xray/model/cache/LocalizedStringCache;->initCache()V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/amazon/xray/model/cache/LocalizedStringCache;->strings:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
