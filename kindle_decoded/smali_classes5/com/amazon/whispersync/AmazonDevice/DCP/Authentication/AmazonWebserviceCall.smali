.class public Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;
.super Ljava/lang/Object;
.source "AmazonWebserviceCall.java"

# interfaces
.implements Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCall;


# static fields
.field static final AMZN_REQUEST_ID_HEADER:Ljava/lang/String; = "X-Amzn-RequestId"

.field static final CALL_COUNTER:Ljava/util/concurrent/atomic/AtomicInteger;

.field static final DEBUG_STREAMING_MODE:Z = true


# instance fields
.field private mAmazonRequestId:Ljava/lang/String;

.field mExtraBodyStream:Ljava/io/InputStream;

.field mExtraBodyStreamLength:I

.field mHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field final mLogTag:Ljava/lang/String;

.field mRequestSigner:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner;

.field mSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

.field mWebServiceCallback:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->CALL_COUNTER:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner;)V
    .locals 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 33
    sget-object v2, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->CALL_COUNTER:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "AmazonWebserviceCall [%d]: "

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mLogTag:Ljava/lang/String;

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mWebServiceCallback:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;

    .line 36
    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 37
    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 38
    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    .line 39
    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mRequestSigner:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner;

    .line 40
    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mExtraBodyStream:Ljava/io/InputStream;

    const/4 v1, -0x1

    .line 41
    iput v1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mExtraBodyStreamLength:I

    .line 42
    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mAmazonRequestId:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    .line 49
    iput-object p3, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mRequestSigner:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner;

    .line 51
    iput-object p2, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mWebServiceCallback:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;

    .line 52
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mAmazonRequestId:Ljava/lang/String;

    return-void
.end method

.method private buildBodyStream()Ljava/io/InputStream;
    .locals 3

    .line 372
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    invoke-virtual {v1}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->getBodyBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 373
    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mExtraBodyStream:Ljava/io/InputStream;

    if-nez v1, :cond_0

    .line 376
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 378
    :cond_0
    new-instance v2, Ljava/io/SequenceInputStream;

    invoke-direct {v2, v0, v1}, Ljava/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    return-object v2
.end method

.method private calcBodyLength()I
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->getBodyLength()J

    move-result-wide v0

    long-to-int v1, v0

    .line 363
    iget v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mExtraBodyStreamLength:I

    if-lez v0, :cond_0

    add-int/2addr v1, v0

    :cond_0
    return v1
.end method

