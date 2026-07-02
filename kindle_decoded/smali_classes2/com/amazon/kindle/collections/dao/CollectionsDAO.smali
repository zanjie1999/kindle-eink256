.class public Lcom/amazon/kindle/collections/dao/CollectionsDAO;
.super Lcom/amazon/kindle/collections/dao/DefaultCollectionsDAO;
.source "CollectionsDAO.java"


# static fields
.field public static final COLLECTION_FIELDS:[Ljava/lang/String;

.field public static final COLLECTION_ITEM_FIELDS:[Ljava/lang/String;

.field public static final COLLECTION_TITLE_FIELDS:[Ljava/lang/String;

.field public static final JOINED_COLLECTIONS_COLLECTION_ITEMS:Ljava/lang/String;

.field public static final JOINED_COLLECTION_COLLECTION_ITEM_FIELDS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static final UNCOLLECTED_ITEMS_FIELDS:[Ljava/lang/String;


# instance fields
.field private authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

.field private comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/amazon/kindle/collections/dto/ICollection;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field protected dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

.field private final formatter:Lcom/amazon/kindle/utils/ISortFriendlyFormatter;

.field private final settingsController:Lcom/amazon/kcp/application/IAppSettingsController;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 60
    const-class v0, Lcom/amazon/kindle/collections/dao/CollectionsDAO;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->TAG:Ljava/lang/String;

    const/4 v0, 0x7

    new-array v1, v0, [Ljava/lang/String;

    .line 62
    sget-object v2, Lcom/amazon/kindle/collections/CollectionField;->ID:Lcom/amazon/kindle/collections/CollectionField;

    .line 63
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kindle/collections/CollectionField;->USER_ID:Lcom/amazon/kindle/collections/CollectionField;

    .line 64
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kindle/collections/CollectionField;->TITLE:Lcom/amazon/kindle/collections/CollectionField;

    .line 65
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Lcom/amazon/kindle/collections/CollectionField;->SORTABLE_TITLE:Lcom/amazon/kindle/collections/CollectionField;

    .line 66
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sget-object v2, Lcom/amazon/kindle/collections/CollectionField;->TITLE_PRONUNCIATION:Lcom/amazon/kindle/collections/CollectionField;

    .line 67
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sget-object v2, Lcom/amazon/kindle/collections/CollectionField;->LANGUAGE:Lcom/amazon/kindle/collections/CollectionField;

    .line 68
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x5

    aput-object v2, v1, v8

    sget-object v2, Lcom/amazon/kindle/collections/CollectionField;->IMPORT_FLAG:Lcom/amazon/kindle/collections/CollectionField;

    .line 69
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x6

    aput-object v2, v1, v9

    sput-object v1, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->COLLECTION_FIELDS:[Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    .line 71
    sget-object v2, Lcom/amazon/kindle/collections/CollectionField;->TITLE:Lcom/amazon/kindle/collections/CollectionField;

    .line 72
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kindle/collections/CollectionField;->TITLE_PRONUNCIATION:Lcom/amazon/kindle/collections/CollectionField;

    .line 73
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    sput-object v1, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->COLLECTION_TITLE_FIELDS:[Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/String;

    .line 76
    sget-object v2, Lcom/amazon/kindle/collections/CollectionItemField;->KINDLE_ID:Lcom/amazon/kindle/collections/CollectionItemField;

    .line 77
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kindle/collections/CollectionItemField;->SYNC_ID:Lcom/amazon/kindle/collections/CollectionItemField;

    .line 78
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kindle/collections/CollectionItemField;->COLLECTION_ID:Lcom/amazon/kindle/collections/CollectionItemField;

    .line 79
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    sget-object v2, Lcom/amazon/kindle/collections/CollectionItemField;->SORT_ORDER:Lcom/amazon/kindle/collections/CollectionItemField;

    .line 80
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    sput-object v1, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->COLLECTION_ITEM_FIELDS:[Ljava/lang/String;

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "Collections"

    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " c join "

    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "CollectionItems"

    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ci on c."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/collections/CollectionField;->ID:Lcom/amazon/kindle/collections/CollectionField;

    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " = ci."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/collections/CollectionItemField;->COLLECTION_ID:Lcom/amazon/kindle/collections/CollectionItemField;

    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->JOINED_COLLECTIONS_COLLECTION_ITEMS:Ljava/lang/String;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    .line 89
    sget-object v2, Lcom/amazon/kindle/collections/CollectionField;->ID:Lcom/amazon/kindle/collections/CollectionField;

    .line 90
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kindle/collections/CollectionField;->USER_ID:Lcom/amazon/kindle/collections/CollectionField;

    .line 91
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kindle/collections/CollectionField;->TITLE:Lcom/amazon/kindle/collections/CollectionField;

    .line 92
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    sget-object v2, Lcom/amazon/kindle/collections/CollectionField;->SORTABLE_TITLE:Lcom/amazon/kindle/collections/CollectionField;

    .line 93
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    sget-object v2, Lcom/amazon/kindle/collections/CollectionField;->TITLE_PRONUNCIATION:Lcom/amazon/kindle/collections/CollectionField;

    .line 94
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    sget-object v2, Lcom/amazon/kindle/collections/CollectionField;->LANGUAGE:Lcom/amazon/kindle/collections/CollectionField;

    .line 95
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    sget-object v2, Lcom/amazon/kindle/collections/CollectionField;->IMPORT_FLAG:Lcom/amazon/kindle/collections/CollectionField;

    .line 96
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    sget-object v2, Lcom/amazon/kindle/collections/CollectionItemField;->KINDLE_ID:Lcom/amazon/kindle/collections/CollectionItemField;

    .line 97
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    sget-object v0, Lcom/amazon/kindle/collections/CollectionItemField;->SYNC_ID:Lcom/amazon/kindle/collections/CollectionItemField;

    .line 98
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x8

    aput-object v0, v1, v2

    sget-object v0, Lcom/amazon/kindle/collections/CollectionItemField;->SORT_ORDER:Lcom/amazon/kindle/collections/CollectionItemField;

    .line 99
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x9

    aput-object v0, v1, v2

    sput-object v1, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->JOINED_COLLECTION_COLLECTION_ITEM_FIELDS:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    .line 101
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sput-object v0, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->UNCOLLECTED_ITEMS_FIELDS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/content/db/KindleContentDB;Lcom/amazon/kcp/application/IAuthenticationManager;Lcom/amazon/kindle/utils/ISortFriendlyFormatter;Lcom/amazon/kcp/application/IAppSettingsController;)V
    .locals 1

    .line 125
    invoke-direct {p0}, Lcom/amazon/kindle/collections/dao/DefaultCollectionsDAO;-><init>()V

    .line 109
    new-instance v0, Lcom/amazon/kindle/collections/dao/CollectionsDAO$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/collections/dao/CollectionsDAO$1;-><init>(Lcom/amazon/kindle/collections/dao/CollectionsDAO;)V

    iput-object v0, p0, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->comparator:Ljava/util/Comparator;

    .line 126
    iput-object p1, p0, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->context:Landroid/content/Context;

    .line 127
    iput-object p2, p0, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    .line 128
    iput-object p3, p0, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    .line 129
    iput-object p4, p0, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->formatter:Lcom/amazon/kindle/utils/ISortFriendlyFormatter;

    .line 130
    iput-object p5, p0, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->settingsController:Lcom/amazon/kcp/application/IAppSettingsController;

    return-void
.end method

.method private addCollectionItemContentValues(Lcom/amazon/kindle/collections/dto/ICollectionItem;)Landroid/content/ContentValues;
    .locals 3

    .line 1052
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1054
    sget-object v1, Lcom/amazon/kindle/collections/CollectionItemField;->KINDLE_ID:Lcom/amazon/kindle/collections/CollectionItemField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    sget-object v1, Lcom/amazon/kindle/collections/CollectionItemField;->SYNC_ID:Lcom/amazon/kindle/collections/CollectionItemField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getSyncId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    sget-object v1, Lcom/amazon/kindle/collections/CollectionItemField;->COLLECTION_ID:Lcom/amazon/kindle/collections/CollectionItemField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getCollectionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    sget-object v1, Lcom/amazon/kindle/collections/CollectionItemField;->SORT_ORDER:Lcom/amazon/kindle/collections/CollectionItemField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getSortOrder()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    return-object v0
.end method

.method private getAllUncollectedItems(Landroid/database/Cursor;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;"
        }
    .end annotation

    .line 884
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 885
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 888
    :cond_0
    :try_start_0
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 889
    new-instance v2, Lcom/amazon/kcp/library/sync/SyncIdentifier;

    invoke-static {v1}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amazon/kcp/library/sync/SyncIdentifier;-><init>(Lcom/amazon/kindle/model/content/IBookID;)V

    invoke-virtual {v2}, Lcom/amazon/kcp/library/sync/SyncIdentifier;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Uncollected"

    const-wide/16 v4, 0x0

    .line 891
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 892
    new-instance v5, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;)V

    .line 893
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 895
    sget-object v2, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception caught while getting uncollected item with message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    return-object v0
.end method

.method private getAllUncollectedItemsByUserIdWithLimit(Ljava/lang/String;I)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;"
        }
    .end annotation

    .line 964
    iget-object v0, p0, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 965
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 968
    invoke-static {}, Lcom/amazon/kcp/library/query/LibraryQueryModelBuilder;->newInstance()Lcom/amazon/kcp/library/query/LibraryQueryModelBuilder;

    move-result-object v2

    .line 969
    invoke-static {}, Lcom/amazon/kcp/library/UncollectedItemsFilter;->newInstance()Lcom/amazon/kcp/library/UncollectedItemsFilter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/kcp/library/query/LibraryQueryModelBuilder;->withFilter(Lcom/amazon/kcp/library/LibraryContentFilter;)Lcom/amazon/kcp/library/query/LibraryQueryModelBuilder;

    sget-object v3, Lcom/amazon/kindle/krx/library/LibraryGroupType;->NOT_APPLICABLE:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    .line 970
    invoke-virtual {v2, v3}, Lcom/amazon/kcp/library/query/LibraryQueryModelBuilder;->withGroupType(Lcom/amazon/kindle/krx/library/LibraryGroupType;)Lcom/amazon/kcp/library/query/LibraryQueryModelBuilder;

    const-string v3, "All"

    .line 971
    invoke-virtual {v2, v3}, Lcom/amazon/kcp/library/query/LibraryQueryModelBuilder;->withOriginId(Ljava/lang/String;)Lcom/amazon/kcp/library/query/LibraryQueryModelBuilder;

    sget-object v3, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_RECENT:Lcom/amazon/kcp/library/LibrarySortType;

    .line 972
    invoke-virtual {v2, v3}, Lcom/amazon/kcp/library/query/LibraryQueryModelBuilder;->withSortType(Lcom/amazon/kcp/library/LibrarySortType;)Lcom/amazon/kcp/library/query/LibraryQueryModelBuilder;

    .line 973
    invoke-virtual {v2, p1}, Lcom/amazon/kcp/library/query/LibraryQueryModelBuilder;->withUserId(Ljava/lang/String;)Lcom/amazon/kcp/library/query/LibraryQueryModelBuilder;

    .line 974
    invoke-virtual {v2, p2}, Lcom/amazon/kcp/library/query/LibraryQueryModelBuilder;->withLimit(I)Lcom/amazon/kcp/library/query/LibraryQueryModelBuilder;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/query/LibraryQueryModelBuilder;->buildModel()Lcom/amazon/kcp/library/query/ILibraryQueryModel;

    move-result-object p1

    .line 976
    :try_start_0
    invoke-interface {p1}, Lcom/amazon/kcp/library/query/ILibraryQueryModel;->getTable()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->UNCOLLECTED_ITEMS_FIELDS:[Ljava/lang/String;

    .line 977
    invoke-interface {p1}, Lcom/amazon/kcp/library/query/ILibraryQueryModel;->getSelection()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/amazon/kcp/library/query/ILibraryQueryModel;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 978
    invoke-interface {p1}, Lcom/amazon/kcp/library/query/ILibraryQueryModel;->getSortBy()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1}, Lcom/amazon/kcp/library/query/ILibraryQueryModel;->getLimit()Lcom/amazon/kindle/content/dao/ResultsLimit;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/content/dao/ResultsLimit;->getSqlLimitParameter()Ljava/lang/String;

    move-result-object v9

    .line 976
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 979
    :try_start_1
    invoke-direct {p0, p1}, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->getAllUncollectedItems(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 980
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p2

    .line 976
    :try_start_3
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p1, :cond_0

    .line 980
    :try_start_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    :try_start_5
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 981
    sget-object p2, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception calling getAllUncollectedItemsByUserIdWithLimit, cursor failed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    :cond_1
    :goto_1
    sget-object p1, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "There are a total of "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " uncollected items"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getCollectionObject(Landroid/database/Cursor;)Lcom/amazon/kindle/collections/dto/CollectionDTO;
    .locals 6

    .line 819
    sget-object v0, Lcom/amazon/kindle/collections/CollectionField;->ID:Lcom/amazon/kindle/collections/CollectionField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 820
    sget-object v1, Lcom/amazon/kindle/collections/CollectionField;->TITLE:Lcom/amazon/kindle/collections/CollectionField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 821
    sget-object v2, Lcom/amazon/kindle/collections/CollectionField;->SORTABLE_TITLE:Lcom/amazon/kindle/collections/CollectionField;

    .line 822
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .line 821
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 823
    sget-object v3, Lcom/amazon/kindle/collections/CollectionField;->TITLE_PRONUNCIATION:Lcom/amazon/kindle/collections/CollectionField;

    .line 824
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    .line 823
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 825
    sget-object v4, Lcom/amazon/kindle/collections/CollectionField;->LANGUAGE:Lcom/amazon/kindle/collections/CollectionField;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 826
    sget-object v5, Lcom/amazon/kindle/collections/CollectionField;->IMPORT_FLAG:Lcom/amazon/kindle/collections/CollectionField;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 828
    new-instance v5, Lcom/amazon/kindle/collections/dto/CollectionDTO;

    invoke-direct {v5, v0, v1, v2, v4}, Lcom/amazon/kindle/collections/dto/CollectionDTO;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_0

    .line 831
    invoke-virtual {v5, v3}, Lcom/amazon/kindle/collections/dto/CollectionDTO;->setTitlePronunciation(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 834
    invoke-virtual {v5, p1}, Lcom/amazon/kindle/collections/dto/CollectionDTO;->setImportFlag(Ljava/lang/String;)V

    :cond_1
    return-object v5
.end method

.method private getSortedCollectionItemsByCollectionId(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;"
        }
    .end annotation

    .line 668
    iget-object v0, p0, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 670
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 671
    sget-object v4, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->COLLECTION_ITEM_FIELDS:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/amazon/kindle/collections/CollectionItemField;->COLLECTION_ID:Lcom/amazon/kindle/collections/CollectionItemField;

    .line 673
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v6, v2

    sget-object p2, Lcom/amazon/kindle/collections/CollectionItemField;->SORT_ORDER:Lcom/amazon/kindle/collections/CollectionItemField;

    .line 675
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    const/4 v2, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v3, p1

    .line 671
    invoke-virtual/range {v1 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 677
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 678
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->getCollectionItem(Landroid/database/Cursor;)Lcom/amazon/kindle/collections/dto/ICollectionItem;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 680
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception p2

    .line 671
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_2

    .line 680
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v0
.end method


# virtual methods
.method public addCollectionItem(Lcom/amazon/kindle/collections/dto/ICollectionItem;)Z
    .locals 6

    .line 254
    invoke-direct {p0, p1}, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->addCollectionItemContentValues(Lcom/amazon/kindle/collections/dto/ICollectionItem;)Landroid/content/ContentValues;

    move-result-object v0

    .line 256
    iget-object v1, p0, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 257
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v2, "CollectionItems"

    const/4 v3, 0x0

    .line 260
    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 267
    :try_start_1
    sget-object v0, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t insert collectionItem - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-static {p1}, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;->valueOf(Lcom/amazon/kindle/collections/dto/ICollectionItem;)Lcom/amazon/kindle/collections/dto/CollectionItemDTO;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 267
    invoke-static {v0, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 279
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return p1

    :catch_0
    move-exception v0

    .line 273
    :try_start_2
    sget-object v2, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLiteConstraintException trying to insert collectionItem - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-static {p1}, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;->valueOf(Lcom/amazon/kindle/collections/dto/ICollectionItem;)Lcom/amazon/kindle/collections/dto/CollectionItemDTO;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 273
    invoke-static {v2, p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 277
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 279
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 280
    throw p1
.end method

.method protected addCollectionItems(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;"
        }
    .end annotation

    .line 337
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 339
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/collections/dto/ICollectionItem;

    .line 340
    invoke-direct {p0, v1}, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->addCollectionItemContentValues(Lcom/amazon/kindle/collections/dto/ICollectionItem;)Landroid/content/ContentValues;

    move-result-object v2

    :try_start_0
    const-string v3, "CollectionItems"

    const/4 v4, 0x0

    .line 343
    invoke-virtual {p1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 346
    sget-object v2, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t insert collectionItem - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-static {v1}, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;->valueOf(Lcom/amazon/kindle/collections/dto/ICollectionItem;)Lcom/amazon/kindle/collections/dto/CollectionItemDTO;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 346
    invoke-static {v2, v3}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 351
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 354
    sget-object v3, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SQLiteConstraintException inserting collectionItem - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-static {v1}, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;->valueOf(Lcom/amazon/kindle/collections/dto/ICollectionItem;)Lcom/amazon/kindle/collections/dto/CollectionItemDTO;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 354
    invoke-static {v3, v1, v2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public addCollectionItems(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;)Z"
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 288
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 291
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/collections/dto/ICollectionItem;

    .line 292
    invoke-direct {p0, v1}, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->addCollectionItemContentValues(Lcom/amazon/kindle/collections/dto/ICollectionItem;)Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "CollectionItems"

    const/4 v4, 0x0

    .line 294
    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 298
    sget-object p1, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t insert collectionItem - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-static {v1}, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;->valueOf(Lcom/amazon/kindle/collections/dto/ICollectionItem;)Lcom/amazon/kindle/collections/dto/CollectionItemDTO;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 298
    invoke-static {p1, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 307
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return p1

    .line 305
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 308
    throw p1
.end method

.method public bulkAddCollectionItems(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;"
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 322
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 323
    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->addCollectionItems(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 324
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 327
    throw p1
.end method

.method public createCollection(Lcom/amazon/kindle/collections/dto/ICollection;)Z
    .locals 6

    .line 135
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 137
    sget-object v1, Lcom/amazon/kindle/collections/CollectionField;->ID:Lcom/amazon/kindle/collections/CollectionField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollection;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    sget-object v1, Lcom/amazon/kindle/collections/CollectionField;->USER_ID:Lcom/amazon/kindle/collections/CollectionField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    invoke-interface {v2}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    sget-object v1, Lcom/amazon/kindle/collections/CollectionField;->TITLE:Lcom/amazon/kindle/collections/CollectionField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollection;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    sget-object v1, Lcom/amazon/kindle/collections/CollectionField;->SORTABLE_TITLE:Lcom/amazon/kindle/collections/CollectionField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollection;->getSortableTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    sget-object v1, Lcom/amazon/kindle/collections/CollectionField;->TITLE_PRONUNCIATION:Lcom/amazon/kindle/collections/CollectionField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollection;->getTitlePronunciation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    sget-object v1, Lcom/amazon/kindle/collections/CollectionField;->LANGUAGE:Lcom/amazon/kindle/collections/CollectionField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollection;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    sget-object v1, Lcom/amazon/kindle/collections/CollectionField;->IMPORT_FLAG:Lcom/amazon/kindle/collections/CollectionField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollection;->getImportFlag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 146
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v2, "Collections"

    const/4 v3, 0x0

    .line 151
    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 154
    sget-object v0, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t insert collection - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollection;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 160
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return p1

    .line 158
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 163
    sget-object v0, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully created collection - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollection;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 160
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 161
    throw p1
.end method

.method public createCollectionAndAssignCollectionItems(Lcom/amazon/kindle/collections/dto/ICollection;Ljava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/collections/dto/ICollection;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;)Z"
        }
    .end annotation

    .line 540
    iget-object v0, p0, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 541
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 544
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 546
    sget-object v2, Lcom/amazon/kindle/collections/CollectionField;->ID:Lcom/amazon/kindle/collections/CollectionField;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollection;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    sget-object v2, Lcom/amazon/kindle/collections/CollectionField;->USER_ID:Lcom/amazon/kindle/collections/CollectionField;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    invoke-interface {v3}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    sget-object v2, Lcom/amazon/kindle/collections/CollectionField;->TITLE:Lcom/amazon/kindle/collections/CollectionField;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollection;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    sget-object v2, Lcom/amazon/kindle/collections/CollectionField;->SORTABLE_TITLE:Lcom/amazon/kindle/collections/CollectionField;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollection;->getSortableTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    sget-object v2, Lcom/amazon/kindle/collections/CollectionField;->TITLE_PRONUNCIATION:Lcom/amazon/kindle/collections/CollectionField;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollection;->getTitlePronunciation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    sget-object v2, Lcom/amazon/kindle/collections/CollectionField;->LANGUAGE:Lcom/amazon/kindle/collections/CollectionField;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollection;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    sget-object v2, Lcom/amazon/kindle/collections/CollectionField;->IMPORT_FLAG:Lcom/amazon/kindle/collections/CollectionField;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollection;->getImportFlag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    :try_start_1
    const-string v6, "Collections"

    .line 556
    invoke-virtual {v0, v6, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    cmp-long v1, v6, v3

    if-nez v1, :cond_0

    .line 559
    sget-object v1, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t insert collection - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 587
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v2

    :catch_0
    move-exception v1

    .line 564
    :try_start_2
    sget-object v6, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SQLiteConstraintException inserting collection - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 568
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/collections/dto/ICollectionItem;

    .line 569
    invoke-direct {p0, v1}, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->addCollectionItemContentValues(Lcom/amazon/kindle/collections/dto/ICollectionItem;)Landroid/content/ContentValues;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v7, "CollectionItems"

    .line 572
    invoke-virtual {v0, v7, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    cmp-long v8, v6, v3

    if-nez v8, :cond_1

    .line 574
    sget-object v6, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t insert collectionItem - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    invoke-static {v1}, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;->valueOf(Lcom/amazon/kindle/collections/dto/ICollectionItem;)Lcom/amazon/kindle/collections/dto/CollectionItemDTO;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 574
    invoke-static {v6, v7}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 587
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v2

    :catch_1
    move-exception v6

    .line 580
    :try_start_4
    sget-object v7, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SQLiteConstraintException inserting collectionItem - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    invoke-static {v1}, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;->valueOf(Lcom/amazon/kindle/collections/dto/ICollectionItem;)Lcom/amazon/kindle/collections/dto/CollectionItemDTO;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 580
    invoke-static {v7, v1, v6}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 585
    :cond_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 587
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 590
    sget-object p2, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Successfully created collection - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollection;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", and items assigned."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 587
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 588
    throw p1
.end method

.method public deleteAllCollections()V
    .locals 3

    .line 1035
    iget-object v0, p0, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1036
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v1, "CollectionItems"

    const/4 v2, 0x0

    .line 1040
    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v1, "Collections"

    .line 1043
    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1045
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1047
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1048
    throw v1
.end method

.method public deleteCollection(Ljava/lang/String;)Z
    .locals 7

    const-string v0, " = ?"

    .line 170
    iget-object v1, p0, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 171
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v2, "CollectionItems"

    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/amazon/kindle/collections/CollectionItemField;->COLLECTION_ID:Lcom/amazon/kindle/collections/CollectionItemField;

    .line 177
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    .line 176
    invoke-virtual {v1, v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 185
    sget-object v2, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t delete collectionItem(s) for collectionId - "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v2, "Collections"

    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/amazon/kindle/collections/CollectionField;->ID:Lcom/amazon/kindle/collections/CollectionField;

    .line 190
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/String;

    aput-object p1, v3, v6

    .line 189
    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 195
    sget-object v0, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t delete collection; collectionId - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v6

    .line 199
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v4

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 202
    throw p1
.end method

.method public getAllCollectionItems(Landroid/database/Cursor;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;"
        }
    .end annotation

    .line 904
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    .line 905
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 907
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 908
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 910
    sget-object v2, Lcom/amazon/kindle/collections/CollectionItemField;->ALL_FIELDS:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/collections/CollectionItemField;

    .line 911
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 915
    :cond_1
    sget-object v2, Lcom/amazon/kindle/collections/CollectionItemField;->KINDLE_ID:Lcom/amazon/kindle/collections/CollectionItemField;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 916
    sget-object v3, Lcom/amazon/kindle/collections/CollectionItemField;->SYNC_ID:Lcom/amazon/kindle/collections/CollectionItemField;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 917
    sget-object v4, Lcom/amazon/kindle/collections/CollectionItemField;->COLLECTION_ID:Lcom/amazon/kindle/collections/CollectionItemField;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 918
    sget-object v5, Lcom/amazon/kindle/collections/CollectionItemField;->SORT_ORDER:Lcom/amazon/kindle/collections/CollectionItemField;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 920
    new-instance v6, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;

    invoke-direct {v6, v2, v3, v4, v5}, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;)V

    .line 922
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 924
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0
.end method

.method public getAllCollectionItems(Ljava/lang/String;Landroid/database/Cursor;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;"
        }
    .end annotation

    .line 876
    invoke-static {p1}, Lcom/amazon/kindle/collections/dto/CollectionDTO;->isUncollected(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 877
    invoke-direct {p0, p2}, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->getAllUncollectedItems(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 879
    :cond_0
    invoke-virtual {p0, p2}, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->getAllCollectionItems(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getAllCollectionItemsByUserId(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;"
        }
    .end annotation

    .line 932
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    if-eqz p1, :cond_2

    .line 935
    iget-object v1, p0, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x1

    .line 936
    :try_start_0
    sget-object v4, Lcom/amazon/kcp/library/CollectionItemsFilter;->JOINED_COLLECTION_CONTENT_TABLE:Ljava/lang/String;

    sget-object v5, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->COLLECTION_ITEM_FIELDS:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/amazon/kindle/collections/CollectionField;->USER_ID:Lcom/amazon/kindle/collections/CollectionField;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " = ?"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v7, v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 947
    :goto_0
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 948
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->getCollectionItem(Landroid/database/Cursor;)Lcom/amazon/kindle/collections/dto/ICollectionItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    .line 950
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 936
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz p1, :cond_1

    .line 950
    :try_start_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    :try_start_5
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 951
    sget-object v1, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception calling getAllCollectionItemsByUserId, cursor failed. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-object v0
.end method

.method public getAllUncollectedItemsByUserId(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;"
        }
    .end annotation

    .line 960
    sget-object v0, Lcom/amazon/kindle/content/dao/ResultsLimit;->NO_LIMIT:Lcom/amazon/kindle/content/dao/ResultsLimit;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/dao/ResultsLimit;->getSizeLimit()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->getAllUncollectedItemsByUserIdWithLimit(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getCollectionByCollectionId(Ljava/lang/String;)Lcom/amazon/kindle/collections/dto/ICollection;
    .locals 9

    .line 634
    iget-object v0, p0, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 636
    sget-object v3, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->COLLECTION_FIELDS:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/amazon/kindle/collections/CollectionField;->ID:Lcom/amazon/kindle/collections/CollectionField;

    .line 638
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = ?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    const-string v2, "Collections"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 636
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v0, 0x0

    .line 642
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 643
    invoke-direct {p0, p1}, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->getCollectionObject(Landroid/database/Cursor;)Lcom/amazon/kindle/collections/dto/CollectionDTO;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz p1, :cond_1

    .line 647
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    .line 636
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p1, :cond_2

    .line 647
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v1
.end method

.method public getCollectionCount(Ljava/lang/String;Lcom/amazon/kindle/krx/collections/CollectionFilter;)I
    .locals 8

    .line 765
    iget-object p2, p0, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string p2, "count(*)"

    .line 766
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/kindle/collections/CollectionField;->USER_ID:Lcom/amazon/kindle/collections/CollectionField;

    .line 768
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = ?"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 p2, 0x1

    new-array v4, p2, [Ljava/lang/String;

    const/4 p2, 0x0

    aput-object p1, v4, p2

    const-string v1, "Collections"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 766
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 775
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 776
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 778
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return p2

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return p2

    :catchall_0
    move-exception p2

    .line 766
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_3

    .line 778
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v0
.end method

.method public getCollectionItem(Landroid/database/Cursor;)Lcom/amazon/kindle/collections/dto/ICollectionItem;
    .locals 5

    .line 862
    sget-object v0, Lcom/amazon/kindle/collections/CollectionItemField;->KINDLE_ID:Lcom/amazon/kindle/collections/CollectionItemField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 863
    sget-object v1, Lcom/amazon/kindle/collections/CollectionItemField;->SYNC_ID:Lcom/amazon/kindle/collections/CollectionItemField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 864
    sget-object v2, Lcom/amazon/kindle/collections/CollectionItemField;->COLLECTION_ID:Lcom/amazon/kindle/collections/CollectionItemField;

    .line 865
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .line 864
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 866
    sget-object v3, Lcom/amazon/kindle/collections/CollectionItemField;->SORT_ORDER:Lcom/amazon/kindle/collections/CollectionItemField;

    .line 867
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    .line 866
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 869
    new-instance v3, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;

    invoke-direct {v3, v0, v1, v2, p1}, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;)V

    return-object v3
.end method

.method public getCollectionItemByCollectionIdAndSyncId(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/collections/dto/ICollectionItem;
    .locals 9

    .line 687
    iget-object v0, p0, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 689
    sget-object v3, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->COLLECTION_ITEM_FIELDS:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/amazon/kindle/collections/CollectionItemField;->COLLECTION_ID:Lcom/amazon/kindle/collections/CollectionItemField;

    .line 691
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = ? AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/collections/CollectionItemField;->SYNC_ID:Lcom/amazon/kindle/collections/CollectionItemField;

    .line 692
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = ?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    const/4 p1, 0x1

    aput-object p2, v5, p1

    const-string v2, "CollectionItems"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 689
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 p2, 0x0

    .line 696
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 697
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->getCollectionItem(Landroid/database/Cursor;)Lcom/amazon/kindle/collections/dto/ICollectionItem;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz p1, :cond_1

    .line 701
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object p2

    :catchall_0
    move-exception p2

    .line 689
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_2

    .line 701
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v0
.end method

.method public getCollectionItemCountsByUserId(Ljava/lang/String;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "ITEM_COUNT"

    const-string v1, " FROM "

    const-string v2, "SELECT "

    .line 991
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_3

    .line 995
    iget-object p1, p0, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const/4 v4, 0x0

    .line 998
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/amazon/kindle/collections/CollectionField;->ID:Lcom/amazon/kindle/collections/CollectionField;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Collections"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1000
    :try_start_1
    sget-object v6, Lcom/amazon/kindle/collections/CollectionField;->ID:Lcom/amazon/kindle/collections/CollectionField;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 1002
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1003
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x0

    .line 1004
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1007
    :cond_0
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1009
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/collections/CollectionItemField;->COLLECTION_ID:Lcom/amazon/kindle/collections/CollectionItemField;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " , COUNT(DISTINCT("

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/collections/CollectionItemField;->KINDLE_ID:Lcom/amazon/kindle/collections/CollectionItemField;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")) AS "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kcp/library/CollectionItemsFilter;->JOINED_COLLECTION_CONTENT_TABLE:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " GROUP BY "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/collections/CollectionItemField;->COLLECTION_ID:Lcom/amazon/kindle/collections/CollectionItemField;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1016
    :try_start_2
    sget-object p1, Lcom/amazon/kindle/collections/CollectionItemField;->COLLECTION_ID:Lcom/amazon/kindle/collections/CollectionItemField;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v4, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 1017
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1019
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1020
    invoke-interface {v4, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :cond_1
    if-eqz v4, :cond_3

    .line 1025
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v4, v5

    goto :goto_2

    :catchall_1
    move-exception p1

    :goto_2
    if-eqz v4, :cond_2

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1027
    :cond_2
    throw p1

    :cond_3
    :goto_3
    return-object v3
.end method

.method public getCollectionItemsByCollectionItemId(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;"
        }
    .end annotation

    .line 784
    iget-object v0, p0, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 786
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 787
    sget-object v3, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->COLLECTION_ITEM_FIELDS:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/amazon/kindle/collections/CollectionItemField;->KINDLE_ID:Lcom/amazon/kindle/collections/CollectionItemField;

    .line 789
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " = ?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v5, v2

    const-string v2, "CollectionItems"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 787
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 792
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 793
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->getCollectionItem(Landroid/database/Cursor;)Lcom/amazon/kindle/collections/dto/ICollectionItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 795
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    .line 787
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p1, :cond_2

    .line 795
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

.method public getCollectionNamesByUserId(Ljava/lang/String;)Ljava/util/Set;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/collections/util/PronounceableName;",
            ">;"
        }
    .end annotation

    .line 617
    iget-object v0, p0, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 618
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 620
    sget-object v3, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->COLLECTION_TITLE_FIELDS:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/amazon/kindle/collections/CollectionField;->USER_ID:Lcom/amazon/kindle/collections/CollectionField;

    .line 622
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " = ?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x1

    new-array v5, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p1, v5, v10

    const-string v2, "Collections"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 620
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 625
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 626
    new-instance v1, Lcom/amazon/kindle/collections/util/PronounceableName;

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/amazon/kindle/collections/util/PronounceableName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 628
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    .line 620
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p1, :cond_2

    .line 628
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

.method public getCollections(Ljava/lang/String;Lcom/amazon/kindle/collections/dao/ICollectionsDAO$SortOrder;Lcom/amazon/kindle/krx/collections/CollectionFilter;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/collections/dao/ICollectionsDAO$SortOrder;",
            "Lcom/amazon/kindle/krx/collections/CollectionFilter;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollection;",
            ">;"
        }
    .end annotation

    .line 705
    iget-object p3, p0, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :try_start_0
    const-string v1, "Collections"

    const/4 p3, 0x2

    new-array v2, p3, [Ljava/lang/String;

    .line 706
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/amazon/kindle/collections/CollectionField;->ID:Lcom/amazon/kindle/collections/CollectionField;

    .line 707
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " AS _id"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const-string p3, "*"

    const/4 v8, 0x1

    aput-object p3, v2, v8

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/amazon/kindle/collections/CollectionField;->USER_ID:Lcom/amazon/kindle/collections/CollectionField;

    .line 708
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " = ?"

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array v4, v8, [Ljava/lang/String;

    aput-object p1, v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/amazon/kindle/collections/CollectionField;->SORTABLE_TITLE:Lcom/amazon/kindle/collections/CollectionField;

    .line 712
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v3, p3

    .line 706
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 715
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 716
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 717
    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 718
    invoke-direct {p0, p3}, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->getCollectionObject(Landroid/database/Cursor;)Lcom/amazon/kindle/collections/dto/CollectionDTO;

    move-result-object v2

    .line 719
    iget-object v3, p0, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->formatter:Lcom/amazon/kindle/utils/ISortFriendlyFormatter;

    invoke-virtual {v2}, Lcom/amazon/kindle/collections/dto/CollectionDTO;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/amazon/kindle/collections/dto/CollectionDTO;->getTitlePronunciation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/amazon/kindle/collections/dto/CollectionDTO;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/amazon/kindle/utils/ISortFriendlyFormatter;->format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 720
    iget-object v4, p0, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->settingsController:Lcom/amazon/kcp/application/IAppSettingsController;

    invoke-interface {v4}, Lcom/amazon/kcp/application/IAppSettingsController;->hasFixedCollectionsSorting()Z

    move-result v4

    if-nez v4, :cond_0

    .line 721
    invoke-virtual {v2}, Lcom/amazon/kindle/collections/dto/CollectionDTO;->getSortableTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v8

    if-eqz v4, :cond_0

    .line 723
    invoke-virtual {v2, v3}, Lcom/amazon/kindle/collections/dto/CollectionDTO;->setSortableTitle(Ljava/lang/String;)V

    .line 724
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 727
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 731
    :cond_1
    sget-object v2, Lcom/amazon/kindle/collections/dao/ICollectionsDAO$SortOrder;->ASC:Lcom/amazon/kindle/collections/dao/ICollectionsDAO$SortOrder;

    if-ne p2, v2, :cond_2

    .line 732
    iget-object p2, p0, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->comparator:Ljava/util/Comparator;

    invoke-static {v0, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1

    .line 734
    :cond_2
    iget-object p2, p0, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->comparator:Ljava/util/Comparator;

    invoke-static {p2}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p2

    invoke-static {v0, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 736
    :goto_1
    invoke-virtual {p0, v1}, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->updateCollections(Ljava/util/List;)Z

    .line 739
    invoke-direct {p0, p1, v8}, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->getAllUncollectedItemsByUserIdWithLimit(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    .line 740
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 741
    iget-object p1, p0, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->context:Landroid/content/Context;

    sget p2, Lcom/amazon/kindlecore/R$string;->uncollected_title:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 742
    new-instance p1, Lcom/amazon/kindle/collections/dto/CollectionDTO;

    const-string v2, "Uncollected"

    const-string v5, "en-US"

    const/4 v6, 0x0

    sget-object v7, Lcom/amazon/kindle/collections/dto/ThumbnailType;->NUMBERED:Lcom/amazon/kindle/collections/dto/ThumbnailType;

    move-object v1, p1

    move-object v3, v4

    invoke-direct/range {v1 .. v7}, Lcom/amazon/kindle/collections/dto/CollectionDTO;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/kindle/collections/dto/ThumbnailType;)V

    .line 748
    sget-object p2, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->TAG:Ljava/lang/String;

    const-string v1, "Creating Uncollected collection"

    invoke-static {p2, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 751
    :cond_3
    sget-object p1, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->TAG:Ljava/lang/String;

    const-string p2, "No uncollected items were found"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    :goto_2
    iget-object p1, p0, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->settingsController:Lcom/amazon/kcp/application/IAppSettingsController;

    invoke-interface {p1, v8}, Lcom/amazon/kcp/application/IAppSettingsController;->setHasFixedCollectionsSorting(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p3, :cond_4

    .line 757
    :try_start_2
    invoke-interface {p3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    return-object v0

    :catchall_0
    move-exception p1

    .line 706
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p3, :cond_5

    .line 757
    :try_start_4
    invoke-interface {p3}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p3

    :try_start_5
    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    throw p2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 758
    sget-object p2, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception caught while loading collections with message "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public getCollectionsByCollectionItemId(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollection;",
            ">;"
        }
    .end annotation

    .line 802
    iget-object v0, p0, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 804
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 805
    sget-object v2, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->JOINED_COLLECTIONS_COLLECTION_ITEMS:Ljava/lang/String;

    sget-object v3, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->JOINED_COLLECTION_COLLECTION_ITEM_FIELDS:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/amazon/kindle/collections/CollectionItemField;->KINDLE_ID:Lcom/amazon/kindle/collections/CollectionItemField;

    .line 807
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " = ?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 805
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 810
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 811
    invoke-direct {p0, p1}, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->getCollectionObject(Landroid/database/Cursor;)Lcom/amazon/kindle/collections/dto/CollectionDTO;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 813
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    .line 805
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p1, :cond_2

    .line 813
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

.method public getCollectionsByUserId(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollection;",
            ">;"
        }
    .end annotation

    .line 597
    iget-object v0, p0, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 599
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 600
    sget-object v3, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->COLLECTION_FIELDS:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/amazon/kindle/collections/CollectionField;->USER_ID:Lcom/amazon/kindle/collections/CollectionField;

    .line 602
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " = ?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v5, v2

    sget-object p1, Lcom/amazon/kindle/collections/CollectionField;->SORTABLE_TITLE:Lcom/amazon/kindle/collections/CollectionField;

    .line 604
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    const-string v2, "Collections"

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 600
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 605
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 606
    invoke-direct {p0, p1}, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->getCollectionObject(Landroid/database/Cursor;)Lcom/amazon/kindle/collections/dto/CollectionDTO;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 608
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 610
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->comparator:Ljava/util/Comparator;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0

    :catchall_0
    move-exception v0

    .line 600
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p1, :cond_2

    .line 608
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

.method public getSortedCollectionItems(Lcom/amazon/kindle/collections/dto/ICollection;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/collections/dto/ICollection;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 653
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object p1

    return-object p1

    .line 655
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollection;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->getSortedCollectionItemsByCollectionId(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getSortedCollectionItemsByCollectionId(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;"
        }
    .end annotation

    .line 660
    invoke-static {p1}, Lcom/amazon/kindle/collections/dto/CollectionDTO;->isUncollected(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object p1

    .line 662
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->getAllUncollectedItemsByUserId(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 664
    :cond_0
    sget-object v0, Lcom/amazon/kcp/library/CollectionItemsFilter;->JOINED_COLLECTION_CONTENT_TABLE:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->getSortedCollectionItemsByCollectionId(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public removeCollectionItem(Lcom/amazon/kindle/collections/dto/ICollectionItem;)Z
    .locals 7

    .line 365
    iget-object v0, p0, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 366
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v1, "CollectionItems"

    .line 369
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/amazon/kindle/collections/CollectionItemField;->COLLECTION_ID:Lcom/amazon/kindle/collections/CollectionItemField;

    .line 370
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = ? AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/kindle/collections/CollectionItemField;->SYNC_ID:Lcom/amazon/kindle/collections/CollectionItemField;

    .line 371
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    .line 372
    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getCollectionId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 373
    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getSyncId()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 369
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 376
    sget-object v1, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t delete collectionItem - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    invoke-static {p1}, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;->valueOf(Lcom/amazon/kindle/collections/dto/ICollectionItem;)Lcom/amazon/kindle/collections/dto/CollectionItemDTO;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 376
    invoke-static {v1, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v5

    .line 381
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 383
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v6

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 384
    throw p1
.end method

.method public removeCollectionItems(Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;)Z"
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 392
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 396
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/collections/dto/ICollectionItem;

    const-string v4, "CollectionItems"

    .line 397
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/amazon/kindle/collections/CollectionItemField;->COLLECTION_ID:Lcom/amazon/kindle/collections/CollectionItemField;

    .line 398
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " = ? AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/amazon/kindle/collections/CollectionItemField;->SYNC_ID:Lcom/amazon/kindle/collections/CollectionItemField;

    .line 399
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " = ?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    .line 400
    invoke-interface {v3}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getCollectionId()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 401
    invoke-interface {v3}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getSyncId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 397
    invoke-virtual {v0, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 408
    sget-object v2, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to delete collectionItem - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;->valueOf(Lcom/amazon/kindle/collections/dto/ICollectionItem;)Lcom/amazon/kindle/collections/dto/CollectionItemDTO;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_0

    .line 413
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v2

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 416
    throw p1
.end method

.method public removeCollectionItemsTransactionless(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;"
        }
    .end annotation

    .line 423
    iget-object v0, p0, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 424
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 426
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/collections/dto/ICollectionItem;

    :try_start_0
    const-string v3, "CollectionItems"

    .line 428
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/amazon/kindle/collections/CollectionItemField;->COLLECTION_ID:Lcom/amazon/kindle/collections/CollectionItemField;

    .line 429
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " = ? AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/amazon/kindle/collections/CollectionItemField;->SYNC_ID:Lcom/amazon/kindle/collections/CollectionItemField;

    .line 430
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " = ?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 431
    invoke-interface {v2}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getCollectionId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 432
    invoke-interface {v2}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getSyncId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 428
    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 435
    sget-object v3, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to delete collectionItem - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;->valueOf(Lcom/amazon/kindle/collections/dto/ICollectionItem;)Lcom/amazon/kindle/collections/dto/CollectionItemDTO;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 439
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 442
    :catch_0
    sget-object v3, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception trying to delete collectionItem - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;->valueOf(Lcom/amazon/kindle/collections/dto/ICollectionItem;)Lcom/amazon/kindle/collections/dto/CollectionItemDTO;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    return-object v1
.end method

.method public updateCollection(Lcom/amazon/kindle/collections/dto/ICollection;)Z
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/amazon/kindle/collections/dto/ICollection;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 209
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->updateCollections(Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public updateCollectionItem(Lcom/amazon/kindle/collections/dto/ICollectionItem;)Z
    .locals 8

    .line 451
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 455
    sget-object v1, Lcom/amazon/kindle/collections/CollectionItemField;->SORT_ORDER:Lcom/amazon/kindle/collections/CollectionItemField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getSortOrder()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 456
    sget-object v1, Lcom/amazon/kindle/collections/CollectionItemField;->KINDLE_ID:Lcom/amazon/kindle/collections/CollectionItemField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    iget-object v1, p0, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 459
    iget-object v2, p0, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v2, v1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    :try_start_0
    const-string v2, "CollectionItems"

    .line 462
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/amazon/kindle/collections/CollectionItemField;->COLLECTION_ID:Lcom/amazon/kindle/collections/CollectionItemField;

    .line 464
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " = ? AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/amazon/kindle/collections/CollectionItemField;->SYNC_ID:Lcom/amazon/kindle/collections/CollectionItemField;

    .line 465
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " = ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    .line 466
    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getCollectionId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 467
    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getSyncId()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    .line 462
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 474
    sget-object v0, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No rows were updated for collectionItem - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    invoke-static {p1}, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;->valueOf(Lcom/amazon/kindle/collections/dto/ICollectionItem;)Lcom/amazon/kindle/collections/dto/CollectionItemDTO;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 474
    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v6

    .line 479
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 481
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v7

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 482
    throw p1
.end method

.method protected updateCollectionItems(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;"
        }
    .end annotation

    .line 511
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 513
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/collections/dto/ICollectionItem;

    .line 514
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 515
    sget-object v3, Lcom/amazon/kindle/collections/CollectionItemField;->KINDLE_ID:Lcom/amazon/kindle/collections/CollectionItemField;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    sget-object v3, Lcom/amazon/kindle/collections/CollectionItemField;->SORT_ORDER:Lcom/amazon/kindle/collections/CollectionItemField;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getSortOrder()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 518
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/amazon/kindle/collections/CollectionItemField;->COLLECTION_ID:Lcom/amazon/kindle/collections/CollectionItemField;

    .line 520
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " = ? AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/amazon/kindle/collections/CollectionItemField;->SYNC_ID:Lcom/amazon/kindle/collections/CollectionItemField;

    .line 521
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " = ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 522
    invoke-interface {v1}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getCollectionId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 523
    invoke-interface {v1}, Lcom/amazon/kindle/collections/dto/ICollectionItem;->getSyncId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "CollectionItems"

    .line 518
    invoke-virtual {p1, v5, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 526
    sget-object v2, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No row updated for collectionItem - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    invoke-static {v1}, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;->valueOf(Lcom/amazon/kindle/collections/dto/ICollectionItem;)Lcom/amazon/kindle/collections/dto/CollectionItemDTO;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 526
    invoke-static {v2, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 531
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1
    return-object v0
.end method

.method public updateCollectionItems(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollectionItem;",
            ">;"
        }
    .end annotation

    .line 493
    iget-object v0, p0, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 496
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 497
    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->updateCollectionItems(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 498
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 501
    throw p1
.end method

.method public updateCollections(Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/collections/dto/ICollection;",
            ">;)Z"
        }
    .end annotation

    .line 214
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 219
    iget-object v2, p0, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v2, v0}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 222
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/collections/dto/ICollection;

    .line 223
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 225
    sget-object v5, Lcom/amazon/kindle/collections/CollectionField;->TITLE:Lcom/amazon/kindle/collections/CollectionField;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2}, Lcom/amazon/kindle/collections/dto/ICollection;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    sget-object v5, Lcom/amazon/kindle/collections/CollectionField;->SORTABLE_TITLE:Lcom/amazon/kindle/collections/CollectionField;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2}, Lcom/amazon/kindle/collections/dto/ICollection;->getSortableTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    sget-object v5, Lcom/amazon/kindle/collections/CollectionField;->TITLE_PRONUNCIATION:Lcom/amazon/kindle/collections/CollectionField;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2}, Lcom/amazon/kindle/collections/dto/ICollection;->getTitlePronunciation()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    sget-object v5, Lcom/amazon/kindle/collections/CollectionField;->LANGUAGE:Lcom/amazon/kindle/collections/CollectionField;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2}, Lcom/amazon/kindle/collections/dto/ICollection;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    sget-object v5, Lcom/amazon/kindle/collections/CollectionField;->IMPORT_FLAG:Lcom/amazon/kindle/collections/CollectionField;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2}, Lcom/amazon/kindle/collections/dto/ICollection;->getImportFlag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Collections"

    .line 231
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/amazon/kindle/collections/CollectionField;->ID:Lcom/amazon/kindle/collections/CollectionField;

    .line 233
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " = ?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v3, v3, [Ljava/lang/String;

    .line 234
    invoke-interface {v2}, Lcom/amazon/kindle/collections/dto/ICollection;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v1

    .line 231
    invoke-virtual {v0, v5, v4, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 239
    sget-object p1, Lcom/amazon/kindle/collections/dao/CollectionsDAO;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No rows were updated for collection - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v1

    .line 244
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v3

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 247
    throw p1
.end method
