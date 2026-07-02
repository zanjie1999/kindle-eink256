.class public Lcom/amazon/kcp/search/StoreSuggestionSearchManagerSingleton;
.super Lcom/amazon/kcp/search/BaseStoreSearchManager;
.source "StoreSuggestionSearchManagerSingleton.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kcp/search/BaseStoreSearchManager<",
        "Lcom/amazon/kcp/search/store/SearchSuggestionCompleteEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazon/kcp/search/StoreSuggestionSearchManagerSingleton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/amazon/kcp/search/BaseStoreSearchManager;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/amazon/kcp/search/StoreSuggestionSearchManagerSingleton;
    .locals 3

    const-class v0, Lcom/amazon/kcp/search/StoreSuggestionSearchManagerSingleton;

    monitor-enter v0

    .line 18
    :try_start_0
    sget-object v1, Lcom/amazon/kcp/search/StoreSuggestionSearchManagerSingleton;->instance:Lcom/amazon/kcp/search/StoreSuggestionSearchManagerSingleton;

    if-nez v1, :cond_0

    .line 19
    new-instance v1, Lcom/amazon/kcp/search/StoreSuggestionSearchManagerSingleton;

    invoke-direct {v1}, Lcom/amazon/kcp/search/StoreSuggestionSearchManagerSingleton;-><init>()V

    sput-object v1, Lcom/amazon/kcp/search/StoreSuggestionSearchManagerSingleton;->instance:Lcom/amazon/kcp/search/StoreSuggestionSearchManagerSingleton;

    .line 20
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/search/StoreSuggestionSearchManagerSingleton;->instance:Lcom/amazon/kcp/search/StoreSuggestionSearchManagerSingleton;

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 22
    :cond_0
    sget-object v1, Lcom/amazon/kcp/search/StoreSuggestionSearchManagerSingleton;->instance:Lcom/amazon/kcp/search/StoreSuggestionSearchManagerSingleton;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public handleSuggestionSearchCompleteEvent(Lcom/amazon/kcp/search/store/SearchSuggestionCompleteEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseStoreSearchManager;->searchResultsCache:Lcom/amazon/kcp/search/BaseStoreSearchManager$LimitedResultsCache;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/store/StoreSearchCompleteEvent;->getSearchUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/BaseStoreSearchManager;->callResultsCallbacks(Lcom/amazon/kcp/search/store/StoreSearchCompleteEvent;)V

    return-void
.end method
