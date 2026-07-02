.class public Lcom/amazon/xray/model/loader/InfoCardTask;
.super Lcom/amazon/xray/model/loader/ContentLoader$Task;
.source "InfoCardTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/xray/model/loader/ContentLoader$Task<",
        "Lcom/amazon/xray/model/object/Entity;",
        ">;"
    }
.end annotation


# static fields
.field private static final ENTITY_QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

.field private static final OCCURRENCE_QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

.field private static final OVERESTIMATED_MAX_OCCURRENCE_LENGTH:I = 0xc8


# instance fields
.field private final db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

.field private final selectionEnd:I

.field private final selectionStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 17
    new-instance v0, Lcom/amazon/xray/model/sql/QueryBuilder;

    invoke-direct {v0}, Lcom/amazon/xray/model/sql/QueryBuilder;-><init>()V

    const/4 v1, 0x3

    new-array v2, v1, [Lcom/amazon/xray/model/sql/Selectable;

    sget-object v3, Lcom/amazon/xray/model/DB;->OCCURRENCE:Lcom/amazon/xray/model/DB$OccurrenceTable;

    iget-object v4, v3, Lcom/amazon/xray/model/DB$OccurrenceTable;->START:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const/4 v5, 0x0

    aput-object v4, v2, v5

    iget-object v4, v3, Lcom/amazon/xray/model/DB$OccurrenceTable;->LENGTH:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const/4 v6, 0x1

    aput-object v4, v2, v6

    iget-object v3, v3, Lcom/amazon/xray/model/DB$OccurrenceTable;->ENTITY:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 18
    invoke-virtual {v0, v2}, Lcom/amazon/xray/model/sql/QueryBuilder;->select([Lcom/amazon/xray/model/sql/Selectable;)Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v2, Lcom/amazon/xray/model/DB;->OCCURRENCE:Lcom/amazon/xray/model/DB$OccurrenceTable;

    .line 21
    invoke-virtual {v0, v2}, Lcom/amazon/xray/model/sql/QueryBuilder;->from(Lcom/amazon/xray/model/sql/table/Table;)Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v2, Lcom/amazon/xray/model/DB;->OCCURRENCE:Lcom/amazon/xray/model/DB$OccurrenceTable;

    iget-object v2, v2, Lcom/amazon/xray/model/DB$OccurrenceTable;->START:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    .line 22
    invoke-virtual {v0, v2}, Lcom/amazon/xray/model/sql/QueryBuilder;->whereBetween(Lcom/amazon/xray/model/sql/column/Column;)Lcom/amazon/xray/model/sql/QueryBuilder;

    sput-object v0, Lcom/amazon/xray/model/loader/InfoCardTask;->OCCURRENCE_QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    .line 25
    new-instance v0, Lcom/amazon/xray/model/sql/QueryBuilder;

    invoke-direct {v0}, Lcom/amazon/xray/model/sql/QueryBuilder;-><init>()V

    const/16 v2, 0xc

    new-array v2, v2, [Lcom/amazon/xray/model/sql/Selectable;

    sget-object v3, Lcom/amazon/xray/model/DB;->ENTITY:Lcom/amazon/xray/model/DB$EntityTable;

    iget-object v7, v3, Lcom/amazon/xray/model/DB$EntityTable;->ID:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    aput-object v7, v2, v5

    iget-object v7, v3, Lcom/amazon/xray/model/DB$EntityTable;->LABEL:Lcom/amazon/xray/model/sql/column/StringColumn;

    aput-object v7, v2, v6

    iget-object v7, v3, Lcom/amazon/xray/model/DB$EntityTable;->LOCALIZED_LABEL:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    aput-object v7, v2, v4

    iget-object v4, v3, Lcom/amazon/xray/model/DB$EntityTable;->TYPE:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    aput-object v4, v2, v1

    iget-object v1, v3, Lcom/amazon/xray/model/DB$EntityTable;->HAS_INFO_CARD:Lcom/amazon/xray/model/sql/column/BooleanColumn;

    const/4 v3, 0x4

    aput-object v1, v2, v3

    sget-object v1, Lcom/amazon/xray/model/DB;->DESCRIPTION:Lcom/amazon/xray/model/DB$DescriptionTable;

    iget-object v3, v1, Lcom/amazon/xray/model/DB$DescriptionTable;->TEXT:Lcom/amazon/xray/model/sql/column/StringColumn;

    const/4 v4, 0x5

    aput-object v3, v2, v4

    iget-object v3, v1, Lcom/amazon/xray/model/DB$DescriptionTable;->WILDCARD:Lcom/amazon/xray/model/sql/column/StringColumn;

    const/4 v4, 0x6

    aput-object v3, v2, v4

    iget-object v1, v1, Lcom/amazon/xray/model/DB$DescriptionTable;->SOURCE:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const/4 v3, 0x7

    aput-object v1, v2, v3

    sget-object v1, Lcom/amazon/xray/model/DB;->SOURCE:Lcom/amazon/xray/model/DB$SourceTable;

    iget-object v3, v1, Lcom/amazon/xray/model/DB$SourceTable;->LABEL:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const/16 v4, 0x8

    aput-object v3, v2, v4

    iget-object v3, v1, Lcom/amazon/xray/model/DB$SourceTable;->URL:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const/16 v4, 0x9

    aput-object v3, v2, v4

    iget-object v3, v1, Lcom/amazon/xray/model/DB$SourceTable;->LICENSE_LABEL:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const/16 v4, 0xa

    aput-object v3, v2, v4

    iget-object v1, v1, Lcom/amazon/xray/model/DB$SourceTable;->LICENSE_URL:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const/16 v3, 0xb

    aput-object v1, v2, v3

    .line 26
    invoke-virtual {v0, v2}, Lcom/amazon/xray/model/sql/QueryBuilder;->select([Lcom/amazon/xray/model/sql/Selectable;)Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v1, Lcom/amazon/xray/model/DB;->ENTITY:Lcom/amazon/xray/model/DB$EntityTable;

    .line 38
    invoke-virtual {v0, v1}, Lcom/amazon/xray/model/sql/QueryBuilder;->from(Lcom/amazon/xray/model/sql/table/Table;)Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v1, Lcom/amazon/xray/model/DB;->DESCRIPTION:Lcom/amazon/xray/model/DB$DescriptionTable;

    iget-object v2, v1, Lcom/amazon/xray/model/DB$DescriptionTable;->ENTITY:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    sget-object v3, Lcom/amazon/xray/model/DB;->ENTITY:Lcom/amazon/xray/model/DB$EntityTable;

    iget-object v3, v3, Lcom/amazon/xray/model/DB$EntityTable;->ID:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    .line 39
    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/xray/model/sql/QueryBuilder;->leftJoin(Lcom/amazon/xray/model/sql/table/Table;Lcom/amazon/xray/model/sql/column/Column;Lcom/amazon/xray/model/sql/column/Column;)Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v1, Lcom/amazon/xray/model/DB;->SOURCE:Lcom/amazon/xray/model/DB$SourceTable;

    iget-object v2, v1, Lcom/amazon/xray/model/DB$SourceTable;->ID:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    sget-object v3, Lcom/amazon/xray/model/DB;->DESCRIPTION:Lcom/amazon/xray/model/DB$DescriptionTable;

    iget-object v3, v3, Lcom/amazon/xray/model/DB$DescriptionTable;->SOURCE:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    .line 40
    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/xray/model/sql/QueryBuilder;->leftJoin(Lcom/amazon/xray/model/sql/table/Table;Lcom/amazon/xray/model/sql/column/Column;Lcom/amazon/xray/model/sql/column/Column;)Lcom/amazon/xray/model/sql/QueryBuilder;

    new-array v1, v6, [Lcom/amazon/xray/model/sql/column/Column;

    sget-object v2, Lcom/amazon/xray/model/DB;->ENTITY:Lcom/amazon/xray/model/DB$EntityTable;

    iget-object v2, v2, Lcom/amazon/xray/model/DB$EntityTable;->ID:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    aput-object v2, v1, v5

    .line 41
    invoke-virtual {v0, v1}, Lcom/amazon/xray/model/sql/QueryBuilder;->whereEq([Lcom/amazon/xray/model/sql/column/Column;)Lcom/amazon/xray/model/sql/QueryBuilder;

    sput-object v0, Lcom/amazon/xray/model/loader/InfoCardTask;->ENTITY_QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/xray/model/SidecarDatabaseAdapter;II)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/amazon/xray/model/loader/ContentLoader$Task;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/amazon/xray/model/loader/InfoCardTask;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    .line 67
    iput p2, p0, Lcom/amazon/xray/model/loader/InfoCardTask;->selectionStart:I

    .line 68
    iput p3, p0, Lcom/amazon/xray/model/loader/InfoCardTask;->selectionEnd:I

    return-void
.end method


# virtual methods
.method protected doInBackground()Lcom/amazon/xray/model/object/Entity;
    .locals 9

    .line 74
    sget-object v0, Lcom/amazon/xray/model/loader/InfoCardTask;->OCCURRENCE_QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    iget-object v1, p0, Lcom/amazon/xray/model/loader/InfoCardTask;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    invoke-virtual {v1}, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iget v3, p0, Lcom/amazon/xray/model/loader/InfoCardTask;->selectionStart:I

    add-int/lit16 v3, v3, -0xc8

    .line 75
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Lcom/amazon/xray/model/loader/InfoCardTask;->selectionEnd:I

    .line 76
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 74
    invoke-virtual {v0, v1, v2}, Lcom/amazon/xray/model/sql/QueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 78
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 80
    sget-object v1, Lcom/amazon/xray/model/loader/InfoCardTask;->OCCURRENCE_QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v2, Lcom/amazon/xray/model/DB;->OCCURRENCE:Lcom/amazon/xray/model/DB$OccurrenceTable;

    iget-object v2, v2, Lcom/amazon/xray/model/DB$OccurrenceTable;->START:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    invoke-virtual {v1, v0, v2}, Lcom/amazon/xray/model/sql/QueryBuilder;->get(Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/IntegerColumn;)I

    move-result v1

    .line 81
    sget-object v2, Lcom/amazon/xray/model/loader/InfoCardTask;->OCCURRENCE_QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v3, Lcom/amazon/xray/model/DB;->OCCURRENCE:Lcom/amazon/xray/model/DB$OccurrenceTable;

    iget-object v3, v3, Lcom/amazon/xray/model/DB$OccurrenceTable;->LENGTH:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    invoke-virtual {v2, v0, v3}, Lcom/amazon/xray/model/sql/QueryBuilder;->get(Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/IntegerColumn;)I

    move-result v2

    add-int/2addr v2, v1

    .line 82
    iget v3, p0, Lcom/amazon/xray/model/loader/InfoCardTask;->selectionStart:I

    if-lt v3, v1, :cond_0

    iget v1, p0, Lcom/amazon/xray/model/loader/InfoCardTask;->selectionEnd:I

    if-lt v1, v2, :cond_1

    goto :goto_0

    .line 87
    :cond_1
    sget-object v1, Lcom/amazon/xray/model/loader/InfoCardTask;->OCCURRENCE_QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v2, Lcom/amazon/xray/model/DB;->OCCURRENCE:Lcom/amazon/xray/model/DB$OccurrenceTable;

    iget-object v2, v2, Lcom/amazon/xray/model/DB$OccurrenceTable;->ENTITY:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    invoke-virtual {v1, v0, v2}, Lcom/amazon/xray/model/sql/QueryBuilder;->get(Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/IntegerColumn;)I

    move-result v4

    .line 88
    sget-object v1, Lcom/amazon/xray/model/loader/InfoCardTask;->ENTITY_QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    iget-object v2, p0, Lcom/amazon/xray/model/loader/InfoCardTask;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    invoke-virtual {v2}, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/amazon/xray/model/sql/QueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;I)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 90
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/amazon/xray/model/loader/InfoCardTask;->ENTITY_QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v3, Lcom/amazon/xray/model/DB;->ENTITY:Lcom/amazon/xray/model/DB$EntityTable;

    iget-object v3, v3, Lcom/amazon/xray/model/DB$EntityTable;->HAS_INFO_CARD:Lcom/amazon/xray/model/sql/column/BooleanColumn;

    invoke-virtual {v2, v1, v3}, Lcom/amazon/xray/model/sql/QueryBuilder;->get(Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/BooleanColumn;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 94
    :cond_2
    new-instance v2, Lcom/amazon/xray/model/object/Entity;

    sget-object v3, Lcom/amazon/xray/model/loader/InfoCardTask;->ENTITY_QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v5, Lcom/amazon/xray/model/DB;->ENTITY:Lcom/amazon/xray/model/DB$EntityTable;

    iget-object v5, v5, Lcom/amazon/xray/model/DB$EntityTable;->LABEL:Lcom/amazon/xray/model/sql/column/StringColumn;

    .line 95
    invoke-virtual {v3, v1, v5}, Lcom/amazon/xray/model/sql/QueryBuilder;->get(Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/StringColumn;)Ljava/lang/String;

    move-result-object v5

    iget-object v3, p0, Lcom/amazon/xray/model/loader/InfoCardTask;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    sget-object v6, Lcom/amazon/xray/model/loader/InfoCardTask;->ENTITY_QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v7, Lcom/amazon/xray/model/DB;->ENTITY:Lcom/amazon/xray/model/DB$EntityTable;

    iget-object v7, v7, Lcom/amazon/xray/model/DB$EntityTable;->TYPE:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    .line 96
    invoke-virtual {v3, v6, v1, v7}, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->getNullableEntityType(Lcom/amazon/xray/model/sql/QueryBuilder;Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/IntegerColumn;)Lcom/amazon/xray/model/object/EntityType;

    move-result-object v6

    iget-object v3, p0, Lcom/amazon/xray/model/loader/InfoCardTask;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    sget-object v7, Lcom/amazon/xray/model/loader/InfoCardTask;->ENTITY_QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    .line 97
    invoke-static {v3, v7, v1}, Lcom/amazon/xray/model/util/DescriptionUtil;->getDescription(Lcom/amazon/xray/model/SidecarDatabaseAdapter;Lcom/amazon/xray/model/sql/QueryBuilder;Landroid/database/Cursor;)Lcom/amazon/xray/model/object/Description;

    move-result-object v7

    const/4 v8, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/amazon/xray/model/object/Entity;-><init>(ILjava/lang/String;Lcom/amazon/xray/model/object/EntityType;Lcom/amazon/xray/model/object/Description;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 104
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v2

    .line 100
    :cond_3
    :goto_1
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 101
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 104
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    return-object v0

    :catchall_1
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 105
    throw v1
.end method

.method protected bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/amazon/xray/model/loader/InfoCardTask;->doInBackground()Lcom/amazon/xray/model/object/Entity;

    move-result-object v0

    return-object v0
.end method
