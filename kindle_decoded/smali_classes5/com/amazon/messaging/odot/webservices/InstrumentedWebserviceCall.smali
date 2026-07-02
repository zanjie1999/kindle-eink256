.class public final Lcom/amazon/messaging/odot/webservices/InstrumentedWebserviceCall;
.super Ljava/lang/Object;
.source "InstrumentedWebserviceCall.java"


# static fields
.field private static final CONNECTION_TIMEOUT_SEC:J = 0x1eL

.field private static final CONNECTIVITY_TIMEOUT_SEC:J

.field private static final MAX_RETRIES_NUMBER:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private dcpAuthMethod:Lcom/amazon/messaging/odot/webservices/auth/DcpAuthMethod;

.field private webRequest:Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;

.field private webServiceCallback:Lcom/amazon/messaging/odot/webservices/transportdto/IAmazonWebServiceCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 38
    const-class v0, Lcom/amazon/messaging/odot/webservices/InstrumentedWebserviceCall;

    invoke-static {v0}, Lcom/amazon/messaging/odot/util/OdotMessageUtil;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/messaging/odot/webservices/InstrumentedWebserviceCall;->TAG:Ljava/lang/String;

    .line 41
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/messaging/odot/webservices/InstrumentedWebserviceCall;->CONNECTIVITY_TIMEOUT_SEC:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;Lcom/amazon/messaging/odot/webservices/transportdto/IAmazonWebserviceCallListener;Lcom/amazon/messaging/odot/webservices/auth/DcpAuthMethod;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p5, :cond_0

    .line 60
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/InstrumentedWebserviceCall;->context:Landroid/content/Context;

    .line 61
    new-instance p1, Lcom/amazon/messaging/odot/webservices/transportdto/StandardAmazonWebServiceCallback;

    new-instance v0, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParserAdapter;

    invoke-direct {v0, p3}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParserAdapter;-><init>(Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseParser;)V

    .line 63
    invoke-virtual {p2}, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->getAuthenticationRequired()Z

    move-result p3

    invoke-direct {p1, v0, p4, p3}, Lcom/amazon/messaging/odot/webservices/transportdto/StandardAmazonWebServiceCallback;-><init>(Lcom/amazon/messaging/odot/webservices/transportdto/IWebResponseParser;Lcom/amazon/messaging/odot/webservices/transportdto/IAmazonWebserviceCallListener;Z)V

    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/InstrumentedWebserviceCall;->webServiceCallback:Lcom/amazon/messaging/odot/webservices/transportdto/IAmazonWebServiceCallback;

    .line 64
    iput-object p2, p0, Lcom/amazon/messaging/odot/webservices/InstrumentedWebserviceCall;->webRequest:Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;

    .line 65
    iput-object p5, p0, Lcom/amazon/messaging/odot/webservices/InstrumentedWebserviceCall;->dcpAuthMethod:Lcom/amazon/messaging/odot/webservices/auth/DcpAuthMethod;

    return-void

    .line 58
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "dcpAuthMethod is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "webRequest is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "context is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createConnectionFromRequest()Ljava/net/HttpURLConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Lcom/amazon/messaging/odot/webservices/InstrumentedWebserviceCall;->getRequestURL()Ljava/net/URL;

    move-result-object v0

    .line 93
    new-instance v1, Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;

    iget-object v2, p0, Lcom/amazon/messaging/odot/webservices/InstrumentedWebserviceCall;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;-><init>(Landroid/content/Context;Ljava/net/URL;)V

    .line 95
    invoke-direct {p0, v1}, Lcom/amazon/messaging/odot/webservices/InstrumentedWebserviceCall;->enableCompressionIfRequired(Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;)V

    .line 96
    invoke-direct {p0, v1}, Lcom/amazon/messaging/odot/webservices/InstrumentedWebserviceCall;->enableAuthenticationIfRequired(Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;)V

    const/4 v2, 0x3

    .line 98
    invoke-virtual {v1, v2}, Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;->withRetryLogic(I)Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;

    .line 99
    sget-wide v2, Lcom/amazon/messaging/odot/webservices/InstrumentedWebserviceCall;->CONNECTIVITY_TIMEOUT_SEC:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;->withConnectivityEnforced(JLjava/util/concurrent/TimeUnit;)Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;

    .line 100
    iget-object v2, p0, Lcom/amazon/messaging/odot/webservices/InstrumentedWebserviceCall;->webRequest:Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;

    invoke-virtual {v2}, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->getVerbAsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/amazon/messaging/odot/webservices/util/MetricNameGenerator;->generateMetricNameFromNonRestUrl(Ljava/lang/String;Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;->withMetrics(Ljava/lang/String;)Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;

    .line 101
    invoke-virtual {v1}, Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;->withIdentifier()Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;

    .line 102
    invoke-virtual {v1}, Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;->withStandardAmazonHeaders()Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;

    .line 104
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1e

    invoke-virtual {v0, v3, v4, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    long-to-int v0, v2

    .line 105
    invoke-virtual {v1}, Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;->build()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 106
    invoke-direct {p0, v1}, Lcom/amazon/messaging/odot/webservices/InstrumentedWebserviceCall;->setupRequestHeadersIfRequired(Ljava/net/HttpURLConnection;)V

    .line 107
    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 108
    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 110
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/InstrumentedWebserviceCall;->webRequest:Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;

    invoke-virtual {v0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->getVerbAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 111
    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    return-object v1
.end method

.method private enableAuthenticationIfRequired(Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/InstrumentedWebserviceCall;->webRequest:Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;

    invoke-virtual {v0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->getAuthenticationRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/InstrumentedWebserviceCall;->dcpAuthMethod:Lcom/amazon/messaging/odot/webservices/auth/DcpAuthMethod;

    invoke-virtual {p1, v0}, Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;->withAuthMethod(Lcom/amazon/messaging/odot/webservices/auth/DcpAuthMethod;)Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;

    :cond_0
    return-void
.end method

.method private enableCompressionIfRequired(Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/InstrumentedWebserviceCall;->webRequest:Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;

    invoke-virtual {v0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->getCompressionRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p1}, Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;->withCompression()Lcom/amazon/messaging/odot/webservices/InstrumentedURLConnection;

    :cond_0
    return-void
.end method

.method private getRequestURL()Ljava/net/URL;
    .locals 4

    .line 118
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/amazon/messaging/odot/webservices/InstrumentedWebserviceCall;->webRequest:Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;

    invoke-virtual {v1}, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 120
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse the following as a URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/messaging/odot/webservices/InstrumentedWebserviceCall;->webRequest:Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;

    invoke-virtual {v3}, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getResponseStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 0

    .line 201
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 203
    :catch_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method private readInput(ILjava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x4000

    new-array v1, v1, [B

    .line 216
    invoke-virtual {p2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    :goto_0
    const/4 v3, -0x1

    if-le v2, v3, :cond_1

    .line 218
    iget-object v3, p0, Lcom/amazon/messaging/odot/webservices/InstrumentedWebserviceCall;->webServiceCallback:Lcom/amazon/messaging/odot/webservices/transportdto/IAmazonWebServiceCallback;

    invoke-interface {v3, v1, v2}, Lcom/amazon/messaging/odot/webservices/transportdto/IAmazonWebServiceCallback;->onBodyChunkReceived([BI)V

    add-int/2addr v0, v2

    .line 221
    iget-object v2, p0, Lcom/amazon/messaging/odot/webservices/InstrumentedWebserviceCall;->webServiceCallback:Lcom/amazon/messaging/odot/webservices/transportdto/IAmazonWebServiceCallback;

    invoke-interface {v2, v0, p1}, Lcom/amazon/messaging/odot/webservices/transportdto/IAmazonWebServiceCallback;->onProgress(II)V

    .line 223
    invoke-virtual {p2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    goto :goto_0

    .line 226
    :cond_1
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method private readResponseBody(Ljava/net/HttpURLConnection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/messaging/odot/webservices/InstrumentedWebserviceCall;->getResponseStream(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 193
    :try_start_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/amazon/messaging/odot/webservices/InstrumentedWebserviceCall;->readInput(ILjava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 196
    throw p1
.end method

.method private readResponseHeaders(Ljava/net/HttpURLConnection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 164
    sget-object v1, Lcom/amazon/messaging/odot/webservices/InstrumentedWebserviceCall;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Received response: %d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/messaging/odot/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 169
    new-instance v1, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseHeaders;

    invoke-direct {v1}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseHeaders;-><init>()V

    int-to-long v2, v0

    .line 170
    invoke-virtual {v1, v2, v3}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseHeaders;->setStatusCode(J)V

    .line 172
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 174
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 180
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 181
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseHeaders;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 185
    :cond_2
    iget-object p1, p0, Lcom/amazon/messaging/odot/webservices/InstrumentedWebserviceCall;->webServiceCallback:Lcom/amazon/messaging/odot/webservices/transportdto/IAmazonWebServiceCallback;

    invoke-interface {p1, v1}, Lcom/amazon/messaging/odot/webservices/transportdto/IAmazonWebServiceCallback;->onHeadersReceived(Lcom/amazon/messaging/odot/webservices/transportdto/WebResponseHeaders;)V

    return-void

    .line 166
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid response code"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setupRequestHeadersIfRequired(Ljava/net/HttpURLConnection;)V
    .locals 3

    const/4 v0, 0x0

    .line 137
    :goto_0
    iget-object v1, p0, Lcom/amazon/messaging/odot/webservices/InstrumentedWebserviceCall;->webRequest:Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;

    invoke-virtual {v1}, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->getNumHeaders()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/amazon/messaging/odot/webservices/InstrumentedWebserviceCall;->webRequest:Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;

    invoke-virtual {v1, v0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->getHeaderName(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/messaging/odot/webservices/InstrumentedWebserviceCall;->webRequest:Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;

    invoke-virtual {v2, v0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->getHeaderValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeBodyIfRequired(Ljava/net/HttpURLConnection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/InstrumentedWebserviceCall;->webRequest:Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;

    invoke-virtual {v0}, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->getBodyLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 147
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v0, 0x0

    .line 150
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 155
    iget-object p1, p0, Lcom/amazon/messaging/odot/webservices/InstrumentedWebserviceCall;->webRequest:Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;

    invoke-virtual {p1}, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->getBodyBytes()[B

    move-result-object p1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amazon/messaging/odot/webservices/InstrumentedWebserviceCall;->webRequest:Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;

    invoke-virtual {v2}, Lcom/amazon/messaging/odot/webservices/transportdto/WebRequest;->getBodyLength()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v0, p1, v1, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    return-void

    .line 152
    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string v1, "Can\'t retrieve output stream"

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 157
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 158
    throw p1
.end method


# virtual methods
.method public call()V
    .locals 4

    const/4 v0, 0x0

    .line 72
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/messaging/odot/webservices/InstrumentedWebserviceCall;->createConnectionFromRequest()Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 73
    invoke-direct {p0, v0}, Lcom/amazon/messaging/odot/webservices/InstrumentedWebserviceCall;->writeBodyIfRequired(Ljava/net/HttpURLConnection;)V

    .line 75
    invoke-direct {p0, v0}, Lcom/amazon/messaging/odot/webservices/InstrumentedWebserviceCall;->readResponseHeaders(Ljava/net/HttpURLConnection;)V

    .line 76
    invoke-direct {p0, v0}, Lcom/amazon/messaging/odot/webservices/InstrumentedWebserviceCall;->readResponseBody(Ljava/net/HttpURLConnection;)V

    .line 78
    iget-object v1, p0, Lcom/amazon/messaging/odot/webservices/InstrumentedWebserviceCall;->webServiceCallback:Lcom/amazon/messaging/odot/webservices/transportdto/IAmazonWebServiceCallback;

    invoke-interface {v1}, Lcom/amazon/messaging/odot/webservices/transportdto/IAmazonWebServiceCallback;->onRequestComplete()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 85
    :goto_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 80
    :try_start_1
    sget-object v2, Lcom/amazon/messaging/odot/webservices/InstrumentedWebserviceCall;->TAG:Ljava/lang/String;

    const-string v3, "IOException making request"

    invoke-static {v2, v3, v1}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    iget-object v1, p0, Lcom/amazon/messaging/odot/webservices/InstrumentedWebserviceCall;->webServiceCallback:Lcom/amazon/messaging/odot/webservices/transportdto/IAmazonWebServiceCallback;

    invoke-interface {v1}, Lcom/amazon/messaging/odot/webservices/transportdto/IAmazonWebServiceCallback;->onNetworkError()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :goto_1
    return-void

    :goto_2
    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 87
    :cond_1
    throw v1
.end method
