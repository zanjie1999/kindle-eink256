.class public final Lcom/amazon/kindle/webservices/ConnectionDetails;
.super Ljava/lang/Object;
.source "ConnectionDetails.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;,
        Lcom/amazon/kindle/webservices/ConnectionDetails$DcmMetricKeys;
    }
.end annotation


# instance fields
.field private connectionAttemptCount:I

.field public connectionEndpoint:Ljava/net/URI;

.field private final connectionUseDuration:Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;

.field private dnsResolutionDuration:Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;

.field public httpProtocol:Lokhttp3/Protocol;

.field private requestBodyStreamingDuration:Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;

.field private final requestHeadersStreamingDuration:Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;

.field private final responseBodyStreamingDuration:Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;

.field private final responseHeadersStreamingDuration:Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;

.field private socketHandshakeDuration:Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;

.field private tlsHandshakeDuration:Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;

.field private final totalRequestDuration:Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/webservices/ConnectionDetails$DcmMetricKeys;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/webservices/ConnectionDetails$DcmMetricKeys;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;

    invoke-direct {v0}, Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/webservices/ConnectionDetails;->totalRequestDuration:Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;

    .line 55
    new-instance v0, Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;

    invoke-direct {v0}, Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/webservices/ConnectionDetails;->requestHeadersStreamingDuration:Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;

    .line 60
    new-instance v0, Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;

    invoke-direct {v0}, Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/webservices/ConnectionDetails;->responseHeadersStreamingDuration:Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;

    .line 65
    new-instance v0, Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;

    invoke-direct {v0}, Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/webservices/ConnectionDetails;->responseBodyStreamingDuration:Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;

    .line 70
    new-instance v0, Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;

    invoke-direct {v0}, Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/webservices/ConnectionDetails;->connectionUseDuration:Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;

    return-void
.end method

