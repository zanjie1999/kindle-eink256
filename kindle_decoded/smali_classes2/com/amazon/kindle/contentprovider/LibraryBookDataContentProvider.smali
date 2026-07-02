.class public final Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider;
.super Lcom/amazon/kindle/contentprovider/AbstractContentProvider;
.source "LibraryBookDataContentProvider.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLibraryBookDataContentProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LibraryBookDataContentProvider.kt\ncom/amazon/kindle/contentprovider/LibraryBookDataContentProvider\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,241:1\n768#2,11:242\n1517#2:253\n1588#2,3:254\n768#2,11:257\n1517#2:268\n1588#2,3:269\n*E\n*S KotlinDebug\n*F\n+ 1 LibraryBookDataContentProvider.kt\ncom/amazon/kindle/contentprovider/LibraryBookDataContentProvider\n*L\n88#1,11:242\n88#1:253\n88#1,3:254\n116#1,11:257\n116#1:268\n116#1,3:269\n*E\n"
.end annotation


# static fields
.field private static final ALL:Ljava/lang/String; = "all"

.field private static final ALL_ITEMS:I = 0x2

.field private static final ALL_ITEMS_EVENT:Ljava/lang/String; = "allItemsRequestLatency"

.field private static final BOOKS:Ljava/lang/String; = "books"

.field public static final Companion:Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider$Companion;

.field private static final DOCS:Ljava/lang/String; = "docs"

.field private static final INTERNAL_STORAGE:Ljava/lang/String; = "internalstorage"

.field private static final LOCAL:Ljava/lang/String; = "local"

.field private static final LOCAL_ITEMS:I = 0x1

.field private static final LOCAL_ITEMS_EVENT:Ljava/lang/String; = "localItemsRequestLatency"

.field private static final METRIC_ERROR:Ljava/lang/String; = "LibraryBookDataContentProviderError"

.field private static final METRIC_KEY:Ljava/lang/String; = "bookDataContentProviderKey"

.field private static final METRIC_SUCCESS:Ljava/lang/String; = "LibraryBookDataContentProviderSuccess"

.field private static final NEWSSTAND:Ljava/lang/String; = "newsstand"

.field private static final REMOVABLE_STORAGE:Ljava/lang/String; = "removablestorage"

.field private static final SINGLE_ITEM:I = 0x0

.field private static final SINGLE_ITEM_EVENT:Ljava/lang/String; = "singleItemRequestLatency"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private downloadStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/amazon/kcp/library/LibraryContentFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final libraryService:Lcom/amazon/kindle/content/ILibraryService;

.field private libraryTypeFilters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/amazon/kcp/library/LibraryContentFilter;",
            ">;"
        }
    .end annotation
.end field

.field private storageLocationFilter:Lcom/amazon/kindle/content/filter/ContentMetadataFilter;

