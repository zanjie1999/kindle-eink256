.class public Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest;
.super Lcom/amazon/kindle/webservices/ProxyWebRequest;
.source "IStatusTrackerShimWebRequest.java"


# instance fields
.field private iStatusTracker:Lcom/amazon/kindle/services/download/IStatusTracker;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/webservices/IWebRequest;Lcom/amazon/kindle/services/download/IStatusTracker;)V
    .locals 1

    .line 32
    invoke-direct {p0, p1}, Lcom/amazon/kindle/webservices/ProxyWebRequest;-><init>(Lcom/amazon/kindle/webservices/IWebRequest;)V

    .line 33
    iput-object p2, p0, Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest;->iStatusTracker:Lcom/amazon/kindle/services/download/IStatusTracker;

    .line 34
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getResponseHandler()Lcom/amazon/kindle/webservices/IResponseHandler;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest;->createResponseHandlerShim(Lcom/amazon/kindle/webservices/IResponseHandler;)Lcom/amazon/kindle/webservices/IResponseHandler;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazon/kindle/webservices/IWebRequest;->setResponseHandler(Lcom/amazon/kindle/webservices/IResponseHandler;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 36
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getStatusAndProgressTracker()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 37
    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IWebRequest;->getStatusAndProgressTracker()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;

    if-eqz v0, :cond_0

    .line 39
    invoke-direct {p0, v0}, Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest;->createProgressTrackerShim(Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;)Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazon/kindle/webservices/IWebRequest;->registerStatusTracker(Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;)Lcom/amazon/kindle/webservices/IWebRequest;

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest;)Lcom/amazon/kindle/services/download/IStatusTracker;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest;->iStatusTracker:Lcom/amazon/kindle/services/download/IStatusTracker;

    return-object p0
.end method

.method private createProgressTrackerShim(Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;)Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;
    .locals 1

    if-eqz p1, :cond_0

    .line 61
    new-instance v0, Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest$1;-><init>(Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest;Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private createResponseHandlerShim(Lcom/amazon/kindle/webservices/IResponseHandler;)Lcom/amazon/kindle/webservices/IResponseHandler;
    .locals 1

    if-eqz p1, :cond_0

    .line 95
    new-instance v0, Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest$2;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest$2;-><init>(Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest;Lcom/amazon/kindle/webservices/IResponseHandler;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public registerStatusTracker(Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;)Lcom/amazon/kindle/webservices/IWebRequest;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/kindle/webservices/ProxyWebRequest;->proxy:Lcom/amazon/kindle/webservices/IWebRequest;

    invoke-direct {p0, p1}, Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest;->createProgressTrackerShim(Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;)Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/webservices/IWebRequest;->registerStatusTracker(Lcom/amazon/kindle/webservices/IWebStatusAndProgressTracker;)Lcom/amazon/kindle/webservices/IWebRequest;

    return-object p0
.end method

.method public setResponseHandler(Lcom/amazon/kindle/webservices/IResponseHandler;)Lcom/amazon/kindle/webservices/IWebRequest;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/amazon/kindle/webservices/ProxyWebRequest;->proxy:Lcom/amazon/kindle/webservices/IWebRequest;

    invoke-direct {p0, p1}, Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest;->createResponseHandlerShim(Lcom/amazon/kindle/webservices/IResponseHandler;)Lcom/amazon/kindle/webservices/IResponseHandler;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/webservices/IWebRequest;->setResponseHandler(Lcom/amazon/kindle/webservices/IResponseHandler;)Lcom/amazon/kindle/webservices/IWebRequest;

    return-object p0
.end method
