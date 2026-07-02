.class public final Lcom/amazon/kindle/webservices/okhttp/ConnectionTimerEventListener;
.super Lokhttp3/EventListener;
.source "ConnectionTimerEventListener.kt"


# instance fields
.field private final connectionDetails:Lcom/amazon/kindle/webservices/ConnectionDetails;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/webservices/ConnectionDetails;)V
    .locals 1

    const-string v0, "connectionDetails"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Lokhttp3/EventListener;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/webservices/okhttp/ConnectionTimerEventListener;->connectionDetails:Lcom/amazon/kindle/webservices/ConnectionDetails;

    return-void
.end method


# virtual methods
.method public callEnd(Lokhttp3/Call;)V
    .locals 4

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-super {p0, p1}, Lokhttp3/EventListener;->callEnd(Lokhttp3/Call;)V

    .line 119
    iget-object p1, p0, Lcom/amazon/kindle/webservices/okhttp/ConnectionTimerEventListener;->connectionDetails:Lcom/amazon/kindle/webservices/ConnectionDetails;

    invoke-virtual {p1}, Lcom/amazon/kindle/webservices/ConnectionDetails;->getTotalRequestDuration()Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;

    move-result-object p1

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;->end$com_amazon_kindle_rs$default(Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;JILjava/lang/Object;)V

    return-void
.end method

.method public callStart(Lokhttp3/Call;)V
    .locals 4

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-super {p0, p1}, Lokhttp3/EventListener;->callStart(Lokhttp3/Call;)V

    .line 23
    iget-object p1, p0, Lcom/amazon/kindle/webservices/okhttp/ConnectionTimerEventListener;->connectionDetails:Lcom/amazon/kindle/webservices/ConnectionDetails;

    invoke-virtual {p1}, Lcom/amazon/kindle/webservices/ConnectionDetails;->getTotalRequestDuration()Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;

    move-result-object p1

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;->start$com_amazon_kindle_rs$default(Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;JILjava/lang/Object;)V

    return-void
.end method

