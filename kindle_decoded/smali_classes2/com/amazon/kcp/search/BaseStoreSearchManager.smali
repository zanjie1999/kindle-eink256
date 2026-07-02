.class public abstract Lcom/amazon/kcp/search/BaseStoreSearchManager;
.super Ljava/lang/Object;
.source "BaseStoreSearchManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/search/BaseStoreSearchManager$LimitedResultsCache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/amazon/kcp/search/store/StoreSearchCompleteEvent;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final STORE_CACHE_LIMIT:I = 0x64

.field private static final STORE_CACHE_LOAD_FACTOR:F = 0.75f


# instance fields
.field private previousRequest:Lcom/amazon/kindle/webservices/BaseWebRequest;

.field private resultsCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/callback/ICallback<",
            "TT;>;>;>;"
        }
    .end annotation
.end field

.field protected final searchResultsCache:Lcom/amazon/kcp/search/BaseStoreSearchManager$LimitedResultsCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kcp/search/BaseStoreSearchManager<",
            "TT;>.",
            "LimitedResultsCache;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/search/BaseStoreSearchManager;->resultsCallbacks:Ljava/util/HashMap;

    .line 33
    new-instance v0, Lcom/amazon/kcp/search/BaseStoreSearchManager$LimitedResultsCache;

    const/16 v1, 0x64

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/amazon/kcp/search/BaseStoreSearchManager$LimitedResultsCache;-><init>(Lcom/amazon/kcp/search/BaseStoreSearchManager;IFZ)V

    iput-object v0, p0, Lcom/amazon/kcp/search/BaseStoreSearchManager;->searchResultsCache:Lcom/amazon/kcp/search/BaseStoreSearchManager$LimitedResultsCache;

    return-void
.end method


# virtual methods
.method protected callResultsCallbacks(Lcom/amazon/kcp/search/store/StoreSearchCompleteEvent;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseStoreSearchManager;->resultsCallbacks:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/store/StoreSearchCompleteEvent;->getSearchUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 110
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

    .line 111
    new-instance v3, Lcom/amazon/kindle/callback/OperationResult;

    invoke-direct {v3, p1}, Lcom/amazon/kindle/callback/OperationResult;-><init>(Ljava/lang/Object;)V

    .line 112
    invoke-interface {v2, v3}, Lcom/amazon/kindle/callback/ICallback;->call(Lcom/amazon/kindle/callback/OperationResult;)V

    goto :goto_0

    .line 115
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 116
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseStoreSearchManager;->resultsCallbacks:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/store/StoreSearchCompleteEvent;->getSearchUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public cancelPreviousRequest()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseStoreSearchManager;->previousRequest:Lcom/amazon/kindle/webservices/BaseWebRequest;

    if-nez v0, :cond_0

    return-void

    .line 92
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->cancel()V

    .line 93
    iget-object v0, p0, Lcom/amazon/kcp/search/BaseStoreSearchManager;->resultsCallbacks:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/amazon/kcp/search/BaseStoreSearchManager;->previousRequest:Lcom/amazon/kindle/webservices/BaseWebRequest;

    invoke-virtual {v1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public executeStoreSearch(Lcom/amazon/kindle/webservices/BaseWebRequest;Lcom/amazon/kindle/callback/ICallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/webservices/BaseWebRequest;",
            "Lcom/amazon/kindle/callback/ICallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 61
    invoke-virtual {p0}, Lcom/amazon/kcp/search/BaseStoreSearchManager;->cancelPreviousRequest()V

    .line 62
    invoke-virtual {p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/amazon/kcp/search/BaseStoreSearchManager;->resultsCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    .line 67
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 68
    iget-object v2, p0, Lcom/amazon/kcp/search/BaseStoreSearchManager;->resultsCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_0
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object p2, p0, Lcom/amazon/kcp/search/BaseStoreSearchManager;->searchResultsCache:Lcom/amazon/kcp/search/BaseStoreSearchManager$LimitedResultsCache;

    invoke-virtual {p2, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 75
    iget-object p1, p0, Lcom/amazon/kcp/search/BaseStoreSearchManager;->searchResultsCache:Lcom/amazon/kcp/search/BaseStoreSearchManager$LimitedResultsCache;

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/search/store/StoreSearchCompleteEvent;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/BaseStoreSearchManager;->callResultsCallbacks(Lcom/amazon/kcp/search/store/StoreSearchCompleteEvent;)V

    const/4 p1, 0x0

    .line 76
    iput-object p1, p0, Lcom/amazon/kcp/search/BaseStoreSearchManager;->previousRequest:Lcom/amazon/kindle/webservices/BaseWebRequest;

    goto :goto_0

    .line 78
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getWebRequestManager()Lcom/amazon/kindle/webservices/IWebRequestManager;

    move-result-object p2

    .line 79
    invoke-interface {p2, p1}, Lcom/amazon/kindle/webservices/IWebRequestManager;->addWebRequest(Lcom/amazon/kindle/webservices/IWebRequest;)Z

    .line 80
    iput-object p1, p0, Lcom/amazon/kcp/search/BaseStoreSearchManager;->previousRequest:Lcom/amazon/kindle/webservices/BaseWebRequest;

    :goto_0
    return-void
.end method