.method public static final synthetic access$transformKey(Lcom/amazon/kindle/webservices/ConnectionDetails;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kindle/webservices/ConnectionDetails;->transformKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic toDcmTimerMetrics$default(Lcom/amazon/kindle/webservices/ConnectionDetails;Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;ILjava/lang/Object;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const-string p3, ":"

    .line 148
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kindle/webservices/ConnectionDetails;->toDcmTimerMetrics(Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private final transformKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const/4 p1, 0x2

    aput-object p3, v0, p1

    .line 129
    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->sequenceOf([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object p1

    .line 130
    sget-object p2, Lcom/amazon/kindle/webservices/ConnectionDetails$transformKey$1;->INSTANCE:Lcom/amazon/kindle/webservices/ConnectionDetails$transformKey$1;

    invoke-static {p1, p2}, Lkotlin/sequences/SequencesKt;->filterNot(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e

    const/4 v8, 0x0

    move-object v1, p4

    .line 131
    invoke-static/range {v0 .. v8}, Lkotlin/sequences/SequencesKt;->joinToString$default(Lkotlin/sequences/Sequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final getConnectionAttemptCount()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/amazon/kindle/webservices/ConnectionDetails;->connectionAttemptCount:I

    return v0
.end method

.method public final getConnectionEndpoint()Ljava/net/URI;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/amazon/kindle/webservices/ConnectionDetails;->connectionEndpoint:Ljava/net/URI;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "connectionEndpoint"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getConnectionReused()Z
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/amazon/kindle/webservices/ConnectionDetails;->socketHandshakeDuration:Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getConnectionUseDuration()Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/amazon/kindle/webservices/ConnectionDetails;->connectionUseDuration:Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;

    return-object v0
.end method

.method public final getDnsResolutionDuration()Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/amazon/kindle/webservices/ConnectionDetails;->dnsResolutionDuration:Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;

    return-object v0
.end method

.method public final getHttpProtocol()Lokhttp3/Protocol;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/amazon/kindle/webservices/ConnectionDetails;->httpProtocol:Lokhttp3/Protocol;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "httpProtocol"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getHttpProtocolString()Ljava/lang/String;
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/amazon/kindle/webservices/ConnectionDetails;->httpProtocol:Lokhttp3/Protocol;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lokhttp3/Protocol;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "httpProtocol.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string v0, "httpProtocol"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getRequestBodyStreamingDuration()Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/amazon/kindle/webservices/ConnectionDetails;->requestBodyStreamingDuration:Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;

    return-object v0
.end method

.method public final getRequestHeadersStreamingDuration()Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amazon/kindle/webservices/ConnectionDetails;->requestHeadersStreamingDuration:Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;

    return-object v0
.end method

.method public final getResponseBodyStreamingDuration()Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/amazon/kindle/webservices/ConnectionDetails;->responseBodyStreamingDuration:Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;

    return-object v0
.end method

.method public final getResponseHeadersStreamingDuration()Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazon/kindle/webservices/ConnectionDetails;->responseHeadersStreamingDuration:Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;

    return-object v0
.end method

.method public final getSocketHandshakeDuration()Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/amazon/kindle/webservices/ConnectionDetails;->socketHandshakeDuration:Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;

    return-object v0
.end method

.method public final getTlsHandshakeDuration()Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/amazon/kindle/webservices/ConnectionDetails;->tlsHandshakeDuration:Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;

    return-object v0
.end method

.method public final getTotalRequestDuration()Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazon/kindle/webservices/ConnectionDetails;->totalRequestDuration:Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;

    return-object v0
.end method

.method public final setConnectionAttemptCount$com_amazon_kindle_rs(I)V
    .locals 0

    .line 110
    iput p1, p0, Lcom/amazon/kindle/webservices/ConnectionDetails;->connectionAttemptCount:I

    return-void
.end method

.method public final setConnectionEndpoint$com_amazon_kindle_rs(Ljava/net/URI;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iput-object p1, p0, Lcom/amazon/kindle/webservices/ConnectionDetails;->connectionEndpoint:Ljava/net/URI;

    return-void
.end method

.method public final setDnsResolutionDuration$com_amazon_kindle_rs(Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/amazon/kindle/webservices/ConnectionDetails;->dnsResolutionDuration:Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;

    return-void
.end method

.method public final setHttpProtocol$com_amazon_kindle_rs(Lokhttp3/Protocol;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    iput-object p1, p0, Lcom/amazon/kindle/webservices/ConnectionDetails;->httpProtocol:Lokhttp3/Protocol;

    return-void
.end method

.method public final setRequestBodyStreamingDuration$com_amazon_kindle_rs(Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/amazon/kindle/webservices/ConnectionDetails;->requestBodyStreamingDuration:Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;

    return-void
.end method

.method public final setSocketHandshakeDuration$com_amazon_kindle_rs(Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/amazon/kindle/webservices/ConnectionDetails;->socketHandshakeDuration:Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;

    return-void
.end method

.method public final setTlsHandshakeDuration$com_amazon_kindle_rs(Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/amazon/kindle/webservices/ConnectionDetails;->tlsHandshakeDuration:Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;

    return-void
.end method

.method public final toDcmTimerMetrics(Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string/jumbo v0, "prependKeyComponents"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appendKeyComponents"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delimiter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3e

    const/4 v9, 0x0

    move-object v1, p1

    move-object v2, p3

    .line 150
    :try_start_0
    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e

    const/4 v8, 0x0

    move-object v0, p2

    move-object v1, p3

    .line 151
    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 153
    new-instance v0, Lcom/amazon/kindle/webservices/ConnectionDetails$toDcmTimerMetrics$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/kindle/webservices/ConnectionDetails$toDcmTimerMetrics$1;-><init>(Lcom/amazon/kindle/webservices/ConnectionDetails;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/16 p1, 0x9

    new-array p1, p1, [Lkotlin/Pair;

    const/4 p2, 0x0

    const-string p3, "endToEndDuration"

    .line 163
    iget-object v1, p0, Lcom/amazon/kindle/webservices/ConnectionDetails;->totalRequestDuration:Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;

    invoke-static {p3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x1

    const-string/jumbo p3, "totalStreamingDuration"

    .line 164
    iget-object v1, p0, Lcom/amazon/kindle/webservices/ConnectionDetails;->connectionUseDuration:Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;

    invoke-static {p3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string/jumbo p3, "requestHeaderStreamingDuration"

    .line 165
    iget-object v1, p0, Lcom/amazon/kindle/webservices/ConnectionDetails;->requestHeadersStreamingDuration:Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;

    invoke-static {p3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string/jumbo p3, "responseHeaderStreamingDuration"

    .line 166
    iget-object v1, p0, Lcom/amazon/kindle/webservices/ConnectionDetails;->responseHeadersStreamingDuration:Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;

    invoke-static {p3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string/jumbo p3, "responseBodyStreamingDuration"

    .line 167
    iget-object v1, p0, Lcom/amazon/kindle/webservices/ConnectionDetails;->responseBodyStreamingDuration:Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;

    invoke-static {p3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string/jumbo p3, "requestBodyStreamingDuration"

    .line 169
    iget-object v1, p0, Lcom/amazon/kindle/webservices/ConnectionDetails;->requestBodyStreamingDuration:Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;

    invoke-static {p3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "connectionHandshakeDuration"

    .line 170
    iget-object v1, p0, Lcom/amazon/kindle/webservices/ConnectionDetails;->socketHandshakeDuration:Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;

    invoke-static {p3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string/jumbo p3, "tlsHandshakeDuration"

    .line 171
    iget-object v1, p0, Lcom/amazon/kindle/webservices/ConnectionDetails;->tlsHandshakeDuration:Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;

    invoke-static {p3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "dnsLookupDuration"

    .line 172
    iget-object v1, p0, Lcom/amazon/kindle/webservices/ConnectionDetails;->dnsResolutionDuration:Lcom/amazon/kindle/webservices/ConnectionDetails$Timer;

    invoke-static {p3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    aput-object p3, p1, p2

    .line 162
    invoke-static {p1}, Lkotlin/sequences/SequencesKt;->sequenceOf([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/webservices/ConnectionDetails$toDcmTimerMetrics$1;->invoke(Lkotlin/sequences/Sequence;)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 175
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Runtime exception caught while creating the metrics map"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
