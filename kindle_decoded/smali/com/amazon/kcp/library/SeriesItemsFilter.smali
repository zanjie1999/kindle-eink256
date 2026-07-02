.class public Lcom/amazon/kcp/library/SeriesItemsFilter;
.super Lcom/amazon/kcp/library/LibraryContentFilter;
.source "SeriesItemsFilter.java"


# static fields
.field public static final SERIES_DEFAULT_SORT_TYPE:Lcom/amazon/kcp/library/LibrarySortType;

.field static SERIES_FILTER:Ljava/lang/String;

.field private static SUBQUERY:Ljava/lang/String;

.field public static final SUPPORTED_SORT_TYPES:[Lcom/amazon/kcp/library/LibrarySortType;


# instance fields
.field private final groupId:Ljava/lang/String;

.field private final groupMetadata:Lcom/amazon/kindle/content/GroupMetadata;

.field private final parentFilter:Lcom/amazon/kcp/library/LibraryContentFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/amazon/kcp/library/LibrarySortType;

    .line 30
    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_RECENT:Lcom/amazon/kcp/library/LibrarySortType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_SERIES_ORDER:Lcom/amazon/kcp/library/LibrarySortType;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_SERIES_ORDER_REVERSE:Lcom/amazon/kcp/library/LibrarySortType;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_PUBLICATION_DATE_SERIES:Lcom/amazon/kcp/library/LibrarySortType;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_PUBLICATION_DATE_SERIES_REVERSE:Lcom/amazon/kcp/library/LibrarySortType;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    sput-object v0, Lcom/amazon/kcp/library/SeriesItemsFilter;->SUPPORTED_SORT_TYPES:[Lcom/amazon/kcp/library/LibrarySortType;

    .line 39
    sget-object v0, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_SERIES_ORDER:Lcom/amazon/kcp/library/LibrarySortType;

    sput-object v0, Lcom/amazon/kcp/library/SeriesItemsFilter;->SERIES_DEFAULT_SORT_TYPE:Lcom/amazon/kcp/library/LibrarySortType;

    new-array v0, v5, [Ljava/lang/Object;

    .line 41
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->ITEM_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "GroupItems"

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "SELECT %s FROM %s WHERE %s = ?"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/SeriesItemsFilter;->SUBQUERY:Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/Object;

    .line 43
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kcp/library/SeriesItemsFilter;->SUBQUERY:Ljava/lang/String;

    aput-object v1, v0, v3

    const-string v1, "%s IN(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/SeriesItemsFilter;->SERIES_FILTER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kcp/library/LibraryContentFilter;)V
    .locals 8

    .line 52
    invoke-static {p2}, Lcom/amazon/kcp/library/SeriesItemsFilter;->buildFilterCondition(Lcom/amazon/kcp/library/LibraryContentFilter;)Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-static {p1, p2}, Lcom/amazon/kcp/library/SeriesItemsFilter;->buildFilterConditionArgs(Ljava/lang/String;Lcom/amazon/kcp/library/LibraryContentFilter;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/library/SeriesItemsFilter;->SUPPORTED_SORT_TYPES:[Lcom/amazon/kcp/library/LibrarySortType;

    sget-object v4, Lcom/amazon/kcp/library/SeriesItemsFilter;->SERIES_DEFAULT_SORT_TYPE:Lcom/amazon/kcp/library/LibrarySortType;

    if-eqz p2, :cond_0

    .line 56
    invoke-virtual {p2}, Lcom/amazon/kcp/library/LibraryContentFilter;->getPredicate()Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    const/4 v7, 0x0

    const-string v6, "SeriesItemsSortType"

    move-object v0, p0

    .line 52
    invoke-direct/range {v0 .. v7}, Lcom/amazon/kcp/library/LibraryContentFilter;-><init>(Ljava/lang/String;Ljava/util/List;[Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kcp/library/ILibraryDisplayItemPredicate;Ljava/lang/String;Z)V

    .line 59
    iput-object p1, p0, Lcom/amazon/kcp/library/SeriesItemsFilter;->groupId:Ljava/lang/String;

    .line 60
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getGroupService()Lcom/amazon/kindle/content/IGroupService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/content/IGroupService;->getGroupMetadataWithItems(Ljava/lang/String;)Lcom/amazon/kindle/content/GroupMetadata;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/SeriesItemsFilter;->groupMetadata:Lcom/amazon/kindle/content/GroupMetadata;

    .line 61
    iput-object p2, p0, Lcom/amazon/kcp/library/SeriesItemsFilter;->parentFilter:Lcom/amazon/kcp/library/LibraryContentFilter;

    return-void
.end method

.method private static buildFilterCondition(Lcom/amazon/kcp/library/LibraryContentFilter;)Ljava/lang/String;
    .locals 3

    .line 65
    sget-object v0, Lcom/amazon/kcp/library/SeriesItemsFilter;->SERIES_FILTER:Ljava/lang/String;

    if-nez p0, :cond_0

    return-object v0

    .line 69
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "( ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") AND ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryContentFilter;->getFilter()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") )"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static buildFilterConditionArgs(Ljava/lang/String;Lcom/amazon/kcp/library/LibraryContentFilter;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/library/LibraryContentFilter;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 73
    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p1, :cond_0

    return-object p0

    .line 77
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kcp/library/LibraryContentFilter;->getFilterArgs()Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method


# virtual methods
.method public getTableToQuery(Lcom/amazon/kindle/krx/library/LibraryGroupType;)Ljava/lang/String;
    .locals 2

    .line 85
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/LibraryContentFilter;->getTableToQuery(Lcom/amazon/kindle/krx/library/LibraryGroupType;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    const-string v1, "GroupItems"

    aput-object v1, v0, p1

    .line 86
    sget-object p1, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 87
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    sget-object p1, Lcom/amazon/kindle/content/ContentMetadataField;->ITEM_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    sget-object p1, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x4

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/amazon/kcp/library/SeriesItemsFilter;->groupId:Ljava/lang/String;

    const/4 v1, 0x5

    aput-object p1, v0, v1

    const-string p1, "(%s) CKT left join %s GIT ON CKT.%s = GIT.%s AND GIT.%s = \"%s\""

    .line 86
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public matches(Lcom/amazon/kindle/content/ContentMetadata;)Z
    .locals 6

    .line 100
    iget-object v0, p0, Lcom/amazon/kcp/library/SeriesItemsFilter;->groupMetadata:Lcom/amazon/kindle/content/GroupMetadata;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/SeriesItemsFilter;->parentFilter:Lcom/amazon/kcp/library/LibraryContentFilter;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/LibraryContentFilter;->matches(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 106
    :goto_0
    iget-object v3, p0, Lcom/amazon/kcp/library/SeriesItemsFilter;->groupMetadata:Lcom/amazon/kindle/content/GroupMetadata;

    invoke-virtual {v3}, Lcom/amazon/kindle/content/GroupMetadata;->getGroupContents()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/content/GroupItemMetadata;

    .line 107
    invoke-virtual {v4}, Lcom/amazon/kindle/content/GroupItemMetadata;->getItemId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_4

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public shouldGroupSeries()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
