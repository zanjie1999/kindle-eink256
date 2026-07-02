.class public Lcom/amazon/xray/model/cache/TableNameCache;
.super Ljava/lang/Object;
.source "TableNameCache.java"


# static fields
.field private static final QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;


# instance fields
.field private final db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

.field private tableNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 19
    new-instance v0, Lcom/amazon/xray/model/sql/QueryBuilder;

    invoke-direct {v0}, Lcom/amazon/xray/model/sql/QueryBuilder;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/amazon/xray/model/sql/Selectable;

    sget-object v2, Lcom/amazon/xray/model/DB;->MASTER_TABLE:Lcom/amazon/xray/model/DB$MasterTable;

    iget-object v2, v2, Lcom/amazon/xray/model/DB$MasterTable;->TBL_NAME:Lcom/amazon/xray/model/sql/column/StringColumn;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 20
    invoke-virtual {v0, v1}, Lcom/amazon/xray/model/sql/QueryBuilder;->select([Lcom/amazon/xray/model/sql/Selectable;)Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v1, Lcom/amazon/xray/model/DB;->MASTER_TABLE:Lcom/amazon/xray/model/DB$MasterTable;

    .line 21
    invoke-virtual {v0, v1}, Lcom/amazon/xray/model/sql/QueryBuilder;->from(Lcom/amazon/xray/model/sql/table/Table;)Lcom/amazon/xray/model/sql/QueryBuilder;

    sput-object v0, Lcom/amazon/xray/model/cache/TableNameCache;->QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/xray/model/SidecarDatabaseAdapter;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Lcom/amazon/xray/util/Validate;->notNull(Ljava/lang/Object;)V

    .line 39
    iput-object p1, p0, Lcom/amazon/xray/model/cache/TableNameCache;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    return-void
.end method

.method private initCache()V
    .locals 4

    .line 58
    sget-object v0, Lcom/amazon/xray/model/cache/TableNameCache;->QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    iget-object v1, p0, Lcom/amazon/xray/model/cache/TableNameCache;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    invoke-virtual {v1}, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/xray/model/sql/QueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v0

    .line 60
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/amazon/xray/model/cache/TableNameCache;->tableNames:Ljava/util/Set;

    .line 61
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/amazon/xray/model/cache/TableNameCache;->tableNames:Ljava/util/Set;

    sget-object v2, Lcom/amazon/xray/model/cache/TableNameCache;->QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v3, Lcom/amazon/xray/model/DB;->MASTER_TABLE:Lcom/amazon/xray/model/DB$MasterTable;

    iget-object v3, v3, Lcom/amazon/xray/model/DB$MasterTable;->TBL_NAME:Lcom/amazon/xray/model/sql/column/StringColumn;

    invoke-virtual {v2, v0, v3}, Lcom/amazon/xray/model/sql/QueryBuilder;->get(Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/StringColumn;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 65
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 66
    throw v1
.end method


# virtual methods
.method public declared-synchronized hasTable(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/amazon/xray/model/cache/TableNameCache;->tableNames:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 49
    invoke-direct {p0}, Lcom/amazon/xray/model/cache/TableNameCache;->initCache()V

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/amazon/xray/model/cache/TableNameCache;->tableNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
