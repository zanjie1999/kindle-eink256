.class public Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;
.super Ljava/lang/Object;
.source "LibrarySearchMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;,
        Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$LibrarySearchMetricsRecord;
    }
.end annotation


# static fields
.field private static final ALPHANUMERIC_CAP:Ljava/lang/String; = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"

.field protected static final DEFAULT_SEARCH_METRICS_HANDLER_NAMES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory$Name;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final aggregatedClickStreamMetricsRecord:Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;

.field private clickstreamMetricsClickAttributionHandler:Lcom/amazon/kcp/search/metrics/IClickstreamMetricsHandler;

.field private clickstreamMetricsSearchAttributionHandler:Lcom/amazon/kcp/search/metrics/IClickstreamMetricsHandler;

.field private final fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

.field private hasHadClickOutcome:Z

.field private hasOutcome:Z

.field private final id:Ljava/util/UUID;

.field private record:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$LibrarySearchMetricsRecord;

.field private final searchMetricsHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/metrics/ISearchMetricsHandler;",
            ">;"
        }
    .end annotation
.end field

.field searchRecord:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;

.field private final searchSessionId:Ljava/util/UUID;

.field private visibleStoreResultCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 46
    sget-object v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory$Name;->OUTCOME:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory$Name;

    sget-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory$Name;->ASIN:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory$Name;

    sget-object v2, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory$Name;->SECTION:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory$Name;

    sget-object v3, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory$Name;->GENERAL:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory$Name;

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->DEFAULT_SEARCH_METRICS_HANDLER_NAMES:Ljava/util/List;

    .line 52
    const-class v0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 82
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;-><init>(Ljava/util/UUID;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;)V
    .locals 3

    .line 91
    sget-object v0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->DEFAULT_SEARCH_METRICS_HANDLER_NAMES:Ljava/util/List;

    new-instance v1, Lcom/amazon/kcp/search/metrics/ClickstreamMetricsSearchAttributionHandler;

    invoke-direct {v1}, Lcom/amazon/kcp/search/metrics/ClickstreamMetricsSearchAttributionHandler;-><init>()V

    new-instance v2, Lcom/amazon/kcp/search/metrics/ClickstreamMetricsClickAttributionHandler;

    invoke-direct {v2}, Lcom/amazon/kcp/search/metrics/ClickstreamMetricsClickAttributionHandler;-><init>()V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;-><init>(Ljava/util/UUID;Ljava/util/List;Lcom/amazon/kcp/search/metrics/IClickstreamMetricsHandler;Lcom/amazon/kcp/search/metrics/IClickstreamMetricsHandler;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/util/List;Lcom/amazon/kcp/search/metrics/IClickstreamMetricsHandler;Lcom/amazon/kcp/search/metrics/IClickstreamMetricsHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory$Name;",
            ">;",
            "Lcom/amazon/kcp/search/metrics/IClickstreamMetricsHandler;",
            "Lcom/amazon/kcp/search/metrics/IClickstreamMetricsHandler;",
            ")V"
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 76
    iput v0, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->visibleStoreResultCount:I

    .line 106
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->id:Ljava/util/UUID;

    .line 107
    iput-object p1, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->searchSessionId:Ljava/util/UUID;

    .line 109
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->searchMetricsHandlers:Ljava/util/List;

    .line 110
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory$Name;

    .line 111
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->searchMetricsHandlers:Ljava/util/List;

    invoke-static {p2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory;->getHandler(Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsHandlerFactory$Name;)Lcom/amazon/kcp/search/metrics/ISearchMetricsHandler;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 113
    :cond_0
    iput-object p3, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->clickstreamMetricsSearchAttributionHandler:Lcom/amazon/kcp/search/metrics/IClickstreamMetricsHandler;

    .line 114
    iput-object p4, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->clickstreamMetricsClickAttributionHandler:Lcom/amazon/kcp/search/metrics/IClickstreamMetricsHandler;

    .line 115
    invoke-virtual {p0}, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->getDefaultMetricsRecord()Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$LibrarySearchMetricsRecord;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->record:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$LibrarySearchMetricsRecord;

    .line 117
    iget-object p1, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->id:Ljava/util/UUID;

    iget-object p2, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->searchSessionId:Ljava/util/UUID;

    invoke-static {p1, p2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->initialize(Ljava/util/UUID;Ljava/util/UUID;)Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->searchRecord:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;

    .line 118
    new-instance p1, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;

    invoke-direct {p1}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->aggregatedClickStreamMetricsRecord:Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;

    .line 119
    const-class p1, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-static {p1}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    iput-object p1, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    if-nez p1, :cond_1

    .line 121
    sget-object p1, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->LOG_TAG:Ljava/lang/String;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    iget-object p4, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->id:Ljava/util/UUID;

    invoke-virtual {p4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p4

    aput-object p4, p2, p3

    const-string p3, "No implementation of fast metrics discovered for search id: %s."

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private buildClickstreamMetricsSrField(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 776
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "1-%d"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private buildImpressionRecords(ILjava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/store/StoreContentMetadata;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionImpressionRecord;",
            ">;"
        }
    .end annotation

    .line 753
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 754
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    add-int/lit8 v1, p1, 0x1

    .line 756
    invoke-static {v1}, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionImpressionRecord;->initialize(I)Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionImpressionRecord;

    move-result-object v2

    .line 757
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/search/store/StoreContentMetadata;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/store/StoreContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionImpressionRecord;->setAsin(Ljava/lang/String;)V

    .line 758
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move p1, v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private isInlineSearchSuggestionsEnabled()Z
    .locals 1

    .line 790
    sget-object v0, Lcom/amazon/kcp/debug/InlineSearchSuggestionsWithCXUpdateDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/InlineSearchSuggestionsWithCXUpdateDebugUtils;

    invoke-static {}, Lcom/amazon/kcp/debug/InlineSearchSuggestionsWithCXUpdateDebugUtils;->isInlineSearchSuggestionsWithCXUpdateEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 791
    invoke-static {}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->getInstance()Lcom/amazon/kindle/content/dao/LibraryDataCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/content/dao/LibraryDataCache;->isCacheInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSearchAsYouTypeRemovalEnabled()Z
    .locals 1

    .line 780
    invoke-direct {p0}, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->isInlineSearchSuggestionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/kcp/debug/WayFinderSearchAsYouTypeRemovalDebugUtils;->isWayFinderSearchAsYouTypeRemovalEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isWayFinderClickStreamAttributionMetricsPublishEnabled()Z
    .locals 1

    .line 535
    invoke-static {}, Lcom/amazon/kcp/debug/WayFinderClickStreamAttributionMetricsPublishDebugUtils;->isWayFinderClickStreamAttributionMetricsPublishEnabled()Z

    move-result v0

    return v0
.end method

.method private prepareSearchRecordForNextOutcome()V
    .locals 3

    .line 500
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->searchRecord:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getOutcomeSeqNum()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->setOutcomeSeqNum(I)V

    .line 501
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->searchRecord:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getStoreResults()Ljava/util/List;

    move-result-object v0

    .line 502
    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->searchRecord:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getLibraryResults()Ljava/util/List;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 504
    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->searchRecord:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->setStoreProcessPosition(I)V

    :cond_0
    if-eqz v1, :cond_1

    .line 507
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->searchRecord:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->setLibraryProcessPosition(I)V

    :cond_1
    const/4 v0, -0x1

    .line 509
    iput v0, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->visibleStoreResultCount:I

    return-void
.end method

.method private publishClickStreamMetrics(Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;Lcom/amazon/kcp/search/SearchProvider;I)V
    .locals 2

    if-eqz p2, :cond_1

    .line 598
    invoke-virtual {p2}, Lcom/amazon/kcp/search/SearchProvider;->hasStoreResults()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 599
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->aggregatedClickStreamMetricsRecord:Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;

    invoke-direct {p0, v0, p2}, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->writeClickStreamCommonAttributionFields(Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;Lcom/amazon/kcp/search/SearchProvider;)V

    .line 602
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->aggregatedClickStreamMetricsRecord:Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->getPreviousSearchPageNumber()I

    move-result v0

    invoke-virtual {p2}, Lcom/amazon/kcp/search/SearchProvider;->getCurrentStorePage()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 603
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->aggregatedClickStreamMetricsRecord:Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;

    invoke-direct {p0, v0, p2}, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->writeClickStreamSearchAttributionFields(Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;Lcom/amazon/kcp/search/SearchProvider;)V

    .line 604
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->clickstreamMetricsSearchAttributionHandler:Lcom/amazon/kcp/search/metrics/IClickstreamMetricsHandler;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->aggregatedClickStreamMetricsRecord:Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/search/metrics/IClickstreamMetricsHandler;->submitRecord(Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;)V

    .line 608
    :cond_0
    sget-object v0, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->STORE_PAGE_OPEN:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    .line 609
    iget-object p1, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->aggregatedClickStreamMetricsRecord:Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;

    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->writeClickStreamClickAttributionFields(Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;Lcom/amazon/kcp/search/SearchProvider;I)V

    .line 610
    iget-object p1, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->clickstreamMetricsClickAttributionHandler:Lcom/amazon/kcp/search/metrics/IClickstreamMetricsHandler;

    iget-object p2, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->aggregatedClickStreamMetricsRecord:Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;

    invoke-interface {p1, p2}, Lcom/amazon/kcp/search/metrics/IClickstreamMetricsHandler;->submitRecord(Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;)V

    :cond_1
    return-void
.end method

.method private setLibraryResultPosition(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    .line 488
    iget-object p1, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->record:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$LibrarySearchMetricsRecord;

    iput v0, p1, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$LibrarySearchMetricsRecord;->libraryResultPosition:I

    goto :goto_0

    .line 490
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->record:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$LibrarySearchMetricsRecord;

    iput p1, v1, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$LibrarySearchMetricsRecord;->libraryResultPosition:I

    .line 491
    iput v0, v1, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$LibrarySearchMetricsRecord;->storeResultPosition:I

    .line 492
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->searchRecord:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->setLibrarySelectedPosition(I)V

    :goto_0
    return-void
.end method

.method private setLibraryResults(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/ContentResult;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 379
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v2, "Setting library result for search metrics, has %d records"

    .line 378
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 381
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->searchRecord:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;

    invoke-virtual {v1, p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->setLibraryResults(Ljava/util/List;)V

    .line 382
    iget-object p1, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->searchRecord:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->setLibrarySelectedPosition(I)V

    return-void
.end method

.method private setLibraryResultsShown(Z)V
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->record:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$LibrarySearchMetricsRecord;

    iput-boolean p1, v0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$LibrarySearchMetricsRecord;->libraryResultsShown:Z

    return-void
.end method

.method private setQueryLength(I)V
    .locals 1

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->record:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$LibrarySearchMetricsRecord;

    iput p1, v0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$LibrarySearchMetricsRecord;->length:I

    return-void
.end method

.method private setRefinements(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->searchRecord:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->setStoreFilters(Ljava/util/List;)V

    .line 142
    iget-object p1, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->searchRecord:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->setStoreSortType(Ljava/lang/String;)V

    return-void
.end method

.method private setSearchKeyword(Ljava/lang/String;)V
    .locals 2

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Library search metrics setting Keywords to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 352
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->searchRecord:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->setSearchKeyword(Ljava/lang/String;)V

    return-void
.end method

.method private setSearchSuggestions(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 420
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v2, "Setting Suggestion Result, has %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 422
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->searchRecord:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;

    invoke-virtual {v1, p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->setSearchSuggestionResult(Ljava/util/List;)V

    .line 425
    iget-object p1, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->searchRecord:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->setSearchSuggestionSelectedPosition(I)V

    return-void
.end method

.method private setSpellCorrectedKeyword(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Setting spell corrected keywords to %s"

    .line 434
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 435
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->searchRecord:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->setSpellCorrectedKeyword(Ljava/lang/String;)V

    return-void
.end method

.method private setStoreResultPosition(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    .line 469
    iget-object p1, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->record:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$LibrarySearchMetricsRecord;

    iput v0, p1, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$LibrarySearchMetricsRecord;->storeResultPosition:I

    goto :goto_0

    .line 471
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->record:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$LibrarySearchMetricsRecord;

    iput p1, v1, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$LibrarySearchMetricsRecord;->storeResultPosition:I

    .line 472
    iput v0, v1, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$LibrarySearchMetricsRecord;->libraryResultPosition:I

    .line 473
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->searchRecord:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->setStoreSelectedPosition(I)V

    :goto_0
    return-void
.end method

.method private setStoreResults(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/store/StoreContentMetadata;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 392
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v2, "Setting store result for search metrics, has %d records"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 397
    :cond_0
    iget v1, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->visibleStoreResultCount:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-le v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->visibleStoreResultCount:I

    .line 399
    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 401
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->searchRecord:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;

    invoke-virtual {v1, p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->setStoreResults(Ljava/util/List;)V

    .line 402
    iget-object p1, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->searchRecord:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->setStoreSelectedPosition(I)V

    return-void
.end method

.method private setStoreResultsShown(Z)V
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->record:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$LibrarySearchMetricsRecord;

    iput-boolean p1, v0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$LibrarySearchMetricsRecord;->storeResultsShown:Z

    return-void
.end method

.method private setTotalStoreResults(I)V
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->searchRecord:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->setTotalStoreResults(I)V

    return-void
.end method

.method private wrapLibraryResults(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/content/IListableBook;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/ContentResult;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 521
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 523
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/model/content/IListableBook;

    .line 524
    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kcp/library/models/BookType;->isGroup()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 525
    new-instance v3, Lcom/amazon/kcp/search/GroupContentResult;

    invoke-direct {v3, v2, v1}, Lcom/amazon/kcp/search/GroupContentResult;-><init>(Lcom/amazon/kindle/model/content/IListableBook;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 527
    :cond_1
    new-instance v3, Lcom/amazon/kcp/search/LibraryContentResult;

    invoke-direct {v3, v2, v1}, Lcom/amazon/kcp/search/LibraryContentResult;-><init>(Lcom/amazon/kindle/model/content/IListableBook;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private writeClickStreamClickAttributionFields(Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;Lcom/amazon/kcp/search/SearchProvider;I)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 728
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/kcp/search/SearchProvider;->getStoreSearchResponseMetadata()Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;

    move-result-object v0

    .line 730
    invoke-virtual {v0}, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->getQueryId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->setQueryId(Ljava/lang/String;)V

    const-string v0, "pageHit"

    .line 731
    invoke-virtual {p1, v0}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->setHitType(Ljava/lang/String;)V

    const/16 v0, 0x14

    const-string v1, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 733
    invoke-static {v0, v1}, Lcom/amazon/kindle/search/SearchUtils;->generateRandomString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->setRequestId(Ljava/lang/String;)V

    const-string v0, "Y"

    .line 734
    invoke-virtual {p1, v0}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->setGlanceView(Ljava/lang/String;)V

    .line 735
    invoke-direct {p0, p3}, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->buildClickstreamMetricsSrField(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->setSr(Ljava/lang/String;)V

    .line 739
    invoke-virtual {p2}, Lcom/amazon/kcp/search/SearchProvider;->getStoreResults()Ljava/util/List;

    move-result-object p2

    add-int/lit8 p3, p3, -0x1

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kcp/search/store/StoreContentMetadata;

    .line 742
    invoke-virtual {p2}, Lcom/amazon/kcp/search/store/StoreContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->setClickAttributionPageTypeId(Ljava/lang/String;)V

    return-void

    .line 720
    :cond_1
    :goto_0
    sget-object p1, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->LOG_TAG:Ljava/lang/String;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "Both input searchProvider andaggregatedClickStreamMetricsAttributionRecord cannot be null when populatingclickStream click attribution metrics."

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private writeClickStreamCommonAttributionFields(Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;Lcom/amazon/kcp/search/SearchProvider;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "kin_red_store_0"

    .line 635
    invoke-virtual {p1, v0}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->setRefMarker(Ljava/lang/String;)V

    const-string v0, "Mobile Application"

    .line 636
    invoke-virtual {p1, v0}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->setSiteVariant(Ljava/lang/String;)V

    const-string v0, "kindle-unified-search"

    .line 637
    invoke-virtual {p1, v0}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->setTeamName(Ljava/lang/String;)V

    .line 640
    invoke-virtual {p2}, Lcom/amazon/kcp/search/SearchProvider;->getStoreSearchResponseMetadata()Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;

    move-result-object p2

    .line 642
    invoke-virtual {p2}, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->getStatusCode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->setStatusCode(I)V

    .line 643
    invoke-virtual {p2}, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->setSessionId(Ljava/lang/String;)V

    .line 644
    invoke-virtual {p2}, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->getRemoteAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->setRemoteAddress(Ljava/lang/String;)V

    .line 645
    invoke-virtual {p2}, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->setUserAgent(Ljava/lang/String;)V

    .line 646
    invoke-virtual {p2}, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->getLegalEntityId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->setLegalEntityId(I)V

    return-void

    .line 626
    :cond_1
    :goto_0
    sget-object p1, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->LOG_TAG:Ljava/lang/String;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "Both input searchProvider andaggregatedClickStreamMetricsAttributionRecord cannot be null when populatingcommon attributes for clickStream metrics."

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private writeClickStreamSearchAttributionFields(Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;Lcom/amazon/kcp/search/SearchProvider;)V
    .locals 3

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 667
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/kcp/search/SearchProvider;->getStoreSearchResponseMetadata()Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;

    move-result-object v0

    .line 670
    invoke-virtual {v0}, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->getQueryId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->setQueryId(Ljava/lang/String;)V

    .line 671
    invoke-virtual {v0}, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->getAliasOrIndex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->setAliasOrIndex(Ljava/lang/String;)V

    .line 672
    invoke-virtual {v0}, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->getRank()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->setRank(Ljava/lang/String;)V

    .line 673
    invoke-virtual {v0}, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->getSearchPageTypeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->setSearchAttributionPageTypeId(Ljava/lang/String;)V

    const-string v1, "pageTouch"

    .line 674
    invoke-virtual {p1, v1}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->setHitType(Ljava/lang/String;)V

    const/16 v1, 0x14

    const-string v2, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 676
    invoke-static {v1, v2}, Lcom/amazon/kindle/search/SearchUtils;->generateRandomString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->setRequestId(Ljava/lang/String;)V

    const-string v1, "Y"

    .line 677
    invoke-virtual {p1, v1}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->setSearchPage(Ljava/lang/String;)V

    const-string v1, "Search"

    .line 678
    invoke-virtual {p1, v1}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->setPageType(Ljava/lang/String;)V

    const-string v1, "KeywordSingleSearch"

    .line 679
    invoke-virtual {p1, v1}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->setSubPageType(Ljava/lang/String;)V

    .line 680
    invoke-virtual {p2}, Lcom/amazon/kcp/search/SearchProvider;->getQuery()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 681
    invoke-virtual {p2}, Lcom/amazon/kcp/search/SearchProvider;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/search/SearchUtils;->urlEncodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    .line 680
    :goto_0
    invoke-virtual {p1, v1}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->setKeywords(Ljava/lang/String;)V

    .line 682
    invoke-virtual {p2}, Lcom/amazon/kcp/search/SearchProvider;->getTotalStoreResults()I

    move-result v1

    .line 683
    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->getPreviousSearchItemPosition()I

    move-result v2

    sub-int/2addr v1, v2

    .line 682
    invoke-virtual {p1, v1}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->setTotalFound(I)V

    .line 685
    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->getPreviousSearchItemPosition()I

    move-result v1

    invoke-virtual {p2}, Lcom/amazon/kcp/search/SearchProvider;->getStoreResults()Ljava/util/List;

    move-result-object v2

    .line 684
    invoke-direct {p0, v1, v2}, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->buildImpressionRecords(ILjava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->setImpression(Ljava/util/List;)V

    .line 688
    invoke-virtual {p2}, Lcom/amazon/kcp/search/SearchProvider;->getSpellCorrectionInfo()Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 691
    invoke-virtual {p2}, Lcom/amazon/kcp/search/SearchProvider;->getSpellCorrectionInfo()Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;->getAlternateQuery()Ljava/lang/String;

    move-result-object v1

    .line 690
    invoke-static {v1}, Lcom/amazon/kindle/search/SearchUtils;->urlEncodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 689
    invoke-virtual {p1, v1}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->setSpellCorrection(Ljava/lang/String;)V

    .line 694
    :cond_2
    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->searchRecord:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getSearchKeywordBeforeSuggestion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 695
    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->searchRecord:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;

    .line 696
    invoke-virtual {v1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getSearchKeywordBeforeSuggestion()Ljava/lang/String;

    move-result-object v1

    .line 695
    invoke-static {v1}, Lcom/amazon/kindle/search/SearchUtils;->urlEncodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->setSearchPrefix(Ljava/lang/String;)V

    .line 698
    :cond_3
    invoke-virtual {v0}, Lcom/amazon/kcp/search/store/StoreSearchResponseMetadata;->getRank()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->setRank(Ljava/lang/String;)V

    .line 699
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->record:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$LibrarySearchMetricsRecord;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$LibrarySearchMetricsRecord;->tabName:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->setTabId(Ljava/lang/String;)V

    .line 703
    invoke-virtual {p2}, Lcom/amazon/kcp/search/SearchProvider;->getStoreResults()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->setPreviousSearchItemPosition(I)V

    .line 705
    iget-object p1, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->aggregatedClickStreamMetricsRecord:Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;

    invoke-virtual {p2}, Lcom/amazon/kcp/search/SearchProvider;->getCurrentStorePage()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->setPreviousSearchPageNumber(I)V

    return-void

    .line 660
    :cond_5
    :goto_2
    sget-object p1, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->LOG_TAG:Ljava/lang/String;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "Both input searchProvider andaggregatedClickStreamMetricsAttributionRecord cannot be null when populatingclickStream search attribution metrics."

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method getDefaultMetricsRecord()Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$LibrarySearchMetricsRecord;
    .locals 9

    .line 570
    new-instance v8, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$LibrarySearchMetricsRecord;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "Null"

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$LibrarySearchMetricsRecord;-><init>(Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;IIIZZLjava/lang/String;)V

    return-object v8
.end method

.method public getHasHadClickOutcome()Z
    .locals 1

    .line 149
    iget-boolean v0, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->hasHadClickOutcome:Z

    return v0
.end method

.method public getSearchSessionId()Ljava/util/UUID;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->searchSessionId:Ljava/util/UUID;

    return-object v0
.end method

.method public handleOutcome(Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;Lcom/amazon/kcp/search/SearchProvider;)V
    .locals 1

    const/4 v0, 0x0

    .line 203
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->handleOutcome(Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;Lcom/amazon/kcp/search/SearchProvider;I)V

    return-void
.end method

.method public handleOutcome(Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;Lcom/amazon/kcp/search/SearchProvider;I)V
    .locals 8

    .line 217
    invoke-direct {p0}, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->isWayFinderClickStreamAttributionMetricsPublishEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->publishClickStreamMetrics(Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;Lcom/amazon/kcp/search/SearchProvider;I)V

    .line 221
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->hasOutcome:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->EXIT_SEARCH:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 225
    invoke-direct {p0, v0}, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->setStoreResultsShown(Z)V

    .line 226
    invoke-direct {p0, v0}, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->setLibraryResultsShown(Z)V

    const/4 v1, 0x1

    if-eqz p2, :cond_9

    .line 229
    invoke-virtual {p2}, Lcom/amazon/kcp/search/SearchProvider;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->setQueryLength(I)V

    .line 230
    invoke-virtual {p2}, Lcom/amazon/kcp/search/SearchProvider;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->setSearchKeyword(Ljava/lang/String;)V

    .line 242
    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->searchRecord:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;

    invoke-virtual {v2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getSearchSuggestionResult()Ljava/util/List;

    move-result-object v2

    .line 243
    iget-object v3, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->searchRecord:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;

    invoke-virtual {v3}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getSearchSuggestionSelectedPosition()I

    move-result v3

    .line 244
    invoke-direct {p0}, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->isSearchAsYouTypeRemovalEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 253
    invoke-virtual {p2}, Lcom/amazon/kcp/search/SearchProvider;->getQuery()Ljava/lang/String;

    move-result-object v4

    sub-int/2addr v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 254
    :cond_2
    invoke-virtual {p2}, Lcom/amazon/kcp/search/SearchProvider;->getSuggestions()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->setSearchSuggestions(Ljava/util/List;)V

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    .line 263
    invoke-virtual {p2}, Lcom/amazon/kcp/search/SearchProvider;->getQuery()Ljava/lang/String;

    move-result-object v4

    sub-int/2addr v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 264
    invoke-virtual {p2}, Lcom/amazon/kcp/search/SearchProvider;->getSuggestions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 265
    :cond_4
    invoke-virtual {p2}, Lcom/amazon/kcp/search/SearchProvider;->getSuggestions()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->setSearchSuggestions(Ljava/util/List;)V

    .line 270
    :cond_5
    :goto_0
    invoke-virtual {p2}, Lcom/amazon/kcp/search/SearchProvider;->getStoreResults()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 271
    invoke-direct {p0, v1}, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->setStoreResultsShown(Z)V

    .line 273
    :cond_6
    invoke-virtual {p2}, Lcom/amazon/kcp/search/SearchProvider;->getStoreResults()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->setStoreResults(Ljava/util/List;)V

    .line 274
    invoke-virtual {p2}, Lcom/amazon/kcp/search/SearchProvider;->getTotalStoreResults()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->setTotalStoreResults(I)V

    .line 277
    invoke-virtual {p2}, Lcom/amazon/kcp/search/SearchProvider;->getLibraryResults()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 278
    invoke-direct {p0, v1}, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->setLibraryResultsShown(Z)V

    .line 279
    invoke-virtual {p2}, Lcom/amazon/kcp/search/SearchProvider;->getLibraryResults()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->wrapLibraryResults(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->setLibraryResults(Ljava/util/List;)V

    .line 283
    :cond_7
    invoke-virtual {p2}, Lcom/amazon/kcp/search/SearchProvider;->getSpellCorrectionInfo()Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 285
    invoke-virtual {v2}, Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->setSpellCorrectedKeyword(Ljava/lang/String;)V

    .line 289
    :cond_8
    invoke-virtual {p2}, Lcom/amazon/kcp/search/SearchProvider;->getStoreFilterItemIds()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2}, Lcom/amazon/kcp/search/SearchProvider;->getStoreSortTypeId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v2, p2}, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->setRefinements(Ljava/util/List;Ljava/lang/String;)V

    :cond_9
    if-eqz p3, :cond_c

    .line 296
    sget-object p2, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$1;->$SwitchMap$com$amazon$kcp$search$metrics$LibrarySearchOutcome:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget p2, p2, v2

    if-eq p2, v1, :cond_b

    const/4 v2, 0x2

    if-eq p2, v2, :cond_a

    const/4 v2, 0x3

    if-eq p2, v2, :cond_a

    const/4 v2, 0x4

    if-eq p2, v2, :cond_a

    goto :goto_1

    .line 303
    :cond_a
    invoke-direct {p0, p3}, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->setLibraryResultPosition(I)V

    goto :goto_1

    .line 298
    :cond_b
    invoke-direct {p0, p3}, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->setStoreResultPosition(I)V

    .line 310
    :cond_c
    :goto_1
    iput-boolean v1, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->hasOutcome:Z

    .line 311
    iget-boolean p2, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->hasHadClickOutcome:Z

    if-nez p2, :cond_e

    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->isClick()Z

    move-result p2

    if-eqz p2, :cond_d

    goto :goto_2

    :cond_d
    const/4 v1, 0x0

    :cond_e
    :goto_2
    iput-boolean v1, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->hasHadClickOutcome:Z

    .line 313
    iget-object p2, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    if-eqz p2, :cond_f

    const-string p3, "kindle_app_search_attempt"

    .line 314
    invoke-interface {p2, p3, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->getPayloadBuilder(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object p2

    sget-object p3, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;->SEARCH_ID:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;

    iget-object p3, p3, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;->emitName:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->id:Ljava/util/UUID;

    .line 315
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object p2

    sget-object p3, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;->LENGTH:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;

    iget-object p3, p3, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;->emitName:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->record:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$LibrarySearchMetricsRecord;

    iget v0, v0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$LibrarySearchMetricsRecord;->length:I

    .line 316
    invoke-interface {p2, p3, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object p2

    sget-object p3, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;->APP_TAB:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;

    iget-object p3, p3, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;->emitName:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->record:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$LibrarySearchMetricsRecord;

    iget-object v0, v0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$LibrarySearchMetricsRecord;->tabName:Ljava/lang/String;

    .line 317
    invoke-interface {p2, p3, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object p2

    sget-object p3, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;->OUTCOME:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;

    iget-object p3, p3, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;->emitName:Ljava/lang/String;

    .line 318
    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->getMetricEmitName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object p2

    sget-object p3, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;->STORE_RESULTS_SHOWN:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;

    iget-object p3, p3, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;->emitName:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->record:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$LibrarySearchMetricsRecord;

    iget-boolean v0, v0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$LibrarySearchMetricsRecord;->storeResultsShown:Z

    .line 319
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object p2

    sget-object p3, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;->LIBRARY_RESULTS_SHOWN:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;

    iget-object p3, p3, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;->emitName:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->record:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$LibrarySearchMetricsRecord;

    iget-boolean v0, v0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$LibrarySearchMetricsRecord;->libraryResultsShown:Z

    .line 320
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object p2

    sget-object p3, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;->STORE_RESULT_POSITION:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;

    iget-object p3, p3, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;->emitName:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->record:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$LibrarySearchMetricsRecord;

    iget v0, v0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$LibrarySearchMetricsRecord;->storeResultPosition:I

    .line 321
    invoke-interface {p2, p3, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object p2

    sget-object p3, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;->LIBRARY_RESULT_POSITION:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;

    iget-object p3, p3, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$FastMetricsKeyName;->emitName:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->record:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$LibrarySearchMetricsRecord;

    iget v0, v0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$LibrarySearchMetricsRecord;->libraryResultPosition:I

    .line 322
    invoke-interface {p2, p3, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object p2

    .line 323
    invoke-interface {p2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->build()Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;

    move-result-object p2

    .line 324
    iget-object p3, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-interface {p3, p2}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->record(Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;)V

    .line 329
    :cond_f
    sget-object p2, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->SEARCH_SUGGESTION_CLICKED:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    if-eq p1, p2, :cond_11

    .line 330
    iget-object p2, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->searchRecord:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;

    invoke-virtual {p2, p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->setOutcome(Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;)V

    .line 331
    iget-object p1, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->searchRecord:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;

    invoke-static {}, Lcom/amazon/kcp/search/SearchHelper;->isNetworkAvailable()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->setNetworkAvailable(Z)V

    .line 332
    iget-object p1, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->searchMetricsHandlers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kcp/search/metrics/ISearchMetricsHandler;

    .line 333
    iget-object p3, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->searchRecord:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;

    invoke-interface {p2, p3}, Lcom/amazon/kcp/search/metrics/ISearchMetricsHandler;->submitRecord(Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;)V

    goto :goto_3

    .line 337
    :cond_10
    invoke-direct {p0}, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->prepareSearchRecordForNextOutcome()V

    .line 341
    :cond_11
    new-instance p1, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$LibrarySearchMetricsRecord;

    iget-object p2, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->record:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$LibrarySearchMetricsRecord;

    iget v2, p2, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$LibrarySearchMetricsRecord;->length:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p2, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$LibrarySearchMetricsRecord;->tabName:Ljava/lang/String;

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$LibrarySearchMetricsRecord;-><init>(Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;IIIZZLjava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->record:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$LibrarySearchMetricsRecord;

    return-void
.end method

.method public setAppTab(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "Null"

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->record:Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$LibrarySearchMetricsRecord;

    iput-object p1, v0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics$LibrarySearchMetricsRecord;->tabName:Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->searchRecord:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->setContext(Ljava/lang/String;)V

    return-void
.end method

.method public setSearchSuggestionMetrics(Lcom/amazon/kcp/search/metrics/SearchSuggestionSelectionMetrics;)V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->searchRecord:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/SearchSuggestionSelectionMetrics;->getKeywordBeforeSuggestion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->setSearchKeywordBeforeSuggestion(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->searchRecord:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/SearchSuggestionSelectionMetrics;->getSuggestionPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->setSearchSuggestionSelectedPosition(I)V

    .line 184
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->searchRecord:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/SearchSuggestionSelectionMetrics;->getSuggestions()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->setSearchSuggestionResult(Ljava/util/List;)V

    return-void
.end method

.method public setStoreResultsMaxShown(I)V
    .locals 0

    .line 196
    iput p1, p0, Lcom/amazon/kcp/search/metrics/LibrarySearchMetrics;->visibleStoreResultCount:I

    return-void
.end method
