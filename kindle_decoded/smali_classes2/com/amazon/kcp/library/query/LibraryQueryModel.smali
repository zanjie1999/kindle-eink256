.class public Lcom/amazon/kcp/library/query/LibraryQueryModel;
.super Ljava/lang/Object;
.source "LibraryQueryModel.java"

# interfaces
.implements Lcom/amazon/kcp/library/query/ILibraryQueryModel;


# static fields
.field private static final AND:Ljava/lang/String; = " AND "

.field private static final CLOUD_ITEMS:Ljava/lang/String;

.field private static final CLOUD_ITEMS_ARGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_LIMIT:I = -0x1

.field private static final EXCLUDE_PERIODICALS_CLAUSE:Ljava/lang/String;

.field private static final ON_DEVICE_ITEMS:Ljava/lang/String;

.field private static final ON_DEVICE_ITEMS_ARGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OWN_ORIGIN_TYPE_ITEMS:Ljava/lang/String;

.field private static final SHARED_ORIGIN_ID_ITEMS:Ljava/lang/String;

.field private static final SHARED_ORIGIN_TYPE_ITEMS_ARGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SORT_BY_AUTHOR:Ljava/lang/String; = "AUTHOR_ORDER ASC"

.field private static final SORT_BY_AUTHOR_REVERSE:Ljava/lang/String; = "AUTHOR_ORDER_REVERSED ASC"

.field public static final SORT_BY_PUBLICATION_DATE:Ljava/lang/String;

.field private static final SORT_BY_PUBLICATION_DATE_SERIES:Ljava/lang/String;

.field private static final SORT_BY_PUBLICATION_DATE_SERIES_REVERSE:Ljava/lang/String;

.field private static final SORT_BY_RECENT:Ljava/lang/String;

.field private static final SORT_BY_TITLE:Ljava/lang/String; = "TITLE_ORDER ASC, AUTHOR_ORDER ASC"

.field private static final SORT_COLLECTION:Ljava/lang/String;

.field private static final SORT_ORDERED:Ljava/lang/String;

.field private static final SORT_SERIES:Ljava/lang/String;

.field private static final SORT_SERIES_REVERSE:Ljava/lang/String;

.field private static final SORT_TYPE_ORDERING_FUNCTION:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function<",
            "Lcom/amazon/kcp/library/LibrarySortType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SORT_TYPE_ORDERING_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kcp/library/LibrarySortType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final USER_ITEMS:Ljava/lang/String;


# instance fields
.field filter:Lcom/amazon/kcp/library/LibraryContentFilter;

.field groupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

.field limit:I

.field offset:I

.field origin:Ljava/lang/String;

.field private resultsLimit:Lcom/amazon/kindle/content/dao/ResultsLimit;

.field private selection:Ljava/lang/String;

