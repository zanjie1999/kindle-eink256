.class public Lcom/amazon/xray/model/loader/EntitiesOfTypeTask;
.super Lcom/amazon/xray/model/loader/ContentLoader$Task;
.source "EntitiesOfTypeTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/xray/model/loader/ContentLoader$Task<",
        "Ljava/util/List<",
        "Lcom/amazon/xray/model/object/LabeledGroup<",
        "Lcom/amazon/xray/model/object/Entity;",
        ">;>;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_ENTITY_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/xray/model/object/Entity;",
            ">;"
        }
    .end annotation
.end field

.field private static final OVERESTIMATED_MAX_OCCURRENCE_LENGTH:I = 0xc8

.field private static final RANGE_QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;


# instance fields
.field private final byLabelGrouper:Lcom/amazon/xray/model/grouper/ByLabelEntityGrouper;

.field private final db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

.field private final entityTypeId:I

.field private final resources:Landroid/content/res/Resources;

.field private final sort:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 39
    new-instance v0, Lcom/amazon/xray/model/sql/QueryBuilder;

    invoke-direct {v0}, Lcom/amazon/xray/model/sql/QueryBuilder;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/amazon/xray/model/sql/Selectable;

    sget-object v2, Lcom/amazon/xray/model/DB;->OCCURRENCE:Lcom/amazon/xray/model/DB$OccurrenceTable;

    iget-object v3, v2, Lcom/amazon/xray/model/DB$OccurrenceTable;->START:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    iget-object v3, v2, Lcom/amazon/xray/model/DB$OccurrenceTable;->LENGTH:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const/4 v4, 0x1

    aput-object v3, v1, v4

    iget-object v2, v2, Lcom/amazon/xray/model/DB$OccurrenceTable;->ENTITY:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 40
    invoke-virtual {v0, v1}, Lcom/amazon/xray/model/sql/QueryBuilder;->select([Lcom/amazon/xray/model/sql/Selectable;)Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v1, Lcom/amazon/xray/model/DB;->OCCURRENCE:Lcom/amazon/xray/model/DB$OccurrenceTable;

    .line 43
    invoke-virtual {v0, v1}, Lcom/amazon/xray/model/sql/QueryBuilder;->from(Lcom/amazon/xray/model/sql/table/Table;)Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v1, Lcom/amazon/xray/model/DB;->OCCURRENCE:Lcom/amazon/xray/model/DB$OccurrenceTable;

    iget-object v1, v1, Lcom/amazon/xray/model/DB$OccurrenceTable;->START:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    .line 44
    invoke-virtual {v0, v1}, Lcom/amazon/xray/model/sql/QueryBuilder;->whereBetween(Lcom/amazon/xray/model/sql/column/Column;)Lcom/amazon/xray/model/sql/QueryBuilder;

    sput-object v0, Lcom/amazon/xray/model/loader/EntitiesOfTypeTask;->RANGE_QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/amazon/xray/model/loader/EntitiesOfTypeTask;->EMPTY_ENTITY_SET:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/xray/model/SidecarDatabaseAdapter;II)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/amazon/xray/model/loader/ContentLoader$Task;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/amazon/xray/model/loader/EntitiesOfTypeTask;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    .line 80
    iput p2, p0, Lcom/amazon/xray/model/loader/EntitiesOfTypeTask;->entityTypeId:I

    .line 81
    iput p3, p0, Lcom/amazon/xray/model/loader/EntitiesOfTypeTask;->sort:I

    .line 83
    new-instance p1, Lcom/amazon/xray/model/grouper/ByLabelEntityGrouper;

    invoke-direct {p1}, Lcom/amazon/xray/model/grouper/ByLabelEntityGrouper;-><init>()V

    iput-object p1, p0, Lcom/amazon/xray/model/loader/EntitiesOfTypeTask;->byLabelGrouper:Lcom/amazon/xray/model/grouper/ByLabelEntityGrouper;

    .line 84
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/xray/model/loader/EntitiesOfTypeTask;->resources:Landroid/content/res/Resources;

    return-void
.end method

