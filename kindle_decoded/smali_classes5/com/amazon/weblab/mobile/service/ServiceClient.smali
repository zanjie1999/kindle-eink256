.class Lcom/amazon/weblab/mobile/service/ServiceClient;
.super Ljava/lang/Object;
.source "ServiceClient.java"


# static fields
.field private static final CACHE_CONTROL_HEADER:Ljava/lang/String; = "Cache-Control"

.field private static final CHARSET_UTF_8:Ljava/nio/charset/Charset;

.field private static final NO_CACHE:Ljava/lang/String; = "no-cache"

.field private static final SCHEME:Ljava/lang/String; = "https"

.field private static final THROTTLED_REQUEST_STATUS_CODE:I = 0x1ad

.field private static final UNKNOWN:Ljava/lang/String; = "Unknown"


# instance fields
.field private mMaxNumOfRetries:I

.field private mWeblabClientIdentifier:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 27
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/amazon/weblab/mobile/service/ServiceClient;->CHARSET_UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/amazon/weblab/mobile/service/ServiceClient;->mMaxNumOfRetries:I

    if-ltz p1, :cond_1

    if-eqz p2, :cond_0

    .line 55
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iput p1, p0, Lcom/amazon/weblab/mobile/service/ServiceClient;->mMaxNumOfRetries:I

    .line 59
    iput-object p2, p0, Lcom/amazon/weblab/mobile/service/ServiceClient;->mWeblabClientIdentifier:Ljava/lang/String;

    return-void

    .line 56
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "weblabClientIdentifier can\'t be null nor empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxNumOfRetries can\'t be less than 0."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private buildBaseUrl(Landroid/net/Uri$Builder;Ljava/lang/String;)V
    .locals 1

    const-string v0, "https"

    .line 63
    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 64
    invoke-virtual {p1, p2}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    return-void
.end method

