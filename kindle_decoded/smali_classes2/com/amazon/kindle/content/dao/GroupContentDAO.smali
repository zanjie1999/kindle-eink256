.class public Lcom/amazon/kindle/content/dao/GroupContentDAO;
.super Ljava/lang/Object;
.source "GroupContentDAO.java"

# interfaces
.implements Lcom/amazon/kindle/content/dao/IGroupContentDAO;


# static fields
.field static final FIELDS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/content/ContentMetadataField;",
            ">;"
        }
    .end annotation
.end field

.field private static final GROUPS_COLUMNS:[Ljava/lang/String;

.field private static final GROUPS_SEARCH_COLUMNS:[Ljava/lang/String;

.field private static final GROUP_COUNT:Ljava/lang/String; = "GROUP_COUNT"

.field private static final GROUP_COUNT_SUBQUERY_COLUMN:[Ljava/lang/String;

.field private static final GROUP_ID_ONLY_COLUMNS:[Ljava/lang/String;

.field public static final GROUP_ID_SELECTION:Ljava/lang/String;

.field private static final GROUP_ID_W_COUNT_COLUMNS:[Ljava/lang/String;

.field private static final GROUP_ITEMS_SUBQUERY_COLUMNS:[Ljava/lang/String;

.field private static final GROUP_ITEM_AND_METADATA_COLUMNS:[Ljava/lang/String;

.field private static final GROUP_ITEM_AND_METADATA_FIELDS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/content/ContentMetadataField;",
            ">;"
        }
    .end annotation
.end field

.field private static final ITEM_ID_ONLY_COLUMNS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static final VISIBLE_GROUPS_GROUP_BY:Ljava/lang/String;

.field private static final VISIBLE_GROUPS_HAVING:Ljava/lang/String;

.field private static final VISIBLE_GROUPS_WHERE_CLAUSE:Ljava/lang/String;


# instance fields
.field private final dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 83
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    const/16 v1, 0x9

    new-array v1, v1, [Lcom/amazon/kindle/content/ContentMetadataField;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->TOTAL_SIZE:Lcom/amazon/kindle/content/ContentMetadataField;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->IMAGE_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->IMAGE_EXTENSION:Lcom/amazon/kindle/content/ContentMetadataField;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ASIN:Lcom/amazon/kindle/content/ContentMetadataField;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_COLLECTION_TYPES:Lcom/amazon/kindle/content/ContentMetadataField;

    const/4 v8, 0x5

    aput-object v2, v1, v8

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->SERIES_ORDER_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    const/4 v9, 0x6

    aput-object v2, v1, v9

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->SERIES_AUTHORS:Lcom/amazon/kindle/content/ContentMetadataField;

    const/4 v10, 0x7

    aput-object v2, v1, v10

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->SERIES_AUTHOR_PRONUNCIATIONS:Lcom/amazon/kindle/content/ContentMetadataField;

    const/16 v11, 0x8

    aput-object v2, v1, v11

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/content/dao/GroupContentDAO;->FIELDS:Ljava/util/Set;

    .line 85
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    new-array v1, v11, [Lcom/amazon/kindle/content/ContentMetadataField;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ITEM_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ITEM_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_POSITION:Lcom/amazon/kindle/content/ContentMetadataField;

    aput-object v2, v1, v5

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_POSITION_LABEL:Lcom/amazon/kindle/content/ContentMetadataField;

    aput-object v2, v1, v6

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_POSITION_LABEL_PREFIX:Lcom/amazon/kindle/content/ContentMetadataField;

    aput-object v2, v1, v7

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ORIGIN_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    aput-object v2, v1, v8

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->READ_STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    aput-object v2, v1, v9

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->SERIES_ORDER_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    aput-object v2, v1, v10

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/content/dao/GroupContentDAO;->GROUP_ITEM_AND_METADATA_FIELDS:Ljava/util/Set;

    .line 87
    const-class v0, Lcom/amazon/kindle/content/dao/GroupContentDAO;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/content/dao/GroupContentDAO;->TAG:Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    .line 90
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 91
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "AsinCount"

    aput-object v2, v1, v3

    sget-object v12, Lcom/amazon/kindle/content/ContentMetadataField;->IS_FALKOR_EPISODE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v12}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v1, v4

    const-string v12, "FalkorEpisodeCount"

    aput-object v12, v1, v5

    const-string v13, "COUNT(1) AS %s, SUM(%s) AS %s"

    invoke-static {v13, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lcom/amazon/kindle/content/dao/GroupContentDAO;->GROUP_ITEMS_SUBQUERY_COLUMNS:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    .line 92
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sput-object v0, Lcom/amazon/kindle/content/dao/GroupContentDAO;->GROUP_ID_ONLY_COLUMNS:[Ljava/lang/String;

    new-array v0, v8, [Ljava/lang/String;

    const-string v1, "gt.*"

    aput-object v1, v0, v3

    .line 93
    sget-object v13, Lcom/amazon/kindle/content/ContentMetadataField;->AUTHOR_ORDER:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v0, v4

    sget-object v13, Lcom/amazon/kindle/content/ContentMetadataField;->AUTHOR_ORDER_REVERSED:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 94
    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v0, v5

    sget-object v13, Lcom/amazon/kindle/content/ContentMetadataField;->PUBLICATION_DATE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v0, v6

    aput-object v2, v0, v7

    sput-object v0, Lcom/amazon/kindle/content/dao/GroupContentDAO;->GROUPS_COLUMNS:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/Object;

    aput-object v2, v0, v3

    aput-object v12, v0, v4

    const-string v12, "%s > 1 OR %s > 0"

    .line 95
    invoke-static {v12, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/content/dao/GroupContentDAO;->VISIBLE_GROUPS_WHERE_CLAUSE:Ljava/lang/String;

    .line 96
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/content/dao/GroupContentDAO;->VISIBLE_GROUPS_GROUP_BY:Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/Object;

    .line 97
    sget-object v12, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v12}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v0, v3

    const-string v12, "COUNT(%s) > 1"

    invoke-static {v12, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/content/dao/GroupContentDAO;->VISIBLE_GROUPS_HAVING:Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    .line 98
    sget-object v12, Lcom/amazon/kindle/content/ContentMetadataField;->ITEM_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v12}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v0, v3

    sput-object v0, Lcom/amazon/kindle/content/dao/GroupContentDAO;->ITEM_ID_ONLY_COLUMNS:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    new-array v12, v5, [Ljava/lang/Object;

    .line 100
    sget-object v13, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 101
    invoke-virtual {v13}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v3

    const-string v13, "GROUP_COUNT"

    aput-object v13, v12, v4

    const-string v13, "COUNT(%s) AS %s"

    .line 100
    invoke-static {v13, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v0, v3

    sput-object v0, Lcom/amazon/kindle/content/dao/GroupContentDAO;->GROUP_COUNT_SUBQUERY_COLUMN:[Ljava/lang/String;

    new-array v0, v11, [Ljava/lang/String;

    .line 102
    sget-object v11, Lcom/amazon/kindle/content/ContentMetadataField;->ITEM_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v11}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v3

    sget-object v11, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ITEM_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v11}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v4

    sget-object v11, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_POSITION:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 103
    invoke-virtual {v11}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v5

    sget-object v11, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_POSITION_LABEL:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v11}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v6

    sget-object v6, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_POSITION_LABEL_PREFIX:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v7

    sget-object v6, Lcom/amazon/kindle/content/ContentMetadataField;->ORIGIN_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v8

    sget-object v6, Lcom/amazon/kindle/content/ContentMetadataField;->READ_STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v9

    sget-object v6, Lcom/amazon/kindle/content/ContentMetadataField;->SERIES_ORDER_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v10

    sput-object v0, Lcom/amazon/kindle/content/dao/GroupContentDAO;->GROUP_ITEM_AND_METADATA_COLUMNS:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    .line 105
    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v2, v5, v3

    const-string v3, "COUNT(*) AS %s"

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v4

    sput-object v0, Lcom/amazon/kindle/content/dao/GroupContentDAO;->GROUP_ID_W_COUNT_COLUMNS:[Ljava/lang/String;

    .line 106
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/content/dao/GroupContentDAO;->GROUPS_SEARCH_COLUMNS:[Ljava/lang/String;

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/content/dao/GroupContentDAO;->GROUP_ID_SELECTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/content/db/KindleContentDB;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/amazon/kindle/content/dao/GroupContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/content/dao/GroupContentDAO;Landroid/database/sqlite/SQLiteDatabase;Lcom/amazon/kindle/model/content/IBookID;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/content/dao/GroupContentDAO;->deleteGroupData(Landroid/database/sqlite/SQLiteDatabase;Lcom/amazon/kindle/model/content/IBookID;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 82
    sget-object v0, Lcom/amazon/kindle/content/dao/GroupContentDAO;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/kindle/content/dao/GroupContentDAO;Landroid/database/sqlite/SQLiteDatabase;Lcom/amazon/kindle/content/GroupMetadata;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/content/dao/GroupContentDAO;->insertGroupsEntry(Landroid/database/sqlite/SQLiteDatabase;Lcom/amazon/kindle/content/GroupMetadata;)V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/kindle/content/dao/GroupContentDAO;Landroid/database/sqlite/SQLiteDatabase;Lcom/amazon/kindle/content/GroupMetadata;Lcom/amazon/kindle/content/GroupItemMetadata;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/content/dao/GroupContentDAO;->insertGroupItemEntry(Landroid/database/sqlite/SQLiteDatabase;Lcom/amazon/kindle/content/GroupMetadata;Lcom/amazon/kindle/content/GroupItemMetadata;)V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/kindle/content/dao/GroupContentDAO;Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/content/GroupItemMetadata;)Landroid/content/ContentValues;
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/content/dao/GroupContentDAO;->createGroupItemContentValues(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/content/GroupItemMetadata;)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method private addItemsToGroup(Lcom/amazon/kindle/content/GroupMetadata;)V
    .locals 12

    if-eqz p1, :cond_3

    .line 472
    new-instance v0, Lcom/amazon/kindle/db/OrderBy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_POSITION:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ASC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kindle/db/OrderBy;-><init>(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p1}, Lcom/amazon/kindle/content/GroupMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/content/dao/GroupContentDAO;->GROUP_ITEM_AND_METADATA_COLUMNS:[Ljava/lang/String;

    sget-object v3, Lcom/amazon/kindle/content/dao/ResultsLimit;->NO_LIMIT:Lcom/amazon/kindle/content/dao/ResultsLimit;

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/amazon/kindle/content/dao/GroupContentDAO;->getItemsForGroup(Lcom/amazon/kindle/model/content/IBookID;[Ljava/lang/String;Lcom/amazon/kindle/content/dao/ResultsLimit;Lcom/amazon/kindle/db/OrderBy;)Landroid/database/Cursor;

    move-result-object v0

    .line 476
    :try_start_0
    sget-object v1, Lcom/amazon/kindle/content/dao/GroupContentDAO;->GROUP_ITEM_AND_METADATA_FIELDS:Ljava/util/Set;

    invoke-static {v0, v1}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->generateContentMetadataFieldIndices(Landroid/database/Cursor;Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v1

    .line 478
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 479
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ITEM_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {v1, v2}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 480
    invoke-static {v2}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 482
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ITEM_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {v1, v2}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 483
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_POSITION:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {v1, v2}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 484
    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_POSITION_LABEL:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {v1, v3}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 485
    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->ORIGIN_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {v1, v3}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 486
    const-class v3, Lcom/amazon/kindle/krx/content/IBook$ReadState;

    sget-object v6, Lcom/amazon/kindle/content/ContentMetadataField;->READ_STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 487
    invoke-static {v1, v6}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v9, Lcom/amazon/kindle/krx/content/IBook$ReadState;->UNREAD:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    .line 486
    invoke-static {v3, v6, v9}, Lcom/amazon/kcp/util/Utils;->getEnumValueFromString(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/amazon/kindle/krx/content/IBook$ReadState;

    .line 488
    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_POSITION_LABEL_PREFIX:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {v1, v3}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 489
    new-instance v11, Lcom/amazon/kindle/content/GroupItemMetadata;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v6

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/amazon/kindle/content/GroupItemMetadata;-><init>(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/content/IBook$ReadState;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    :try_start_1
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->SERIES_ORDER_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {v1, v2}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kcp/library/models/SeriesOrderType;->fromString(Ljava/lang/String;)Lcom/amazon/kcp/library/models/SeriesOrderType;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 496
    :catch_0
    :try_start_2
    sget-object v2, Lcom/amazon/kcp/library/models/SeriesOrderType;->UNORDERED:Lcom/amazon/kcp/library/models/SeriesOrderType;

    .line 498
    :goto_1
    invoke-virtual {v11, v2}, Lcom/amazon/kindle/content/GroupItemMetadata;->setSeriesOrderType(Lcom/amazon/kcp/library/models/SeriesOrderType;)V

    .line 499
    invoke-virtual {p1, v11}, Lcom/amazon/kindle/content/GroupMetadata;->addGroupContent(Lcom/amazon/kindle/content/GroupItemMetadata;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_1
    if-eqz v0, :cond_3

    .line 502
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 474
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_2

    .line 502
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw v1

    :cond_3
    :goto_3
    return-void
.end method

.method private createGroupItemContentValues(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/content/GroupItemMetadata;)Landroid/content/ContentValues;
    .locals 2

    .line 213
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 214
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    sget-object p1, Lcom/amazon/kindle/content/ContentMetadataField;->ITEM_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/amazon/kindle/content/GroupItemMetadata;->getItemId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    sget-object p1, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ITEM_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/amazon/kindle/content/GroupItemMetadata;->getGroupItemType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    sget-object p1, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_POSITION:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/amazon/kindle/content/GroupItemMetadata;->getGroupPosition()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 218
    sget-object p1, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_POSITION_LABEL:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/amazon/kindle/content/GroupItemMetadata;->getGroupPositionLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    sget-object p1, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_POSITION_LABEL_PREFIX:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/amazon/kindle/content/GroupItemMetadata;->getPositionLabelPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    sget-object p1, Lcom/amazon/kindle/content/ContentMetadataField;->SERIES_ORDER_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/amazon/kindle/content/GroupItemMetadata;->getSeriesOrderType()Lcom/amazon/kcp/library/models/SeriesOrderType;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private deleteGroupData(Landroid/database/sqlite/SQLiteDatabase;Lcom/amazon/kindle/model/content/IBookID;)V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " = ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 145
    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    move-object v2, v1

    move-object v1, p2

    :goto_0
    const-string p2, "Groups"

    .line 147
    invoke-virtual {p1, p2, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string p2, "GroupItems"

    .line 148
    invoke-virtual {p1, p2, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private getExceptionMessageWithSelectionAndNullSelectionArgs(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    .line 764
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    .line 765
    :goto_0
    array-length v5, p2

    if-ge v4, v5, :cond_1

    .line 766
    aget-object v5, p2, v4

    if-nez v5, :cond_0

    .line 767
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v2

    .line 773
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    invoke-virtual {p3}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "Error querying database for selection: [%s] , nullSelectionArgs: [%s] , Original exception cause: [%s]"

    .line 772
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    new-array p2, v0, [Ljava/lang/Object;

    aput-object p1, p2, v2

    .line 776
    invoke-virtual {p3}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "Error querying database for selection: [%s] , with null nullSelectionArgs , Original exception cause: [%s]"

    .line 775
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getGroupContent(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .line 803
    new-instance v7, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v7}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v0, "GroupItems"

    .line 804
    invoke-virtual {v7, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 805
    sget-object v1, Lcom/amazon/kindle/content/dao/GroupContentDAO;->GROUP_ID_W_COUNT_COLUMNS:[Ljava/lang/String;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 806
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    .line 805
    invoke-virtual/range {v0 .. v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Groups"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 809
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    const/4 v2, 0x3

    aput-object v0, v1, v2

    const-string v0, "%s gt LEFT JOIN (%s) gitc ON gt.%s = gitc.%s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 811
    sget-object v1, Lcom/amazon/kindle/content/dao/GroupContentDAO;->GROUPS_SEARCH_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    move-object v0, v7

    move-object v2, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 813
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/GroupContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 815
    :try_start_0
    invoke-virtual {v0, p3, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p3

    .line 817
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/content/dao/GroupContentDAO;->getExceptionMessageWithSelectionAndNullSelectionArgs(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    .line 818
    sget-object p2, Lcom/amazon/kindle/content/dao/GroupContentDAO;->TAG:Ljava/lang/String;

    invoke-static {p2, p1, p3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getGroupMetadata(Landroid/database/Cursor;Ljava/util/Map;)Lcom/amazon/kindle/content/GroupMetadata;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/content/ContentMetadataField;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/amazon/kindle/content/GroupMetadata;"
        }
    .end annotation

    .line 509
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {p2, v0}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 510
    invoke-static {v0}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    .line 511
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {p2, v1}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 512
    invoke-static {p1}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getBookType(Landroid/database/Cursor;)Lcom/amazon/kcp/library/models/BookType;

    move-result-object v2

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 518
    :cond_0
    new-instance v3, Lcom/amazon/kindle/content/GroupMetadata;

    invoke-direct {v3, v0, v1, v2}, Lcom/amazon/kindle/content/GroupMetadata;-><init>(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    .line 519
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ASIN:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {p2, v0}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 520
    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 521
    invoke-virtual {v3, v0}, Lcom/amazon/kindle/content/GroupMetadata;->setAsin(Ljava/lang/String;)V

    .line 523
    :cond_1
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->TOTAL_SIZE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {p2, v0}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 524
    invoke-virtual {v3, v0}, Lcom/amazon/kindle/content/GroupMetadata;->setTotalSize(I)V

    .line 525
    invoke-static {}, Lcom/amazon/kcp/util/GroupContentUtils;->isSeriesCoverImageDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 526
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->IMAGE_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 527
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->IMAGE_EXTENSION:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 528
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_2

    .line 529
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->IMAGE_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {p2, v0}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 530
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->IMAGE_EXTENSION:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {p2, v1}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 531
    invoke-virtual {v3, v0, v1}, Lcom/amazon/kindle/content/GroupMetadata;->setImageData(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    :cond_2
    invoke-static {p1}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getAsinCount(Landroid/database/Cursor;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/amazon/kindle/content/GroupMetadata;->setAsinCount(I)V

    .line 535
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_COLLECTION_TYPES:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {p2, v0}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/library/models/SeriesGroupType;->fromString(Ljava/lang/String;)Lcom/amazon/kcp/library/models/SeriesGroupType;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/amazon/kindle/content/GroupMetadata;->setGroupType(Lcom/amazon/kcp/library/models/SeriesGroupType;)V

    .line 536
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->SERIES_ORDER_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {p2, v0}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/library/models/SeriesOrderType;->fromString(Ljava/lang/String;)Lcom/amazon/kcp/library/models/SeriesOrderType;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/amazon/kindle/content/GroupMetadata;->setSeriesOrderType(Lcom/amazon/kcp/library/models/SeriesOrderType;)V

    .line 537
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->SERIES_AUTHORS:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {p2, v0}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/amazon/kindle/content/GroupMetadata;->setAuthor(Ljava/lang/String;)V

    .line 538
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->SERIES_AUTHOR_PRONUNCIATIONS:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {p2, v0}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/amazon/kindle/content/GroupMetadata;->setAuthorPronunciations(Ljava/lang/String;)V

    return-object v3

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getRepeatedStringArray([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-lez p2, :cond_2

    if-eqz p1, :cond_2

    .line 784
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    .line 785
    :cond_0
    array-length v1, p1

    mul-int p2, p2, v1

    .line 787
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    move v3, v1

    :goto_0
    if-ge v3, p2, :cond_1

    .line 789
    invoke-static {p1, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v1

    goto :goto_0

    :cond_1
    return-object v2

    :cond_2
    :goto_1
    new-array p1, v0, [Ljava/lang/String;

    return-object p1
.end method

.method private insertGroupItemEntry(Landroid/database/sqlite/SQLiteDatabase;Lcom/amazon/kindle/content/GroupMetadata;Lcom/amazon/kindle/content/GroupItemMetadata;)V
    .locals 1

    .line 207
    invoke-virtual {p2}, Lcom/amazon/kindle/content/GroupMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lcom/amazon/kindle/content/dao/GroupContentDAO;->createGroupItemContentValues(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/content/GroupItemMetadata;)Landroid/content/ContentValues;

    move-result-object p2

    const-string p3, "GroupItems"

    const/4 v0, 0x0

    .line 208
    invoke-virtual {p1, p3, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method private insertGroupsEntry(Landroid/database/sqlite/SQLiteDatabase;Lcom/amazon/kindle/content/GroupMetadata;)V
    .locals 3

    .line 170
    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 171
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/kindle/content/GroupMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/kindle/content/GroupMetadata;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/kindle/content/GroupMetadata;->getSeriesType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ASIN:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/kindle/content/GroupMetadata;->getAsin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->TOTAL_SIZE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/kindle/content/GroupMetadata;->getTotalSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 176
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->IMAGE_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/kindle/content/GroupMetadata;->getImageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->IMAGE_EXTENSION:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/kindle/content/GroupMetadata;->getImageExtension()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE_PRONUNCIATION:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/kindle/content/GroupMetadata;->getTitlePronunciation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_COLLECTION_TYPES:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/kindle/content/GroupMetadata;->getGroupType()Lcom/amazon/kcp/library/models/SeriesGroupType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->SERIES_ORDER_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/kindle/content/GroupMetadata;->getSeriesOrderType()Lcom/amazon/kcp/library/models/SeriesOrderType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->SERIES_AUTHORS:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/kindle/content/GroupMetadata;->getAuthor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->SERIES_AUTHOR_PRONUNCIATIONS:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/kindle/content/GroupMetadata;->getAuthorPronunciations()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Groups"

    const/4 v1, 0x0

    .line 183
    invoke-virtual {p1, p2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method


# virtual methods
.method public createGroupDeletionEntry(Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/content/dao/DaoTransactionEntry;
    .locals 1

    .line 128
    new-instance v0, Lcom/amazon/kindle/content/dao/GroupContentDAO$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/content/dao/GroupContentDAO$1;-><init>(Lcom/amazon/kindle/content/dao/GroupContentDAO;Lcom/amazon/kindle/model/content/IBookID;)V

    return-object v0
.end method

.method public createGroupInsertEntry(Lcom/amazon/kindle/content/GroupMetadata;)Lcom/amazon/kindle/content/dao/DaoTransactionEntry;
    .locals 1

    .line 154
    new-instance v0, Lcom/amazon/kindle/content/dao/GroupContentDAO$2;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/content/dao/GroupContentDAO$2;-><init>(Lcom/amazon/kindle/content/dao/GroupContentDAO;Lcom/amazon/kindle/content/GroupMetadata;)V

    return-object v0
.end method

.method public createGroupItemDeleteEntry(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/content/dao/DaoTransactionEntry;
    .locals 1

    .line 256
    new-instance v0, Lcom/amazon/kindle/content/dao/GroupContentDAO$5;

    invoke-direct {v0, p0, p2, p1}, Lcom/amazon/kindle/content/dao/GroupContentDAO$5;-><init>(Lcom/amazon/kindle/content/dao/GroupContentDAO;Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/model/content/IBookID;)V

    return-object v0
.end method

.method public createGroupItemInsertEntry(Lcom/amazon/kindle/content/GroupMetadata;Lcom/amazon/kindle/content/GroupItemMetadata;)Lcom/amazon/kindle/content/dao/DaoTransactionEntry;
    .locals 1

    .line 190
    new-instance v0, Lcom/amazon/kindle/content/dao/GroupContentDAO$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/amazon/kindle/content/dao/GroupContentDAO$3;-><init>(Lcom/amazon/kindle/content/dao/GroupContentDAO;Lcom/amazon/kindle/content/GroupItemMetadata;Lcom/amazon/kindle/content/GroupMetadata;)V

    return-object v0
.end method

.method public createGroupItemUpdateEntry(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/content/GroupItemMetadata;)Lcom/amazon/kindle/content/dao/DaoTransactionEntry;
    .locals 1

    .line 228
    new-instance v0, Lcom/amazon/kindle/content/dao/GroupContentDAO$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/amazon/kindle/content/dao/GroupContentDAO$4;-><init>(Lcom/amazon/kindle/content/dao/GroupContentDAO;Lcom/amazon/kindle/content/GroupItemMetadata;Lcom/amazon/kindle/model/content/IBookID;)V

    return-object v0
.end method

.method public getAllGroups(Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/content/GroupMetadata;",
            ">;"
        }
    .end annotation

    .line 719
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 720
    sget-object v6, Lcom/amazon/kindle/content/AllGrouping;->INSTANCE:Lcom/amazon/kindle/content/AllGrouping;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/kindle/content/dao/GroupContentDAO;->getGroupContentFromLibraryCall(Ljava/lang/String;[Ljava/lang/String;Lcom/amazon/kindle/db/OrderBy;Ljava/lang/String;Lcom/amazon/kindle/content/GroupingQueryProvider;)Landroid/database/Cursor;

    move-result-object v1

    .line 722
    :try_start_0
    sget-object v2, Lcom/amazon/kindle/content/dao/GroupContentDAO;->FIELDS:Ljava/util/Set;

    invoke-static {v1, v2}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->generateContentMetadataFieldIndices(Landroid/database/Cursor;Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v2

    .line 723
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 724
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_1

    .line 725
    invoke-direct {p0, v1, v2}, Lcom/amazon/kindle/content/dao/GroupContentDAO;->getGroupMetadata(Landroid/database/Cursor;Ljava/util/Map;)Lcom/amazon/kindle/content/GroupMetadata;

    move-result-object v3

    if-eqz p1, :cond_0

    .line 727
    invoke-direct {p0, v3}, Lcom/amazon/kindle/content/dao/GroupContentDAO;->addItemsToGroup(Lcom/amazon/kindle/content/GroupMetadata;)V

    .line 729
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 730
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 732
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    :catchall_0
    move-exception p1

    .line 720
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_3

    .line 732
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v1

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v0
.end method

.method public getFilteredLibraryContent(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/amazon/kindle/db/OrderBy;Ljava/lang/String;Lcom/amazon/kindle/content/GroupingQueryProvider;)Landroid/database/Cursor;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    .line 604
    const-class v12, Ljava/lang/String;

    new-instance v13, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v13}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 605
    invoke-static {}, Lcom/amazon/kcp/util/GroupContentUtils;->isGroupingParameterEnabled()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/16 v16, 0x0

    const/4 v9, 0x1

    if-eqz v3, :cond_0

    new-array v3, v14, [Ljava/lang/Object;

    aput-object v10, v3, v16

    .line 607
    sget-object v4, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 608
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    move-object/from16 v14, p7

    invoke-interface {v14, v10}, Lcom/amazon/kindle/content/GroupingQueryProvider;->getVisibleGroupItemsQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v15

    const-string v4, "%s AND %s NOT IN (%s)"

    .line 607
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 609
    invoke-virtual {v13, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 611
    invoke-virtual/range {p5 .. p5}, Lcom/amazon/kindle/db/OrderBy;->getColumns()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v12}, Lcom/google/common/collect/ObjectArrays;->concat([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 612
    invoke-virtual/range {p5 .. p5}, Lcom/amazon/kindle/db/OrderBy;->toSqlClause()Ljava/lang/String;

    move-result-object v7

    move-object v2, v13

    move-object/from16 v8, p6

    .line 610
    invoke-virtual/range {v2 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 614
    invoke-interface/range {p7 .. p7}, Lcom/amazon/kindle/content/GroupingQueryProvider;->getVisibleGroupItemsQuerySelectionCount()I

    move-result v2

    add-int/2addr v2, v9

    invoke-direct {v1, v11, v2}, Lcom/amazon/kindle/content/dao/GroupContentDAO;->getRepeatedStringArray([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    const/4 v14, 0x1

    goto/16 :goto_0

    .line 618
    :cond_0
    sget-object v3, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->JOINED_GROUPITEMS_KINDLECONTENT:Ljava/lang/String;

    invoke-virtual {v13, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 619
    sget-object v4, Lcom/amazon/kindle/content/dao/GroupContentDAO;->GROUP_ID_ONLY_COLUMNS:[Ljava/lang/String;

    sget-object v6, Lcom/amazon/kindle/content/dao/GroupContentDAO;->VISIBLE_GROUPS_GROUP_BY:Ljava/lang/String;

    sget-object v7, Lcom/amazon/kindle/content/dao/GroupContentDAO;->VISIBLE_GROUPS_HAVING:Ljava/lang/String;

    const/4 v8, 0x0

    const/16 v17, 0x0

    move-object v3, v13

    move-object/from16 v5, p3

    const/4 v14, 0x1

    move-object/from16 v9, v17

    invoke-virtual/range {v3 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v15, [Ljava/lang/Object;

    .line 623
    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v16

    aput-object v3, v4, v14

    const-string v3, "%s IN(%s)"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "GroupItems"

    .line 624
    invoke-virtual {v13, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 625
    sget-object v4, Lcom/amazon/kindle/content/dao/GroupContentDAO;->ITEM_ID_ONLY_COLUMNS:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v3, v13

    invoke-virtual/range {v3 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 630
    sget-object v3, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->JOINED_KINDLECONTENT_USERCONTENT:Ljava/lang/String;

    invoke-virtual {v13, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-array v3, v14, [Ljava/lang/Object;

    .line 631
    sget-object v4, Lcom/amazon/kindle/content/ContentMetadataField;->IS_FALKOR_EPISODE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v16

    const-string v4, "%s = 1"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v4, v14, [Ljava/lang/String;

    .line 632
    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v16

    move-object v3, v13

    invoke-virtual/range {v3 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v10, v4, v16

    .line 636
    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 637
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v14

    aput-object v17, v4, v15

    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    const/4 v5, 0x4

    aput-object v3, v4, v5

    const-string v3, "%s AND %s NOT IN (%s) AND %s NOT IN (%s)"

    .line 636
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 638
    invoke-virtual {v13, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 640
    invoke-virtual/range {p5 .. p5}, Lcom/amazon/kindle/db/OrderBy;->getColumns()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v12}, Lcom/google/common/collect/ObjectArrays;->concat([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 641
    invoke-virtual/range {p5 .. p5}, Lcom/amazon/kindle/db/OrderBy;->toSqlClause()Ljava/lang/String;

    move-result-object v7

    move-object v2, v13

    move-object/from16 v8, p6

    .line 639
    invoke-virtual/range {v2 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 642
    invoke-static {v11, v11, v12}, Lcom/google/common/collect/ObjectArrays;->concat([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 645
    :goto_0
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    new-array v3, v15, [Ljava/lang/Object;

    aput-object v0, v3, v16

    .line 647
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v14

    const-string v4, "Final Content Query: %s%n- Parameters: %s"

    .line 646
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 649
    :cond_1
    iget-object v3, v1, Lcom/amazon/kindle/content/dao/GroupContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 651
    :try_start_0
    invoke-virtual {v3, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 653
    invoke-direct {v1, v10, v11, v2}, Lcom/amazon/kindle/content/dao/GroupContentDAO;->getExceptionMessageWithSelectionAndNullSelectionArgs(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    .line 655
    sget-object v3, Lcom/amazon/kindle/content/dao/GroupContentDAO;->TAG:Ljava/lang/String;

    invoke-static {v3, v0, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 656
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getGroupContentFromLibraryCall(Ljava/lang/String;[Ljava/lang/String;Lcom/amazon/kindle/db/OrderBy;Ljava/lang/String;Lcom/amazon/kindle/content/GroupingQueryProvider;)Landroid/database/Cursor;
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    .line 549
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 552
    invoke-static {}, Lcom/amazon/kcp/util/GroupContentUtils;->isGroupingParameterEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v11, 0x5

    const-string v12, "KindleContent"

    const/4 v13, 0x4

    const/4 v14, 0x3

    const-string v15, "Groups"

    const/4 v8, 0x7

    const-string v7, "%s gt JOIN (%s) gitc ON gt.%s = gitc.%s LEFT JOIN %s st ON gt.%s = st.%s"

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/16 v16, 0x0

    if-eqz v2, :cond_1

    new-array v2, v4, [Ljava/lang/String;

    new-array v3, v4, [Ljava/lang/Object;

    const-string v17, "AsinCount"

    aput-object v17, v3, v16

    const-string v10, "COUNT(1) AS %s"

    .line 555
    invoke-static {v10, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v16

    move-object/from16 v10, p5

    .line 554
    invoke-interface {v10, v9, v5, v5, v2}, Lcom/amazon/kindle/content/GroupingQueryProvider;->getVisibleGroupsQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v15, v3, v16

    aput-object v2, v3, v4

    .line 559
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    aput-object v2, v3, v6

    aput-object v2, v3, v14

    aput-object v12, v3, v13

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_SORT_ITEM_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    aput-object v2, v3, v11

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    const/4 v8, 0x6

    aput-object v2, v3, v8

    invoke-static {v7, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 561
    sget-object v3, Lcom/amazon/kindle/content/dao/GroupContentDAO;->GROUPS_COLUMNS:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    if-nez p3, :cond_0

    move-object v12, v5

    goto :goto_0

    .line 562
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/amazon/kindle/db/OrderBy;->toSqlClause()Ljava/lang/String;

    move-result-object v2

    move-object v12, v2

    :goto_0
    move-object v2, v0

    const/16 v18, 0x1

    move-object v4, v7

    move-object v5, v8

    const/4 v0, 0x2

    move-object v6, v11

    move-object v7, v12

    move-object/from16 v8, p4

    .line 561
    invoke-virtual/range {v2 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 563
    invoke-interface/range {p5 .. p5}, Lcom/amazon/kindle/content/GroupingQueryProvider;->getVisibleGroupsQuerySelectionCount()I

    move-result v3

    move-object/from16 v10, p2

    invoke-direct {v1, v10, v3}, Lcom/amazon/kindle/content/dao/GroupContentDAO;->getRepeatedStringArray([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    move-object v10, v3

    const/4 v11, 0x2

    goto :goto_2

    :cond_1
    move-object/from16 v10, p2

    const/16 v18, 0x1

    .line 565
    sget-object v2, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->JOINED_GROUPITEMS_KINDLECONTENT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 566
    sget-object v3, Lcom/amazon/kindle/content/dao/GroupContentDAO;->GROUP_ITEMS_SUBQUERY_COLUMNS:[Ljava/lang/String;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 567
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v2, v0

    move-object/from16 v4, p1

    move-object/from16 v23, v5

    move-object/from16 v5, v19

    const/4 v11, 0x2

    move-object/from16 v6, v20

    move-object/from16 v24, v7

    move-object/from16 v7, v21

    const/4 v13, 0x7

    move-object/from16 v8, v22

    .line 566
    invoke-virtual/range {v2 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v13, [Ljava/lang/Object;

    aput-object v15, v3, v16

    aput-object v2, v3, v18

    .line 571
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    aput-object v2, v3, v11

    aput-object v2, v3, v14

    const/4 v2, 0x4

    aput-object v12, v3, v2

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_SORT_ITEM_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    const/4 v4, 0x5

    aput-object v2, v3, v4

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    const/4 v4, 0x6

    aput-object v2, v3, v4

    move-object/from16 v2, v24

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 573
    sget-object v3, Lcom/amazon/kindle/content/dao/GroupContentDAO;->GROUPS_COLUMNS:[Ljava/lang/String;

    sget-object v4, Lcom/amazon/kindle/content/dao/GroupContentDAO;->VISIBLE_GROUPS_WHERE_CLAUSE:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez p3, :cond_2

    move-object/from16 v7, v23

    goto :goto_1

    .line 574
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/amazon/kindle/db/OrderBy;->toSqlClause()Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    :goto_1
    move-object v2, v0

    move-object/from16 v8, p4

    .line 573
    invoke-virtual/range {v2 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 578
    :goto_2
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    new-array v0, v11, [Ljava/lang/Object;

    aput-object v2, v0, v16

    .line 580
    invoke-static {v10}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v18

    const-string v3, "Group Query: %s%n- Parameters: %s"

    .line 579
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 582
    :cond_3
    iget-object v0, v1, Lcom/amazon/kindle/content/dao/GroupContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 584
    :try_start_0
    invoke-virtual {v0, v2, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 586
    invoke-direct {v1, v9, v10, v2}, Lcom/amazon/kindle/content/dao/GroupContentDAO;->getExceptionMessageWithSelectionAndNullSelectionArgs(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    .line 588
    sget-object v3, Lcom/amazon/kindle/content/dao/GroupContentDAO;->TAG:Ljava/lang/String;

    invoke-static {v3, v0, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 589
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getGroupItems([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/amazon/kindle/content/dao/ResultsLimit;Lcom/amazon/kindle/db/OrderBy;)Landroid/database/Cursor;
    .locals 10

    .line 328
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/GroupContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 329
    invoke-virtual {p5}, Lcom/amazon/kindle/db/OrderBy;->toSqlClause()Ljava/lang/String;

    move-result-object v8

    :try_start_0
    const-string v2, "GroupItems"

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 332
    invoke-virtual {p4}, Lcom/amazon/kindle/content/dao/ResultsLimit;->getSqlLimitParameter()Ljava/lang/String;

    move-result-object v9

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 331
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 334
    invoke-direct {p0, p2, p3, p1}, Lcom/amazon/kindle/content/dao/GroupContentDAO;->getExceptionMessageWithSelectionAndNullSelectionArgs(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p2

    .line 336
    sget-object p3, Lcom/amazon/kindle/content/dao/GroupContentDAO;->TAG:Ljava/lang/String;

    invoke-static {p3, p2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getGroupMetadataForId(Ljava/lang/String;)Lcom/amazon/kindle/content/GroupMetadata;
    .locals 7

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v3, v0

    .line 345
    new-instance v4, Lcom/amazon/kindle/db/OrderBy;

    invoke-direct {v4}, Lcom/amazon/kindle/db/OrderBy;-><init>()V

    .line 348
    sget-object v2, Lcom/amazon/kindle/content/dao/GroupContentDAO;->GROUP_ID_SELECTION:Ljava/lang/String;

    sget-object v6, Lcom/amazon/kindle/content/AllGrouping;->INSTANCE:Lcom/amazon/kindle/content/AllGrouping;

    const-string v5, "1"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/kindle/content/dao/GroupContentDAO;->getGroupContentFromLibraryCall(Ljava/lang/String;[Ljava/lang/String;Lcom/amazon/kindle/db/OrderBy;Ljava/lang/String;Lcom/amazon/kindle/content/GroupingQueryProvider;)Landroid/database/Cursor;

    move-result-object p1

    .line 349
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 350
    sget-object v0, Lcom/amazon/kindle/content/dao/GroupContentDAO;->FIELDS:Ljava/util/Set;

    invoke-static {p1, v0}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->generateContentMetadataFieldIndices(Landroid/database/Cursor;Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    .line 351
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 352
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/content/dao/GroupContentDAO;->getGroupMetadata(Landroid/database/Cursor;Ljava/util/Map;)Lcom/amazon/kindle/content/GroupMetadata;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 354
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    .line 348
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p1, :cond_2

    .line 354
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1
.end method

.method public getGroupMetadataWithItems(Landroid/database/Cursor;Ljava/util/Map;)Lcom/amazon/kindle/content/GroupMetadata;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/content/ContentMetadataField;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/amazon/kindle/content/GroupMetadata;"
        }
    .end annotation

    .line 465
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/content/dao/GroupContentDAO;->getGroupMetadata(Landroid/database/Cursor;Ljava/util/Map;)Lcom/amazon/kindle/content/GroupMetadata;

    move-result-object p1

    .line 466
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/dao/GroupContentDAO;->addItemsToGroup(Lcom/amazon/kindle/content/GroupMetadata;)V

    return-object p1
.end method

.method public getGroupMetadataWithItemsForId(Ljava/lang/String;)Lcom/amazon/kindle/content/GroupMetadata;
    .locals 0

    .line 456
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/content/dao/GroupContentDAO;->getGroupMetadataForId(Ljava/lang/String;)Lcom/amazon/kindle/content/GroupMetadata;

    move-result-object p1

    .line 457
    invoke-direct {p0, p1}, Lcom/amazon/kindle/content/dao/GroupContentDAO;->addItemsToGroup(Lcom/amazon/kindle/content/GroupMetadata;)V

    return-object p1
.end method

.method public getGroupTitleById(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .line 437
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/GroupContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .line 439
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x0

    aput-object v2, v4, v11

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Groups"

    aput-object v3, v2, v11

    .line 440
    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    aput-object v3, v2, v0

    const-string v3, "%s.%s = ?"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v0, [Ljava/lang/String;

    aput-object p1, v6, v11

    const/4 v2, 0x1

    const-string v3, "Groups"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 443
    invoke-virtual/range {v1 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 444
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 445
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 446
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 449
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    .line 443
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p1, :cond_2

    .line 449
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1
.end method

.method public getGroups([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/amazon/kindle/content/dao/ResultsLimit;Lcom/amazon/kindle/db/OrderBy;)Landroid/database/Cursor;
    .locals 10

    .line 308
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/GroupContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 309
    invoke-virtual {p5}, Lcom/amazon/kindle/db/OrderBy;->toSqlClause()Ljava/lang/String;

    move-result-object v8

    :try_start_0
    const-string v2, "Groups"

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 312
    invoke-virtual {p4}, Lcom/amazon/kindle/content/dao/ResultsLimit;->getSqlLimitParameter()Ljava/lang/String;

    move-result-object v9

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 311
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 314
    invoke-direct {p0, p2, p3, p1}, Lcom/amazon/kindle/content/dao/GroupContentDAO;->getExceptionMessageWithSelectionAndNullSelectionArgs(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p2

    .line 316
    sget-object p3, Lcom/amazon/kindle/content/dao/GroupContentDAO;->TAG:Ljava/lang/String;

    invoke-static {p3, p2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getGroupsWithFilter(Lcom/amazon/kindle/content/filter/SQLQueryFilter;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/content/filter/SQLQueryFilter;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/content/GroupMetadata;",
            ">;"
        }
    .end annotation

    .line 739
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 740
    invoke-interface {p1}, Lcom/amazon/kindle/content/filter/SQLQueryFilter;->getWhereClause()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kindle/content/filter/SQLQueryFilter;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/amazon/kindle/content/filter/SQLQueryFilter;->orderBy()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, v2, p1}, Lcom/amazon/kindle/content/dao/GroupContentDAO;->getGroupContent(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    .line 745
    :cond_0
    :try_start_0
    sget-object v1, Lcom/amazon/kindle/content/dao/GroupContentDAO;->FIELDS:Ljava/util/Set;

    invoke-static {p1, v1}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->generateContentMetadataFieldIndices(Landroid/database/Cursor;Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v1

    .line 746
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 747
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    .line 748
    invoke-direct {p0, p1, v1}, Lcom/amazon/kindle/content/dao/GroupContentDAO;->getGroupMetadata(Landroid/database/Cursor;Ljava/util/Map;)Lcom/amazon/kindle/content/GroupMetadata;

    move-result-object v2

    .line 749
    invoke-direct {p0, v2}, Lcom/amazon/kindle/content/dao/GroupContentDAO;->addItemsToGroup(Lcom/amazon/kindle/content/GroupMetadata;)V

    .line 750
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 751
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 754
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 755
    throw v0
.end method

.method public getItemsForGroup(Lcom/amazon/kindle/model/content/IBookID;[Ljava/lang/String;Lcom/amazon/kindle/content/dao/ResultsLimit;Lcom/amazon/kindle/db/OrderBy;)Landroid/database/Cursor;
    .locals 11

    .line 283
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/GroupContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GroupItems gi join KindleContent kc on kc."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " = gi."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ITEM_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = ?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v10, v3, [Ljava/lang/String;

    .line 288
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v10, v3

    .line 289
    invoke-virtual {p4}, Lcom/amazon/kindle/db/OrderBy;->toSqlClause()Ljava/lang/String;

    move-result-object v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 292
    :try_start_0
    invoke-virtual {p3}, Lcom/amazon/kindle/content/dao/ResultsLimit;->getSqlLimitParameter()Ljava/lang/String;

    move-result-object v9

    move-object v3, p2

    move-object v4, v0

    move-object v5, v10

    .line 291
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 294
    invoke-direct {p0, v0, v10, p1}, Lcom/amazon/kindle/content/dao/GroupContentDAO;->getExceptionMessageWithSelectionAndNullSelectionArgs(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p2

    .line 296
    sget-object p3, Lcom/amazon/kindle/content/dao/GroupContentDAO;->TAG:Ljava/lang/String;

    invoke-static {p3, p2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 297
    new-instance p3, Ljava/lang/RuntimeException;

    invoke-direct {p3, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method

.method public getMaxSizeOfGroup()I
    .locals 8
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    .line 682
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/GroupContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 683
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v2, "GroupItems"

    .line 685
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 686
    sget-object v2, Lcom/amazon/kindle/content/dao/GroupContentDAO;->GROUP_COUNT_SUBQUERY_COLUMN:[Ljava/lang/String;

    sget-object v4, Lcom/amazon/kindle/content/dao/GroupContentDAO;->VISIBLE_GROUPS_GROUP_BY:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "GROUP_COUNT"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const-string v1, "SELECT MAX(%s) FROM (%s)"

    .line 689
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 691
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 692
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 693
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v0, :cond_1

    .line 695
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return v4

    :catchall_0
    move-exception v1

    .line 689
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_2

    .line 695
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v2
.end method

.method public getNumberOfGroups()I
    .locals 10
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    .line 702
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/GroupContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 703
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v2, "Groups"

    .line 704
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const-string v0, "COUNT(0)"

    .line 706
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const-string v2, "Groups"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 708
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 709
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 710
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v0, :cond_1

    .line 712
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return v2

    :catchall_0
    move-exception v1

    .line 706
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_2

    .line 712
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v2
.end method

.method public getOriginTypesForNarrativeById(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 408
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/GroupContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    .line 410
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ITEM_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x0

    aput-object v2, v4, v11

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "GroupItems"

    aput-object v3, v2, v11

    .line 411
    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    aput-object v3, v2, v1

    const-string v3, "%s.%s = ?"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/String;

    aput-object p1, v6, v11

    .line 413
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    const-string v3, "GroupItems"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v0

    .line 414
    invoke-virtual/range {v1 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 415
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 416
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    .line 422
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 423
    invoke-static {v2}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 425
    new-instance v3, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "urn:collection:1:asin-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/amazon/kcp/library/models/BookType;->BT_SERIES_GROUP:Lcom/amazon/kcp/library/models/BookType;

    invoke-direct {v3, v2, v4}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    invoke-virtual {v3}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v2

    .line 426
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 430
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 432
    :cond_2
    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/content/dao/GroupContentDAO;->getOriginTypesForSeriesById(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 414
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_3

    .line 430
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v1

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v0
.end method

.method public getOriginTypesForNarrativeByTitle(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/GroupContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GroupItems LEFT JOIN Groups ON (GroupItems."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Groups"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ") LEFT JOIN "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "KindleContent"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ON ("

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "GroupItems"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ITEM_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    .line 362
    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->ORIGIN_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x0

    aput-object v5, v4, v11

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v11

    .line 363
    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    aput-object v3, v5, v2

    const-string v3, "%s.%s = ?"

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/String;

    aput-object p1, v6, v11

    .line 365
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v0

    .line 366
    invoke-virtual/range {v1 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 367
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 368
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 369
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 372
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    .line 366
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_2

    .line 372
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1
.end method

.method public getOriginTypesForSeriesById(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 377
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 379
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 383
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GroupItems LEFT JOIN Groups ON (GroupItems."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Groups"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ") LEFT JOIN "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "KindleContent"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ON ("

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "GroupItems"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ITEM_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x1

    new-array v8, v1, [Ljava/lang/String;

    .line 384
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->ORIGIN_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v15, 0x0

    aput-object v1, v8, v15

    .line 385
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 386
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v3, " IN ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    .line 387
    :cond_1
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    const-string v4, "?"

    .line 388
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    .line 389
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    const-string v4, ","

    .line 390
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 392
    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 393
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    .line 394
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    move-object/from16 v2, p2

    .line 395
    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, [Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v5, p1

    .line 396
    invoke-virtual/range {v5 .. v14}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 397
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 398
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_3

    .line 399
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    .line 402
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v0

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 396
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    if-eqz v1, :cond_5

    .line 402
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw v3
.end method

.method public getSeriesIdFromItemId(Lcom/amazon/kindle/model/content/IBookID;)Landroid/database/Cursor;
    .locals 11

    .line 663
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/GroupContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    .line 665
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v3, v4

    .line 666
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->ITEM_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " = ?"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v0, v0, [Ljava/lang/String;

    .line 667
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v4

    :try_start_0
    const-string v2, "GroupItems"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v10

    move-object v5, v0

    .line 669
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 672
    invoke-direct {p0, v10, v0, p1}, Lcom/amazon/kindle/content/dao/GroupContentDAO;->getExceptionMessageWithSelectionAndNullSelectionArgs(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    .line 674
    sget-object v1, Lcom/amazon/kindle/content/dao/GroupContentDAO;->TAG:Ljava/lang/String;

    invoke-static {v1, v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 675
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public runTransaction(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/amazon/kindle/content/dao/DaoTransactionEntry;",
            ">;)V"
        }
    .end annotation

    .line 118
    new-instance v0, Lcom/amazon/kindle/content/dao/DaoTransaction;

    iget-object v1, p0, Lcom/amazon/kindle/content/dao/GroupContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-direct {v0, v1}, Lcom/amazon/kindle/content/dao/DaoTransaction;-><init>(Lcom/amazon/kindle/persistence/KindleDBHelper;)V

    .line 119
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/content/dao/DaoTransactionEntry;

    .line 120
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/content/dao/DaoTransaction;->addEntry(Lcom/amazon/kindle/content/dao/DaoTransactionEntry;)V

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/content/dao/DaoTransaction;->run()V

    return-void
.end method
