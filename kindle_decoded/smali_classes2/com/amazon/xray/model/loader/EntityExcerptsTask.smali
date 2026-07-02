.class public Lcom/amazon/xray/model/loader/EntityExcerptsTask;
.super Lcom/amazon/xray/model/loader/ContentLoader$Task;
.source "EntityExcerptsTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/xray/model/loader/EntityExcerptsTask$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/xray/model/loader/ContentLoader$Task<",
        "Lcom/amazon/xray/model/loader/EntityExcerptsTask$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;


# instance fields
.field private final db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

.field private final entityId:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 22
    new-instance v0, Lcom/amazon/xray/model/sql/QueryBuilder;

    invoke-direct {v0}, Lcom/amazon/xray/model/sql/QueryBuilder;-><init>()V

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/amazon/xray/model/sql/Selectable;

    sget-object v2, Lcom/amazon/xray/model/DB;->EXCERPT:Lcom/amazon/xray/model/DB$ExcerptTable;

    iget-object v3, v2, Lcom/amazon/xray/model/DB$ExcerptTable;->ID:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    iget-object v3, v2, Lcom/amazon/xray/model/DB$ExcerptTable;->IMAGE:Lcom/amazon/xray/model/sql/column/StringColumn;

    const/4 v5, 0x1

    aput-object v3, v1, v5

    iget-object v3, v2, Lcom/amazon/xray/model/DB$ExcerptTable;->START:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const/4 v6, 0x2

    aput-object v3, v1, v6

    iget-object v3, v2, Lcom/amazon/xray/model/DB$ExcerptTable;->LENGTH:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const/4 v6, 0x3

    aput-object v3, v1, v6

    iget-object v3, v2, Lcom/amazon/xray/model/DB$ExcerptTable;->RELATED_ENTITIES:Lcom/amazon/xray/model/sql/column/StringColumn;

    const/4 v6, 0x4

    aput-object v3, v1, v6

    iget-object v2, v2, Lcom/amazon/xray/model/DB$ExcerptTable;->GOTO:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 23
    invoke-virtual {v0, v1}, Lcom/amazon/xray/model/sql/QueryBuilder;->select([Lcom/amazon/xray/model/sql/Selectable;)Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v1, Lcom/amazon/xray/model/DB;->ENTITY_EXCERPT:Lcom/amazon/xray/model/DB$EntityExcerptTable;

    .line 29
    invoke-virtual {v0, v1}, Lcom/amazon/xray/model/sql/QueryBuilder;->from(Lcom/amazon/xray/model/sql/table/Table;)Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v1, Lcom/amazon/xray/model/DB;->EXCERPT:Lcom/amazon/xray/model/DB$ExcerptTable;

    iget-object v2, v1, Lcom/amazon/xray/model/DB$ExcerptTable;->ID:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    sget-object v3, Lcom/amazon/xray/model/DB;->ENTITY_EXCERPT:Lcom/amazon/xray/model/DB$EntityExcerptTable;

    iget-object v3, v3, Lcom/amazon/xray/model/DB$EntityExcerptTable;->EXCERPT:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    .line 30
    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/xray/model/sql/QueryBuilder;->leftJoin(Lcom/amazon/xray/model/sql/table/Table;Lcom/amazon/xray/model/sql/column/Column;Lcom/amazon/xray/model/sql/column/Column;)Lcom/amazon/xray/model/sql/QueryBuilder;

    new-array v1, v5, [Lcom/amazon/xray/model/sql/column/Column;

    sget-object v2, Lcom/amazon/xray/model/DB;->ENTITY_EXCERPT:Lcom/amazon/xray/model/DB$EntityExcerptTable;

    iget-object v2, v2, Lcom/amazon/xray/model/DB$EntityExcerptTable;->ENTITY:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    aput-object v2, v1, v4

    .line 31
    invoke-virtual {v0, v1}, Lcom/amazon/xray/model/sql/QueryBuilder;->whereEq([Lcom/amazon/xray/model/sql/column/Column;)Lcom/amazon/xray/model/sql/QueryBuilder;

    new-array v1, v5, [Lcom/amazon/xray/model/sql/Selectable;

    sget-object v2, Lcom/amazon/xray/model/DB;->EXCERPT:Lcom/amazon/xray/model/DB$ExcerptTable;

    iget-object v2, v2, Lcom/amazon/xray/model/DB$ExcerptTable;->START:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    aput-object v2, v1, v4

    .line 32
    invoke-virtual {v0, v1}, Lcom/amazon/xray/model/sql/QueryBuilder;->orderBy([Lcom/amazon/xray/model/sql/Selectable;)Lcom/amazon/xray/model/sql/QueryBuilder;

    sput-object v0, Lcom/amazon/xray/model/loader/EntityExcerptsTask;->QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/xray/model/SidecarDatabaseAdapter;I)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/amazon/xray/model/loader/ContentLoader$Task;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/amazon/xray/model/loader/EntityExcerptsTask;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    .line 50
    iput p2, p0, Lcom/amazon/xray/model/loader/EntityExcerptsTask;->entityId:I

    return-void
.end method


# virtual methods
.method public doInBackground()Lcom/amazon/xray/model/loader/EntityExcerptsTask$Result;
    .locals 10

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    iget-object v1, p0, Lcom/amazon/xray/model/loader/EntityExcerptsTask;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    invoke-virtual {v1}, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 58
    sget-object v2, Lcom/amazon/xray/model/loader/EntityExcerptsTask;->QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    iget v3, p0, Lcom/amazon/xray/model/loader/EntityExcerptsTask;->entityId:I

    invoke-virtual {v2, v1, v3}, Lcom/amazon/xray/model/sql/QueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;I)Landroid/database/Cursor;

    move-result-object v1

    .line 61
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/xray/model/loader/ContentLoader$Task;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 62
    sget-object v2, Lcom/amazon/xray/model/loader/EntityExcerptsTask;->QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v3, Lcom/amazon/xray/model/DB;->EXCERPT:Lcom/amazon/xray/model/DB$ExcerptTable;

    iget-object v3, v3, Lcom/amazon/xray/model/DB$ExcerptTable;->GOTO:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    invoke-virtual {v2, v1, v3}, Lcom/amazon/xray/model/sql/QueryBuilder;->isNull(Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/Column;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/amazon/xray/model/loader/EntityExcerptsTask;->QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v3, Lcom/amazon/xray/model/DB;->EXCERPT:Lcom/amazon/xray/model/DB$ExcerptTable;

    iget-object v3, v3, Lcom/amazon/xray/model/DB$ExcerptTable;->START:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/amazon/xray/model/loader/EntityExcerptsTask;->QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v3, Lcom/amazon/xray/model/DB;->EXCERPT:Lcom/amazon/xray/model/DB$ExcerptTable;

    iget-object v3, v3, Lcom/amazon/xray/model/DB$ExcerptTable;->GOTO:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    :goto_1
    invoke-virtual {v2, v1, v3}, Lcom/amazon/xray/model/sql/QueryBuilder;->get(Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/IntegerColumn;)I

    move-result v2

    move v8, v2

    .line 64
    new-instance v2, Lcom/amazon/xray/model/object/Excerpt;

    sget-object v3, Lcom/amazon/xray/model/loader/EntityExcerptsTask;->QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v4, Lcom/amazon/xray/model/DB;->EXCERPT:Lcom/amazon/xray/model/DB$ExcerptTable;

    iget-object v4, v4, Lcom/amazon/xray/model/DB$ExcerptTable;->ID:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    .line 65
    invoke-virtual {v3, v1, v4}, Lcom/amazon/xray/model/sql/QueryBuilder;->get(Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/IntegerColumn;)I

    move-result v4

    sget-object v3, Lcom/amazon/xray/model/loader/EntityExcerptsTask;->QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v5, Lcom/amazon/xray/model/DB;->EXCERPT:Lcom/amazon/xray/model/DB$ExcerptTable;

    iget-object v5, v5, Lcom/amazon/xray/model/DB$ExcerptTable;->IMAGE:Lcom/amazon/xray/model/sql/column/StringColumn;

    .line 66
    invoke-virtual {v3, v1, v5}, Lcom/amazon/xray/model/sql/QueryBuilder;->get(Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/StringColumn;)Ljava/lang/String;

    move-result-object v5

    sget-object v3, Lcom/amazon/xray/model/loader/EntityExcerptsTask;->QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v6, Lcom/amazon/xray/model/DB;->EXCERPT:Lcom/amazon/xray/model/DB$ExcerptTable;

    iget-object v6, v6, Lcom/amazon/xray/model/DB$ExcerptTable;->START:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    .line 67
    invoke-virtual {v3, v1, v6}, Lcom/amazon/xray/model/sql/QueryBuilder;->get(Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/IntegerColumn;)I

    move-result v6

    sget-object v3, Lcom/amazon/xray/model/loader/EntityExcerptsTask;->QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v7, Lcom/amazon/xray/model/DB;->EXCERPT:Lcom/amazon/xray/model/DB$ExcerptTable;

    iget-object v7, v7, Lcom/amazon/xray/model/DB$ExcerptTable;->LENGTH:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    .line 68
    invoke-virtual {v3, v1, v7}, Lcom/amazon/xray/model/sql/QueryBuilder;->get(Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/IntegerColumn;)I

    move-result v7

    sget-object v3, Lcom/amazon/xray/model/loader/EntityExcerptsTask;->QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v9, Lcom/amazon/xray/model/DB;->EXCERPT:Lcom/amazon/xray/model/DB$ExcerptTable;

    iget-object v9, v9, Lcom/amazon/xray/model/DB$ExcerptTable;->RELATED_ENTITIES:Lcom/amazon/xray/model/sql/column/StringColumn;

    .line 70
    invoke-virtual {v3, v1, v9}, Lcom/amazon/xray/model/sql/QueryBuilder;->get(Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/StringColumn;)Ljava/lang/String;

    move-result-object v9

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/amazon/xray/model/object/Excerpt;-><init>(ILjava/lang/String;IIILjava/lang/String;)V

    .line 64
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 73
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 75
    invoke-virtual {p0}, Lcom/amazon/xray/model/loader/ContentLoader$Task;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    return-object v0

    .line 79
    :cond_2
    new-instance v1, Lcom/amazon/xray/model/loader/EntityExcerptsTask$Result;

    iget-object v2, p0, Lcom/amazon/xray/model/loader/EntityExcerptsTask;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    invoke-virtual {v2}, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->getBookMetadata()Lcom/amazon/xray/model/object/BookMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/xray/model/object/BookMetadata;->getReadingRange()Lcom/amazon/xray/model/object/PositionRange;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/amazon/xray/model/loader/EntityExcerptsTask$Result;-><init>(Ljava/util/List;Lcom/amazon/xray/model/object/PositionRange;)V

    return-object v1

    :catchall_0
    move-exception v0

    .line 73
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 74
    throw v0
.end method

.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/amazon/xray/model/loader/EntityExcerptsTask;->doInBackground()Lcom/amazon/xray/model/loader/EntityExcerptsTask$Result;

    move-result-object v0

    return-object v0
.end method
