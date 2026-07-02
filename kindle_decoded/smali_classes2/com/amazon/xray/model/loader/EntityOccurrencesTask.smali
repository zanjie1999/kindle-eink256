.class public Lcom/amazon/xray/model/loader/EntityOccurrencesTask;
.super Lcom/amazon/xray/model/loader/ContentLoader$Task;
.source "EntityOccurrencesTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/xray/model/loader/EntityOccurrencesTask$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/xray/model/loader/ContentLoader$Task<",
        "Lcom/amazon/xray/model/loader/EntityOccurrencesTask$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;


# instance fields
.field private final db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

.field private final entityId:I

.field private final grouper:Lcom/amazon/xray/model/grouper/ByChapterGrouper;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 22
    new-instance v0, Lcom/amazon/xray/model/sql/QueryBuilder;

    invoke-direct {v0}, Lcom/amazon/xray/model/sql/QueryBuilder;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/amazon/xray/model/sql/Selectable;

    sget-object v2, Lcom/amazon/xray/model/DB;->OCCURRENCE:Lcom/amazon/xray/model/DB$OccurrenceTable;

    iget-object v3, v2, Lcom/amazon/xray/model/DB$OccurrenceTable;->START:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    iget-object v2, v2, Lcom/amazon/xray/model/DB$OccurrenceTable;->LENGTH:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 23
    invoke-virtual {v0, v1}, Lcom/amazon/xray/model/sql/QueryBuilder;->select([Lcom/amazon/xray/model/sql/Selectable;)Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v1, Lcom/amazon/xray/model/DB;->OCCURRENCE:Lcom/amazon/xray/model/DB$OccurrenceTable;

    .line 25
    invoke-virtual {v0, v1}, Lcom/amazon/xray/model/sql/QueryBuilder;->from(Lcom/amazon/xray/model/sql/table/Table;)Lcom/amazon/xray/model/sql/QueryBuilder;

    new-array v1, v3, [Lcom/amazon/xray/model/sql/column/Column;

    sget-object v2, Lcom/amazon/xray/model/DB;->OCCURRENCE:Lcom/amazon/xray/model/DB$OccurrenceTable;

    iget-object v2, v2, Lcom/amazon/xray/model/DB$OccurrenceTable;->ENTITY:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    aput-object v2, v1, v4

    .line 26
    invoke-virtual {v0, v1}, Lcom/amazon/xray/model/sql/QueryBuilder;->whereEq([Lcom/amazon/xray/model/sql/column/Column;)Lcom/amazon/xray/model/sql/QueryBuilder;

    new-array v1, v3, [Lcom/amazon/xray/model/sql/Selectable;

    sget-object v2, Lcom/amazon/xray/model/DB;->OCCURRENCE:Lcom/amazon/xray/model/DB$OccurrenceTable;

    iget-object v2, v2, Lcom/amazon/xray/model/DB$OccurrenceTable;->START:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    aput-object v2, v1, v4

    .line 27
    invoke-virtual {v0, v1}, Lcom/amazon/xray/model/sql/QueryBuilder;->orderBy([Lcom/amazon/xray/model/sql/Selectable;)Lcom/amazon/xray/model/sql/QueryBuilder;

    sput-object v0, Lcom/amazon/xray/model/loader/EntityOccurrencesTask;->QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/xray/model/SidecarDatabaseAdapter;I)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/amazon/xray/model/loader/ContentLoader$Task;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/amazon/xray/model/loader/EntityOccurrencesTask;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    .line 48
    iput p2, p0, Lcom/amazon/xray/model/loader/EntityOccurrencesTask;->entityId:I

    .line 49
    new-instance p1, Lcom/amazon/xray/model/grouper/ByChapterGrouper;

    invoke-direct {p1}, Lcom/amazon/xray/model/grouper/ByChapterGrouper;-><init>()V

    iput-object p1, p0, Lcom/amazon/xray/model/loader/EntityOccurrencesTask;->grouper:Lcom/amazon/xray/model/grouper/ByChapterGrouper;

    return-void
.end method


# virtual methods
.method public doInBackground()Lcom/amazon/xray/model/loader/EntityOccurrencesTask$Result;
    .locals 6

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    sget-object v1, Lcom/amazon/xray/model/loader/EntityOccurrencesTask;->QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    iget-object v2, p0, Lcom/amazon/xray/model/loader/EntityOccurrencesTask;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    invoke-virtual {v2}, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iget v3, p0, Lcom/amazon/xray/model/loader/EntityOccurrencesTask;->entityId:I

    invoke-virtual {v1, v2, v3}, Lcom/amazon/xray/model/sql/QueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;I)Landroid/database/Cursor;

    move-result-object v1

    .line 58
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/xray/model/loader/ContentLoader$Task;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    new-instance v2, Lcom/amazon/xray/model/object/PositionRange;

    sget-object v3, Lcom/amazon/xray/model/loader/EntityOccurrencesTask;->QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v4, Lcom/amazon/xray/model/DB;->OCCURRENCE:Lcom/amazon/xray/model/DB$OccurrenceTable;

    iget-object v4, v4, Lcom/amazon/xray/model/DB$OccurrenceTable;->START:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    .line 60
    invoke-virtual {v3, v1, v4}, Lcom/amazon/xray/model/sql/QueryBuilder;->get(Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/IntegerColumn;)I

    move-result v3

    sget-object v4, Lcom/amazon/xray/model/loader/EntityOccurrencesTask;->QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v5, Lcom/amazon/xray/model/DB;->OCCURRENCE:Lcom/amazon/xray/model/DB$OccurrenceTable;

    iget-object v5, v5, Lcom/amazon/xray/model/DB$OccurrenceTable;->LENGTH:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    .line 61
    invoke-virtual {v4, v1, v5}, Lcom/amazon/xray/model/sql/QueryBuilder;->get(Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/IntegerColumn;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/amazon/xray/model/object/PositionRange;-><init>(II)V

    .line 59
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 64
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 66
    invoke-virtual {p0}, Lcom/amazon/xray/model/loader/ContentLoader$Task;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 70
    :cond_1
    new-instance v1, Lcom/amazon/xray/model/loader/EntityOccurrencesTask$Result;

    iget-object v2, p0, Lcom/amazon/xray/model/loader/EntityOccurrencesTask;->grouper:Lcom/amazon/xray/model/grouper/ByChapterGrouper;

    invoke-virtual {v2, v0}, Lcom/amazon/xray/model/grouper/ByChapterGrouper;->group(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/xray/model/loader/EntityOccurrencesTask;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    invoke-virtual {v3}, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->getBookMetadata()Lcom/amazon/xray/model/object/BookMetadata;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/xray/model/object/BookMetadata;->getReadingRange()Lcom/amazon/xray/model/object/PositionRange;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/amazon/xray/model/loader/EntityOccurrencesTask$Result;-><init>(Ljava/util/List;Ljava/util/List;Lcom/amazon/xray/model/object/PositionRange;)V

    return-object v1

    :catchall_0
    move-exception v0

    .line 64
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 65
    throw v0
.end method

.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/amazon/xray/model/loader/EntityOccurrencesTask;->doInBackground()Lcom/amazon/xray/model/loader/EntityOccurrencesTask$Result;

    move-result-object v0

    return-object v0
.end method
