.class public Lcom/amazon/xray/model/cache/FeedbackErrorsTableCache;
.super Ljava/lang/Object;
.source "FeedbackErrorsTableCache.java"


# static fields
.field protected static final QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;


# instance fields
.field private final db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

.field private feedbackErrorTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/xray/model/FeedbackErrorType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 20
    new-instance v0, Lcom/amazon/xray/model/sql/QueryBuilder;

    invoke-direct {v0}, Lcom/amazon/xray/model/sql/QueryBuilder;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/amazon/xray/model/sql/Selectable;

    sget-object v2, Lcom/amazon/xray/model/DB;->FEEDBACK_ERRORS:Lcom/amazon/xray/model/DB$FeedbackErrorsTable;

    iget-object v3, v2, Lcom/amazon/xray/model/DB$FeedbackErrorsTable;->ERROR_TYPE:Lcom/amazon/xray/model/sql/column/StringColumn;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    iget-object v2, v2, Lcom/amazon/xray/model/DB$FeedbackErrorsTable;->ERROR_TEXT:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 21
    invoke-virtual {v0, v1}, Lcom/amazon/xray/model/sql/QueryBuilder;->select([Lcom/amazon/xray/model/sql/Selectable;)Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v1, Lcom/amazon/xray/model/DB;->FEEDBACK_ERRORS:Lcom/amazon/xray/model/DB$FeedbackErrorsTable;

    .line 23
    invoke-virtual {v0, v1}, Lcom/amazon/xray/model/sql/QueryBuilder;->from(Lcom/amazon/xray/model/sql/table/Table;)Lcom/amazon/xray/model/sql/QueryBuilder;

    new-array v1, v3, [Lcom/amazon/xray/model/sql/Selectable;

    sget-object v2, Lcom/amazon/xray/model/DB;->FEEDBACK_ERRORS:Lcom/amazon/xray/model/DB$FeedbackErrorsTable;

    iget-object v2, v2, Lcom/amazon/xray/model/DB$FeedbackErrorsTable;->ID:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    aput-object v2, v1, v4

    .line 24
    invoke-virtual {v0, v1}, Lcom/amazon/xray/model/sql/QueryBuilder;->orderBy([Lcom/amazon/xray/model/sql/Selectable;)Lcom/amazon/xray/model/sql/QueryBuilder;

    sput-object v0, Lcom/amazon/xray/model/cache/FeedbackErrorsTableCache;->QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/xray/model/SidecarDatabaseAdapter;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {p1}, Lcom/amazon/xray/util/Validate;->notNull(Ljava/lang/Object;)V

    .line 42
    iput-object p1, p0, Lcom/amazon/xray/model/cache/FeedbackErrorsTableCache;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    return-void
.end method

.method private initCache()V
    .locals 5

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/xray/model/cache/FeedbackErrorsTableCache;->feedbackErrorTypes:Ljava/util/List;

    .line 60
    iget-object v0, p0, Lcom/amazon/xray/model/cache/FeedbackErrorsTableCache;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    sget-object v1, Lcom/amazon/xray/model/DB;->FEEDBACK_ERRORS:Lcom/amazon/xray/model/DB$FeedbackErrorsTable;

    invoke-virtual {v1}, Lcom/amazon/xray/model/sql/table/Table;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->hasTable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 63
    :cond_0
    sget-object v0, Lcom/amazon/xray/model/cache/FeedbackErrorsTableCache;->QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    iget-object v1, p0, Lcom/amazon/xray/model/cache/FeedbackErrorsTableCache;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    invoke-virtual {v1}, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/xray/model/sql/QueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v0

    .line 65
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 66
    sget-object v1, Lcom/amazon/xray/model/cache/FeedbackErrorsTableCache;->QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v2, Lcom/amazon/xray/model/DB;->FEEDBACK_ERRORS:Lcom/amazon/xray/model/DB$FeedbackErrorsTable;

    iget-object v2, v2, Lcom/amazon/xray/model/DB$FeedbackErrorsTable;->ERROR_TYPE:Lcom/amazon/xray/model/sql/column/StringColumn;

    invoke-virtual {v1, v0, v2}, Lcom/amazon/xray/model/sql/QueryBuilder;->get(Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/StringColumn;)Ljava/lang/String;

    move-result-object v1

    .line 67
    iget-object v2, p0, Lcom/amazon/xray/model/cache/FeedbackErrorsTableCache;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    sget-object v3, Lcom/amazon/xray/model/cache/FeedbackErrorsTableCache;->QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v4, Lcom/amazon/xray/model/DB;->FEEDBACK_ERRORS:Lcom/amazon/xray/model/DB$FeedbackErrorsTable;

    iget-object v4, v4, Lcom/amazon/xray/model/DB$FeedbackErrorsTable;->ERROR_TEXT:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    invoke-virtual {v2, v3, v0, v4}, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->getNullableLocalizedString(Lcom/amazon/xray/model/sql/QueryBuilder;Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/IntegerColumn;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 69
    iget-object v3, p0, Lcom/amazon/xray/model/cache/FeedbackErrorsTableCache;->feedbackErrorTypes:Ljava/util/List;

    new-instance v4, Lcom/amazon/xray/model/FeedbackErrorType;

    invoke-direct {v4, v2, v1}, Lcom/amazon/xray/model/FeedbackErrorType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 73
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 74
    throw v1
.end method


# virtual methods
.method public declared-synchronized get()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/xray/model/FeedbackErrorType;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/amazon/xray/model/cache/FeedbackErrorsTableCache;->feedbackErrorTypes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 50
    invoke-direct {p0}, Lcom/amazon/xray/model/cache/FeedbackErrorsTableCache;->initCache()V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/amazon/xray/model/cache/FeedbackErrorsTableCache;->feedbackErrorTypes:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
