.class public Lcom/amazon/xray/model/object/DisplayableExcerptFactory;
.super Ljava/lang/Object;
.source "DisplayableExcerptFactory.java"


# static fields
.field private static final OCCURRENCE_QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;


# instance fields
.field private final db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

.field private final entityId:I

.field private final highlighter:Lcom/amazon/xray/ui/util/TextHighlighter;

.field private final imageScaling:Lcom/amazon/kindle/krx/content/images/ImageScaling;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 29
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

    .line 30
    invoke-virtual {v0, v1}, Lcom/amazon/xray/model/sql/QueryBuilder;->select([Lcom/amazon/xray/model/sql/Selectable;)Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v1, Lcom/amazon/xray/model/DB;->OCCURRENCE:Lcom/amazon/xray/model/DB$OccurrenceTable;

    .line 32
    invoke-virtual {v0, v1}, Lcom/amazon/xray/model/sql/QueryBuilder;->from(Lcom/amazon/xray/model/sql/table/Table;)Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v1, Lcom/amazon/xray/model/DB;->OCCURRENCE:Lcom/amazon/xray/model/DB$OccurrenceTable;

    iget-object v1, v1, Lcom/amazon/xray/model/DB$OccurrenceTable;->START:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    .line 33
    invoke-virtual {v0, v1}, Lcom/amazon/xray/model/sql/QueryBuilder;->whereBetween(Lcom/amazon/xray/model/sql/column/Column;)Lcom/amazon/xray/model/sql/QueryBuilder;

    new-array v1, v3, [Lcom/amazon/xray/model/sql/Selectable;

    sget-object v2, Lcom/amazon/xray/model/DB;->OCCURRENCE:Lcom/amazon/xray/model/DB$OccurrenceTable;

    iget-object v2, v2, Lcom/amazon/xray/model/DB$OccurrenceTable;->START:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    aput-object v2, v1, v4

    .line 34
    invoke-virtual {v0, v1}, Lcom/amazon/xray/model/sql/QueryBuilder;->orderBy([Lcom/amazon/xray/model/sql/Selectable;)Lcom/amazon/xray/model/sql/QueryBuilder;

    sput-object v0, Lcom/amazon/xray/model/object/DisplayableExcerptFactory;->OCCURRENCE_QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/xray/model/SidecarDatabaseAdapter;Lcom/amazon/kindle/krx/content/images/ImageScaling;I)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/amazon/xray/ui/util/TextHighlighter;

    invoke-direct {v0}, Lcom/amazon/xray/ui/util/TextHighlighter;-><init>()V

    iput-object v0, p0, Lcom/amazon/xray/model/object/DisplayableExcerptFactory;->highlighter:Lcom/amazon/xray/ui/util/TextHighlighter;

    .line 60
    iput-object p2, p0, Lcom/amazon/xray/model/object/DisplayableExcerptFactory;->imageScaling:Lcom/amazon/kindle/krx/content/images/ImageScaling;

    .line 61
    iput-object p1, p0, Lcom/amazon/xray/model/object/DisplayableExcerptFactory;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    .line 62
    iput p3, p0, Lcom/amazon/xray/model/object/DisplayableExcerptFactory;->entityId:I

    return-void
.end method


# virtual methods
.method public getDisplayableExcerpt(Lcom/amazon/xray/model/object/Excerpt;)Lcom/amazon/xray/model/object/DisplayableExcerpt;
    .locals 16

    move-object/from16 v1, p0

    .line 74
    invoke-static/range {p1 .. p1}, Lcom/amazon/xray/util/Validate;->notNull(Ljava/lang/Object;)V

    .line 77
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/xray/model/object/Excerpt;->getStart()I

    move-result v0

    .line 78
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/xray/model/object/Excerpt;->getLength()I

    move-result v2

    add-int/2addr v2, v0

    .line 79
    invoke-static {v0, v2}, Lcom/amazon/xray/plugin/util/ContentUtil;->getWords(II)Ljava/lang/String;

    move-result-object v3

    .line 83
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v4, :cond_1

    .line 86
    sget-object v4, Lcom/amazon/xray/model/object/DisplayableExcerptFactory;->OCCURRENCE_QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    iget-object v8, v1, Lcom/amazon/xray/model/object/DisplayableExcerptFactory;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    invoke-virtual {v8}, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    new-array v9, v5, [Ljava/lang/String;

    .line 87
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v7

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v6

    .line 86
    invoke-virtual {v4, v8, v9}, Lcom/amazon/xray/model/sql/QueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 89
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 90
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 91
    sget-object v4, Lcom/amazon/xray/model/object/DisplayableExcerptFactory;->OCCURRENCE_QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v8, Lcom/amazon/xray/model/DB;->OCCURRENCE:Lcom/amazon/xray/model/DB$OccurrenceTable;

    iget-object v8, v8, Lcom/amazon/xray/model/DB$OccurrenceTable;->START:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    invoke-virtual {v4, v2, v8}, Lcom/amazon/xray/model/sql/QueryBuilder;->get(Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/IntegerColumn;)I

    move-result v4

    .line 92
    sget-object v8, Lcom/amazon/xray/model/object/DisplayableExcerptFactory;->OCCURRENCE_QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v9, Lcom/amazon/xray/model/DB;->OCCURRENCE:Lcom/amazon/xray/model/DB$OccurrenceTable;

    iget-object v9, v9, Lcom/amazon/xray/model/DB$OccurrenceTable;->LENGTH:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    invoke-virtual {v8, v2, v9}, Lcom/amazon/xray/model/sql/QueryBuilder;->get(Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/IntegerColumn;)I

    move-result v8

    add-int/2addr v8, v4

    .line 94
    invoke-static {v4, v8}, Lcom/amazon/xray/plugin/util/ContentUtil;->getWords(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 97
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 100
    iget-object v2, v1, Lcom/amazon/xray/model/object/DisplayableExcerptFactory;->highlighter:Lcom/amazon/xray/ui/util/TextHighlighter;

    invoke-virtual {v2, v3, v0}, Lcom/amazon/xray/ui/util/TextHighlighter;->highlight(Ljava/lang/String;Ljava/util/List;)Landroid/text/Spannable;

    move-result-object v3

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 97
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 98
    throw v0

    .line 105
    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/xray/model/object/Excerpt;->getRelatedEntitiesIds()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/xray/model/util/DatabaseStringUtil;->parseIntegersAsStrings(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 106
    array-length v2, v0

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    .line 107
    new-instance v2, Lcom/amazon/xray/model/sql/QueryBuilder;

    invoke-direct {v2}, Lcom/amazon/xray/model/sql/QueryBuilder;-><init>()V

    const/4 v8, 0x3

    new-array v8, v8, [Lcom/amazon/xray/model/sql/Selectable;

    sget-object v9, Lcom/amazon/xray/model/DB;->ENTITY:Lcom/amazon/xray/model/DB$EntityTable;

    iget-object v10, v9, Lcom/amazon/xray/model/DB$EntityTable;->ID:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    aput-object v10, v8, v7

    iget-object v10, v9, Lcom/amazon/xray/model/DB$EntityTable;->LABEL:Lcom/amazon/xray/model/sql/column/StringColumn;

    aput-object v10, v8, v6

    iget-object v6, v9, Lcom/amazon/xray/model/DB$EntityTable;->LOCALIZED_LABEL:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    aput-object v6, v8, v5

    .line 108
    invoke-virtual {v2, v8}, Lcom/amazon/xray/model/sql/QueryBuilder;->select([Lcom/amazon/xray/model/sql/Selectable;)Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v5, Lcom/amazon/xray/model/DB;->ENTITY:Lcom/amazon/xray/model/DB$EntityTable;

    .line 111
    invoke-virtual {v2, v5}, Lcom/amazon/xray/model/sql/QueryBuilder;->from(Lcom/amazon/xray/model/sql/table/Table;)Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v5, Lcom/amazon/xray/model/DB;->ENTITY:Lcom/amazon/xray/model/DB$EntityTable;

    iget-object v5, v5, Lcom/amazon/xray/model/DB$EntityTable;->ID:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    array-length v6, v0

    .line 112
    invoke-virtual {v2, v5, v6}, Lcom/amazon/xray/model/sql/QueryBuilder;->whereIn(Lcom/amazon/xray/model/sql/column/Column;I)Lcom/amazon/xray/model/sql/QueryBuilder;

    .line 113
    iget-object v5, v1, Lcom/amazon/xray/model/object/DisplayableExcerptFactory;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    invoke-virtual {v5}, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v2, v5, v0}, Lcom/amazon/xray/model/sql/QueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 115
    :try_start_1
    new-instance v6, Landroid/util/SparseArray;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-direct {v6, v8}, Landroid/util/SparseArray;-><init>(I)V

    .line 116
    :cond_2
    :goto_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 118
    sget-object v8, Lcom/amazon/xray/model/DB;->ENTITY:Lcom/amazon/xray/model/DB$EntityTable;

    iget-object v8, v8, Lcom/amazon/xray/model/DB$EntityTable;->ID:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    invoke-virtual {v2, v5, v8}, Lcom/amazon/xray/model/sql/QueryBuilder;->get(Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/IntegerColumn;)I

    move-result v8

    if-eqz v8, :cond_2

    .line 119
    iget v9, v1, Lcom/amazon/xray/model/object/DisplayableExcerptFactory;->entityId:I

    if-eq v8, v9, :cond_2

    .line 121
    new-instance v15, Lcom/amazon/xray/model/object/Entity;

    iget-object v9, v1, Lcom/amazon/xray/model/object/DisplayableExcerptFactory;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    .line 123
    invoke-static {v9, v2, v5}, Lcom/amazon/xray/model/util/EntityUtil;->getEntityLabel(Lcom/amazon/xray/model/SidecarDatabaseAdapter;Lcom/amazon/xray/model/sql/QueryBuilder;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v15

    move v10, v8

    invoke-direct/range {v9 .. v14}, Lcom/amazon/xray/model/object/Entity;-><init>(ILjava/lang/String;Lcom/amazon/xray/model/object/EntityType;Lcom/amazon/xray/model/object/Description;I)V

    .line 121
    invoke-virtual {v6, v8, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 129
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v8

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 130
    :goto_3
    array-length v8, v0

    if-ge v7, v8, :cond_5

    .line 131
    aget-object v8, v0, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/amazon/xray/model/object/Entity;

    if-eqz v8, :cond_4

    .line 133
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 137
    :cond_5
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_1
    move-exception v0

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 138
    throw v0

    :cond_6
    move-object v2, v4

    .line 143
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/xray/model/object/Excerpt;->getImageId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 144
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/xray/model/object/Excerpt;->getImageId()Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lcom/amazon/xray/model/object/DisplayableExcerptFactory;->imageScaling:Lcom/amazon/kindle/krx/content/images/ImageScaling;

    invoke-static {v0, v4}, Lcom/amazon/xray/plugin/util/ContentUtil;->getImage(Ljava/lang/String;Lcom/amazon/kindle/krx/content/images/ImageScaling;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 147
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/xray/model/object/Excerpt;->getGoTo()I

    move-result v0

    invoke-static {v0}, Lcom/amazon/xray/plugin/util/NavigatorUtil;->createPosition(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    .line 148
    new-instance v5, Lcom/amazon/xray/model/object/DisplayableExcerpt;

    .line 151
    invoke-static {v0}, Lcom/amazon/xray/plugin/util/ContentUtil;->getPageLabel(Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/xray/plugin/util/ContentUtil$PageLabel;

    move-result-object v0

    invoke-direct {v5, v3, v4, v0, v2}, Lcom/amazon/xray/model/object/DisplayableExcerpt;-><init>(Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Lcom/amazon/xray/plugin/util/ContentUtil$PageLabel;Ljava/util/List;)V

    return-object v5
.end method
