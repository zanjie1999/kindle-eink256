.class public Lamazon/whispersync/communication/srr/HttpClientSrrManager;
.super Ljava/lang/Object;
.source "HttpClientSrrManager.java"

# interfaces
.implements Lamazon/whispersync/communication/srr/SrrManager;


# static fields
.field private static final COMPRESSION_ENCODING_VALUE:Ljava/lang/String; = "gzip"

.field private static final DEFAULT_HTTP_CLIENT_TIMEOUT_IN_MILLISECONDS:I = 0x2710

.field private static final ENCODING_HEADER_NAME:Ljava/lang/String; = "Accept-Encoding"

.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;


# instance fields
.field private final mHttpClient:Lorg/apache/http/client/HttpClient;

.field private mIdentityResolver:Lamazon/whispersync/communication/identity/IdentityResolver;

.field private final mRequestSigner:Lamazon/whispersync/communication/authentication/RequestSigner;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "TComm.HttpClientSrrManager"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lamazon/whispersync/communication/srr/HttpClientSrrManager;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/client/HttpClient;Lamazon/whispersync/communication/authentication/RequestSigner;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 85
    iput-object p1, p0, Lamazon/whispersync/communication/srr/HttpClientSrrManager;->mHttpClient:Lorg/apache/http/client/HttpClient;

    .line 86
    iput-object p2, p0, Lamazon/whispersync/communication/srr/HttpClientSrrManager;->mRequestSigner:Lamazon/whispersync/communication/authentication/RequestSigner;

    return-void

    .line 83
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The RequestSigner must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 80
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The HttpClient must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public makeRequestSync(Lamazon/whispersync/communication/srr/SrrRequest;)Lorg/apache/http/HttpResponse;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/TimeoutException;,
            Lamazon/whispersync/communication/RequestFailedException;,
            Lamazon/whispersync/communication/MissingCredentialsException;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "TimeHttpClientExecuteRequest"

    const-string v3, "destination"

    const-string/jumbo v4, "makeRequestSync"

    if-eqz p1, :cond_b

    .line 124
    invoke-virtual/range {p1 .. p1}, Lamazon/whispersync/communication/srr/SrrRequest;->getMetricEvent()Lcom/amazon/whispersync/client/metrics/MetricEvent;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 129
    invoke-virtual/range {p1 .. p1}, Lamazon/whispersync/communication/srr/SrrRequest;->getTimeout()I

    move-result v0

    if-ltz v0, :cond_9

    if-nez v0, :cond_0

    const/16 v0, 0x2710

    .line 137
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lamazon/whispersync/communication/srr/HttpClientSrrManager;->validateConnectivityRequirements(Lamazon/whispersync/communication/srr/SrrRequest;)V

    .line 139
    invoke-virtual/range {p1 .. p1}, Lamazon/whispersync/communication/srr/SrrRequest;->getEndpointIdentity()Lamazon/whispersync/communication/identity/EndpointIdentity;

    move-result-object v6

    const/4 v7, 0x0

    .line 142
    :try_start_0
    instance-of v8, v6, Lamazon/whispersync/communication/identity/UrlEndpointIdentity;

    if-eqz v8, :cond_1

    .line 143
    new-instance v7, Ljava/net/URI;

    invoke-virtual {v6}, Lamazon/whispersync/communication/identity/EndpointIdentity;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 144
    new-instance v8, Lorg/apache/http/HttpHost;

    invoke-virtual {v7}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Ljava/net/URI;->getPort()I

    move-result v10

    invoke-virtual {v7}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v9, v10, v7}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    move-object v7, v8

    goto :goto_1

    .line 147
    :cond_1
    instance-of v8, v6, Lamazon/whispersync/communication/identity/ServiceIdentity;

    if-eqz v8, :cond_4

    .line 148
    iget-object v8, v1, Lamazon/whispersync/communication/srr/HttpClientSrrManager;->mIdentityResolver:Lamazon/whispersync/communication/identity/IdentityResolver;

    if-eqz v8, :cond_4

    .line 149
    iget-object v7, v1, Lamazon/whispersync/communication/srr/HttpClientSrrManager;->mIdentityResolver:Lamazon/whispersync/communication/identity/IdentityResolver;

    move-object v8, v6

    check-cast v8, Lamazon/whispersync/communication/identity/ServiceIdentity;

    invoke-interface {v7, v8}, Lamazon/whispersync/communication/identity/IdentityResolver;->resolveServiceEndpoint(Lamazon/whispersync/communication/identity/ServiceIdentity;)Lamazon/whispersync/communication/identity/IRServiceEndpoint;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 155
    invoke-virtual/range {p1 .. p1}, Lamazon/whispersync/communication/srr/SrrRequest;->isClearTextAllowed()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Lamazon/whispersync/communication/identity/IRServiceEndpoint;->getClearTextConnection()Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;

    move-result-object v8

    sget-object v9, Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;->ALLOWED:Lamazon/whispersync/communication/identity/IRServiceEndpoint$ClearTextConnection;

    if-ne v8, v9, :cond_2

    .line 156
    new-instance v8, Lorg/apache/http/HttpHost;

    invoke-interface {v7}, Lamazon/whispersync/communication/identity/IRServiceEndpoint;->getHostname()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7}, Lamazon/whispersync/communication/identity/IRServiceEndpoint;->getPort()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget-object v10, Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;->HTTP:Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;

    invoke-virtual {v10}, Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v7, v10}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 159
    :cond_2
    new-instance v8, Lorg/apache/http/HttpHost;

    invoke-interface {v7}, Lamazon/whispersync/communication/identity/IRServiceEndpoint;->getHostname()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7}, Lamazon/whispersync/communication/identity/IRServiceEndpoint;->getSecurePort()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget-object v10, Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;->HTTPS:Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;

    invoke-virtual {v10}, Lamazon/whispersync/communication/identity/IRServiceEndpoint$Scheme;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v7, v10}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "irEndpoint is null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_5

    :cond_4
    :goto_1
    if-eqz v7, :cond_8

    .line 174
    invoke-virtual/range {p1 .. p1}, Lamazon/whispersync/communication/srr/SrrRequest;->getRequest()Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v8

    .line 177
    invoke-virtual/range {p1 .. p1}, Lamazon/whispersync/communication/srr/SrrRequest;->getCompressionOption()Lamazon/whispersync/communication/connection/CompressionOption;

    move-result-object v9

    sget-object v10, Lamazon/whispersync/communication/connection/CompressionOption;->REQUIRED:Lamazon/whispersync/communication/connection/CompressionOption;

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eq v9, v10, :cond_6

    invoke-virtual/range {p1 .. p1}, Lamazon/whispersync/communication/srr/SrrRequest;->getCompressionOption()Lamazon/whispersync/communication/connection/CompressionOption;

    move-result-object v9

    sget-object v10, Lamazon/whispersync/communication/connection/CompressionOption;->ALLOWED:Lamazon/whispersync/communication/connection/CompressionOption;

    if-ne v9, v10, :cond_5

    goto :goto_2

    :cond_5
    const/4 v9, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const-string v9, "Accept-Encoding"

    const-string v10, "gzip"

    .line 180
    invoke-virtual {v8, v9, v10}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x1

    :goto_3
    const-string v10, "TimeSignRequest"

    .line 184
    invoke-interface {v5, v10}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->startTimer(Ljava/lang/String;)V

    const/4 v13, 0x2

    const/4 v14, 0x3

    .line 190
    :try_start_1
    invoke-virtual {v8}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v15

    .line 191
    invoke-static {v15, v7}, Lorg/apache/http/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lorg/apache/http/HttpHost;)Ljava/net/URI;

    move-result-object v7

    .line 192
    invoke-virtual {v8, v7}, Lorg/apache/http/client/methods/HttpRequestBase;->setURI(Ljava/net/URI;)V

    .line 193
    iget-object v7, v1, Lamazon/whispersync/communication/srr/HttpClientSrrManager;->mRequestSigner:Lamazon/whispersync/communication/authentication/RequestSigner;

    invoke-virtual/range {p1 .. p1}, Lamazon/whispersync/communication/srr/SrrRequest;->getRequestContext()Lamazon/whispersync/communication/authentication/RequestContext;

    move-result-object v15

    invoke-interface {v7, v8, v15}, Lamazon/whispersync/communication/authentication/RequestSigner;->signRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lamazon/whispersync/communication/authentication/RequestContext;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lamazon/whispersync/communication/authentication/SigningException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 207
    invoke-interface {v5, v10}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->stopTimer(Ljava/lang/String;)V

    .line 211
    :try_start_2
    iget-object v7, v1, Lamazon/whispersync/communication/srr/HttpClientSrrManager;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v7}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    invoke-static {v7, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 212
    iget-object v7, v1, Lamazon/whispersync/communication/srr/HttpClientSrrManager;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v7}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    invoke-static {v7, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 214
    invoke-interface {v5, v2}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->startTimer(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 217
    :try_start_3
    iget-object v0, v1, Lamazon/whispersync/communication/srr/HttpClientSrrManager;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, v8}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 219
    :try_start_4
    invoke-interface {v5, v2}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->stopTimer(Ljava/lang/String;)V

    .line 223
    invoke-static {v0}, Lcom/amazon/whispersync/communication/HttpResponseValidator;->validateContentLength(Lorg/apache/http/HttpResponse;)Z

    .line 226
    invoke-static {v0}, Lcom/amazon/whispersync/communication/HttpResponseDecompressor;->decompressResponseIfNecessary(Lorg/apache/http/HttpResponse;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-nez v9, :cond_7

    .line 228
    sget-object v2, Lamazon/whispersync/communication/srr/HttpClientSrrManager;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v5, "HttpResponse was compressed but request does not expect compression"

    new-array v7, v12, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5, v7}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    return-object v0

    :catchall_0
    move-exception v0

    .line 219
    invoke-interface {v5, v2}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->stopTimer(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 246
    new-instance v2, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;

    new-array v5, v14, [Ljava/lang/Object;

    aput-object v3, v5, v12

    invoke-virtual {v6}, Lamazon/whispersync/communication/identity/EndpointIdentity;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v11

    aput-object v0, v5, v13

    const-string v3, "Failed to execute the request."

    invoke-direct {v2, v4, v3, v5}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    sget-object v3, Lamazon/whispersync/communication/srr/HttpClientSrrManager;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    invoke-virtual {v3, v2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;)V

    .line 250
    new-instance v3, Lamazon/whispersync/communication/RequestFailedException;

    invoke-virtual {v2}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v0}, Lamazon/whispersync/communication/RequestFailedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    :catch_1
    move-exception v0

    .line 240
    new-instance v2, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;

    new-array v5, v14, [Ljava/lang/Object;

    aput-object v3, v5, v12

    invoke-virtual {v6}, Lamazon/whispersync/communication/identity/EndpointIdentity;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v11

    aput-object v0, v5, v13

    const-string v3, "Timed out making the request."

    invoke-direct {v2, v4, v3, v5}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    sget-object v3, Lamazon/whispersync/communication/srr/HttpClientSrrManager;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    invoke-virtual {v3, v2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;)V

    .line 244
    new-instance v3, Lamazon/whispersync/communication/TimeoutException;

    invoke-virtual {v2}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v0}, Lamazon/whispersync/communication/TimeoutException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    :catch_2
    move-exception v0

    .line 234
    new-instance v2, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;

    new-array v5, v14, [Ljava/lang/Object;

    aput-object v3, v5, v12

    invoke-virtual {v6}, Lamazon/whispersync/communication/identity/EndpointIdentity;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v11

    aput-object v0, v5, v13

    const-string v3, "Timed out connecting for the request."

    invoke-direct {v2, v4, v3, v5}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    sget-object v3, Lamazon/whispersync/communication/srr/HttpClientSrrManager;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    invoke-virtual {v3, v2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;)V

    .line 238
    new-instance v3, Lamazon/whispersync/communication/TimeoutException;

    invoke-virtual {v2}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v0}, Lamazon/whispersync/communication/TimeoutException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    .line 201
    :try_start_5
    new-instance v2, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;

    const-string v7, "Failed to sign request."

    new-array v8, v14, [Ljava/lang/Object;

    aput-object v3, v8, v12

    invoke-virtual {v6}, Lamazon/whispersync/communication/identity/EndpointIdentity;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v11

    aput-object v0, v8, v13

    invoke-direct {v2, v4, v7, v8}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    sget-object v3, Lamazon/whispersync/communication/srr/HttpClientSrrManager;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    invoke-virtual {v3, v2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;)V

    .line 205
    new-instance v3, Lamazon/whispersync/communication/RequestFailedException;

    invoke-virtual {v2}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v0}, Lamazon/whispersync/communication/RequestFailedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    :catch_4
    move-exception v0

    .line 195
    new-instance v2, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;

    const-string v7, "Failed to parse the URI for the request."

    new-array v8, v14, [Ljava/lang/Object;

    aput-object v3, v8, v12

    invoke-virtual {v6}, Lamazon/whispersync/communication/identity/EndpointIdentity;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v11

    aput-object v0, v8, v13

    invoke-direct {v2, v4, v7, v8}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    sget-object v3, Lamazon/whispersync/communication/srr/HttpClientSrrManager;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    invoke-virtual {v3, v2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;)V

    .line 199
    new-instance v3, Lamazon/whispersync/communication/RequestFailedException;

    invoke-virtual {v2}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v0}, Lamazon/whispersync/communication/RequestFailedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 207
    :goto_4
    invoke-interface {v5, v10}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->stopTimer(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HttpClientSrrManager only supports UriEndpointIdentity, or ServiceIdentity if IdentityResolver is set. identity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lamazon/whispersync/communication/identity/EndpointIdentity;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_5
    move-exception v0

    .line 165
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Improperly formatted URL"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 131
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "The SrrRequest must have a non-negative timeout"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "The SrrRequest must have a MetricEvent"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "The SrrRequest cannot be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected validateConnectivityRequirements(Lamazon/whispersync/communication/srr/SrrRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/RequestFailedException;
        }
    .end annotation

    return-void
.end method
