.class public Lcom/amazon/xray/model/loader/EntityDetailTask;
.super Lcom/amazon/xray/model/loader/ContentLoader$Task;
.source "EntityDetailTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/xray/model/loader/EntityDetailTask$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/xray/model/loader/ContentLoader$Task<",
        "Lcom/amazon/xray/model/loader/EntityDetailTask$Result;",
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

    .line 26
    new-instance v0, Lcom/amazon/xray/model/sql/QueryBuilder;

    invoke-direct {v0}, Lcom/amazon/xray/model/sql/QueryBuilder;-><init>()V

    const/16 v1, 0xb

    new-array v1, v1, [Lcom/amazon/xray/model/sql/Selectable;

    sget-object v2, Lcom/amazon/xray/model/DB;->ENTITY:Lcom/amazon/xray/model/DB$EntityTable;

    iget-object v3, v2, Lcom/amazon/xray/model/DB$EntityTable;->ID:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    iget-object v3, v2, Lcom/amazon/xray/model/DB$EntityTable;->LABEL:Lcom/amazon/xray/model/sql/column/StringColumn;

    const/4 v5, 0x1

    aput-object v3, v1, v5

    iget-object v3, v2, Lcom/amazon/xray/model/DB$EntityTable;->LOCALIZED_LABEL:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const/4 v6, 0x2

    aput-object v3, v1, v6

    iget-object v2, v2, Lcom/amazon/xray/model/DB$EntityTable;->TYPE:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/xray/model/DB;->DESCRIPTION:Lcom/amazon/xray/model/DB$DescriptionTable;

    iget-object v3, v2, Lcom/amazon/xray/model/DB$DescriptionTable;->TEXT:Lcom/amazon/xray/model/sql/column/StringColumn;

    const/4 v6, 0x4

    aput-object v3, v1, v6

    iget-object v3, v2, Lcom/amazon/xray/model/DB$DescriptionTable;->WILDCARD:Lcom/amazon/xray/model/sql/column/StringColumn;

    const/4 v6, 0x5

    aput-object v3, v1, v6

    iget-object v2, v2, Lcom/amazon/xray/model/DB$DescriptionTable;->SOURCE:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/xray/model/DB;->SOURCE:Lcom/amazon/xray/model/DB$SourceTable;

    iget-object v3, v2, Lcom/amazon/xray/model/DB$SourceTable;->LABEL:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const/4 v6, 0x7

    aput-object v3, v1, v6

    iget-object v3, v2, Lcom/amazon/xray/model/DB$SourceTable;->URL:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const/16 v6, 0x8

    aput-object v3, v1, v6

    iget-object v3, v2, Lcom/amazon/xray/model/DB$SourceTable;->LICENSE_LABEL:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const/16 v6, 0x9

    aput-object v3, v1, v6

    iget-object v2, v2, Lcom/amazon/xray/model/DB$SourceTable;->LICENSE_URL:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    .line 27
    invoke-virtual {v0, v1}, Lcom/amazon/xray/model/sql/QueryBuilder;->select([Lcom/amazon/xray/model/sql/Selectable;)Lcom/amazon/xray/model/sql/QueryBuilder;

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

    new-array v1, v5, [Lcom/amazon/xray/model/sql/column/Column;

    sget-object v2, Lcom/amazon/xray/model/DB;->ENTITY:Lcom/amazon/xray/model/DB$EntityTable;

    iget-object v2, v2, Lcom/amazon/xray/model/DB$EntityTable;->ID:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    aput-object v2, v1, v4

    .line 41
    invoke-virtual {v0, v1}, Lcom/amazon/xray/model/sql/QueryBuilder;->whereEq([Lcom/amazon/xray/model/sql/column/Column;)Lcom/amazon/xray/model/sql/QueryBuilder;

    sput-object v0, Lcom/amazon/xray/model/loader/EntityDetailTask;->QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/xray/model/SidecarDatabaseAdapter;I)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/amazon/xray/model/loader/ContentLoader$Task;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/amazon/xray/model/loader/EntityDetailTask;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    .line 59
    iput p2, p0, Lcom/amazon/xray/model/loader/EntityDetailTask;->entityId:I

    return-void
.end method


# virtual methods
.method protected doInBackground()Lcom/amazon/xray/model/loader/EntityDetailTask$Result;
    .locals 10

    .line 65
    sget-object v0, Lcom/amazon/xray/model/loader/EntityDetailTask;->QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    iget-object v1, p0, Lcom/amazon/xray/model/loader/EntityDetailTask;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    invoke-virtual {v1}, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget v2, p0, Lcom/amazon/xray/model/loader/EntityDetailTask;->entityId:I

    invoke-virtual {v0, v1, v2}, Lcom/amazon/xray/model/sql/QueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;I)Landroid/database/Cursor;

    move-result-object v0

    .line 67
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/xray/model/loader/ContentLoader$Task;->isCancelled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    new-instance v1, Lcom/amazon/xray/model/object/Entity;

    sget-object v3, Lcom/amazon/xray/model/loader/EntityDetailTask;->QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v4, Lcom/amazon/xray/model/DB;->ENTITY:Lcom/amazon/xray/model/DB$EntityTable;

    iget-object v4, v4, Lcom/amazon/xray/model/DB$EntityTable;->ID:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    .line 69
    invoke-virtual {v3, v0, v4}, Lcom/amazon/xray/model/sql/QueryBuilder;->get(Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/IntegerColumn;)I

    move-result v4

    iget-object v3, p0, Lcom/amazon/xray/model/loader/EntityDetailTask;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    sget-object v5, Lcom/amazon/xray/model/loader/EntityDetailTask;->QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    .line 70
    invoke-static {v3, v5, v0}, Lcom/amazon/xray/model/util/EntityUtil;->getEntityLabel(Lcom/amazon/xray/model/SidecarDatabaseAdapter;Lcom/amazon/xray/model/sql/QueryBuilder;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    iget-object v3, p0, Lcom/amazon/xray/model/loader/EntityDetailTask;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    sget-object v6, Lcom/amazon/xray/model/loader/EntityDetailTask;->QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v7, Lcom/amazon/xray/model/DB;->ENTITY:Lcom/amazon/xray/model/DB$EntityTable;

    iget-object v7, v7, Lcom/amazon/xray/model/DB$EntityTable;->TYPE:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    .line 71
    invoke-virtual {v3, v6, v0, v7}, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->getNullableEntityType(Lcom/amazon/xray/model/sql/QueryBuilder;Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/IntegerColumn;)Lcom/amazon/xray/model/object/EntityType;

    move-result-object v6

    iget-object v3, p0, Lcom/amazon/xray/model/loader/EntityDetailTask;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    sget-object v7, Lcom/amazon/xray/model/loader/EntityDetailTask;->QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    .line 72
    invoke-static {v3, v7, v0}, Lcom/amazon/xray/model/util/DescriptionUtil;->getDescription(Lcom/amazon/xray/model/SidecarDatabaseAdapter;Lcom/amazon/xray/model/sql/QueryBuilder;Landroid/database/Cursor;)Lcom/amazon/xray/model/object/Description;

    move-result-object v7

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/amazon/xray/model/object/Entity;-><init>(ILjava/lang/String;Lcom/amazon/xray/model/object/EntityType;Lcom/amazon/xray/model/object/Description;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 76
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 78
    invoke-virtual {p0}, Lcom/amazon/xray/model/loader/ContentLoader$Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v2

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/amazon/xray/model/loader/EntityDetailTask;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    invoke-virtual {v0}, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->getBookMetadata()Lcom/amazon/xray/model/object/BookMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/xray/model/object/BookMetadata;->getHasExcerpts()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 86
    invoke-static {}, Lcom/amazon/xray/plugin/util/BookUtil;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    const-string v1, "XrayReadingSession"

    invoke-static {v0, v1}, Lcom/amazon/xray/metrics/SessionManager;->getSessionMetric(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Lcom/amazon/xray/metrics/Metric;

    move-result-object v0

    const/4 v1, 0x1

    const-string v4, "HasExcerpts"

    .line 88
    invoke-virtual {v0, v4, v1}, Lcom/amazon/xray/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 94
    :cond_2
    iget v0, p0, Lcom/amazon/xray/model/loader/EntityDetailTask;->entityId:I

    if-nez v0, :cond_3

    .line 95
    iget-object v0, p0, Lcom/amazon/xray/model/loader/EntityDetailTask;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    invoke-virtual {v0}, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->getEntityTypes()Ljava/util/List;

    move-result-object v2

    .line 96
    iget-object v0, p0, Lcom/amazon/xray/model/loader/EntityDetailTask;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->getOverrideString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 98
    :cond_3
    iget-object v0, p0, Lcom/amazon/xray/model/loader/EntityDetailTask;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->getOverrideString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v8, v0

    move-object v4, v2

    .line 101
    new-instance v0, Lcom/amazon/xray/model/loader/EntityDetailTask$Result;

    iget-object v1, p0, Lcom/amazon/xray/model/loader/EntityDetailTask;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    invoke-virtual {v1}, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->getBookMetadata()Lcom/amazon/xray/model/object/BookMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/xray/model/object/BookMetadata;->getHasImages()Z

    move-result v6

    iget-object v1, p0, Lcom/amazon/xray/model/loader/EntityDetailTask;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    invoke-virtual {v1}, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->getBookMetadata()Lcom/amazon/xray/model/object/BookMetadata;

    move-result-object v1

    .line 102
    invoke-virtual {v1}, Lcom/amazon/xray/model/object/BookMetadata;->getShowSpoilersDefault()Z

    move-result v7

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/amazon/xray/model/loader/EntityDetailTask$Result;-><init>(Lcom/amazon/xray/model/object/Entity;Ljava/util/List;ZZZLjava/lang/String;Lcom/amazon/xray/model/loader/EntityDetailTask$1;)V

    return-object v0

    :catchall_0
    move-exception v1

    .line 76
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 77
    throw v1
.end method

.method protected bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/amazon/xray/model/loader/EntityDetailTask;->doInBackground()Lcom/amazon/xray/model/loader/EntityDetailTask$Result;

    move-result-object v0

    return-object v0
.end method
