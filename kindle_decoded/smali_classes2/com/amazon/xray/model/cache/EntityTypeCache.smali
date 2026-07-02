.class public Lcom/amazon/xray/model/cache/EntityTypeCache;
.super Ljava/lang/Object;
.source "EntityTypeCache.java"


# static fields
.field private static final QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;


# instance fields
.field private allTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/xray/model/object/EntityType;",
            ">;"
        }
    .end annotation
.end field

.field private final db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

.field private typeById:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/amazon/xray/model/object/EntityType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 22
    new-instance v0, Lcom/amazon/xray/model/sql/QueryBuilder;

    invoke-direct {v0}, Lcom/amazon/xray/model/sql/QueryBuilder;-><init>()V

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/amazon/xray/model/sql/Selectable;

    sget-object v2, Lcom/amazon/xray/model/DB;->TYPE:Lcom/amazon/xray/model/DB$TypeTable;

    iget-object v3, v2, Lcom/amazon/xray/model/DB$TypeTable;->ID:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    iget-object v3, v2, Lcom/amazon/xray/model/DB$TypeTable;->SINGULAR_LABEL:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const/4 v5, 0x1

    aput-object v3, v1, v5

    iget-object v3, v2, Lcom/amazon/xray/model/DB$TypeTable;->LABEL:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const/4 v6, 0x2

    aput-object v3, v1, v6

    iget-object v3, v2, Lcom/amazon/xray/model/DB$TypeTable;->ICON:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const/4 v6, 0x3

    aput-object v3, v1, v6

    iget-object v2, v2, Lcom/amazon/xray/model/DB$TypeTable;->TOP_MENTIONED_ENTITIES:Lcom/amazon/xray/model/sql/column/StringColumn;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 23
    invoke-virtual {v0, v1}, Lcom/amazon/xray/model/sql/QueryBuilder;->select([Lcom/amazon/xray/model/sql/Selectable;)Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v1, Lcom/amazon/xray/model/DB;->TYPE:Lcom/amazon/xray/model/DB$TypeTable;

    .line 28
    invoke-virtual {v0, v1}, Lcom/amazon/xray/model/sql/QueryBuilder;->from(Lcom/amazon/xray/model/sql/table/Table;)Lcom/amazon/xray/model/sql/QueryBuilder;

    new-array v1, v5, [Lcom/amazon/xray/model/sql/Selectable;

    sget-object v2, Lcom/amazon/xray/model/DB;->TYPE:Lcom/amazon/xray/model/DB$TypeTable;

    iget-object v2, v2, Lcom/amazon/xray/model/DB$TypeTable;->ID:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    aput-object v2, v1, v4

    .line 29
    invoke-virtual {v0, v1}, Lcom/amazon/xray/model/sql/QueryBuilder;->orderBy([Lcom/amazon/xray/model/sql/Selectable;)Lcom/amazon/xray/model/sql/QueryBuilder;

    sput-object v0, Lcom/amazon/xray/model/cache/EntityTypeCache;->QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/xray/model/SidecarDatabaseAdapter;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {p1}, Lcom/amazon/xray/util/Validate;->notNull(Ljava/lang/Object;)V

    .line 49
    iput-object p1, p0, Lcom/amazon/xray/model/cache/EntityTypeCache;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    return-void
.end method

.method private initCache()V
    .locals 9

    .line 81
    sget-object v0, Lcom/amazon/xray/model/cache/EntityTypeCache;->QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    iget-object v1, p0, Lcom/amazon/xray/model/cache/EntityTypeCache;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    invoke-virtual {v1}, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/xray/model/sql/QueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v0

    .line 83
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/amazon/xray/model/cache/EntityTypeCache;->allTypes:Ljava/util/List;

    .line 84
    new-instance v1, Landroid/util/SparseArray;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/amazon/xray/model/cache/EntityTypeCache;->typeById:Landroid/util/SparseArray;

    .line 85
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    sget-object v1, Lcom/amazon/xray/model/cache/EntityTypeCache;->QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v2, Lcom/amazon/xray/model/DB;->TYPE:Lcom/amazon/xray/model/DB$TypeTable;

    iget-object v2, v2, Lcom/amazon/xray/model/DB$TypeTable;->ID:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    invoke-virtual {v1, v0, v2}, Lcom/amazon/xray/model/sql/QueryBuilder;->get(Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/IntegerColumn;)I

    move-result v1

    .line 89
    new-instance v2, Lcom/amazon/xray/model/object/EntityType;

    iget-object v3, p0, Lcom/amazon/xray/model/cache/EntityTypeCache;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    sget-object v4, Lcom/amazon/xray/model/cache/EntityTypeCache;->QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v5, Lcom/amazon/xray/model/DB;->TYPE:Lcom/amazon/xray/model/DB$TypeTable;

    iget-object v5, v5, Lcom/amazon/xray/model/DB$TypeTable;->SINGULAR_LABEL:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    .line 91
    invoke-virtual {v3, v4, v0, v5}, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->getLocalizedString(Lcom/amazon/xray/model/sql/QueryBuilder;Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/IntegerColumn;)Ljava/lang/String;

    move-result-object v5

    iget-object v3, p0, Lcom/amazon/xray/model/cache/EntityTypeCache;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    sget-object v4, Lcom/amazon/xray/model/cache/EntityTypeCache;->QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v6, Lcom/amazon/xray/model/DB;->TYPE:Lcom/amazon/xray/model/DB$TypeTable;

    iget-object v6, v6, Lcom/amazon/xray/model/DB$TypeTable;->LABEL:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    .line 92
    invoke-virtual {v3, v4, v0, v6}, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->getLocalizedString(Lcom/amazon/xray/model/sql/QueryBuilder;Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/IntegerColumn;)Ljava/lang/String;

    move-result-object v6

    sget-object v3, Lcom/amazon/xray/model/cache/EntityTypeCache;->QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v4, Lcom/amazon/xray/model/DB;->TYPE:Lcom/amazon/xray/model/DB$TypeTable;

    iget-object v4, v4, Lcom/amazon/xray/model/DB$TypeTable;->ICON:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    .line 93
    invoke-virtual {v3, v0, v4}, Lcom/amazon/xray/model/sql/QueryBuilder;->get(Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/IntegerColumn;)I

    move-result v7

    sget-object v3, Lcom/amazon/xray/model/cache/EntityTypeCache;->QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v4, Lcom/amazon/xray/model/DB;->TYPE:Lcom/amazon/xray/model/DB$TypeTable;

    iget-object v4, v4, Lcom/amazon/xray/model/DB$TypeTable;->TOP_MENTIONED_ENTITIES:Lcom/amazon/xray/model/sql/column/StringColumn;

    .line 94
    invoke-virtual {v3, v0, v4}, Lcom/amazon/xray/model/sql/QueryBuilder;->get(Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/StringColumn;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/xray/model/util/DatabaseStringUtil;->parseIntegers(Ljava/lang/String;)[I

    move-result-object v8

    move-object v3, v2

    move v4, v1

    invoke-direct/range {v3 .. v8}, Lcom/amazon/xray/model/object/EntityType;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    .line 96
    iget-object v3, p0, Lcom/amazon/xray/model/cache/EntityTypeCache;->allTypes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v3, p0, Lcom/amazon/xray/model/cache/EntityTypeCache;->typeById:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 100
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 101
    throw v1
.end method


# virtual methods
.method public declared-synchronized get(I)Lcom/amazon/xray/model/object/EntityType;
    .locals 1

    monitor-enter p0

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/amazon/xray/model/cache/EntityTypeCache;->typeById:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 72
    invoke-direct {p0}, Lcom/amazon/xray/model/cache/EntityTypeCache;->initCache()V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/amazon/xray/model/cache/EntityTypeCache;->typeById:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/xray/model/object/EntityType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized get()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/xray/model/object/EntityType;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/amazon/xray/model/cache/EntityTypeCache;->allTypes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 57
    invoke-direct {p0}, Lcom/amazon/xray/model/cache/EntityTypeCache;->initCache()V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/amazon/xray/model/cache/EntityTypeCache;->allTypes:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
