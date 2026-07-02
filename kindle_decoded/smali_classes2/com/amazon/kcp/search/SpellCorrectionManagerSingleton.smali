.class public Lcom/amazon/kcp/search/SpellCorrectionManagerSingleton;
.super Lcom/amazon/kcp/search/BaseStoreSearchManager;
.source "SpellCorrectionManagerSingleton.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kcp/search/BaseStoreSearchManager<",
        "Lcom/amazon/kcp/search/store/SearchNodeCompleteEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazon/kcp/search/SpellCorrectionManagerSingleton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/amazon/kcp/search/BaseStoreSearchManager;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/amazon/kcp/search/SpellCorrectionManagerSingleton;
    .locals 3

    const-class v0, Lcom/amazon/kcp/search/SpellCorrectionManagerSingleton;

    monitor-enter v0

    .line 19
    :try_start_0
    sget-object v1, Lcom/amazon/kcp/search/SpellCorrectionManagerSingleton;->instance:Lcom/amazon/kcp/search/SpellCorrectionManagerSingleton;

    if-nez v1, :cond_0

    .line 20
    new-instance v1, Lcom/amazon/kcp/search/SpellCorrectionManagerSingleton;

    invoke-direct {v1}, Lcom/amazon/kcp/search/SpellCorrectionManagerSingleton;-><init>()V

    sput-object v1, Lcom/amazon/kcp/search/SpellCorrectionManagerSingleton;->instance:Lcom/amazon/kcp/search/SpellCorrectionManagerSingleton;

    .line 21
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/search/SpellCorrectionManagerSingleton;->instance:Lcom/amazon/kcp/search/SpellCorrectionManagerSingleton;

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 23
    :cond_0
    sget-object v1, Lcom/amazon/kcp/search/SpellCorrectionManagerSingleton;->instance:Lcom/amazon/kcp/search/SpellCorrectionManagerSingleton;
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
.method public handleSpellCorrectionCompleteEvent(Lcom/amazon/kcp/search/store/SearchNodeCompleteEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseStoreSearchManager;->searchResultsCache:Lcom/amazon/kcp/search/BaseStoreSearchManager$LimitedResultsCache;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/store/StoreSearchCompleteEvent;->getSearchUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/BaseStoreSearchManager;->callResultsCallbacks(Lcom/amazon/kcp/search/store/StoreSearchCompleteEvent;)V

    return-void
.end method

.method public search(Ljava/lang/String;IIZLcom/amazon/kindle/callback/ICallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIZ",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Lcom/amazon/kcp/search/store/SearchNodeCompleteEvent;",
            ">;)V"
        }
    .end annotation

    .line 40
    new-instance v7, Lcom/amazon/kcp/search/store/SearchNodeWebRequest;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kcp/search/store/SearchNodeWebRequest;-><init>(Ljava/lang/String;IIZLjava/util/List;Ljava/lang/String;)V

    invoke-virtual {p0, v7, p5}, Lcom/amazon/kcp/search/BaseStoreSearchManager;->executeStoreSearch(Lcom/amazon/kindle/webservices/BaseWebRequest;Lcom/amazon/kindle/callback/ICallback;)V

    return-void
.end method
