.class Lcom/amazon/device/ads/HttpURLConnectionWebRequest;
.super Lcom/amazon/device/ads/WebRequest;
.source "HttpURLConnectionWebRequest.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "HttpURLConnectionWebRequest"


# instance fields
.field private connection:Ljava/net/HttpURLConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/amazon/device/ads/WebRequest;-><init>()V

    return-void
.end method

.method private writePostBody(Ljava/net/HttpURLConnection;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/device/ads/WebRequest$WebRequestException;
        }
    .end annotation

    const-string v0, "Problem while closing output stream writer for request body"

    const-string v1, "Problem while closing output stream writer for request body: %s"

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    iget-object v3, p0, Lcom/amazon/device/ads/WebRequest;->requestBody:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 139
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 141
    :cond_0
    iget-object v3, p0, Lcom/amazon/device/ads/WebRequest;->postParameters:Ljava/util/HashMap;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 143
    iget-object v3, p0, Lcom/amazon/device/ads/WebRequest;->postParameters:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "&"

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 145
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/amazon/device/ads/WebUtils;->getURLEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 147
    :cond_1
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 149
    :cond_2
    :goto_1
    iget-boolean v3, p0, Lcom/amazon/device/ads/WebRequest;->logRequestBodyEnabled:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getRequestBody()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 154
    iget-boolean v3, p0, Lcom/amazon/device/ads/WebRequest;->logSessionIdEnabled:Z

    if-nez v3, :cond_3

    .line 155
    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getRequestBody()Ljava/lang/String;

    move-result-object v3

    const-string v6, ",\\s*\"\\s*sessionId\\s*\"\\s*:\\s*\".*?\"|\\s*\"\\s*sessionId\\s*\"\\s*:\\s*\".*?\"\\s*,*"

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 156
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getRequestBody()Ljava/lang/String;

    move-result-object v3

    .line 157
    :goto_2
    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getLogger()Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v3, v7, v4

    const-string v3, "Request Body: %s"

    invoke-virtual {v6, v3, v7}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    const/4 v3, 0x0

    .line 163
    :try_start_0
    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    const-string v7, "UTF-8"

    invoke-direct {v6, p1, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 164
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    :try_start_2
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 181
    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getLogger()Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    new-instance v1, Lcom/amazon/device/ads/WebRequest$WebRequestException;

    sget-object v2, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;->NETWORK_FAILURE:Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    invoke-direct {v1, p0, v2, v0, p1}, Lcom/amazon/device/ads/WebRequest$WebRequestException;-><init>(Lcom/amazon/device/ads/WebRequest;Lcom/amazon/device/ads/WebRequest$WebRequestStatus;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception p1

    move-object v3, v6

    goto :goto_4

    :catch_1
    move-exception p1

    move-object v3, v6

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception p1

    .line 168
    :goto_3
    :try_start_3
    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getLogger()Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v2

    const-string v6, "Problem while creating output steam for request body: %s"

    new-array v7, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {v2, v6, v7}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    new-instance v2, Lcom/amazon/device/ads/WebRequest$WebRequestException;

    sget-object v6, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;->NETWORK_FAILURE:Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    const-string v7, "Problem while creating output steam for request body"

    invoke-direct {v2, p0, v6, v7, p1}, Lcom/amazon/device/ads/WebRequest$WebRequestException;-><init>(Lcom/amazon/device/ads/WebRequest;Lcom/amazon/device/ads/WebRequest$WebRequestStatus;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_4
    if-eqz v3, :cond_5

    .line 177
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :catch_3
    move-exception p1

    .line 181
    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getLogger()Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    new-instance v1, Lcom/amazon/device/ads/WebRequest$WebRequestException;

    sget-object v2, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;->NETWORK_FAILURE:Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    invoke-direct {v1, p0, v2, v0, p1}, Lcom/amazon/device/ads/WebRequest$WebRequestException;-><init>(Lcom/amazon/device/ads/WebRequest;Lcom/amazon/device/ads/WebRequest$WebRequestStatus;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 185
    :cond_5
    :goto_5
    throw p1
.end method


# virtual methods
.method protected closeConnection()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/amazon/device/ads/HttpURLConnectionWebRequest;->connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/amazon/device/ads/HttpURLConnectionWebRequest;->connection:Ljava/net/HttpURLConnection;

    :cond_0
    return-void
.end method

.method protected doHttpNetworkCall(Ljava/net/URL;)Lcom/amazon/device/ads/WebRequest$WebResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/device/ads/WebRequest$WebRequestException;
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/amazon/device/ads/HttpURLConnectionWebRequest;->connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/amazon/device/ads/HttpURLConnectionWebRequest;->closeConnection()V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 36
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/HttpURLConnectionWebRequest;->openConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/ads/HttpURLConnectionWebRequest;->connection:Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 47
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/HttpURLConnectionWebRequest;->setupRequestProperties(Ljava/net/HttpURLConnection;)V

    .line 51
    :try_start_1
    iget-object p1, p0, Lcom/amazon/device/ads/HttpURLConnectionWebRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 64
    iget-object p1, p0, Lcom/amazon/device/ads/HttpURLConnectionWebRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/HttpURLConnectionWebRequest;->prepareResponse(Ljava/net/HttpURLConnection;)Lcom/amazon/device/ads/WebRequest$WebResponse;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 60
    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getLogger()Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    const-string v0, "Problem while connecting to URL: %s"

    invoke-virtual {v2, v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    new-instance v0, Lcom/amazon/device/ads/WebRequest$WebRequestException;

    sget-object v1, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;->NETWORK_FAILURE:Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    const-string v2, "Probem while connecting to URL"

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/amazon/device/ads/WebRequest$WebRequestException;-><init>(Lcom/amazon/device/ads/WebRequest;Lcom/amazon/device/ads/WebRequest$WebRequestStatus;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 55
    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getLogger()Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    const-string v0, "Socket timed out while connecting to URL: %s"

    invoke-virtual {v2, v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    new-instance v0, Lcom/amazon/device/ads/WebRequest$WebRequestException;

    sget-object v1, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;->NETWORK_TIMEOUT:Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    const-string v2, "Socket timed out while connecting to URL"

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/amazon/device/ads/WebRequest$WebRequestException;-><init>(Lcom/amazon/device/ads/WebRequest;Lcom/amazon/device/ads/WebRequest$WebRequestStatus;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    .line 40
    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getLogger()Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    const-string v0, "Problem while opening the URL connection: %s"

    invoke-virtual {v2, v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    new-instance v0, Lcom/amazon/device/ads/WebRequest$WebRequestException;

    sget-object v1, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;->NETWORK_FAILURE:Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    const-string v2, "Problem while opening the URL connection"

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/amazon/device/ads/WebRequest$WebRequestException;-><init>(Lcom/amazon/device/ads/WebRequest;Lcom/amazon/device/ads/WebRequest$WebRequestStatus;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected getSubLogTag()Ljava/lang/String;
    .locals 1

    .line 237
    sget-object v0, Lcom/amazon/device/ads/HttpURLConnectionWebRequest;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method protected openConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    return-object p1
.end method

.method protected prepareResponse(Ljava/net/HttpURLConnection;)Lcom/amazon/device/ads/WebRequest$WebResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/device/ads/WebRequest$WebRequestException;
        }
    .end annotation

    .line 196
    new-instance v0, Lcom/amazon/device/ads/WebRequest$WebResponse;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/WebRequest$WebResponse;-><init>(Lcom/amazon/device/ads/WebRequest;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 199
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/amazon/device/ads/WebRequest$WebResponse;->setHttpStatusCode(I)V

    .line 200
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazon/device/ads/WebRequest$WebResponse;->setHttpStatus(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 219
    invoke-virtual {v0}, Lcom/amazon/device/ads/WebRequest$WebResponse;->getHttpStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_0

    .line 223
    :try_start_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/WebRequest$WebResponse;->setInputStream(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 227
    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getLogger()Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "IOException while reading the input stream from response: %s"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    new-instance v0, Lcom/amazon/device/ads/WebRequest$WebRequestException;

    sget-object v1, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;->NETWORK_FAILURE:Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    const-string v2, "IOException while reading the input stream from response"

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/amazon/device/ads/WebRequest$WebRequestException;-><init>(Lcom/amazon/device/ads/WebRequest;Lcom/amazon/device/ads/WebRequest$WebRequestStatus;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    return-object v0

    :catch_1
    move-exception p1

    .line 216
    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getLogger()Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "IndexOutOfBoundsException while getting the response status code: %s"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    new-instance v0, Lcom/amazon/device/ads/WebRequest$WebRequestException;

    sget-object v1, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;->MALFORMED_URL:Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    const-string v2, "IndexOutOfBoundsException while getting the response status code"

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/amazon/device/ads/WebRequest$WebRequestException;-><init>(Lcom/amazon/device/ads/WebRequest;Lcom/amazon/device/ads/WebRequest$WebRequestStatus;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    .line 209
    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getLogger()Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "IOException while getting the response status code: %s"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    new-instance v0, Lcom/amazon/device/ads/WebRequest$WebRequestException;

    sget-object v1, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;->NETWORK_FAILURE:Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    const-string v2, "IOException while getting the response status code"

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/amazon/device/ads/WebRequest$WebRequestException;-><init>(Lcom/amazon/device/ads/WebRequest;Lcom/amazon/device/ads/WebRequest$WebRequestStatus;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_3
    move-exception p1

    .line 204
    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getLogger()Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "Socket Timeout while getting the response status code: %s"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    new-instance v0, Lcom/amazon/device/ads/WebRequest$WebRequestException;

    sget-object v1, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;->NETWORK_TIMEOUT:Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    const-string v2, "Socket Timeout while getting the response status code"

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/amazon/device/ads/WebRequest$WebRequestException;-><init>(Lcom/amazon/device/ads/WebRequest;Lcom/amazon/device/ads/WebRequest$WebRequestStatus;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected setupRequestProperties(Ljava/net/HttpURLConnection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/device/ads/WebRequest$WebRequestException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 94
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getHttpMethod()Lcom/amazon/device/ads/WebRequest$HttpMethod;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    iget-object v2, p0, Lcom/amazon/device/ads/WebRequest;->headers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 104
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 106
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v4, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getTimeout()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 111
    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getTimeout()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 116
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/amazon/device/ads/WebRequest;->logUrl(Ljava/lang/String;)V

    .line 117
    sget-object v2, Lcom/amazon/device/ads/HttpURLConnectionWebRequest$1;->$SwitchMap$com$amazon$device$ads$WebRequest$HttpMethod:[I

    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getHttpMethod()Lcom/amazon/device/ads/WebRequest$HttpMethod;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v1, :cond_3

    const/4 v0, 0x2

    if-eq v2, v0, :cond_2

    goto :goto_1

    .line 123
    :cond_2
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 124
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/HttpURLConnectionWebRequest;->writePostBody(Ljava/net/HttpURLConnection;)V

    goto :goto_1

    .line 120
    :cond_3
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    :goto_1
    return-void

    :catch_0
    move-exception p1

    .line 98
    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getLogger()Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/net/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    const-string v0, "Invalid client protocol: %s"

    invoke-virtual {v2, v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    new-instance v0, Lcom/amazon/device/ads/WebRequest$WebRequestException;

    sget-object v1, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;->INVALID_CLIENT_PROTOCOL:Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    const-string v2, "Invalid client protocol"

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/amazon/device/ads/WebRequest$WebRequestException;-><init>(Lcom/amazon/device/ads/WebRequest;Lcom/amazon/device/ads/WebRequest$WebRequestStatus;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
