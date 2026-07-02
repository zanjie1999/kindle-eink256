.class Lcom/facebook/widget/GraphObjectPagingLoader;
.super Landroidx/loader/content/Loader;
.source "GraphObjectPagingLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/widget/GraphObjectPagingLoader$PagedResults;,
        Lcom/facebook/widget/GraphObjectPagingLoader$OnErrorListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/facebook/model/GraphObject;",
        ">",
        "Landroidx/loader/content/Loader<",
        "Lcom/facebook/widget/SimpleGraphObjectCursor<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private appendResults:Z

.field private currentRequest:Lcom/facebook/Request;

.field private cursor:Lcom/facebook/widget/SimpleGraphObjectCursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/widget/SimpleGraphObjectCursor<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final graphObjectClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private loading:Z

.field private nextRequest:Lcom/facebook/Request;

.field private onErrorListener:Lcom/facebook/widget/GraphObjectPagingLoader$OnErrorListener;

.field private originalRequest:Lcom/facebook/Request;

.field private skipRoundtripIfCached:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1}, Landroidx/loader/content/Loader;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->appendResults:Z

    .line 36
    iput-boolean p1, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->loading:Z

    .line 45
    iput-object p2, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->graphObjectClass:Ljava/lang/Class;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/widget/GraphObjectPagingLoader;Lcom/facebook/Response;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/facebook/widget/GraphObjectPagingLoader;->requestCompleted(Lcom/facebook/Response;)V

    return-void
.end method

