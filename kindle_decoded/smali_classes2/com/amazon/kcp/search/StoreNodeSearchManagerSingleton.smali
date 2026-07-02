.class public Lcom/amazon/kcp/search/StoreNodeSearchManagerSingleton;
.super Lcom/amazon/kcp/search/BaseStoreSearchManager;
.source "StoreNodeSearchManagerSingleton.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kcp/search/BaseStoreSearchManager<",
        "Lcom/amazon/kcp/search/store/SearchNodeCompleteEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazon/kcp/search/StoreNodeSearchManagerSingleton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/amazon/kcp/search/BaseStoreSearchManager;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/amazon/kcp/search/StoreNodeSearchManagerSingleton;
    .locals 3

    const-class v0, Lcom/amazon/kcp/search/StoreNodeSearchManagerSingleton;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/amazon/kcp/search/StoreNodeSearchManagerSingleton;->instance:Lcom/amazon/kcp/search/StoreNodeSearchManagerSingleton;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lcom/amazon/kcp/search/StoreNodeSearchManagerSingleton;

    invoke-direct {v1}, Lcom/amazon/kcp/search/StoreNodeSearchManagerSingleton;-><init>()V

    sput-object v1, Lcom/amazon/kcp/search/StoreNodeSearchManagerSingleton;->instance:Lcom/amazon/kcp/search/StoreNodeSearchManagerSingleton;

    .line 26
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/search/StoreNodeSearchManagerSingleton;->instance:Lcom/amazon/kcp/search/StoreNodeSearchManagerSingleton;

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 28
    :cond_0
    sget-object v1, Lcom/amazon/kcp/search/StoreNodeSearchManagerSingleton;->instance:Lcom/amazon/kcp/search/StoreNodeSearchManagerSingleton;
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
.method public getSearchWebRequest(Ljava/lang/String;IIZLjava/util/List;Ljava/lang/String;)Lcom/amazon/kindle/webservices/BaseWebRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/kindle/webservices/BaseWebRequest;"
        }
    .end annotation

    .line 68
    sget-object v0, Lcom/amazon/kcp/debug/WayFinderEndPointDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/WayFinderEndPointDebugUtils;

    invoke-virtual {v0}, Lcom/amazon/kcp/debug/WayFinderEndPointDebugUtils;->isWayFinderEndpointEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Lcom/amazon/kcp/search/store/WayFinderVoltronSearchNodeWebRequest;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/amazon/kcp/search/store/WayFinderVoltronSearchNodeWebRequest;-><init>(Ljava/lang/String;IIZLjava/util/List;Ljava/lang/String;)V

    return-object v0

    .line 71
    :cond_0
    new-instance v0, Lcom/amazon/kcp/search/store/SearchNodeWebRequest;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/amazon/kcp/search/store/SearchNodeWebRequest;-><init>(Ljava/lang/String;IIZLjava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public handleNodeSearchCompleteEvent(Lcom/amazon/kcp/search/store/SearchNodeCompleteEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseStoreSearchManager;->searchResultsCache:Lcom/amazon/kcp/search/BaseStoreSearchManager$LimitedResultsCache;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/store/StoreSearchCompleteEvent;->getSearchUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/BaseStoreSearchManager;->callResultsCallbacks(Lcom/amazon/kcp/search/store/StoreSearchCompleteEvent;)V

    return-void
.end method

.method public search(Ljava/lang/String;IIZLjava/util/List;Ljava/lang/String;Lcom/amazon/kindle/callback/ICallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Lcom/amazon/kcp/search/store/SearchNodeCompleteEvent;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-virtual/range {p0 .. p6}, Lcom/amazon/kcp/search/StoreNodeSearchManagerSingleton;->getSearchWebRequest(Ljava/lang/String;IIZLjava/util/List;Ljava/lang/String;)Lcom/amazon/kindle/webservices/BaseWebRequest;

    move-result-object p1

    .line 54
    invoke-virtual {p0, p1, p7}, Lcom/amazon/kcp/search/BaseStoreSearchManager;->executeStoreSearch(Lcom/amazon/kindle/webservices/BaseWebRequest;Lcom/amazon/kindle/callback/ICallback;)V

    return-void
.end method