.method public connectEnd(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inetSocketAddress"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "proxy"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-super {p0, p1, p2, p3, p4}, Lokhttp3/EventListener;->connectEnd(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V

    .line 60
    iget-object p1, p0, Lcom/amazon/kindle/webservices/okhttp/ConnectionTimerEventListener;->connectionDetails:Lcom/amazon/kindle/webservices/ConnectionDetails;

    invoke-virtual {p1}, Lcom/amazon/kindle/webservices/ConnectionDetails;->getSocketHandshakeDuration()Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;

    move-result-object p1

    if-eqz p1, :cond_0

    const-wide/16 p2, 0x0

    const/4 p4, 0x1

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, p4, v0}, Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;->end$com_amazon_kindle_rs$default(Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;JILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public connectStart(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V
    .locals 3

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inetSocketAddress"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "proxy"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-super {p0, p1, p2, p3}, Lokhttp3/EventListener;->connectStart(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V

    .line 40
    iget-object p1, p0, Lcom/amazon/kindle/webservices/okhttp/ConnectionTimerEventListener;->connectionDetails:Lcom/amazon/kindle/webservices/ConnectionDetails;

    invoke-virtual {p1}, Lcom/amazon/kindle/webservices/ConnectionDetails;->getConnectionAttemptCount()I

    move-result p2

    const/4 p3, 0x1

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/webservices/ConnectionDetails;->setConnectionAttemptCount$com_amazon_kindle_rs(I)V

    .line 41
    iget-object p1, p0, Lcom/amazon/kindle/webservices/okhttp/ConnectionTimerEventListener;->connectionDetails:Lcom/amazon/kindle/webservices/ConnectionDetails;

    new-instance p2, Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;

    invoke-direct {p2}, Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;-><init>()V

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 42
    invoke-static {p2, v0, v1, p3, v2}, Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;->start$com_amazon_kindle_rs$default(Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;JILjava/lang/Object;)V

    .line 43
    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 41
    invoke-virtual {p1, p2}, Lcom/amazon/kindle/webservices/ConnectionDetails;->setSocketHandshakeDuration$com_amazon_kindle_rs(Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;)V

    return-void
.end method

.method public connectionAcquired(Lokhttp3/Call;Lokhttp3/Connection;)V
    .locals 5

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->connectionAcquired(Lokhttp3/Call;Lokhttp3/Connection;)V

    .line 65
    iget-object v0, p0, Lcom/amazon/kindle/webservices/okhttp/ConnectionTimerEventListener;->connectionDetails:Lcom/amazon/kindle/webservices/ConnectionDetails;

    invoke-virtual {v0}, Lcom/amazon/kindle/webservices/ConnectionDetails;->getConnectionUseDuration()Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;->start$com_amazon_kindle_rs$default(Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;JILjava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/amazon/kindle/webservices/okhttp/ConnectionTimerEventListener;->connectionDetails:Lcom/amazon/kindle/webservices/ConnectionDetails;

    invoke-interface {p2}, Lokhttp3/Connection;->protocol()Lokhttp3/Protocol;

    move-result-object p2

    const-string v1, "connection.protocol()"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/amazon/kindle/webservices/ConnectionDetails;->setHttpProtocol$com_amazon_kindle_rs(Lokhttp3/Protocol;)V

    .line 67
    iget-object p2, p0, Lcom/amazon/kindle/webservices/okhttp/ConnectionTimerEventListener;->connectionDetails:Lcom/amazon/kindle/webservices/ConnectionDetails;

    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->uri()Ljava/net/URI;

    move-result-object p1

    const-string v0, "call.request().url().uri()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/amazon/kindle/webservices/ConnectionDetails;->setConnectionEndpoint$com_amazon_kindle_rs(Ljava/net/URI;)V

    return-void
.end method

.method public connectionReleased(Lokhttp3/Call;Lokhttp3/Connection;)V
    .locals 3

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->connectionReleased(Lokhttp3/Call;Lokhttp3/Connection;)V

    .line 114
    iget-object p1, p0, Lcom/amazon/kindle/webservices/okhttp/ConnectionTimerEventListener;->connectionDetails:Lcom/amazon/kindle/webservices/ConnectionDetails;

    invoke-virtual {p1}, Lcom/amazon/kindle/webservices/ConnectionDetails;->getConnectionUseDuration()Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;

    move-result-object p1

    const-wide/16 v0, 0x0

    const/4 p2, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, p2, v2}, Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;->end$com_amazon_kindle_rs$default(Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;JILjava/lang/Object;)V

    return-void
.end method

.method public dnsEnd(Lokhttp3/Call;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Call;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "domainName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inetAddressList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-super {p0, p1, p2, p3}, Lokhttp3/EventListener;->dnsEnd(Lokhttp3/Call;Ljava/lang/String;Ljava/util/List;)V

    .line 35
    iget-object p1, p0, Lcom/amazon/kindle/webservices/okhttp/ConnectionTimerEventListener;->connectionDetails:Lcom/amazon/kindle/webservices/ConnectionDetails;

    invoke-virtual {p1}, Lcom/amazon/kindle/webservices/ConnectionDetails;->getDnsResolutionDuration()Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;

    move-result-object p1

    if-eqz p1, :cond_0

    const-wide/16 p2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v0, v1}, Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;->end$com_amazon_kindle_rs$default(Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;JILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public dnsStart(Lokhttp3/Call;Ljava/lang/String;)V
    .locals 4

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "domainName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->dnsStart(Lokhttp3/Call;Ljava/lang/String;)V

    .line 28
    iget-object p1, p0, Lcom/amazon/kindle/webservices/okhttp/ConnectionTimerEventListener;->connectionDetails:Lcom/amazon/kindle/webservices/ConnectionDetails;

    new-instance p2, Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;

    invoke-direct {p2}, Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;-><init>()V

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 29
    invoke-static {p2, v0, v1, v2, v3}, Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;->start$com_amazon_kindle_rs$default(Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;JILjava/lang/Object;)V

    .line 30
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 28
    invoke-virtual {p1, p2}, Lcom/amazon/kindle/webservices/ConnectionDetails;->setDnsResolutionDuration$com_amazon_kindle_rs(Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;)V

    return-void
.end method

.method public requestBodyEnd(Lokhttp3/Call;J)V
    .locals 2

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-super {p0, p1, p2, p3}, Lokhttp3/EventListener;->requestBodyEnd(Lokhttp3/Call;J)V

    .line 89
    iget-object p1, p0, Lcom/amazon/kindle/webservices/okhttp/ConnectionTimerEventListener;->connectionDetails:Lcom/amazon/kindle/webservices/ConnectionDetails;

    invoke-virtual {p1}, Lcom/amazon/kindle/webservices/ConnectionDetails;->getRequestBodyStreamingDuration()Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;

    move-result-object p1

    if-eqz p1, :cond_0

    const-wide/16 p2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v0, v1}, Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;->end$com_amazon_kindle_rs$default(Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;JILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public requestBodyStart(Lokhttp3/Call;)V
    .locals 5

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-super {p0, p1}, Lokhttp3/EventListener;->requestBodyStart(Lokhttp3/Call;)V

    .line 82
    iget-object p1, p0, Lcom/amazon/kindle/webservices/okhttp/ConnectionTimerEventListener;->connectionDetails:Lcom/amazon/kindle/webservices/ConnectionDetails;

    new-instance v0, Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;

    invoke-direct {v0}, Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;-><init>()V

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 83
    invoke-static {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;->start$com_amazon_kindle_rs$default(Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;JILjava/lang/Object;)V

    .line 84
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 82
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/webservices/ConnectionDetails;->setRequestBodyStreamingDuration$com_amazon_kindle_rs(Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;)V

    return-void
.end method

.method public requestHeadersEnd(Lokhttp3/Call;Lokhttp3/Request;)V
    .locals 3

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->requestHeadersEnd(Lokhttp3/Call;Lokhttp3/Request;)V

    .line 77
    iget-object p1, p0, Lcom/amazon/kindle/webservices/okhttp/ConnectionTimerEventListener;->connectionDetails:Lcom/amazon/kindle/webservices/ConnectionDetails;

    invoke-virtual {p1}, Lcom/amazon/kindle/webservices/ConnectionDetails;->getRequestHeadersStreamingDuration()Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;

    move-result-object p1

    const-wide/16 v0, 0x0

    const/4 p2, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, p2, v2}, Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;->end$com_amazon_kindle_rs$default(Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;JILjava/lang/Object;)V

    return-void
.end method

.method public requestHeadersStart(Lokhttp3/Call;)V
    .locals 4

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-super {p0, p1}, Lokhttp3/EventListener;->requestHeadersStart(Lokhttp3/Call;)V

    .line 72
    iget-object p1, p0, Lcom/amazon/kindle/webservices/okhttp/ConnectionTimerEventListener;->connectionDetails:Lcom/amazon/kindle/webservices/ConnectionDetails;

    invoke-virtual {p1}, Lcom/amazon/kindle/webservices/ConnectionDetails;->getRequestHeadersStreamingDuration()Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;

    move-result-object p1

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;->start$com_amazon_kindle_rs$default(Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;JILjava/lang/Object;)V

    return-void
.end method

.method public responseBodyEnd(Lokhttp3/Call;J)V
    .locals 2

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-super {p0, p1, p2, p3}, Lokhttp3/EventListener;->responseBodyEnd(Lokhttp3/Call;J)V

    .line 109
    iget-object p1, p0, Lcom/amazon/kindle/webservices/okhttp/ConnectionTimerEventListener;->connectionDetails:Lcom/amazon/kindle/webservices/ConnectionDetails;

    invoke-virtual {p1}, Lcom/amazon/kindle/webservices/ConnectionDetails;->getResponseBodyStreamingDuration()Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;

    move-result-object p1

    const-wide/16 p2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v0, v1}, Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;->end$com_amazon_kindle_rs$default(Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;JILjava/lang/Object;)V

    return-void
.end method

.method public responseBodyStart(Lokhttp3/Call;)V
    .locals 4

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-super {p0, p1}, Lokhttp3/EventListener;->responseBodyStart(Lokhttp3/Call;)V

    .line 104
    iget-object p1, p0, Lcom/amazon/kindle/webservices/okhttp/ConnectionTimerEventListener;->connectionDetails:Lcom/amazon/kindle/webservices/ConnectionDetails;

    invoke-virtual {p1}, Lcom/amazon/kindle/webservices/ConnectionDetails;->getResponseBodyStreamingDuration()Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;

    move-result-object p1

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;->start$com_amazon_kindle_rs$default(Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;JILjava/lang/Object;)V

    return-void
.end method

.method public responseHeadersEnd(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 3

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->responseHeadersEnd(Lokhttp3/Call;Lokhttp3/Response;)V

    .line 99
    iget-object p1, p0, Lcom/amazon/kindle/webservices/okhttp/ConnectionTimerEventListener;->connectionDetails:Lcom/amazon/kindle/webservices/ConnectionDetails;

    invoke-virtual {p1}, Lcom/amazon/kindle/webservices/ConnectionDetails;->getResponseHeadersStreamingDuration()Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;

    move-result-object p1

    const-wide/16 v0, 0x0

    const/4 p2, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, p2, v2}, Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;->end$com_amazon_kindle_rs$default(Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;JILjava/lang/Object;)V

    return-void
.end method

.method public responseHeadersStart(Lokhttp3/Call;)V
    .locals 4

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-super {p0, p1}, Lokhttp3/EventListener;->responseHeadersStart(Lokhttp3/Call;)V

    .line 94
    iget-object p1, p0, Lcom/amazon/kindle/webservices/okhttp/ConnectionTimerEventListener;->connectionDetails:Lcom/amazon/kindle/webservices/ConnectionDetails;

    invoke-virtual {p1}, Lcom/amazon/kindle/webservices/ConnectionDetails;->getResponseHeadersStreamingDuration()Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;

    move-result-object p1

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;->start$com_amazon_kindle_rs$default(Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;JILjava/lang/Object;)V

    return-void
.end method

.method public secureConnectEnd(Lokhttp3/Call;Lokhttp3/Handshake;)V
    .locals 3

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->secureConnectEnd(Lokhttp3/Call;Lokhttp3/Handshake;)V

    .line 55
    iget-object p1, p0, Lcom/amazon/kindle/webservices/okhttp/ConnectionTimerEventListener;->connectionDetails:Lcom/amazon/kindle/webservices/ConnectionDetails;

    invoke-virtual {p1}, Lcom/amazon/kindle/webservices/ConnectionDetails;->getTlsHandshakeDuration()Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;

    move-result-object p1

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    const/4 p2, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, p2, v2}, Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;->end$com_amazon_kindle_rs$default(Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;JILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public secureConnectStart(Lokhttp3/Call;)V
    .locals 5

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-super {p0, p1}, Lokhttp3/EventListener;->secureConnectStart(Lokhttp3/Call;)V

    .line 48
    iget-object p1, p0, Lcom/amazon/kindle/webservices/okhttp/ConnectionTimerEventListener;->connectionDetails:Lcom/amazon/kindle/webservices/ConnectionDetails;

    new-instance v0, Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;

    invoke-direct {v0}, Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;-><init>()V

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 49
    invoke-static {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;->start$com_amazon_kindle_rs$default(Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;JILjava/lang/Object;)V

    .line 50
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 48
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/webservices/ConnectionDetails;->setTlsHandshakeDuration$com_amazon_kindle_rs(Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;)V

    return-void
.end method
