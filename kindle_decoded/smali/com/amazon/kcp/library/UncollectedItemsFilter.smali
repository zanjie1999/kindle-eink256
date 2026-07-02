.class public Lcom/amazon/kcp/library/UncollectedItemsFilter;
.super Lcom/amazon/kcp/library/AbstractCollectionItemsFilter;
.source "UncollectedItemsFilter.java"


# static fields
.field private static final COLUMNS:[Ljava/lang/String;

.field private static selection:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 21
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/library/UncollectedItemsFilter;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .line 24
    sget-object v1, Lcom/amazon/kcp/library/UncollectedItemsFilter;->selection:Ljava/lang/String;

    sget-object v0, Lcom/amazon/kcp/library/LibraryContentFilter;->ALL_ITEMS_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    .line 25
    invoke-virtual {v0}, Lcom/amazon/kcp/library/LibraryContentFilter;->getFilterArgs()Ljava/util/List;

    move-result-object v2

    const/4 v0, 0x4

    new-array v3, v0, [Lcom/amazon/kcp/library/LibrarySortType;

    sget-object v0, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_TITLE:Lcom/amazon/kcp/library/LibrarySortType;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    sget-object v0, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR:Lcom/amazon/kcp/library/LibrarySortType;

    const/4 v4, 0x1

    aput-object v0, v3, v4

    sget-object v0, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR_REVERSE:Lcom/amazon/kcp/library/LibrarySortType;

    const/4 v4, 0x2

    aput-object v0, v3, v4

    sget-object v4, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_RECENT:Lcom/amazon/kcp/library/LibrarySortType;

    const/4 v0, 0x3

    aput-object v4, v3, v0

    const/4 v5, 0x0

    const-string v6, "UncollectedItemsSortType"

    const/4 v7, 0x0

    move-object v0, p0

    .line 24
    invoke-direct/range {v0 .. v7}, Lcom/amazon/kcp/library/AbstractCollectionItemsFilter;-><init>(Ljava/lang/String;Ljava/util/List;[Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;Ljava/lang/String;Z)V

    return-void
.end method

.method public static newInstance()Lcom/amazon/kcp/library/UncollectedItemsFilter;
    .locals 8

    .line 43
    sget-object v1, Lcom/amazon/kcp/library/CollectionItemsFilter;->JOINED_COLLECTION_CONTENT_TABLE:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    sget-object v0, Lcom/amazon/kindle/collections/CollectionItemField;->KINDLE_ID:Lcom/amazon/kindle/collections/CollectionItemField;

    .line 45
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/amazon/kindle/collections/CollectionField;->USER_ID:Lcom/amazon/kindle/collections/CollectionField;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " = \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/amazon/kindle/collections/CollectionItemField;->KINDLE_ID:Lcom/amazon/kindle/collections/CollectionItemField;

    .line 47
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 43
    invoke-static/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " (  ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kcp/library/LibraryContentFilter;->ALL_ITEMS_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    .line 57
    invoke-virtual {v2}, Lcom/amazon/kcp/library/LibraryContentFilter;->getFilter()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")  AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 58
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " NOT IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") AND "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->IS_FALKOR_EPISODE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " = 0 ) "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/UncollectedItemsFilter;->selection:Ljava/lang/String;

    .line 61
    new-instance v0, Lcom/amazon/kcp/library/UncollectedItemsFilter;

    invoke-direct {v0}, Lcom/amazon/kcp/library/UncollectedItemsFilter;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getCollectionId()Ljava/lang/String;
    .locals 1

    const-string v0, "Uncollected"

    return-object v0
.end method

.method public getColumns()[Ljava/lang/String;
    .locals 1

    .line 71
    sget-object v0, Lcom/amazon/kcp/library/UncollectedItemsFilter;->COLUMNS:[Ljava/lang/String;

    return-object v0
.end method