.method private addResults(Lcom/facebook/Response;)V
    .locals 7

    .line 191
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->cursor:Lcom/facebook/widget/SimpleGraphObjectCursor;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->appendResults:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/facebook/widget/SimpleGraphObjectCursor;

    invoke-direct {v1, v0}, Lcom/facebook/widget/SimpleGraphObjectCursor;-><init>(Lcom/facebook/widget/SimpleGraphObjectCursor;)V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v1, Lcom/facebook/widget/SimpleGraphObjectCursor;

    invoke-direct {v1}, Lcom/facebook/widget/SimpleGraphObjectCursor;-><init>()V

    .line 194
    :goto_1
    const-class v0, Lcom/facebook/widget/GraphObjectPagingLoader$PagedResults;

    invoke-virtual {p1, v0}, Lcom/facebook/Response;->getGraphObjectAs(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/GraphObjectPagingLoader$PagedResults;

    .line 195
    invoke-virtual {p1}, Lcom/facebook/Response;->getIsFromCache()Z

    move-result v2

    .line 197
    invoke-interface {v0}, Lcom/facebook/widget/GraphObjectPagingLoader$PagedResults;->getData()Lcom/facebook/model/GraphObjectList;

    move-result-object v0

    iget-object v3, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->graphObjectClass:Ljava/lang/Class;

    invoke-interface {v0, v3}, Lcom/facebook/model/GraphObjectList;->castToListOf(Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;

    move-result-object v0

    .line 198
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_4

    .line 201
    sget-object v6, Lcom/facebook/Response$PagingDirection;->NEXT:Lcom/facebook/Response$PagingDirection;

    invoke-virtual {p1, v6}, Lcom/facebook/Response;->getRequestForPagedResults(Lcom/facebook/Response$PagingDirection;)Lcom/facebook/Request;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->nextRequest:Lcom/facebook/Request;

    .line 203
    invoke-virtual {v1, v0, v2}, Lcom/facebook/widget/SimpleGraphObjectCursor;->addGraphObjects(Ljava/util/Collection;Z)V

    .line 204
    iget-object p1, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->nextRequest:Lcom/facebook/Request;

    if-eqz p1, :cond_3

    .line 205
    invoke-virtual {v1, v4}, Lcom/facebook/widget/SimpleGraphObjectCursor;->setMoreObjectsAvailable(Z)V

    goto :goto_3

    .line 207
    :cond_3
    invoke-virtual {v1, v5}, Lcom/facebook/widget/SimpleGraphObjectCursor;->setMoreObjectsAvailable(Z)V

    :cond_4
    :goto_3
    if-nez v3, :cond_5

    .line 212
    invoke-virtual {v1, v5}, Lcom/facebook/widget/SimpleGraphObjectCursor;->setMoreObjectsAvailable(Z)V

    .line 213
    invoke-virtual {v1, v2}, Lcom/facebook/widget/SimpleGraphObjectCursor;->setFromCache(Z)V

    const/4 p1, 0x0

    .line 215
    iput-object p1, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->nextRequest:Lcom/facebook/Request;

    :cond_5
    if-nez v2, :cond_6

    .line 221
    iput-boolean v5, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->skipRoundtripIfCached:Z

    .line 224
    :cond_6
    invoke-virtual {p0, v1}, Lcom/facebook/widget/GraphObjectPagingLoader;->deliverResult(Lcom/facebook/widget/SimpleGraphObjectCursor;)V

    return-void
.end method

.method private putRequestIntoBatch(Lcom/facebook/Request;Z)Lcom/facebook/internal/CacheableRequestBatch;
    .locals 4

    .line 158
    new-instance v0, Lcom/facebook/internal/CacheableRequestBatch;

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/facebook/Request;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v0, v2}, Lcom/facebook/internal/CacheableRequestBatch;-><init>([Lcom/facebook/Request;)V

    xor-int/lit8 p1, p2, 0x1

    .line 160
    invoke-virtual {v0, p1}, Lcom/facebook/internal/CacheableRequestBatch;->setForceRoundTrip(Z)V

    return-object v0
.end method

.method private requestCompleted(Lcom/facebook/Response;)V
    .locals 3

    .line 165
    invoke-virtual {p1}, Lcom/facebook/Response;->getRequest()Lcom/facebook/Request;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->currentRequest:Lcom/facebook/Request;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 170
    iput-boolean v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->loading:Z

    const/4 v0, 0x0

    .line 171
    iput-object v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->currentRequest:Lcom/facebook/Request;

    .line 173
    invoke-virtual {p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v1, v0

    goto :goto_0

    .line 174
    :cond_1
    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError;->getException()Lcom/facebook/FacebookException;

    move-result-object v1

    .line 175
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v2

    if-nez v2, :cond_2

    if-nez v1, :cond_2

    .line 176
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "GraphObjectPagingLoader received neither a result nor an error."

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    :cond_2
    if-eqz v1, :cond_3

    .line 180
    iput-object v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->nextRequest:Lcom/facebook/Request;

    .line 182
    iget-object p1, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->onErrorListener:Lcom/facebook/widget/GraphObjectPagingLoader$OnErrorListener;

    if-eqz p1, :cond_4

    .line 183
    invoke-interface {p1, v1, p0}, Lcom/facebook/widget/GraphObjectPagingLoader$OnErrorListener;->onError(Lcom/facebook/FacebookException;Lcom/facebook/widget/GraphObjectPagingLoader;)V

    goto :goto_1

    .line 186
    :cond_3
    invoke-direct {p0, p1}, Lcom/facebook/widget/GraphObjectPagingLoader;->addResults(Lcom/facebook/Response;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private startLoading(Lcom/facebook/Request;ZJ)V
    .locals 2

    .line 127
    iput-boolean p2, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->skipRoundtripIfCached:Z

    const/4 v0, 0x0

    .line 128
    iput-boolean v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->appendResults:Z

    const/4 v0, 0x0

    .line 129
    iput-object v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->nextRequest:Lcom/facebook/Request;

    .line 130
    iput-object p1, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->currentRequest:Lcom/facebook/Request;

    .line 131
    new-instance v0, Lcom/facebook/widget/GraphObjectPagingLoader$2;

    invoke-direct {v0, p0}, Lcom/facebook/widget/GraphObjectPagingLoader$2;-><init>(Lcom/facebook/widget/GraphObjectPagingLoader;)V

    invoke-virtual {p1, v0}, Lcom/facebook/Request;->setCallback(Lcom/facebook/Request$Callback;)V

    const/4 v0, 0x1

    .line 139
    iput-boolean v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->loading:Z

    .line 141
    invoke-direct {p0, p1, p2}, Lcom/facebook/widget/GraphObjectPagingLoader;->putRequestIntoBatch(Lcom/facebook/Request;Z)Lcom/facebook/internal/CacheableRequestBatch;

    move-result-object p1

    .line 142
    new-instance p2, Lcom/facebook/widget/GraphObjectPagingLoader$3;

    invoke-direct {p2, p0, p1}, Lcom/facebook/widget/GraphObjectPagingLoader$3;-><init>(Lcom/facebook/widget/GraphObjectPagingLoader;Lcom/facebook/RequestBatch;)V

    const-wide/16 v0, 0x0

    cmp-long p1, p3, v0

    if-nez p1, :cond_0

    .line 149
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 151
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 152
    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public clearResults()V
    .locals 1

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->nextRequest:Lcom/facebook/Request;

    .line 62
    iput-object v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->originalRequest:Lcom/facebook/Request;

    .line 63
    iput-object v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->currentRequest:Lcom/facebook/Request;

    .line 65
    invoke-virtual {p0, v0}, Lcom/facebook/widget/GraphObjectPagingLoader;->deliverResult(Lcom/facebook/widget/SimpleGraphObjectCursor;)V

    return-void
.end method

.method public deliverResult(Lcom/facebook/widget/SimpleGraphObjectCursor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/widget/SimpleGraphObjectCursor<",
            "TT;>;)V"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->cursor:Lcom/facebook/widget/SimpleGraphObjectCursor;

    .line 106
    iput-object p1, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->cursor:Lcom/facebook/widget/SimpleGraphObjectCursor;

    .line 108
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    invoke-super {p0, p1}, Landroidx/loader/content/Loader;->deliverResult(Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    .line 111
    invoke-virtual {v0}, Lcom/facebook/widget/SimpleGraphObjectCursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 112
    invoke-virtual {v0}, Lcom/facebook/widget/SimpleGraphObjectCursor;->close()V

    :cond_0
    return-void
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Lcom/facebook/widget/SimpleGraphObjectCursor;

    invoke-virtual {p0, p1}, Lcom/facebook/widget/GraphObjectPagingLoader;->deliverResult(Lcom/facebook/widget/SimpleGraphObjectCursor;)V

    return-void
.end method

.method public followNextLink()V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->nextRequest:Lcom/facebook/Request;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 87
    iput-boolean v1, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->appendResults:Z

    .line 88
    iput-object v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->currentRequest:Lcom/facebook/Request;

    .line 90
    new-instance v2, Lcom/facebook/widget/GraphObjectPagingLoader$1;

    invoke-direct {v2, p0}, Lcom/facebook/widget/GraphObjectPagingLoader$1;-><init>(Lcom/facebook/widget/GraphObjectPagingLoader;)V

    invoke-virtual {v0, v2}, Lcom/facebook/Request;->setCallback(Lcom/facebook/Request$Callback;)V

    .line 97
    iput-boolean v1, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->loading:Z

    .line 98
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->currentRequest:Lcom/facebook/Request;

    iget-boolean v1, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->skipRoundtripIfCached:Z

    invoke-direct {p0, v0, v1}, Lcom/facebook/widget/GraphObjectPagingLoader;->putRequestIntoBatch(Lcom/facebook/Request;Z)Lcom/facebook/internal/CacheableRequestBatch;

    move-result-object v0

    .line 99
    invoke-static {v0}, Lcom/facebook/Request;->executeBatchAsync(Lcom/facebook/RequestBatch;)Lcom/facebook/RequestAsyncTask;

    :cond_0
    return-void
.end method

.method public getCursor()Lcom/facebook/widget/SimpleGraphObjectCursor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/widget/SimpleGraphObjectCursor<",
            "TT;>;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->cursor:Lcom/facebook/widget/SimpleGraphObjectCursor;

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->loading:Z

    return v0
.end method

.method protected onStartLoading()V
    .locals 1

    .line 119
    invoke-super {p0}, Landroidx/loader/content/Loader;->onStartLoading()V

    .line 121
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->cursor:Lcom/facebook/widget/SimpleGraphObjectCursor;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0, v0}, Lcom/facebook/widget/GraphObjectPagingLoader;->deliverResult(Lcom/facebook/widget/SimpleGraphObjectCursor;)V

    :cond_0
    return-void
.end method

.method public refreshOriginalRequest(J)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->originalRequest:Lcom/facebook/Request;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/facebook/widget/GraphObjectPagingLoader;->startLoading(Lcom/facebook/Request;ZJ)V

    return-void

    .line 79
    :cond_0
    new-instance p1, Lcom/facebook/FacebookException;

    const-string p2, "refreshOriginalRequest may not be called until after startLoading has been called."

    invoke-direct {p1, p2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnErrorListener(Lcom/facebook/widget/GraphObjectPagingLoader$OnErrorListener;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->onErrorListener:Lcom/facebook/widget/GraphObjectPagingLoader$OnErrorListener;

    return-void
.end method

.method public startLoading(Lcom/facebook/Request;Z)V
    .locals 2

    .line 73
    iput-object p1, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->originalRequest:Lcom/facebook/Request;

    const-wide/16 v0, 0x0

    .line 74
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/facebook/widget/GraphObjectPagingLoader;->startLoading(Lcom/facebook/Request;ZJ)V

    return-void
.end method
