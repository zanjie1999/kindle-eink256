.class public Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient;
.super Ljava/lang/Object;
.source "UrlHttpClient.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/http/HttpClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient$CurlBuilder;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE_MULTIPLIER:I = 0x8

.field private static final DEFAULT_BUFFER_SIZE:I = 0x400

.field private static final TAG:Ljava/lang/String; = "amazonaws"

.field private static final log:Lcom/amazon/kindle/com/amazonaws/logging/Log;


# instance fields
.field private final config:Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;

.field private sc:Ljavax/net/ssl/SSLContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-class v0, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient;

    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/logging/LogFactory;->getLog(Ljava/lang/Class;)Lcom/amazon/kindle/com/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 286
    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient;->sc:Ljavax/net/ssl/SSLContext;

    .line 63
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient;->config:Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;

    return-void
.end method

.method private enableCustomTrustManager(Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 3

    .line 289
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient;->sc:Ljavax/net/ssl/SSLContext;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    .line 290
    iget-object v2, p0, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient;->config:Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;

    .line 291
    invoke-virtual {v2}, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;->getTrustManager()Ljavax/net/ssl/TrustManager;

    move-result-object v2

    aput-object v2, v0, v1

    :try_start_0
    const-string v1, "TLS"

    .line 294
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient;->sc:Ljavax/net/ssl/SSLContext;

    const/4 v2, 0x0

    .line 295
    invoke-virtual {v1, v2, v0, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 297
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 301
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient;->sc:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    return-void
.end method

.method private write(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient$CurlBuilder;Ljava/nio/ByteBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 244
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x0

    if-eqz p4, :cond_0

    .line 247
    :try_start_0
    invoke-virtual {p4, v0, v2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v3, 0x1

    .line 250
    invoke-virtual {p3, v3}, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient$CurlBuilder;->setContentOverflow(Z)Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient$CurlBuilder;

    .line 252
    :cond_0
    :goto_1
    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method applyHeadersAndMethod(Lcom/amazon/kindle/com/amazonaws/http/HttpRequest;Ljava/net/HttpURLConnection;Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient$CurlBuilder;)Ljava/net/HttpURLConnection;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 196
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/http/HttpRequest;->getHeaders()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/http/HttpRequest;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p3, :cond_0

    .line 198
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/http/HttpRequest;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient$CurlBuilder;->setHeaders(Ljava/util/Map;)Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient$CurlBuilder;

    .line 200
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/http/HttpRequest;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 201
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "Content-Length"

    .line 203
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "Host"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const-string v3, "Expect"

    .line 217
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 224
    :cond_3
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/http/HttpRequest;->getMethod()Ljava/lang/String;

    move-result-object p1

    .line 225
    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eqz p3, :cond_4

    .line 227
    invoke-virtual {p3, p1}, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient$CurlBuilder;->setMethod(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient$CurlBuilder;

    :cond_4
    return-object p2
.end method

.method configureConnection(Lcom/amazon/kindle/com/amazonaws/http/HttpRequest;Ljava/net/HttpURLConnection;)V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient;->config:Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;

    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;->getConnectionTimeout()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 259
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient;->config:Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;

    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;->getSocketTimeout()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v0, 0x0

    .line 261
    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 262
    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 264
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/http/HttpRequest;->isStreaming()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 265
    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 269
    :cond_0
    instance-of p1, p2, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz p1, :cond_1

    .line 270
    check-cast p2, Ljavax/net/ssl/HttpsURLConnection;

    .line 280
    iget-object p1, p0, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient;->config:Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;

    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;->getTrustManager()Ljavax/net/ssl/TrustManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 281
    invoke-direct {p0, p2}, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient;->enableCustomTrustManager(Ljavax/net/ssl/HttpsURLConnection;)V

    :cond_1
    return-void
.end method

.method createHttpResponse(Lcom/amazon/kindle/com/amazonaws/http/HttpRequest;Ljava/net/HttpURLConnection;)Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 94
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    if-nez v2, :cond_0

    .line 97
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/http/HttpRequest;->getMethod()Ljava/lang/String;

    move-result-object p1

    const-string v3, "HEAD"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 99
    :try_start_0
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :catch_0
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->builder()Lcom/amazon/kindle/com/amazonaws/http/HttpResponse$Builder;

    move-result-object p1

    .line 108
    invoke-virtual {p1, v1}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse$Builder;->statusCode(I)Lcom/amazon/kindle/com/amazonaws/http/HttpResponse$Builder;

    .line 109
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse$Builder;->statusText(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/http/HttpResponse$Builder;

    .line 110
    invoke-virtual {p1, v2}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse$Builder;->content(Ljava/io/InputStream;)Lcom/amazon/kindle/com/amazonaws/http/HttpResponse$Builder;

    .line 111
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 113
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 118
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/http/HttpResponse$Builder;

    goto :goto_0

    .line 121
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse$Builder;->build()Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lcom/amazon/kindle/com/amazonaws/http/HttpRequest;)Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/http/HttpRequest;->getUri()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 70
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient;->config:Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;

    invoke-virtual {v1}, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;->isCurlLogging()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient$CurlBuilder;

    .line 71
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/http/HttpRequest;->getUri()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient$CurlBuilder;-><init>(Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient;Ljava/net/URL;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 73
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient;->configureConnection(Lcom/amazon/kindle/com/amazonaws/http/HttpRequest;Ljava/net/HttpURLConnection;)V

    .line 74
    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient;->applyHeadersAndMethod(Lcom/amazon/kindle/com/amazonaws/http/HttpRequest;Ljava/net/HttpURLConnection;Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient$CurlBuilder;)Ljava/net/HttpURLConnection;

    .line 75
    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient;->writeContentToConnection(Lcom/amazon/kindle/com/amazonaws/http/HttpRequest;Ljava/net/HttpURLConnection;Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient$CurlBuilder;)V

    if-eqz v1, :cond_2

    .line 78
    invoke-virtual {v1}, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient$CurlBuilder;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    invoke-virtual {v1}, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient$CurlBuilder;->build()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient;->printToLog(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v1, "Failed to create curl, content too long"

    .line 81
    invoke-virtual {p0, v1}, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient;->printToLog(Ljava/lang/String;)V

    .line 85
    :cond_2
    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient;->createHttpResponse(Lcom/amazon/kindle/com/amazonaws/http/HttpRequest;Ljava/net/HttpURLConnection;)Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method protected printToLog(Ljava/lang/String;)V
    .locals 1

    .line 233
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->debug(Ljava/lang/Object;)V

    return-void
.end method

.method public shutdown()V
    .locals 0

    return-void
.end method

.method writeContentToConnection(Lcom/amazon/kindle/com/amazonaws/http/HttpRequest;Ljava/net/HttpURLConnection;Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient$CurlBuilder;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/http/HttpRequest;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/http/HttpRequest;->getContentLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_4

    const/4 v0, 0x1

    .line 156
    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 159
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/http/HttpRequest;->isStreaming()Z

    move-result v1

    if-nez v1, :cond_0

    .line 160
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/http/HttpRequest;->getContentLength()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {p2, v2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 162
    :cond_0
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p3, :cond_2

    .line 165
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/http/HttpRequest;->getContentLength()J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    .line 166
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/http/HttpRequest;->getContentLength()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_0

    .line 168
    :cond_1
    invoke-virtual {p3, v0}, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient$CurlBuilder;->setContentOverflow(Z)Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient$CurlBuilder;

    .line 171
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/http/HttpRequest;->getContent()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient;->write(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient$CurlBuilder;Ljava/nio/ByteBuffer;)V

    if-eqz p3, :cond_3

    if-eqz v1, :cond_3

    .line 172
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    if-eqz p1, :cond_3

    .line 174
    new-instance p1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-direct {p1, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p3, p1}, Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient$CurlBuilder;->setContent(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/http/UrlHttpClient$CurlBuilder;

    .line 176
    :cond_3
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 177
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    :cond_4
    return-void
.end method