.method private connectionRequest(Ljava/net/HttpURLConnection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->getVerb()Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;

    move-result-object v0

    .line 221
    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;->HttpVerbGet:Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    const-string v1, "GET"

    .line 223
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :cond_0
    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;->HttpVerbPost:Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;

    if-ne v0, v1, :cond_1

    const-string v1, "POST"

    .line 227
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    goto :goto_0

    .line 230
    :cond_1
    sget-object v1, Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;->HttpVerbPut:Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;

    if-ne v0, v1, :cond_a

    const-string v1, "PUT"

    .line 232
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 240
    :goto_0
    instance-of v1, p1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_3

    .line 242
    move-object v1, p1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    .line 244
    iget-object v3, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v3, :cond_2

    .line 246
    invoke-virtual {v1, v3}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 249
    :cond_2
    iget-object v3, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v3, :cond_3

    .line 251
    invoke-virtual {v1, v3}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 255
    :cond_3
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1e

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    long-to-int v1, v3

    .line 256
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 257
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 259
    :goto_1
    iget-object v4, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    invoke-virtual {v4}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->getNumHeaders()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 261
    iget-object v4, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    invoke-virtual {v4, v3}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->getHeaderName(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    invoke-virtual {v5, v3}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->getHeaderValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 264
    :cond_4
    sget-object v3, Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;->HttpVerbPost:Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;

    if-eq v0, v3, :cond_5

    sget-object v3, Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;->HttpVerbPut:Lcom/amazon/whispersync/AmazonDevice/Common/HttpVerb;

    if-ne v0, v3, :cond_6

    .line 266
    :cond_5
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->writeBody(Ljava/net/HttpURLConnection;)V

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mLogTag:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Finished write body."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mLogTag:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Starting get response code"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 272
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mLogTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Received response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    .line 279
    new-instance v1, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;

    invoke-direct {v1}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;-><init>()V

    int-to-long v3, v0

    .line 280
    invoke-virtual {v1, v3, v4}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;->setStatusCode(J)V

    .line 287
    :cond_7
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v0

    .line 288
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 291
    invoke-virtual {v1, v0, v3}, Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    :cond_8
    if-nez v3, :cond_7

    .line 296
    iget-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mWebServiceCallback:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;

    invoke-interface {p1, v1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;->onHeadersReceived(Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;)V

    return-void

    .line 276
    :cond_9
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid response code"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 237
    :cond_a
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method private doRun()V
    .locals 7

    const-string v0, "Error closing stream to "

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 140
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->getUrl()Ljava/net/URL;

    move-result-object v3

    .line 141
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mLogTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Opened WebRequest Connection."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    invoke-direct {p0, v3}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->connectionRequest(Ljava/net/HttpURLConnection;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 148
    :try_start_2
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 152
    :catch_0
    :try_start_3
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    .line 157
    invoke-direct {p0, v3, v1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->readInput(Ljava/net/HttpURLConnection;Ljava/io/InputStream;)V

    .line 160
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mLogTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Request complete"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    iget-object v4, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mWebServiceCallback:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;

    invoke-interface {v4}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;->onRequestComplete()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_1

    .line 184
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 188
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mLogTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->getLogSafeUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    invoke-direct {p0, v1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->printStackTrace(Ljava/lang/Exception;)V

    :cond_1
    :goto_1
    if-eqz v3, :cond_4

    goto/16 :goto_6

    :catch_2
    move-exception v4

    goto :goto_2

    :catch_3
    move-exception v4

    goto :goto_4

    :catchall_0
    move-exception v4

    move-object v3, v1

    goto/16 :goto_7

    :catch_4
    move-exception v4

    move-object v3, v1

    .line 173
    :goto_2
    :try_start_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mLogTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "UnsupportedOperationException making request to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->getLogSafeUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    invoke-direct {p0, v4}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->printStackTrace(Ljava/lang/Exception;)V

    .line 176
    invoke-direct {p0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->postNetworkFailure()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_2

    .line 184
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_3

    :catch_5
    move-exception v1

    .line 188
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mLogTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->getLogSafeUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    invoke-direct {p0, v1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->printStackTrace(Ljava/lang/Exception;)V

    :cond_2
    :goto_3
    if-eqz v3, :cond_4

    goto :goto_6

    :catch_6
    move-exception v4

    move-object v3, v1

    .line 166
    :goto_4
    :try_start_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mLogTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "IOException making request to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->getLogSafeUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    invoke-direct {p0, v4}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->printStackTrace(Ljava/lang/Exception;)V

    .line 169
    invoke-direct {p0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->postNetworkFailure()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v1, :cond_3

    .line 184
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_5

    :catch_7
    move-exception v1

    .line 188
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mLogTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->getLogSafeUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    invoke-direct {p0, v1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->printStackTrace(Ljava/lang/Exception;)V

    :cond_3
    :goto_5
    if-eqz v3, :cond_4

    .line 195
    :goto_6
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    return-void

    :catchall_1
    move-exception v4

    :goto_7
    if-eqz v1, :cond_5

    .line 184
    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_8

    :catch_8
    move-exception v1

    .line 188
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mLogTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->getLogSafeUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    invoke-direct {p0, v1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->printStackTrace(Ljava/lang/Exception;)V

    :cond_5
    :goto_8
    if-eqz v3, :cond_6

    .line 195
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    throw v4
.end method

.method private getLogSafeUrl()Ljava/lang/String;
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    invoke-virtual {v1}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->getQueryString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUrl()Ljava/net/URL;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 202
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    invoke-virtual {v1}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private handleAuthentication()V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->getAuthenticationRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mRequestSigner:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner;

    if-eqz v0, :cond_0

    .line 106
    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner;->signRequest(Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;)Z

    goto :goto_0

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mLogTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "The request requires authentication, but no authentication credentials were supplied."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private handleCompression()V
    .locals 4

    .line 118
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->getCompressionRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->getBodyBytes()[B

    move-result-object v0

    .line 123
    :try_start_0
    invoke-static {v0}, Lcom/amazon/whispersync/AmazonDevice/Common/GZIPCompressionHelper;->compress([B)[B

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    array-length v2, v0

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->setBody([BJ)V

    .line 125
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    const-string v1, "Content-Encoding"

    const-string v2, "gzip"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    :catch_0
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mLogTag:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "The Request body could not be compressed. Sending content uncompressed."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private postNetworkFailure()V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mWebServiceCallback:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;

    invoke-interface {v0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;->onNetworkError()V

    return-void
.end method

.method private printStackTrace(Ljava/lang/Exception;)V
    .locals 6

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mLogTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 410
    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 412
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mLogTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Log Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private readInput(Ljava/net/HttpURLConnection;Ljava/io/InputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 383
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result p1

    const/16 v0, 0x4000

    new-array v0, v0, [B

    .line 388
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-le v1, v3, :cond_1

    .line 391
    iget-object v4, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mWebServiceCallback:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;

    invoke-interface {v4, v0, v1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;->onBodyChunkReceived([BI)V

    add-int/2addr v2, v1

    if-le p1, v3, :cond_0

    .line 398
    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mWebServiceCallback:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;

    invoke-interface {v1, v2, p1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;->onProgress(II)V

    .line 400
    :cond_0
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    goto :goto_0

    .line 403
    :cond_1
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method private writeBody(Ljava/net/HttpURLConnection;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Couldn\'t close write body stream"

    const-string v1, "Couldn\'t flush write body stream"

    .line 301
    invoke-direct {p0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->calcBodyLength()I

    move-result v2

    if-gtz v2, :cond_0

    return-void

    .line 306
    :cond_0
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 308
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    .line 311
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "org.apache.harmony.luni.internal.net.www.protocol.http.FixedLengthOutputStream"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 314
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DEBUG_STREAMING_MODE: Output stream isn\'t using fixed-length implementation ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 321
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->buildBodyStream()Ljava/io/InputStream;

    move-result-object v3

    const/16 v5, 0x2000

    new-array v5, v5, [B

    .line 327
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, 0x0

    :goto_0
    const/4 v8, -0x1

    if-eq v6, v8, :cond_2

    if-ge v7, v2, :cond_2

    .line 330
    invoke-virtual {p1, v5, v4, v6}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v7, v6

    .line 332
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 341
    :try_start_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    new-array v2, v4, [Ljava/lang/Object;

    .line 345
    invoke-static {v1, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 350
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    new-array p1, v4, [Ljava/lang/Object;

    .line 354
    invoke-static {v0, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_2
    return-void

    :catchall_0
    move-exception v2

    if-eqz p1, :cond_4

    .line 341
    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    new-array v3, v4, [Ljava/lang/Object;

    .line 345
    invoke-static {v1, v3}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 350
    :goto_3
    :try_start_4
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    new-array p1, v4, [Ljava/lang/Object;

    .line 354
    invoke-static {v0, p1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 355
    :cond_4
    :goto_4
    throw v2
.end method


# virtual methods
.method public call()V
    .locals 4

    .line 89
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    invoke-virtual {p0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->getAmazonRequestId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-Amzn-RequestId"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-direct {p0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->handleCompression()V

    .line 91
    invoke-direct {p0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->handleAuthentication()V

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mLogTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->getHeaderByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mLogTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Starting web request"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mLogTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "URL: %s"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mWebRequest:Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;

    invoke-virtual {v3}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    invoke-direct {p0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->doRun()V

    return-void
.end method

.method public getAmazonRequestId()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mAmazonRequestId:Ljava/lang/String;

    return-object v0
.end method

.method public setExtraBodyStream(Ljava/io/InputStream;I)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mExtraBodyStream:Ljava/io/InputStream;

    .line 58
    iput p2, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mExtraBodyStreamLength:I

    return-void
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mLogTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Set hostname verifier"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    :cond_0
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mLogTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Set SSL Socket factory"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    :cond_0
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->mSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method