.method private getCurrentPageEntities(Ljava/util/List;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/xray/model/object/Entity;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/amazon/xray/model/object/Entity;",
            ">;"
        }
    .end annotation

    .line 197
    invoke-static {}, Lcom/amazon/xray/plugin/util/NavigatorUtil;->getCurrentPageRange()Lcom/amazon/xray/model/object/PositionRange;

    move-result-object v0

    if-nez v0, :cond_0

    .line 199
    sget-object p1, Lcom/amazon/xray/model/loader/EntitiesOfTypeTask;->EMPTY_ENTITY_SET:Ljava/util/Set;

    return-object p1

    .line 203
    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    .line 204
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/xray/model/object/Entity;

    .line 205
    invoke-virtual {v2}, Lcom/amazon/xray/model/object/Entity;->getId()I

    move-result v3

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 209
    :cond_1
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 210
    sget-object v2, Lcom/amazon/xray/model/loader/EntitiesOfTypeTask;->RANGE_QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    iget-object v3, p0, Lcom/amazon/xray/model/loader/EntitiesOfTypeTask;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    invoke-virtual {v3}, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 211
    invoke-virtual {v0}, Lcom/amazon/xray/model/object/PositionRange;->getLocation()I

    move-result v6

    add-int/lit16 v6, v6, -0xc8

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 212
    invoke-virtual {v0}, Lcom/amazon/xray/model/object/PositionRange;->getEnd()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 210
    invoke-virtual {v2, v3, v4}, Lcom/amazon/xray/model/sql/QueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 215
    :cond_2
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/xray/model/loader/ContentLoader$Task;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 217
    sget-object v3, Lcom/amazon/xray/model/loader/EntitiesOfTypeTask;->RANGE_QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v4, Lcom/amazon/xray/model/DB;->OCCURRENCE:Lcom/amazon/xray/model/DB$OccurrenceTable;

    iget-object v4, v4, Lcom/amazon/xray/model/DB$OccurrenceTable;->START:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    invoke-virtual {v3, v2, v4}, Lcom/amazon/xray/model/sql/QueryBuilder;->get(Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/IntegerColumn;)I

    move-result v3

    .line 218
    sget-object v4, Lcom/amazon/xray/model/loader/EntitiesOfTypeTask;->RANGE_QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v5, Lcom/amazon/xray/model/DB;->OCCURRENCE:Lcom/amazon/xray/model/DB$OccurrenceTable;

    iget-object v5, v5, Lcom/amazon/xray/model/DB$OccurrenceTable;->LENGTH:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    invoke-virtual {v4, v2, v5}, Lcom/amazon/xray/model/sql/QueryBuilder;->get(Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/IntegerColumn;)I

    move-result v4

    add-int/2addr v4, v3

    .line 219
    invoke-virtual {v0}, Lcom/amazon/xray/model/object/PositionRange;->getEnd()I

    move-result v5

    if-ge v3, v5, :cond_2

    invoke-virtual {v0}, Lcom/amazon/xray/model/object/PositionRange;->getLocation()I

    move-result v3

    if-gt v4, v3, :cond_3

    goto :goto_1

    .line 224
    :cond_3
    sget-object v3, Lcom/amazon/xray/model/loader/EntitiesOfTypeTask;->RANGE_QUERY:Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v4, Lcom/amazon/xray/model/DB;->OCCURRENCE:Lcom/amazon/xray/model/DB$OccurrenceTable;

    iget-object v4, v4, Lcom/amazon/xray/model/DB$OccurrenceTable;->ENTITY:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    invoke-virtual {v3, v2, v4}, Lcom/amazon/xray/model/sql/QueryBuilder;->get(Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/IntegerColumn;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/xray/model/object/Entity;

    if-eqz v3, :cond_2

    .line 226
    invoke-virtual {p1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 230
    :cond_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 231
    throw p1
.end method

.method private groupAndSortByLabel(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/xray/model/object/Entity;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/xray/model/object/LabeledGroup<",
            "Lcom/amazon/xray/model/object/Entity;",
            ">;>;"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/amazon/xray/model/loader/EntitiesOfTypeTask;->byLabelGrouper:Lcom/amazon/xray/model/grouper/ByLabelEntityGrouper;

    invoke-virtual {v0, p1}, Lcom/amazon/xray/model/grouper/ByLabelEntityGrouper;->group(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private groupAndSortByRelevance(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/xray/model/object/Entity;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/xray/model/object/LabeledGroup<",
            "Lcom/amazon/xray/model/object/Entity;",
            ">;>;"
        }
    .end annotation

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 170
    new-instance v1, Lcom/amazon/xray/model/object/Entity$CountComparator;

    invoke-direct {v1}, Lcom/amazon/xray/model/object/Entity$CountComparator;-><init>()V

    .line 173
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/amazon/xray/model/loader/EntitiesOfTypeTask;->getCurrentPageEntities(Ljava/util/List;)Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 174
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 175
    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 177
    :cond_0
    new-instance v3, Lcom/amazon/xray/model/object/LabeledGroup;

    iget-object v4, p0, Lcom/amazon/xray/model/loader/EntitiesOfTypeTask;->resources:Landroid/content/res/Resources;

    sget v5, Lcom/amazon/kindle/xray/R$string;->xray_current_page:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/amazon/xray/model/object/LabeledGroup;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 181
    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 182
    new-instance p1, Lcom/amazon/xray/model/object/LabeledGroup;

    iget-object v1, p0, Lcom/amazon/xray/model/loader/EntitiesOfTypeTask;->resources:Landroid/content/res/Resources;

    sget v3, Lcom/amazon/kindle/xray/R$string;->xray_other_entities_book:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1, v2}, Lcom/amazon/xray/model/object/LabeledGroup;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/amazon/xray/model/loader/EntitiesOfTypeTask;->doInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public doInBackground()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/xray/model/object/LabeledGroup<",
            "Lcom/amazon/xray/model/object/Entity;",
            ">;>;"
        }
    .end annotation

    .line 90
    new-instance v0, Lcom/amazon/xray/model/sql/QueryBuilder;

    invoke-direct {v0}, Lcom/amazon/xray/model/sql/QueryBuilder;-><init>()V

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/amazon/xray/model/sql/Selectable;

    sget-object v2, Lcom/amazon/xray/model/DB;->ENTITY:Lcom/amazon/xray/model/DB$EntityTable;

    iget-object v3, v2, Lcom/amazon/xray/model/DB$EntityTable;->ID:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    iget-object v3, v2, Lcom/amazon/xray/model/DB$EntityTable;->TYPE:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const/4 v5, 0x1

    aput-object v3, v1, v5

    iget-object v3, v2, Lcom/amazon/xray/model/DB$EntityTable;->LABEL:Lcom/amazon/xray/model/sql/column/StringColumn;

    const/4 v6, 0x2

    aput-object v3, v1, v6

    iget-object v3, v2, Lcom/amazon/xray/model/DB$EntityTable;->LOCALIZED_LABEL:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const/4 v6, 0x3

    aput-object v3, v1, v6

    iget-object v2, v2, Lcom/amazon/xray/model/DB$EntityTable;->COUNT:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/xray/model/DB;->DESCRIPTION:Lcom/amazon/xray/model/DB$DescriptionTable;

    iget-object v3, v2, Lcom/amazon/xray/model/DB$DescriptionTable;->TEXT:Lcom/amazon/xray/model/sql/column/StringColumn;

    const/4 v6, 0x5

    aput-object v3, v1, v6

    iget-object v2, v2, Lcom/amazon/xray/model/DB$DescriptionTable;->SOURCE:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 91
    invoke-virtual {v0, v1}, Lcom/amazon/xray/model/sql/QueryBuilder;->select([Lcom/amazon/xray/model/sql/Selectable;)Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v1, Lcom/amazon/xray/model/DB;->ENTITY:Lcom/amazon/xray/model/DB$EntityTable;

    .line 98
    invoke-virtual {v0, v1}, Lcom/amazon/xray/model/sql/QueryBuilder;->from(Lcom/amazon/xray/model/sql/table/Table;)Lcom/amazon/xray/model/sql/QueryBuilder;

    sget-object v1, Lcom/amazon/xray/model/DB;->DESCRIPTION:Lcom/amazon/xray/model/DB$DescriptionTable;

    iget-object v2, v1, Lcom/amazon/xray/model/DB$DescriptionTable;->ENTITY:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    sget-object v3, Lcom/amazon/xray/model/DB;->ENTITY:Lcom/amazon/xray/model/DB$EntityTable;

    iget-object v3, v3, Lcom/amazon/xray/model/DB$EntityTable;->ID:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    .line 99
    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/xray/model/sql/QueryBuilder;->leftJoin(Lcom/amazon/xray/model/sql/table/Table;Lcom/amazon/xray/model/sql/column/Column;Lcom/amazon/xray/model/sql/column/Column;)Lcom/amazon/xray/model/sql/QueryBuilder;

    .line 101
    iget-object v1, p0, Lcom/amazon/xray/model/loader/EntitiesOfTypeTask;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    iget v2, p0, Lcom/amazon/xray/model/loader/EntitiesOfTypeTask;->entityTypeId:I

    invoke-virtual {v1, v2}, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->getEntityType(I)Lcom/amazon/xray/model/object/EntityType;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 108
    invoke-virtual {v1}, Lcom/amazon/xray/model/object/EntityType;->getId()I

    move-result v1

    if-nez v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/amazon/xray/model/loader/EntitiesOfTypeTask;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    invoke-virtual {v1}, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/xray/model/sql/QueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-array v1, v5, [Lcom/amazon/xray/model/sql/column/Column;

    .line 111
    sget-object v2, Lcom/amazon/xray/model/DB;->ENTITY:Lcom/amazon/xray/model/DB$EntityTable;

    iget-object v2, v2, Lcom/amazon/xray/model/DB$EntityTable;->TYPE:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/amazon/xray/model/sql/QueryBuilder;->whereEq([Lcom/amazon/xray/model/sql/column/Column;)Lcom/amazon/xray/model/sql/QueryBuilder;

    .line 112
    iget-object v1, p0, Lcom/amazon/xray/model/loader/EntitiesOfTypeTask;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    invoke-virtual {v1}, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget v2, p0, Lcom/amazon/xray/model/loader/EntitiesOfTypeTask;->entityTypeId:I

    invoke-virtual {v0, v1, v2}, Lcom/amazon/xray/model/sql/QueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;I)Landroid/database/Cursor;

    move-result-object v1

    .line 117
    :goto_0
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 118
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/amazon/xray/model/loader/ContentLoader$Task;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 119
    sget-object v3, Lcom/amazon/xray/model/DB;->ENTITY:Lcom/amazon/xray/model/DB$EntityTable;

    iget-object v3, v3, Lcom/amazon/xray/model/DB$EntityTable;->ID:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    invoke-virtual {v0, v1, v3}, Lcom/amazon/xray/model/sql/QueryBuilder;->get(Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/IntegerColumn;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 121
    new-instance v3, Lcom/amazon/xray/model/object/Entity;

    iget-object v4, p0, Lcom/amazon/xray/model/loader/EntitiesOfTypeTask;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    .line 123
    invoke-static {v4, v0, v1}, Lcom/amazon/xray/model/util/EntityUtil;->getEntityLabel(Lcom/amazon/xray/model/SidecarDatabaseAdapter;Lcom/amazon/xray/model/sql/QueryBuilder;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    iget-object v4, p0, Lcom/amazon/xray/model/loader/EntitiesOfTypeTask;->db:Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    sget-object v7, Lcom/amazon/xray/model/DB;->ENTITY:Lcom/amazon/xray/model/DB$EntityTable;

    iget-object v7, v7, Lcom/amazon/xray/model/DB$EntityTable;->TYPE:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    .line 124
    invoke-virtual {v0, v1, v7}, Lcom/amazon/xray/model/sql/QueryBuilder;->get(Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/IntegerColumn;)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->getEntityType(I)Lcom/amazon/xray/model/object/EntityType;

    move-result-object v7

    .line 125
    invoke-static {v0, v1}, Lcom/amazon/xray/model/util/DescriptionUtil;->getDescriptionText(Lcom/amazon/xray/model/sql/QueryBuilder;Landroid/database/Cursor;)Lcom/amazon/xray/model/object/Description;

    move-result-object v8

    sget-object v4, Lcom/amazon/xray/model/DB;->ENTITY:Lcom/amazon/xray/model/DB$EntityTable;

    iget-object v4, v4, Lcom/amazon/xray/model/DB$EntityTable;->COUNT:Lcom/amazon/xray/model/sql/column/IntegerColumn;

    .line 126
    invoke-virtual {v0, v1, v4}, Lcom/amazon/xray/model/sql/QueryBuilder;->get(Landroid/database/Cursor;Lcom/amazon/xray/model/sql/column/IntegerColumn;)I

    move-result v9

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lcom/amazon/xray/model/object/Entity;-><init>(ILjava/lang/String;Lcom/amazon/xray/model/object/EntityType;Lcom/amazon/xray/model/object/Description;I)V

    .line 127
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 131
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 133
    invoke-virtual {p0}, Lcom/amazon/xray/model/loader/ContentLoader$Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    return-object v0

    .line 138
    :cond_3
    iget v0, p0, Lcom/amazon/xray/model/loader/EntitiesOfTypeTask;->sort:I

    if-eqz v0, :cond_4

    .line 142
    invoke-direct {p0, v2}, Lcom/amazon/xray/model/loader/EntitiesOfTypeTask;->groupAndSortByLabel(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 140
    :cond_4
    invoke-direct {p0, v2}, Lcom/amazon/xray/model/loader/EntitiesOfTypeTask;->groupAndSortByRelevance(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    .line 131
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 132
    throw v0

    .line 103
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EntityType not found [id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/amazon/xray/model/loader/EntitiesOfTypeTask;->entityTypeId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