.field private storageLocationFilters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/amazon/kindle/content/filter/ContentMetadataFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final uriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider;->Companion:Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider$Companion;

    .line 200
    const-class v0, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(LibraryBook\u2026tentProvider::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/content/ILibraryService;)V
    .locals 6

    const-string v0, "libraryService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Lcom/amazon/kindle/contentprovider/AbstractContentProvider;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    .line 36
    new-instance p1, Landroid/content/UriMatcher;

    const/4 v0, -0x1

    invoke-direct {p1, v0}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object p1, p0, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v0, "com.amazon.kindle.bookmetadataprovider"

    const/4 v1, 0x0

    const-string v2, "item/*/"

    .line 168
    invoke-virtual {p1, v0, v2, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 173
    iget-object p1, p0, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const/4 v2, 0x1

    const-string v3, "items/local/*/*"

    invoke-virtual {p1, v0, v3, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 178
    iget-object p1, p0, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const/4 v3, 0x2

    const-string v4, "items/all/*"

    invoke-virtual {p1, v0, v4, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    new-array p1, v3, [Lcom/amazon/kcp/library/LibraryContentFilter;

    .line 181
    sget-object v0, Lcom/amazon/kcp/library/LibraryContentFilter;->BOOKS_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    aput-object v0, p1, v1

    .line 182
    sget-object v0, Lcom/amazon/kcp/library/LibraryContentFilter;->SAMPLES_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    aput-object v0, p1, v2

    .line 181
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 182
    sget-object v0, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;->OR:Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;

    .line 181
    invoke-static {p1, v0, v1}, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner;->combine(Ljava/util/List;Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;Z)Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object p1

    new-array v0, v3, [Lkotlin/Pair;

    .line 183
    new-instance v4, Lcom/amazon/kindle/contentprovider/NonRemovableStorageContentFilter;

    invoke-direct {v4}, Lcom/amazon/kindle/contentprovider/NonRemovableStorageContentFilter;-><init>()V

    const-string v5, "internalstorage"

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v0, v1

    new-instance v4, Lcom/amazon/kindle/contentprovider/RemovalStorageContentFilter;

    invoke-direct {v4}, Lcom/amazon/kindle/contentprovider/RemovalStorageContentFilter;-><init>()V

    const-string v5, "removablestorage"

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider;->storageLocationFilters:Ljava/util/Map;

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/Pair;

    const-string v4, "books"

    .line 184
    invoke-static {v4, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v0, v1

    sget-object p1, Lcom/amazon/kcp/library/LibraryContentFilter;->NEWSSTAND_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    const-string v4, "newsstand"

    invoke-static {v4, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v0, v2

    sget-object p1, Lcom/amazon/kcp/library/LibraryContentFilter;->DOCS_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    const-string v4, "docs"

    invoke-static {v4, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider;->libraryTypeFilters:Ljava/util/Map;

    new-array p1, v3, [Lkotlin/Pair;

    .line 185
    sget-object v0, Lcom/amazon/kcp/library/LibraryContentFilter;->DOWNLOADED_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    const-string v3, "local"

    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, p1, v1

    const-string v0, "all"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, p1, v2

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider;->downloadStates:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final getBookIdForSingleItem$LibraryModule_release(Landroid/net/Uri;)Lcom/amazon/kindle/model/content/IBookID;
    .locals 2

    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 146
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    return-object p1

    .line 148
    :cond_0
    sget-object p1, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider;->TAG:Ljava/lang/String;

    const-string v0, "Error parsing book id"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final getCursorForAllItems$LibraryModule_release(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 11

    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "LibraryBookDataContentProviderError"

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    .line 101
    sget-object p1, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider;->TAG:Ljava/lang/String;

    const-string v0, "URI does not contain correct number of arguments"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 105
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 106
    iget-object v3, p0, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider;->libraryTypeFilters:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/library/LibraryContentFilter;

    if-nez p1, :cond_1

    .line 108
    sget-object p1, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider;->TAG:Ljava/lang/String;

    const-string v0, "URI does not contain required parameters"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    new-array v0, v0, [Lcom/amazon/kcp/library/LibraryContentFilter;

    const/4 v3, 0x0

    aput-object p1, v0, v3

    const/4 p1, 0x1

    .line 112
    sget-object v4, Lcom/amazon/kcp/library/LibraryContentFilter;->NON_GROUPING_NON_CONSOLIDATING_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    aput-object v4, v0, p1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 113
    sget-object v0, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;->AND:Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;

    invoke-static {p1, v0, v3}, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner;->combine(Ljava/util/List;Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;Z)Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 115
    iget-object v4, p0, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    sget-object v5, Lcom/amazon/kindle/krx/library/LibraryGroupType;->NOT_APPLICABLE:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    sget-object v7, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_RECENT:Lcom/amazon/kcp/library/LibrarySortType;

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lcom/amazon/kcp/library/LibraryCursorFactory;->loadLibraryItemsWithoutCachingResult(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibrarySortType;ILjava/lang/String;Lcom/amazon/kcp/library/ILibraryItemQuery;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 266
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;

    if-eqz v2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 268
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 269
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 270
    check-cast v1, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;

    .line 116
    invoke-virtual {v1}, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;->getContentMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v1

    const-string v2, "it.contentMetadata"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 117
    :cond_5
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider;->TAG:Ljava/lang/String;

    const-string v2, "LibraryBookDataContentProviderSuccess"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0, p1, v3}, Lcom/amazon/kindle/contentprovider/AbstractContentProvider;->getExternalCursor(Ljava/util/Collection;Z)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_2

    .line 120
    :cond_6
    sget-object p1, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider;->TAG:Ljava/lang/String;

    const-string v0, "Error combining filter"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object v1
.end method

.method public final getCursorForLocalItems$LibraryModule_release(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 12

    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    .line 72
    sget-object p1, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider;->TAG:Ljava/lang/String;

    const-string v0, "URI does not contain correct number of arguments"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 75
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    const/4 v3, 0x3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 77
    iget-object v4, p0, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider;->storageLocationFilters:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/content/filter/ContentMetadataFilter;

    iput-object p1, p0, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider;->storageLocationFilter:Lcom/amazon/kindle/content/filter/ContentMetadataFilter;

    .line 78
    iget-object p1, p0, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider;->libraryTypeFilters:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/library/LibraryContentFilter;

    .line 79
    iget-object v0, p0, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider;->storageLocationFilter:Lcom/amazon/kindle/content/filter/ContentMetadataFilter;

    const-string v4, "LibraryBookDataContentProviderError"

    if-eqz v0, :cond_7

    if-nez p1, :cond_1

    goto/16 :goto_3

    :cond_1
    new-array v0, v3, [Lcom/amazon/kcp/library/LibraryContentFilter;

    const/4 v3, 0x0

    aput-object p1, v0, v3

    const/4 p1, 0x1

    .line 84
    sget-object v5, Lcom/amazon/kcp/library/LibraryContentFilter;->DOWNLOADED_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    aput-object v5, v0, p1

    sget-object p1, Lcom/amazon/kcp/library/LibraryContentFilter;->NON_GROUPING_NON_CONSOLIDATING_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    aput-object p1, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 85
    sget-object v0, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;->AND:Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;

    invoke-static {p1, v0, v3}, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner;->combine(Ljava/util/List;Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;Z)Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 87
    iget-object v5, p0, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    sget-object v6, Lcom/amazon/kindle/krx/library/LibraryGroupType;->NOT_APPLICABLE:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    sget-object v8, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_RECENT:Lcom/amazon/kcp/library/LibrarySortType;

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lcom/amazon/kcp/library/LibraryCursorFactory;->loadLibraryItemsWithoutCachingResult(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibrarySortType;ILjava/lang/String;Lcom/amazon/kcp/library/ILibraryItemQuery;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 251
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;

    if-eqz v2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 253
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 254
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 255
    check-cast v1, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;

    .line 88
    invoke-virtual {v1}, Lcom/amazon/kcp/library/ContentMetadataDisplayItem;->getContentMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v1

    const-string v2, "it.contentMetadata"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 89
    :cond_5
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider;->TAG:Ljava/lang/String;

    const-string v2, "LibraryBookDataContentProviderSuccess"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0, p1, v3}, Lcom/amazon/kindle/contentprovider/AbstractContentProvider;->getExternalCursor(Ljava/util/Collection;Z)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_2

    .line 92
    :cond_6
    sget-object p1, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider;->TAG:Ljava/lang/String;

    const-string v0, "Error combining filter"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0, v4}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object v1

    .line 80
    :cond_7
    :goto_3
    sget-object p1, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider;->TAG:Ljava/lang/String;

    const-string v0, "URI does not contain required parameters"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0, v4}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public final getCursorForSingleBook$LibraryModule_release(Landroid/net/Uri;Lcom/amazon/kindle/content/ILibraryService;)Landroid/database/Cursor;
    .locals 3

    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider;->getBookIdForSingleItem$LibraryModule_release(Landroid/net/Uri;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    const-string v0, "LibraryBookDataContentProviderError"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 130
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    if-eqz p2, :cond_1

    .line 133
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p1, v2}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_2

    .line 135
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p2

    sget-object v0, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider;->TAG:Ljava/lang/String;

    const-string v1, "LibraryBookDataContentProviderSuccess"

    invoke-virtual {p2, v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/contentprovider/AbstractContentProvider;->getExternalCursor(Ljava/util/Collection;Z)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_1

    .line 138
    :cond_2
    sget-object p1, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider;->TAG:Ljava/lang/String;

    const-string p2, "Cannot find content"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v1
.end method

.method public getFilters()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/content/filter/ContentMetadataFilter;",
            ">;"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider;->storageLocationFilter:Lcom/amazon/kindle/content/filter/ContentMetadataFilter;

    if-eqz v0, :cond_0

    .line 154
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 156
    :cond_0
    sget-object v0, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider;->TAG:Ljava/lang/String;

    const-string v1, "content filter is null"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public matches(Landroid/net/Uri;)Z
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-lt v0, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const-string/jumbo p2, "uri"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p2

    const-string p3, "bookDataContentProviderKey"

    invoke-virtual {p2, p3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->startMetricTimer(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 42
    iput-object p2, p0, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider;->storageLocationFilter:Lcom/amazon/kindle/content/filter/ContentMetadataFilter;

    .line 43
    iget-object p4, p0, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p4

    if-eqz p4, :cond_2

    const/4 p5, 0x1

    if-eq p4, p5, :cond_1

    const/4 p5, 0x2

    if-eq p4, p5, :cond_0

    .line 63
    sget-object p1, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider;->TAG:Ljava/lang/String;

    const-string p4, "Query did not match"

    invoke-static {p1, p4}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->cancelMetricTimer(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_0
    sget-object p2, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider;->TAG:Ljava/lang/String;

    const-string p4, "Matched all items"

    invoke-static {p2, p4}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider;->getCursorForAllItems$LibraryModule_release(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p2

    .line 59
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object p4, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider;->TAG:Ljava/lang/String;

    const-string p5, "allItemsRequestLatency"

    invoke-virtual {p1, p4, p5, p3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->stopMetricTimer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_1
    sget-object p2, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider;->TAG:Ljava/lang/String;

    const-string p4, "Matched local items"

    invoke-static {p2, p4}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider;->getCursorForLocalItems$LibraryModule_release(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p2

    .line 53
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object p4, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider;->TAG:Ljava/lang/String;

    const-string p5, "localItemsRequestLatency"

    invoke-virtual {p1, p4, p5, p3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->stopMetricTimer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_2
    sget-object p2, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider;->TAG:Ljava/lang/String;

    const-string p4, "Matched single item"

    invoke-static {p2, p4}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object p2, p0, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider;->getCursorForSingleBook$LibraryModule_release(Landroid/net/Uri;Lcom/amazon/kindle/content/ILibraryService;)Landroid/database/Cursor;

    move-result-object p2

    .line 47
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object p4, Lcom/amazon/kindle/contentprovider/LibraryBookDataContentProvider;->TAG:Ljava/lang/String;

    const-string p5, "singleItemRequestLatency"

    invoke-virtual {p1, p4, p5, p3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->stopMetricTimer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p2
.end method