.method private createResponse(Ljava/net/HttpURLConnection;)Lcom/amazon/weblab/mobile/service/ServiceResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/weblab/mobile/service/ServiceClient;->readPayload(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 87
    new-instance v1, Lcom/amazon/weblab/mobile/service/ServiceResponse;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p1

    iget-object v2, p0, Lcom/amazon/weblab/mobile/service/ServiceClient;->mWeblabClientIdentifier:Ljava/lang/String;

    invoke-direct {v1, p1, v0, v2}, Lcom/amazon/weblab/mobile/service/ServiceResponse;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private readPayload(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v3, Lcom/amazon/weblab/mobile/service/ServiceClient;->CHARSET_UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/16 p1, 0x400

    :try_start_0
    new-array p1, p1, [C

    .line 74
    :goto_0
    invoke-virtual {v1, p1}, Ljava/io/BufferedReader;->read([C)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v3, 0x0

    .line 75
    invoke-virtual {v0, p1, v3, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 79
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 80
    throw p1
.end method


# virtual methods
.method invoke(Ljava/lang/String;Lcom/amazon/weblab/mobile/service/ServiceRequest;)Lcom/amazon/weblab/mobile/service/ServiceResponse;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/weblab/mobile/model/MobileWeblabException;,
            Lcom/amazon/weblab/mobile/service/UriTooLongException;
        }
    .end annotation

    if-eqz p1, :cond_1e

    .line 106
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    if-eqz p2, :cond_1d

    .line 114
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 115
    invoke-direct {p0, v0, p1}, Lcom/amazon/weblab/mobile/service/ServiceClient;->buildBaseUrl(Landroid/net/Uri$Builder;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2, v0}, Lcom/amazon/weblab/mobile/service/ServiceRequest;->appendParamToUrl(Landroid/net/Uri$Builder;)V

    .line 117
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 118
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v1, 0x1ffe

    if-ge p1, v1, :cond_1c

    .line 125
    new-instance v1, Ljava/net/URL;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 127
    :goto_0
    iget v3, p0, Lcom/amazon/weblab/mobile/service/ServiceClient;->mMaxNumOfRetries:I

    if-gt v2, v3, :cond_1b

    .line 128
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    :try_start_0
    const-string v4, "Cache-Control"

    const-string v5, "no-cache"

    .line 138
    invoke-virtual {v3, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Lcom/amazon/weblab/mobile/service/ServiceRequest;->getHttpHeaders()Ljava/util/Map;

    move-result-object v4

    .line 141
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 142
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v6, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 145
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/weblab/mobile/service/ServiceRequest;->constructPayload()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 148
    sget-object v6, Lcom/amazon/weblab/mobile/service/ServiceClient;->CHARSET_UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .line 150
    instance-of v6, p2, Lcom/amazon/weblab/mobile/service/AssignmentsServiceRequest;

    if-eqz v6, :cond_1

    const-string v6, "MwacServiceClientPayloadSize"

    .line 151
    iget-object v7, p0, Lcom/amazon/weblab/mobile/service/ServiceClient;->mWeblabClientIdentifier:Ljava/lang/String;

    array-length v8, v4

    invoke-static {v6, v7, v8}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logMetric(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/concurrent/Future;

    .line 154
    :cond_1
    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 155
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/io/OutputStream;->write([B)V

    .line 158
    :cond_2
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v6, 0xcc

    if-ne v4, v6, :cond_7

    const-string v4, "ServiceClientInvokeHttpNoContent"

    .line 161
    iget-object v5, p0, Lcom/amazon/weblab/mobile/service/ServiceClient;->mWeblabClientIdentifier:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logMetric(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 162
    invoke-static {}, Lcom/amazon/weblab/mobile/service/ServiceResponse;->createEmptyServiceResponse()Lcom/amazon/weblab/mobile/service/ServiceResponse;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_6

    .line 214
    :try_start_1
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 215
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 220
    :catch_0
    :cond_3
    :try_start_2
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 221
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 226
    :catch_1
    :cond_4
    :try_start_3
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 227
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 231
    :catch_2
    :cond_5
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    return-object p1

    :cond_7
    const/16 v6, 0xc8

    if-ne v4, v6, :cond_c

    :try_start_4
    const-string v4, "ServiceClientInvokeHttpOk"

    .line 165
    iget-object v5, p0, Lcom/amazon/weblab/mobile/service/ServiceClient;->mWeblabClientIdentifier:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logMetric(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 166
    invoke-direct {p0, v3}, Lcom/amazon/weblab/mobile/service/ServiceClient;->createResponse(Ljava/net/HttpURLConnection;)Lcom/amazon/weblab/mobile/service/ServiceResponse;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_b

    .line 214
    :try_start_5
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 215
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 220
    :catch_3
    :cond_8
    :try_start_6
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 221
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 226
    :catch_4
    :cond_9
    :try_start_7
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 227
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 231
    :catch_5
    :cond_a
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_b
    return-object p1

    :cond_c
    const/16 v6, 0x19e

    if-eq v4, v6, :cond_11

    const/16 v6, 0x1ad

    if-eq v4, v6, :cond_10

    const/16 v6, 0x1f4

    const/4 v7, 0x2

    const-string v8, "Service doesn\'t respond OK or No Content. Response message: %s. Detail: %s"

    const-string v9, "Unknown"

    if-lt v4, v6, :cond_e

    const/16 v6, 0x257

    if-gt v4, v6, :cond_e

    .line 176
    :try_start_8
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    if-nez v4, :cond_d

    goto :goto_2

    .line 177
    :cond_d
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/amazon/weblab/mobile/service/ServiceClient;->readPayload(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v9

    :goto_2
    const-string v4, "ServiceClientInternalServiceError"

    .line 178
    iget-object v6, p0, Lcom/amazon/weblab/mobile/service/ServiceClient;->mWeblabClientIdentifier:Ljava/lang/String;

    invoke-static {v4, v9, v6}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logErrorMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 179
    new-instance v4, Lcom/amazon/weblab/mobile/service/InternalServerErrorException;

    new-array v6, v7, [Ljava/lang/Object;

    .line 181
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    aput-object v9, v6, v5

    .line 179
    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/amazon/weblab/mobile/service/InternalServerErrorException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 184
    :cond_e
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    if-nez v4, :cond_f

    goto :goto_3

    .line 185
    :cond_f
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/amazon/weblab/mobile/service/ServiceClient;->readPayload(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v9

    :goto_3
    const-string v4, "ServiceClientInvokeFailure"

    .line 186
    iget-object v6, p0, Lcom/amazon/weblab/mobile/service/ServiceClient;->mWeblabClientIdentifier:Ljava/lang/String;

    invoke-static {v4, v9, v6}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logErrorMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 187
    new-instance v4, Ljava/io/IOException;

    new-array v6, v7, [Ljava/lang/Object;

    .line 189
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    aput-object v9, v6, v5

    .line 187
    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 173
    :cond_10
    new-instance v4, Lcom/amazon/weblab/mobile/service/ThrottledServiceCallException;

    const-string v5, "Request was throttled"

    invoke-direct {v4, v5}, Lcom/amazon/weblab/mobile/service/ThrottledServiceCallException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_11
    const-string v4, "ServiceClientInvokeReqTooLongServiceResp"

    .line 169
    iget-object v5, p0, Lcom/amazon/weblab/mobile/service/ServiceClient;->mWeblabClientIdentifier:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logMetric(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 170
    new-instance v4, Lcom/amazon/weblab/mobile/service/UriTooLongException;

    const-string v5, "Request too long"

    invoke-direct {v4, v5, p1}, Lcom/amazon/weblab/mobile/service/UriTooLongException;-><init>(Ljava/lang/String;I)V

    throw v4
    :try_end_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_6
    move-exception v4

    .line 206
    :try_start_9
    iget v5, p0, Lcom/amazon/weblab/mobile/service/ServiceClient;->mMaxNumOfRetries:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-ge v2, v5, :cond_16

    if-eqz v3, :cond_15

    .line 214
    :try_start_a
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    if-eqz v4, :cond_12

    .line 215
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 220
    :catch_7
    :cond_12
    :try_start_b
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 221
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 226
    :catch_8
    :cond_13
    :try_start_c
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    if-eqz v4, :cond_14

    .line 227
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 231
    :catch_9
    :cond_14
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 235
    :cond_15
    iget-object v3, p0, Lcom/amazon/weblab/mobile/service/ServiceClient;->mWeblabClientIdentifier:Ljava/lang/String;

    const-string v4, "ServiceClientInvokeRetries"

    invoke-static {v4, v3}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logMetric(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_16
    :try_start_d
    const-string p1, "ServiceClientInvokeMaxRetriesReachedFailure"

    .line 208
    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/amazon/weblab/mobile/service/ServiceClient;->mWeblabClientIdentifier:Ljava/lang/String;

    .line 207
    invoke-static {p1, p2, v0}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logErrorMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 209
    throw v4

    :catch_a
    move-exception p1

    const-string p2, "ServiceClientOkHttpException"

    .line 200
    invoke-virtual {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/weblab/mobile/service/ServiceClient;->mWeblabClientIdentifier:Ljava/lang/String;

    .line 198
    invoke-static {p2, v0, v1}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logErrorMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 201
    new-instance p2, Ljava/io/IOException;

    const-string v0, "OkHttp client threw an ArrayIndexOutOfBoundsException"

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :goto_4
    if-eqz v3, :cond_1a

    .line 214
    :try_start_e
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    if-eqz p2, :cond_17

    .line 215
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b

    .line 220
    :catch_b
    :cond_17
    :try_start_f
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    if-eqz p2, :cond_18

    .line 221
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c

    .line 226
    :catch_c
    :cond_18
    :try_start_10
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p2

    if-eqz p2, :cond_19

    .line 227
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_d

    .line 231
    :catch_d
    :cond_19
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 233
    :cond_1a
    throw p1

    .line 239
    :cond_1b
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Exceeds max number of retries."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 121
    :cond_1c
    new-instance p2, Lcom/amazon/weblab/mobile/service/UriTooLongException;

    const-string v0, "Request line too long"

    invoke-direct {p2, v0, p1}, Lcom/amazon/weblab/mobile/service/UriTooLongException;-><init>(Ljava/lang/String;I)V

    throw p2

    .line 111
    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "request can\'t be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 107
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "basePath can\'t be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