.field private selectionArgs:[Ljava/lang/String;

.field private sortBy:Ljava/lang/String;

.field sortType:Lcom/amazon/kcp/library/LibrarySortType;

.field private table:Ljava/lang/String;

.field userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->USER_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->USER_ITEMS:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ARCHIVABLE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->CLOUD_ITEMS:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 59
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->CLOUD_ITEMS_ARGS:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " IN (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->ON_DEVICE_ITEMS:Ljava/lang/String;

    .line 63
    sget-object v0, Lcom/amazon/kcp/library/LibraryConstants$ContentStates;->ON_DEVICE_CONTENT_STATES:Ljava/util/List;

    invoke-static {v0}, Lcom/amazon/kcp/library/LibraryConstants$ContentStates;->names(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->ON_DEVICE_ITEMS_ARGS:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->SHARE_ORIGIN_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->SHARED_ORIGIN_ID_ITEMS:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->ORIGIN_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "!=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->OWN_ORIGIN_TYPE_ITEMS:Ljava/lang/String;

    const-string v0, "Sharing"

    .line 68
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->SHARED_ORIGIN_TYPE_ITEMS_ARGS:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " NOT IN (\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\',\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->EXCLUDE_PERIODICALS_CLAUSE:Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->LAST_ACCESSED:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " DESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->SORT_BY_RECENT:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->PUBLICATION_DATE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " DESC, TITLE_ORDER ASC"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->SORT_BY_PUBLICATION_DATE:Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->PUBLICATION_DATE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ASC, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_POSITION:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ASC"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->SORT_BY_PUBLICATION_DATE_SERIES:Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->PUBLICATION_DATE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " DESC, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_POSITION:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->SORT_BY_PUBLICATION_DATE_SERIES_REVERSE:Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->ORDER_RANK:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->SORT_ORDERED:Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/amazon/kindle/collections/CollectionItemField;->SORT_ORDER:Lcom/amazon/kindle/collections/CollectionItemField;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->SORT_COLLECTION:Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_POSITION:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->SORT_SERIES:Ljava/lang/String;

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_POSITION:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->SORT_SERIES_REVERSE:Ljava/lang/String;

    .line 90
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_TITLE:Lcom/amazon/kcp/library/LibrarySortType;

    const-string v2, "TITLE_ORDER ASC, AUTHOR_ORDER ASC"

    .line 91
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR:Lcom/amazon/kcp/library/LibrarySortType;

    const-string v2, "AUTHOR_ORDER ASC"

    .line 92
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR_REVERSE:Lcom/amazon/kcp/library/LibrarySortType;

    const-string v2, "AUTHOR_ORDER_REVERSED ASC"

    .line 93
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_ORDERED:Lcom/amazon/kcp/library/LibrarySortType;

    sget-object v2, Lcom/amazon/kcp/library/query/LibraryQueryModel;->SORT_ORDERED:Ljava/lang/String;

    .line 94
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_PUBLICATION_DATE:Lcom/amazon/kcp/library/LibrarySortType;

    sget-object v2, Lcom/amazon/kcp/library/query/LibraryQueryModel;->SORT_BY_PUBLICATION_DATE:Ljava/lang/String;

    .line 95
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_PUBLICATION_DATE_SERIES:Lcom/amazon/kcp/library/LibrarySortType;

    sget-object v2, Lcom/amazon/kcp/library/query/LibraryQueryModel;->SORT_BY_PUBLICATION_DATE_SERIES:Ljava/lang/String;

    .line 96
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_PUBLICATION_DATE_SERIES_REVERSE:Lcom/amazon/kcp/library/LibrarySortType;

    sget-object v2, Lcom/amazon/kcp/library/query/LibraryQueryModel;->SORT_BY_PUBLICATION_DATE_SERIES_REVERSE:Ljava/lang/String;

    .line 97
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_CUSTOM:Lcom/amazon/kcp/library/LibrarySortType;

    sget-object v2, Lcom/amazon/kcp/library/query/LibraryQueryModel;->SORT_COLLECTION:Ljava/lang/String;

    .line 98
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_SERIES_ORDER:Lcom/amazon/kcp/library/LibrarySortType;

    sget-object v2, Lcom/amazon/kcp/library/query/LibraryQueryModel;->SORT_SERIES:Ljava/lang/String;

    .line 99
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_SERIES_ORDER_REVERSE:Lcom/amazon/kcp/library/LibrarySortType;

    sget-object v2, Lcom/amazon/kcp/library/query/LibraryQueryModel;->SORT_SERIES_REVERSE:Ljava/lang/String;

    .line 100
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_RECENT:Lcom/amazon/kcp/library/LibrarySortType;

    sget-object v2, Lcom/amazon/kcp/library/query/LibraryQueryModel;->SORT_BY_RECENT:Ljava/lang/String;

    .line 101
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->SORT_TYPE_ORDERING_MAP:Ljava/util/Map;

    .line 104
    sget-object v1, Lcom/amazon/kcp/library/query/LibraryQueryModel;->SORT_BY_RECENT:Ljava/lang/String;

    .line 105
    invoke-static {v0, v1}, Lcom/google/common/base/Functions;->forMap(Ljava/util/Map;Ljava/lang/Object;)Lcom/google/common/base/Function;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->SORT_TYPE_ORDERING_FUNCTION:Lcom/google/common/base/Function;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 115
    iput v0, p0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->offset:I

    return-void
.end method

.method constructor <init>(Lcom/amazon/kcp/library/query/LibraryQueryModel;)V
    .locals 1

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 115
    iput v0, p0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->offset:I

    .line 142
    iget-object v0, p1, Lcom/amazon/kcp/library/query/LibraryQueryModel;->filter:Lcom/amazon/kcp/library/LibraryContentFilter;

    iput-object v0, p0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->filter:Lcom/amazon/kcp/library/LibraryContentFilter;

    .line 143
    iget-object v0, p1, Lcom/amazon/kcp/library/query/LibraryQueryModel;->groupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    iput-object v0, p0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->groupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    .line 144
    iget-object v0, p1, Lcom/amazon/kcp/library/query/LibraryQueryModel;->sortType:Lcom/amazon/kcp/library/LibrarySortType;

    iput-object v0, p0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->sortType:Lcom/amazon/kcp/library/LibrarySortType;

    .line 145
    iget v0, p1, Lcom/amazon/kcp/library/query/LibraryQueryModel;->limit:I

    iput v0, p0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->limit:I

    .line 146
    iget v0, p1, Lcom/amazon/kcp/library/query/LibraryQueryModel;->offset:I

    iput v0, p0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->offset:I

    .line 147
    iget-object v0, p1, Lcom/amazon/kcp/library/query/LibraryQueryModel;->userId:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->userId:Ljava/lang/String;

    .line 148
    iget-object p1, p1, Lcom/amazon/kcp/library/query/LibraryQueryModel;->origin:Ljava/lang/String;

    iput-object p1, p0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->origin:Ljava/lang/String;

    return-void
.end method

.method private buildSelectionAndArgs()V
    .locals 6

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kcp/library/query/LibraryQueryModel;->USER_ITEMS:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 269
    iget-object v2, p0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->userId:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 270
    iget-object v2, p0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->filter:Lcom/amazon/kcp/library/LibraryContentFilter;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/LibraryContentFilter;->getUser()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->userId:Ljava/lang/String;

    .line 272
    :cond_0
    iget-object v2, p0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->userId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    iget-object v2, p0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->groupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    const/4 v3, 0x1

    const-string v4, " AND "

    if-eqz v2, :cond_3

    .line 275
    sget-object v5, Lcom/amazon/kcp/library/query/LibraryQueryModel$1;->$SwitchMap$com$amazon$kindle$krx$library$LibraryGroupType:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v5, v2

    if-eq v2, v3, :cond_2

    const/4 v5, 0x2

    if-eq v2, v5, :cond_1

    goto :goto_0

    .line 282
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kcp/library/query/LibraryQueryModel;->ON_DEVICE_ITEMS:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    sget-object v2, Lcom/amazon/kcp/library/query/LibraryQueryModel;->ON_DEVICE_ITEMS_ARGS:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 277
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kcp/library/query/LibraryQueryModel;->CLOUD_ITEMS:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    sget-object v2, Lcom/amazon/kcp/library/query/LibraryQueryModel;->CLOUD_ITEMS_ARGS:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 291
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->filter:Lcom/amazon/kcp/library/LibraryContentFilter;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/LibraryContentFilter;->getFilter()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 292
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->filter:Lcom/amazon/kcp/library/LibraryContentFilter;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/LibraryContentFilter;->getFilter()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    iget-object v2, p0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->filter:Lcom/amazon/kcp/library/LibraryContentFilter;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/LibraryContentFilter;->getFilterArgs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 296
    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->DICTIONARY_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " IS NOT \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/model/content/DictionaryType;->FREE_DICT:Lcom/amazon/kindle/model/content/DictionaryType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    iget-object v2, p0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->origin:Ljava/lang/String;

    if-eqz v2, :cond_6

    const-string v5, "All"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 300
    iget-object v2, p0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->origin:Ljava/lang/String;

    const-string v5, "Own"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 302
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kcp/library/query/LibraryQueryModel;->OWN_ORIGIN_TYPE_ITEMS:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    sget-object v2, Lcom/amazon/kcp/library/query/LibraryQueryModel;->SHARED_ORIGIN_TYPE_ITEMS_ARGS:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 308
    :cond_5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kcp/library/query/LibraryQueryModel;->SHARED_ORIGIN_ID_ITEMS:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 309
    iget-object v5, p0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->origin:Ljava/lang/String;

    aput-object v5, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 314
    :cond_6
    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " NOT LIKE \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "UPDTID0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->arePeriodicalsAllowed()Z

    move-result v2

    if-nez v2, :cond_7

    .line 322
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kcp/library/query/LibraryQueryModel;->EXCLUDE_PERIODICALS_CLAUSE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->selection:Ljava/lang/String;

    .line 326
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->selectionArgs:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method buildModel()V
    .locals 3

    .line 255
    iget-object v0, p0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->filter:Lcom/amazon/kcp/library/LibraryContentFilter;

    iget-object v1, p0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->groupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/LibraryContentFilter;->getTableToQuery(Lcom/amazon/kindle/krx/library/LibraryGroupType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->table:Ljava/lang/String;

    .line 256
    invoke-direct {p0}, Lcom/amazon/kcp/library/query/LibraryQueryModel;->buildSelectionAndArgs()V

    .line 260
    iget v0, p0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->limit:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/amazon/kindle/content/dao/ResultsLimit;

    iget v1, p0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->limit:I

    iget v2, p0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->offset:I

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/content/dao/ResultsLimit;-><init>(II)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/kindle/content/dao/ResultsLimit;->NO_LIMIT:Lcom/amazon/kindle/content/dao/ResultsLimit;

    :goto_0
    iput-object v0, p0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->resultsLimit:Lcom/amazon/kindle/content/dao/ResultsLimit;

    .line 263
    iget-object v0, p0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->sortType:Lcom/amazon/kcp/library/LibrarySortType;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/amazon/kcp/library/query/LibraryQueryModel;->SORT_TYPE_ORDERING_FUNCTION:Lcom/google/common/base/Function;

    invoke-interface {v1, v0}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_1
    iput-object v0, p0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->sortBy:Ljava/lang/String;

    return-void
.end method

.method public getLimit()Lcom/amazon/kindle/content/dao/ResultsLimit;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->resultsLimit:Lcom/amazon/kindle/content/dao/ResultsLimit;

    return-object v0
.end method

.method public getSelection()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->selection:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectionArgs()[Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->selectionArgs:[Ljava/lang/String;

    return-object v0
.end method

.method public getSortBy()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->sortBy:Ljava/lang/String;

    return-object v0
.end method

.method public getTable()Ljava/lang/String;
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->table:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 155
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "table can not be null: make sure that you have set the proper attributes and the buildModel() is invoked."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isSortFieldChanged(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;)Z
    .locals 5

    .line 227
    iget-object v0, p0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->sortType:Lcom/amazon/kcp/library/LibrarySortType;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 228
    sget-object v2, Lcom/amazon/kcp/library/query/LibraryQueryModel$1;->$SwitchMap$com$amazon$kcp$library$LibrarySortType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    return v1

    .line 235
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getPublicationDateInMillis()J

    move-result-wide v3

    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getPublicationDateInMillis()J

    move-result-wide p1

    cmp-long v0, v3, p1

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 233
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getAuthor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getAuthor()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    .line 230
    :cond_3
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    :cond_4
    return v1
.end method

.method public matches(Lcom/amazon/kindle/content/ContentMetadata;)Z
    .locals 4

    .line 187
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UPDTID0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->filter:Lcom/amazon/kcp/library/LibraryContentFilter;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/LibraryContentFilter;->matches(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->groupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    sget-object v2, Lcom/amazon/kindle/krx/library/LibraryGroupType;->CLOUD:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    if-ne v0, v2, :cond_2

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->isArchivable()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 201
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->groupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    sget-object v2, Lcom/amazon/kindle/krx/library/LibraryGroupType;->DEVICE:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    if-ne v0, v2, :cond_3

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v0

    sget-object v2, Lcom/amazon/kindle/model/content/ContentState;->REMOTE:Lcom/amazon/kindle/model/content/ContentState;

    if-ne v0, v2, :cond_3

    return v1

    .line 206
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->origin:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v2, "All"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 208
    iget-object v0, p0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->origin:Ljava/lang/String;

    const-string v2, "Own"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getOriginType()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Sharing"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 212
    :cond_4
    iget-object v0, p0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->origin:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getShareOriginId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->origin:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    .line 219
    :cond_5
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->arePeriodicalsAllowed()Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/amazon/kcp/library/LibraryContentFilter;->NEWSSTAND_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/LibraryContentFilter;->matches(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result p1

    if-eqz p1, :cond_6

    return v1

    :cond_6
    const/4 p1, 0x1

    return p1
.end method

.method public updateModel(Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kindle/krx/library/LibraryGroupType;ILcom/amazon/kcp/library/LibrarySortType;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->filter:Lcom/amazon/kcp/library/LibraryContentFilter;

    .line 248
    iput-object p2, p0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->groupType:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    .line 249
    iput p3, p0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->limit:I

    .line 250
    iput-object p4, p0, Lcom/amazon/kcp/library/query/LibraryQueryModel;->sortType:Lcom/amazon/kcp/library/LibrarySortType;

    .line 251
    invoke-virtual {p0}, Lcom/amazon/kcp/library/query/LibraryQueryModel;->buildModel()V

    return-void
.end method
