.class public Lcom/amazon/kcp/search/SearchBarSuggestionManager;
.super Ljava/lang/Object;
.source "SearchBarSuggestionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/search/SearchBarSuggestionManager$LimitedResultsCache;
    }
.end annotation


# static fields
.field private static final CACHE_LIMIT:I = 0xa

.field private static final CACHE_LOAD_FACTOR:F = 0.75f

.field private static final METRICS_MANAGER:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

.field private static final SEARCH_SUGGESTION_COMPLETE_METRIC_KEY:Ljava/lang/String; = "SearchSuggestionComplete"

.field private static instance:Lcom/amazon/kcp/search/SearchBarSuggestionManager;


# instance fields
.field private previousRequest:Lcom/amazon/kindle/webservices/BaseWebRequest;

.field private resultsCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Lcom/amazon/kcp/search/SearchBarSuggestionCompleteEvent;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final searchBarSuggestionsResultsCache:Lcom/amazon/kcp/search/SearchBarSuggestionManager$LimitedResultsCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/search/SearchBarSuggestionManager;->METRICS_MANAGER:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/search/SearchBarSuggestionManager;->resultsCallbacks:Ljava/util/HashMap;

    .line 37
    new-instance v0, Lcom/amazon/kcp/search/SearchBarSuggestionManager$LimitedResultsCache;

    const/16 v3, 0xa

    const/high16 v4, 0x3f400000    # 0.75f

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/search/SearchBarSuggestionManager$LimitedResultsCache;-><init>(Lcom/amazon/kcp/search/SearchBarSuggestionManager;IFZLcom/amazon/kcp/search/SearchBarSuggestionManager$1;)V

    iput-object v0, p0, Lcom/amazon/kcp/search/SearchBarSuggestionManager;->searchBarSuggestionsResultsCache:Lcom/amazon/kcp/search/SearchBarSuggestionManager$LimitedResultsCache;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/amazon/kcp/search/SearchBarSuggestionManager;
    .locals 3

    const-class v0, Lcom/amazon/kcp/search/SearchBarSuggestionManager;

    monitor-enter v0

    .line 60
    :try_start_0
    sget-object v1, Lcom/amazon/kcp/search/SearchBarSuggestionManager;->instance:Lcom/amazon/kcp/search/SearchBarSuggestionManager;

    if-nez v1, :cond_0

    .line 61
    new-instance v1, Lcom/amazon/kcp/search/SearchBarSuggestionManager;

    invoke-direct {v1}, Lcom/amazon/kcp/search/SearchBarSuggestionManager;-><init>()V

    sput-object v1, Lcom/amazon/kcp/search/SearchBarSuggestionManager;->instance:Lcom/amazon/kcp/search/SearchBarSuggestionManager;

    .line 62
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/search/SearchBarSuggestionManager;->instance:Lcom/amazon/kcp/search/SearchBarSuggestionManager;

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 64
    :cond_0
    sget-object v1, Lcom/amazon/kcp/search/SearchBarSuggestionManager;->instance:Lcom/amazon/kcp/search/SearchBarSuggestionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private recordSuggestionRequestCompletedMetric()V
    .locals 3

    .line 142
    new-instance v0, Lcom/amazon/kindle/krx/metrics/MetricsData;

    sget-object v1, Lcom/amazon/kcp/search/SearchBarSuggestionManager;->METRICS_MANAGER:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    .line 143
    invoke-interface {v1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->getDefaultDomain()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/amazon/kcp/search/SearchBarSuggestionManager;

    .line 144
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/krx/metrics/MetricsData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SearchSuggestionComplete"

    .line 146
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    .line 147
    sget-object v1, Lcom/amazon/kcp/search/SearchBarSuggestionManager;->METRICS_MANAGER:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    return-void
.end method


# virtual methods
.method public callResultsCallbacks(Lcom/amazon/kcp/search/SearchBarSuggestionCompleteEvent;)V
    .locals 4

    .line 114
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchBarSuggestionManager;->resultsCallbacks:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/SearchBarSuggestionEvent;->getSearchUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 115
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchBarSuggestionManager;->recordSuggestionRequestCompletedMetric()V

    if-nez v0, :cond_0

    return-void

    .line 121
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/callback/ICallback;

    .line 122
    new-instance v3, Lcom/amazon/kindle/callback/OperationResult;

    invoke-direct {v3, p1}, Lcom/amazon/kindle/callback/OperationResult;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Lcom/amazon/kindle/callback/ICallback;->call(Lcom/amazon/kindle/callback/OperationResult;)V

    goto :goto_0

    .line 125
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 126
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchBarSuggestionManager;->resultsCallbacks:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/SearchBarSuggestionEvent;->getSearchUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public cancelPreviousRequest()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchBarSuggestionManager;->previousRequest:Lcom/amazon/kindle/webservices/BaseWebRequest;

    if-nez v0, :cond_0

    return-void

    .line 137
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->cancel()V

    .line 138
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchBarSuggestionManager;->resultsCallbacks:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/amazon/kcp/search/SearchBarSuggestionManager;->previousRequest:Lcom/amazon/kindle/webservices/BaseWebRequest;

    invoke-virtual {v1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public executeSuggestionSearch(Ljava/lang/String;Lcom/amazon/kindle/callback/ICallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Lcom/amazon/kcp/search/SearchBarSuggestionCompleteEvent;",
            ">;)V"
        }
    .end annotation

    .line 80
    new-instance v0, Lcom/amazon/kcp/search/SearchBarSuggestionWebRequest;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/search/SearchBarSuggestionWebRequest;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getUrl()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchBarSuggestionManager;->cancelPreviousRequest()V

    .line 87
    invoke-virtual {v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getUrl()Ljava/lang/String;

    move-result-object p1

    .line 88
    iget-object v1, p0, Lcom/amazon/kcp/search/SearchBarSuggestionManager;->resultsCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1

    .line 91
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 92
    iget-object v2, p0, Lcom/amazon/kcp/search/SearchBarSuggestionManager;->resultsCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_1
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object p2, p0, Lcom/amazon/kcp/search/SearchBarSuggestionManager;->searchBarSuggestionsResultsCache:Lcom/amazon/kcp/search/SearchBarSuggestionManager$LimitedResultsCache;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 99
    iget-object p2, p0, Lcom/amazon/kcp/search/SearchBarSuggestionManager;->searchBarSuggestionsResultsCache:Lcom/amazon/kcp/search/SearchBarSuggestionManager$LimitedResultsCache;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/search/SearchBarSuggestionCompleteEvent;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/SearchBarSuggestionManager;->callResultsCallbacks(Lcom/amazon/kcp/search/SearchBarSuggestionCompleteEvent;)V

    const/4 p1, 0x0

    .line 100
    iput-object p1, p0, Lcom/amazon/kcp/search/SearchBarSuggestionManager;->previousRequest:Lcom/amazon/kindle/webservices/BaseWebRequest;

    goto :goto_0

    .line 102
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getWebRequestManager()Lcom/amazon/kindle/webservices/IWebRequestManager;

    move-result-object p1

    .line 103
    invoke-interface {p1, v0}, Lcom/amazon/kindle/webservices/IWebRequestManager;->addWebRequest(Lcom/amazon/kindle/webservices/IWebRequest;)Z

    .line 104
    iput-object v0, p0, Lcom/amazon/kcp/search/SearchBarSuggestionManager;->previousRequest:Lcom/amazon/kindle/webservices/BaseWebRequest;

    :goto_0
    return-void
.end method

.method public handleSearchBarSuggestionCompleteEvent(Lcom/amazon/kcp/search/SearchBarSuggestionCompleteEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchBarSuggestionManager;->searchBarSuggestionsResultsCache:Lcom/amazon/kcp/search/SearchBarSuggestionManager$LimitedResultsCache;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/SearchBarSuggestionEvent;->getSearchUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/SearchBarSuggestionManager;->callResultsCallbacks(Lcom/amazon/kcp/search/SearchBarSuggestionCompleteEvent;)V

    return-void
.end method
