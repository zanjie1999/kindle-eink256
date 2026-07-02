.class public Lcom/audible/mobile/downloader/HTTPDownloader;
.super Ljava/lang/Object;
.source "HTTPDownloader.java"

# interfaces
.implements Lcom/audible/mobile/downloader/interfaces/Downloader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/downloader/HTTPDownloader$DisconnectingRunnable;
    }
.end annotation


# static fields
.field private static final CONTENT_ENCODING:Ljava/lang/String; = "Content-Encoding"

.field private static final DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss.SSS z"

.field private static final GZIP:Ljava/lang/String; = "gzip"

.field private static final X_AMZN_REQUESTID:Ljava/lang/String; = "x-amzn-RequestId"

.field protected static final logger:Lorg/slf4j/Logger;


# instance fields
.field private final dateFormatter:Ljava/text/DateFormat;

.field private final disconnectExecutor:Ljava/util/concurrent/Executor;

.field private final enableDebugLogging:Z

.field private volatile mInterrupted:Z

.field protected numberOfRedirects:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    const-class v1, Lcom/audible/mobile/downloader/HTTPDownloader;

    invoke-direct {v0, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/audible/mobile/downloader/HTTPDownloader;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, v0}, Lcom/audible/mobile/downloader/HTTPDownloader;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Z)V
    .locals 3

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd HH:mm:ss.SSS z"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/audible/mobile/downloader/HTTPDownloader;->dateFormatter:Ljava/text/DateFormat;

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/audible/mobile/downloader/HTTPDownloader;->mInterrupted:Z

    .line 90
    iput v0, p0, Lcom/audible/mobile/downloader/HTTPDownloader;->numberOfRedirects:I

    .line 132
    iput-object p1, p0, Lcom/audible/mobile/downloader/HTTPDownloader;->disconnectExecutor:Ljava/util/concurrent/Executor;

    .line 133
    iput-boolean p2, p0, Lcom/audible/mobile/downloader/HTTPDownloader;->enableDebugLogging:Z

    if-eqz p2, :cond_0

    const-string p1, "Debug logging can only be enabled on DEBUG builds of AAP"

    .line 136
    invoke-static {v0, p1}, Lcom/audible/mobile/util/Assert;->isTrue(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 8

    .line 111
    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x1

    const/16 v2, 0xa

    const-wide/16 v3, 0x1e

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    invoke-direct {p0, v7, p1}, Lcom/audible/mobile/downloader/HTTPDownloader;-><init>(Ljava/util/concurrent/Executor;Z)V

    return-void
.end method

.method protected static getAmazonRequestId(Ljava/util/Map;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    const-string v0, "x-amzn-RequestId"

    .line 583
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 584
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    goto :goto_0

    .line 585
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0

    .line 588
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private handleInterrupt(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;)Z
    .locals 0

    .line 635
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 637
    iput-boolean p1, p0, Lcom/audible/mobile/downloader/HTTPDownloader;->mInterrupted:Z

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private readLines(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 549
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 550
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 553
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 554
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "\n"

    .line 555
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 560
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private wrapGZIPStream(Ljava/net/HttpURLConnection;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    return-object p2

    :cond_0
    const-string v0, "Content-Encoding"

    .line 620
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "gzip"

    .line 621
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 622
    new-instance p1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p1, p2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    return-object p1

    :cond_1
    return-object p2
.end method


# virtual methods
.method public download(Lcom/audible/mobile/downloader/interfaces/DownloadCommand;Lcom/audible/mobile/downloader/interfaces/DownloadHandler;)Lcom/audible/mobile/downloader/interfaces/Downloader$Result;
    .locals 11

    const-string v0, "downloadCommand must not be null!"

    .line 160
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "handler must not be null!"

    .line 161
    invoke-static {p2, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 174
    :try_start_0
    invoke-direct {p0, p2}, Lcom/audible/mobile/downloader/HTTPDownloader;->handleInterrupt(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    sget-object p1, Lcom/audible/mobile/downloader/interfaces/Downloader$Result;->INTERRUPTED:Lcom/audible/mobile/downloader/interfaces/Downloader$Result;
    :try_end_0
    .catch Lcom/audible/mobile/downloader/NetworkErrorException; {:try_start_0 .. :try_end_0} :catch_13
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 505
    invoke-static {v0}, Lcom/audible/mobile/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 506
    iget-object v1, p0, Lcom/audible/mobile/downloader/HTTPDownloader;->disconnectExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/audible/mobile/downloader/HTTPDownloader$DisconnectingRunnable;

    invoke-direct {v2, p0, v0, v0}, Lcom/audible/mobile/downloader/HTTPDownloader$DisconnectingRunnable;-><init>(Lcom/audible/mobile/downloader/HTTPDownloader;Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 511
    iget-boolean v0, p0, Lcom/audible/mobile/downloader/HTTPDownloader;->mInterrupted:Z

    if-eqz v0, :cond_0

    .line 512
    invoke-interface {p2}, Lcom/audible/mobile/downloader/interfaces/DownloadHandler;->onInterrupt()V

    :cond_0
    return-object p1

    .line 178
    :cond_1
    :try_start_1
    invoke-interface {p2}, Lcom/audible/mobile/downloader/interfaces/DownloadHandler;->onBegin()Z

    move-result v1

    if-nez v1, :cond_3

    .line 179
    sget-object p1, Lcom/audible/mobile/downloader/interfaces/Downloader$Result;->CANCELLED:Lcom/audible/mobile/downloader/interfaces/Downloader$Result;
    :try_end_1
    .catch Lcom/audible/mobile/downloader/NetworkErrorException; {:try_start_1 .. :try_end_1} :catch_13
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 505
    invoke-static {v0}, Lcom/audible/mobile/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 506
    iget-object v1, p0, Lcom/audible/mobile/downloader/HTTPDownloader;->disconnectExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/audible/mobile/downloader/HTTPDownloader$DisconnectingRunnable;

    invoke-direct {v2, p0, v0, v0}, Lcom/audible/mobile/downloader/HTTPDownloader$DisconnectingRunnable;-><init>(Lcom/audible/mobile/downloader/HTTPDownloader;Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 511
    iget-boolean v0, p0, Lcom/audible/mobile/downloader/HTTPDownloader;->mInterrupted:Z

    if-eqz v0, :cond_2

    .line 512
    invoke-interface {p2}, Lcom/audible/mobile/downloader/interfaces/DownloadHandler;->onInterrupt()V

    :cond_2
    return-object p1

    .line 182
    :cond_3
    :try_start_2
    invoke-interface {p1}, Lcom/audible/mobile/downloader/interfaces/DownloadCommand;->getUrl()Ljava/net/URL;

    move-result-object v1

    .line 187
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    const-string v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    .line 188
    :cond_4
    new-instance p1, Lcom/audible/mobile/downloader/NetworkErrorException;

    sget-object v2, Lcom/audible/mobile/downloader/NetworkError;->INVALID_URL:Lcom/audible/mobile/downloader/NetworkError;

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Protocol was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expected http/https"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v2, v3}, Lcom/audible/mobile/downloader/NetworkErrorException;-><init>(Lcom/audible/mobile/downloader/NetworkError;Ljava/lang/Throwable;)V

    throw p1
    :try_end_2
    .catch Lcom/audible/mobile/downloader/NetworkErrorException; {:try_start_2 .. :try_end_2} :catch_13
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 193
    :cond_5
    :goto_0
    :try_start_3
    invoke-virtual {p0, v1}, Lcom/audible/mobile/downloader/HTTPDownloader;->openUrl(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_12
    .catch Lcom/audible/mobile/downloader/NetworkErrorException; {:try_start_3 .. :try_end_3} :catch_13
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    const/4 v2, 0x0

    .line 194
    :try_start_4
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_11
    .catch Lcom/audible/mobile/downloader/NetworkErrorException; {:try_start_4 .. :try_end_4} :catch_10
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 202
    :try_start_5
    instance-of v3, v1, Ljavax/net/ssl/HttpsURLConnection;

    .line 207
    invoke-interface {p1}, Lcom/audible/mobile/downloader/interfaces/DownloadCommand;->getPayload()Ljava/io/InputStream;

    move-result-object v3
    :try_end_5
    .catch Lcom/audible/mobile/downloader/NetworkErrorException; {:try_start_5 .. :try_end_5} :catch_10
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 209
    :try_start_6
    invoke-interface {p1}, Lcom/audible/mobile/downloader/interfaces/DownloadCommand;->getConnectionTimeout()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 210
    invoke-interface {p1}, Lcom/audible/mobile/downloader/interfaces/DownloadCommand;->getReadTimeout()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 212
    invoke-interface {p2}, Lcom/audible/mobile/downloader/interfaces/DownloadHandler;->getStartOffset()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_6

    const-string v6, "Range"

    .line 214
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bytes="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v6, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_6
    invoke-interface {p1}, Lcom/audible/mobile/downloader/interfaces/DownloadCommand;->isForceRefresh()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_7

    const/4 v4, 0x1

    goto :goto_1

    :cond_7
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 220
    invoke-interface {p1}, Lcom/audible/mobile/downloader/interfaces/DownloadCommand;->getHeaders()Ljava/util/Map;

    move-result-object v4
    :try_end_6
    .catch Lcom/audible/mobile/downloader/NetworkErrorException; {:try_start_6 .. :try_end_6} :catch_f
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const-string v6, "User-Agent"

    if-eqz v4, :cond_8

    .line 223
    :try_start_7
    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 226
    :cond_8
    invoke-virtual {p0}, Lcom/audible/mobile/downloader/HTTPDownloader;->getDefaultUserAgent()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 228
    invoke-virtual {v1, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    if-eqz v4, :cond_a

    .line 236
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 237
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v7, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 251
    :cond_a
    invoke-direct {p0, p2}, Lcom/audible/mobile/downloader/HTTPDownloader;->handleInterrupt(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 252
    sget-object p1, Lcom/audible/mobile/downloader/interfaces/Downloader$Result;->INTERRUPTED:Lcom/audible/mobile/downloader/interfaces/Downloader$Result;
    :try_end_7
    .catch Lcom/audible/mobile/downloader/NetworkErrorException; {:try_start_7 .. :try_end_7} :catch_f
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 505
    invoke-static {v0}, Lcom/audible/mobile/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 506
    iget-object v0, p0, Lcom/audible/mobile/downloader/HTTPDownloader;->disconnectExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/audible/mobile/downloader/HTTPDownloader$DisconnectingRunnable;

    invoke-direct {v2, p0, v3, v1}, Lcom/audible/mobile/downloader/HTTPDownloader$DisconnectingRunnable;-><init>(Lcom/audible/mobile/downloader/HTTPDownloader;Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 511
    iget-boolean v0, p0, Lcom/audible/mobile/downloader/HTTPDownloader;->mInterrupted:Z

    if-eqz v0, :cond_b

    .line 512
    invoke-interface {p2}, Lcom/audible/mobile/downloader/interfaces/DownloadHandler;->onInterrupt()V

    :cond_b
    return-object p1

    .line 256
    :cond_c
    :try_start_8
    invoke-interface {p1}, Lcom/audible/mobile/downloader/interfaces/DownloadCommand;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/net/ProtocolException; {:try_start_8 .. :try_end_8} :catch_e
    .catch Lcom/audible/mobile/downloader/NetworkErrorException; {:try_start_8 .. :try_end_8} :catch_f
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v3, :cond_d

    const/4 v4, 0x1

    goto :goto_3

    :cond_d
    const/4 v4, 0x0

    .line 267
    :goto_3
    :try_start_9
    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    :try_end_9
    .catch Lcom/audible/mobile/downloader/NetworkErrorException; {:try_start_9 .. :try_end_9} :catch_f
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    const/4 v4, -0x1

    if-eqz v3, :cond_13

    .line 274
    :try_start_a
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6
    :try_end_a
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Lcom/audible/mobile/downloader/NetworkErrorException; {:try_start_a .. :try_end_a} :catch_f
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 275
    :try_start_b
    invoke-interface {p2}, Lcom/audible/mobile/downloader/interfaces/DownloadHandler;->onConnected()V

    .line 277
    invoke-direct {p0, p2}, Lcom/audible/mobile/downloader/HTTPDownloader;->handleInterrupt(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 278
    sget-object p1, Lcom/audible/mobile/downloader/interfaces/Downloader$Result;->INTERRUPTED:Lcom/audible/mobile/downloader/interfaces/Downloader$Result;
    :try_end_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Lcom/audible/mobile/downloader/NetworkErrorException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 505
    invoke-static {v6}, Lcom/audible/mobile/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 506
    iget-object v0, p0, Lcom/audible/mobile/downloader/HTTPDownloader;->disconnectExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/audible/mobile/downloader/HTTPDownloader$DisconnectingRunnable;

    invoke-direct {v2, p0, v3, v1}, Lcom/audible/mobile/downloader/HTTPDownloader$DisconnectingRunnable;-><init>(Lcom/audible/mobile/downloader/HTTPDownloader;Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 511
    iget-boolean v0, p0, Lcom/audible/mobile/downloader/HTTPDownloader;->mInterrupted:Z

    if-eqz v0, :cond_e

    .line 512
    invoke-interface {p2}, Lcom/audible/mobile/downloader/interfaces/DownloadHandler;->onInterrupt()V

    :cond_e
    return-object p1

    :cond_f
    const/16 v7, 0x1000

    :try_start_c
    new-array v7, v7, [B

    .line 283
    :goto_4
    invoke-virtual {v3, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-le v8, v4, :cond_12

    .line 285
    invoke-direct {p0, p2}, Lcom/audible/mobile/downloader/HTTPDownloader;->handleInterrupt(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 286
    sget-object p1, Lcom/audible/mobile/downloader/interfaces/Downloader$Result;->INTERRUPTED:Lcom/audible/mobile/downloader/interfaces/Downloader$Result;
    :try_end_c
    .catch Ljava/net/SocketTimeoutException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catch Lcom/audible/mobile/downloader/NetworkErrorException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 505
    invoke-static {v6}, Lcom/audible/mobile/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 506
    iget-object v0, p0, Lcom/audible/mobile/downloader/HTTPDownloader;->disconnectExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/audible/mobile/downloader/HTTPDownloader$DisconnectingRunnable;

    invoke-direct {v2, p0, v3, v1}, Lcom/audible/mobile/downloader/HTTPDownloader$DisconnectingRunnable;-><init>(Lcom/audible/mobile/downloader/HTTPDownloader;Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 511
    iget-boolean v0, p0, Lcom/audible/mobile/downloader/HTTPDownloader;->mInterrupted:Z

    if-eqz v0, :cond_10

    .line 512
    invoke-interface {p2}, Lcom/audible/mobile/downloader/interfaces/DownloadHandler;->onInterrupt()V

    :cond_10
    return-object p1

    .line 289
    :cond_11
    :try_start_d
    invoke-virtual {v6, v7, v2, v8}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4

    .line 298
    :cond_12
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 299
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/net/SocketTimeoutException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catch Lcom/audible/mobile/downloader/NetworkErrorException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-object v3, v0

    goto :goto_7

    :catchall_0
    move-exception p1

    goto/16 :goto_e

    :catch_0
    move-exception p1

    goto/16 :goto_a

    :catch_1
    move-exception p1

    move-object v0, v6

    goto :goto_5

    :catch_2
    move-exception p1

    move-object v0, v6

    goto :goto_6

    :catch_3
    move-exception p1

    .line 305
    :goto_5
    :try_start_e
    new-instance v2, Lcom/audible/mobile/downloader/NetworkErrorException;

    sget-object v4, Lcom/audible/mobile/downloader/NetworkError;->UPLOADING:Lcom/audible/mobile/downloader/NetworkError;

    invoke-direct {v2, v4, p1}, Lcom/audible/mobile/downloader/NetworkErrorException;-><init>(Lcom/audible/mobile/downloader/NetworkError;Ljava/lang/Throwable;)V

    throw v2

    :catch_4
    move-exception p1

    .line 303
    :goto_6
    new-instance v2, Lcom/audible/mobile/downloader/NetworkErrorException;

    sget-object v4, Lcom/audible/mobile/downloader/NetworkError;->TIMEOUT:Lcom/audible/mobile/downloader/NetworkError;

    invoke-direct {v2, v4, p1}, Lcom/audible/mobile/downloader/NetworkErrorException;-><init>(Lcom/audible/mobile/downloader/NetworkError;Ljava/lang/Throwable;)V

    throw v2
    :try_end_e
    .catch Lcom/audible/mobile/downloader/NetworkErrorException; {:try_start_e .. :try_end_e} :catch_f
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 309
    :cond_13
    :try_start_f
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_f
    .catch Ljava/net/SocketTimeoutException; {:try_start_f .. :try_end_f} :catch_d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c
    .catch Lcom/audible/mobile/downloader/NetworkErrorException; {:try_start_f .. :try_end_f} :catch_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 315
    :try_start_10
    invoke-interface {p2}, Lcom/audible/mobile/downloader/interfaces/DownloadHandler;->onConnected()V
    :try_end_10
    .catch Lcom/audible/mobile/downloader/NetworkErrorException; {:try_start_10 .. :try_end_10} :catch_f
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 325
    :goto_7
    :try_start_11
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 326
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v6
    :try_end_11
    .catch Ljava/net/SocketTimeoutException; {:try_start_11 .. :try_end_11} :catch_b
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a
    .catch Lcom/audible/mobile/downloader/NetworkErrorException; {:try_start_11 .. :try_end_11} :catch_f
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 348
    :try_start_12
    invoke-interface {p2, v2, v6}, Lcom/audible/mobile/downloader/interfaces/DownloadHandler;->onReceivedHeaders(ILjava/util/Map;)Lcom/audible/mobile/downloader/interfaces/ServerResponse;

    move-result-object v7
    :try_end_12
    .catch Lcom/audible/mobile/downloader/NetworkErrorException; {:try_start_12 .. :try_end_12} :catch_f
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    const-string v8, "x-amzn-RequestId"

    const-string v9, "{}, {}"

    if-eqz v7, :cond_1b

    .line 354
    :try_start_13
    invoke-interface {v7}, Lcom/audible/mobile/downloader/interfaces/ServerResponse;->redirectTo()Ljava/net/URL;

    move-result-object v10
    :try_end_13
    .catch Ljava/net/MalformedURLException; {:try_start_13 .. :try_end_13} :catch_7
    .catch Lcom/audible/mobile/downloader/NetworkErrorException; {:try_start_13 .. :try_end_13} :catch_f
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    if-eqz v10, :cond_18

    .line 367
    :try_start_14
    iget-object v4, p0, Lcom/audible/mobile/downloader/HTTPDownloader;->disconnectExecutor:Ljava/util/concurrent/Executor;

    new-instance v7, Lcom/audible/mobile/downloader/HTTPDownloader$DisconnectingRunnable;

    invoke-direct {v7, p0, v3, v1}, Lcom/audible/mobile/downloader/HTTPDownloader$DisconnectingRunnable;-><init>(Lcom/audible/mobile/downloader/HTTPDownloader;Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    invoke-interface {v4, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_14
    .catch Lcom/audible/mobile/downloader/NetworkErrorException; {:try_start_14 .. :try_end_14} :catch_f
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 376
    :try_start_15
    iget v4, p0, Lcom/audible/mobile/downloader/HTTPDownloader;->numberOfRedirects:I

    add-int/lit8 v7, v4, 0x1

    iput v7, p0, Lcom/audible/mobile/downloader/HTTPDownloader;->numberOfRedirects:I

    const/4 v7, 0x3

    if-eq v4, v7, :cond_17

    .line 381
    new-instance v4, Lcom/audible/mobile/downloader/RedirectDownloadCommandWrapper;

    invoke-direct {v4, v10, p1}, Lcom/audible/mobile/downloader/RedirectDownloadCommandWrapper;-><init>(Ljava/net/URL;Lcom/audible/mobile/downloader/interfaces/DownloadCommand;)V

    .line 383
    invoke-interface {v4}, Lcom/audible/mobile/downloader/interfaces/DownloadCommand;->getUrl()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v2, p1, v6}, Lcom/audible/mobile/downloader/interfaces/DownloadHandler;->onRedirect(ILjava/lang/String;Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 384
    invoke-virtual {p0, v4, p2}, Lcom/audible/mobile/downloader/HTTPDownloader;->download(Lcom/audible/mobile/downloader/interfaces/DownloadCommand;Lcom/audible/mobile/downloader/interfaces/DownloadHandler;)Lcom/audible/mobile/downloader/interfaces/Downloader$Result;

    move-result-object p1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 389
    :try_start_16
    iget v2, p0, Lcom/audible/mobile/downloader/HTTPDownloader;->numberOfRedirects:I

    sub-int/2addr v2, v5

    iput v2, p0, Lcom/audible/mobile/downloader/HTTPDownloader;->numberOfRedirects:I
    :try_end_16
    .catch Lcom/audible/mobile/downloader/NetworkErrorException; {:try_start_16 .. :try_end_16} :catch_f
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    .line 505
    invoke-static {v0}, Lcom/audible/mobile/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 506
    iget-object v0, p0, Lcom/audible/mobile/downloader/HTTPDownloader;->disconnectExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/audible/mobile/downloader/HTTPDownloader$DisconnectingRunnable;

    invoke-direct {v2, p0, v3, v1}, Lcom/audible/mobile/downloader/HTTPDownloader$DisconnectingRunnable;-><init>(Lcom/audible/mobile/downloader/HTTPDownloader;Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 511
    iget-boolean v0, p0, Lcom/audible/mobile/downloader/HTTPDownloader;->mInterrupted:Z

    if-eqz v0, :cond_14

    .line 512
    invoke-interface {p2}, Lcom/audible/mobile/downloader/interfaces/DownloadHandler;->onInterrupt()V

    :cond_14
    return-object p1

    .line 386
    :cond_15
    :try_start_17
    sget-object p1, Lcom/audible/mobile/downloader/interfaces/Downloader$Result;->CANCELLED:Lcom/audible/mobile/downloader/interfaces/Downloader$Result;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    .line 389
    :try_start_18
    iget v2, p0, Lcom/audible/mobile/downloader/HTTPDownloader;->numberOfRedirects:I

    sub-int/2addr v2, v5

    iput v2, p0, Lcom/audible/mobile/downloader/HTTPDownloader;->numberOfRedirects:I
    :try_end_18
    .catch Lcom/audible/mobile/downloader/NetworkErrorException; {:try_start_18 .. :try_end_18} :catch_f
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    .line 505
    invoke-static {v0}, Lcom/audible/mobile/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 506
    iget-object v0, p0, Lcom/audible/mobile/downloader/HTTPDownloader;->disconnectExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/audible/mobile/downloader/HTTPDownloader$DisconnectingRunnable;

    invoke-direct {v2, p0, v3, v1}, Lcom/audible/mobile/downloader/HTTPDownloader$DisconnectingRunnable;-><init>(Lcom/audible/mobile/downloader/HTTPDownloader;Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 511
    iget-boolean v0, p0, Lcom/audible/mobile/downloader/HTTPDownloader;->mInterrupted:Z

    if-eqz v0, :cond_16

    .line 512
    invoke-interface {p2}, Lcom/audible/mobile/downloader/interfaces/DownloadHandler;->onInterrupt()V

    :cond_16
    return-object p1

    .line 377
    :cond_17
    :try_start_19
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v2, "Too many redirects"

    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 378
    new-instance v2, Lcom/audible/mobile/downloader/NetworkErrorException;

    sget-object v4, Lcom/audible/mobile/downloader/NetworkError;->TOO_MANY_REDIRECTS:Lcom/audible/mobile/downloader/NetworkError;

    invoke-direct {v2, v4, p1}, Lcom/audible/mobile/downloader/NetworkErrorException;-><init>(Lcom/audible/mobile/downloader/NetworkError;Ljava/lang/Throwable;)V

    throw v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    :catchall_1
    move-exception p1

    .line 389
    :try_start_1a
    iget v2, p0, Lcom/audible/mobile/downloader/HTTPDownloader;->numberOfRedirects:I

    sub-int/2addr v2, v5

    iput v2, p0, Lcom/audible/mobile/downloader/HTTPDownloader;->numberOfRedirects:I

    .line 390
    throw p1

    .line 392
    :cond_18
    invoke-interface {v7}, Lcom/audible/mobile/downloader/interfaces/ServerResponse;->isError()Z

    move-result p1
    :try_end_1a
    .catch Lcom/audible/mobile/downloader/NetworkErrorException; {:try_start_1a .. :try_end_1a} :catch_f
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    if-eqz p1, :cond_1b

    .line 395
    :try_start_1b
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p1
    :try_end_1b
    .catch Ljava/net/SocketTimeoutException; {:try_start_1b .. :try_end_1b} :catch_6
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_5
    .catch Lcom/audible/mobile/downloader/NetworkErrorException; {:try_start_1b .. :try_end_1b} :catch_f
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    goto :goto_8

    :catch_5
    :try_start_1c
    const-string p1, "Exception occurred when getting server response message"

    .line 406
    :goto_8
    invoke-interface {v7}, Lcom/audible/mobile/downloader/interfaces/ServerResponse;->isResponseReadable()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 409
    invoke-virtual {p0, v1, p2}, Lcom/audible/mobile/downloader/HTTPDownloader;->readErrorResponseBody(Ljava/net/HttpURLConnection;Lcom/audible/mobile/downloader/interfaces/DownloadHandler;)Ljava/lang/String;

    move-result-object v4

    .line 412
    invoke-interface {v7, v4}, Lcom/audible/mobile/downloader/interfaces/ServerResponse;->parseServerErrorMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 414
    invoke-virtual {p0, v4}, Lcom/audible/mobile/downloader/HTTPDownloader;->logErrorResponseBody(Ljava/lang/String;)V

    goto :goto_9

    :cond_19
    move-object v4, v0

    .line 423
    :goto_9
    invoke-static {v6}, Lcom/audible/mobile/downloader/HTTPDownloader;->getAmazonRequestId(Ljava/util/Map;)Ljava/util/List;

    move-result-object v5

    .line 424
    sget-object v6, Lcom/audible/mobile/downloader/HTTPDownloader;->logger:Lorg/slf4j/Logger;

    invoke-interface {v6, v9, v8, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 426
    sget-object v6, Lcom/audible/mobile/downloader/NetworkError;->ERROR_RESPONSE_HEADERS:Lcom/audible/mobile/downloader/NetworkError;

    .line 427
    invoke-interface {v7}, Lcom/audible/mobile/downloader/interfaces/ServerResponse;->isFatalError()Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 428
    sget-object v6, Lcom/audible/mobile/downloader/NetworkError;->ERROR_RESPONSE_HEADERS_FATAL:Lcom/audible/mobile/downloader/NetworkError;

    .line 431
    :cond_1a
    new-instance v7, Lcom/audible/mobile/downloader/NetworkErrorException;

    new-instance v8, Lcom/audible/mobile/downloader/HttpErrorException;

    invoke-direct {v8, v2, p1}, Lcom/audible/mobile/downloader/HttpErrorException;-><init>(ILjava/lang/String;)V

    invoke-direct {v7, v6, v4, v5, v8}, Lcom/audible/mobile/downloader/NetworkErrorException;-><init>(Lcom/audible/mobile/downloader/NetworkError;Ljava/lang/String;Ljava/util/List;Ljava/lang/Throwable;)V

    throw v7

    :catch_6
    move-exception p1

    .line 397
    new-instance v2, Lcom/audible/mobile/downloader/NetworkErrorException;

    sget-object v4, Lcom/audible/mobile/downloader/NetworkError;->TIMEOUT:Lcom/audible/mobile/downloader/NetworkError;

    invoke-direct {v2, v4, p1}, Lcom/audible/mobile/downloader/NetworkErrorException;-><init>(Lcom/audible/mobile/downloader/NetworkError;Ljava/lang/Throwable;)V

    throw v2

    :catch_7
    move-exception p1

    .line 356
    new-instance v2, Lcom/audible/mobile/downloader/NetworkErrorException;

    sget-object v4, Lcom/audible/mobile/downloader/NetworkError;->INVALID_URL:Lcom/audible/mobile/downloader/NetworkError;

    invoke-direct {v2, v4, p1}, Lcom/audible/mobile/downloader/NetworkErrorException;-><init>(Lcom/audible/mobile/downloader/NetworkError;Ljava/lang/Throwable;)V

    throw v2

    .line 436
    :cond_1b
    invoke-direct {p0, p2}, Lcom/audible/mobile/downloader/HTTPDownloader;->handleInterrupt(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 437
    sget-object p1, Lcom/audible/mobile/downloader/interfaces/Downloader$Result;->INTERRUPTED:Lcom/audible/mobile/downloader/interfaces/Downloader$Result;
    :try_end_1c
    .catch Lcom/audible/mobile/downloader/NetworkErrorException; {:try_start_1c .. :try_end_1c} :catch_f
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    .line 505
    invoke-static {v0}, Lcom/audible/mobile/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 506
    iget-object v0, p0, Lcom/audible/mobile/downloader/HTTPDownloader;->disconnectExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/audible/mobile/downloader/HTTPDownloader$DisconnectingRunnable;

    invoke-direct {v2, p0, v3, v1}, Lcom/audible/mobile/downloader/HTTPDownloader$DisconnectingRunnable;-><init>(Lcom/audible/mobile/downloader/HTTPDownloader;Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 511
    iget-boolean v0, p0, Lcom/audible/mobile/downloader/HTTPDownloader;->mInterrupted:Z

    if-eqz v0, :cond_1c

    .line 512
    invoke-interface {p2}, Lcom/audible/mobile/downloader/interfaces/DownloadHandler;->onInterrupt()V

    :cond_1c
    return-object p1

    .line 440
    :cond_1d
    :try_start_1d
    invoke-interface {p2}, Lcom/audible/mobile/downloader/interfaces/DownloadHandler;->onBeforeContentReceived()Z

    move-result p1

    if-nez p1, :cond_1f

    .line 441
    sget-object p1, Lcom/audible/mobile/downloader/interfaces/Downloader$Result;->CANCELLED:Lcom/audible/mobile/downloader/interfaces/Downloader$Result;
    :try_end_1d
    .catch Lcom/audible/mobile/downloader/NetworkErrorException; {:try_start_1d .. :try_end_1d} :catch_f
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    .line 505
    invoke-static {v0}, Lcom/audible/mobile/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 506
    iget-object v0, p0, Lcom/audible/mobile/downloader/HTTPDownloader;->disconnectExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/audible/mobile/downloader/HTTPDownloader$DisconnectingRunnable;

    invoke-direct {v2, p0, v3, v1}, Lcom/audible/mobile/downloader/HTTPDownloader$DisconnectingRunnable;-><init>(Lcom/audible/mobile/downloader/HTTPDownloader;Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 511
    iget-boolean v0, p0, Lcom/audible/mobile/downloader/HTTPDownloader;->mInterrupted:Z

    if-eqz v0, :cond_1e

    .line 512
    invoke-interface {p2}, Lcom/audible/mobile/downloader/interfaces/DownloadHandler;->onInterrupt()V

    :cond_1e
    return-object p1

    .line 444
    :cond_1f
    :try_start_1e
    sget-object p1, Lcom/audible/mobile/downloader/HTTPDownloader;->logger:Lorg/slf4j/Logger;

    invoke-interface {p1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result p1

    if-eqz p1, :cond_20

    .line 445
    sget-object p1, Lcom/audible/mobile/downloader/HTTPDownloader;->logger:Lorg/slf4j/Logger;

    invoke-static {v6}, Lcom/audible/mobile/downloader/HTTPDownloader;->getAmazonRequestId(Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v9, v8, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1e
    .catch Lcom/audible/mobile/downloader/NetworkErrorException; {:try_start_1e .. :try_end_1e} :catch_f
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2

    .line 461
    :cond_20
    :try_start_1f
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/audible/mobile/downloader/HTTPDownloader;->wrapGZIPStream(Ljava/net/HttpURLConnection;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v3

    const/high16 p1, 0x10000

    new-array p1, p1, [B

    .line 466
    :cond_21
    invoke-virtual {v3, p1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-le v2, v4, :cond_27

    .line 467
    invoke-direct {p0, p2}, Lcom/audible/mobile/downloader/HTTPDownloader;->handleInterrupt(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 468
    sget-object p1, Lcom/audible/mobile/downloader/interfaces/Downloader$Result;->INTERRUPTED:Lcom/audible/mobile/downloader/interfaces/Downloader$Result;
    :try_end_1f
    .catch Ljava/net/SocketTimeoutException; {:try_start_1f .. :try_end_1f} :catch_9
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_8
    .catch Lcom/audible/mobile/downloader/NetworkErrorException; {:try_start_1f .. :try_end_1f} :catch_f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_2

    .line 505
    invoke-static {v0}, Lcom/audible/mobile/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 506
    iget-object v0, p0, Lcom/audible/mobile/downloader/HTTPDownloader;->disconnectExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/audible/mobile/downloader/HTTPDownloader$DisconnectingRunnable;

    invoke-direct {v2, p0, v3, v1}, Lcom/audible/mobile/downloader/HTTPDownloader$DisconnectingRunnable;-><init>(Lcom/audible/mobile/downloader/HTTPDownloader;Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 511
    iget-boolean v0, p0, Lcom/audible/mobile/downloader/HTTPDownloader;->mInterrupted:Z

    if-eqz v0, :cond_22

    .line 512
    invoke-interface {p2}, Lcom/audible/mobile/downloader/interfaces/DownloadHandler;->onInterrupt()V

    :cond_22
    return-object p1

    .line 471
    :cond_23
    :try_start_20
    invoke-interface {p2, p1, v2}, Lcom/audible/mobile/downloader/interfaces/DownloadHandler;->onContentReceived([BI)Z

    move-result v2

    if-nez v2, :cond_25

    .line 472
    sget-object p1, Lcom/audible/mobile/downloader/interfaces/Downloader$Result;->CANCELLED:Lcom/audible/mobile/downloader/interfaces/Downloader$Result;
    :try_end_20
    .catch Ljava/net/SocketTimeoutException; {:try_start_20 .. :try_end_20} :catch_9
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_8
    .catch Lcom/audible/mobile/downloader/NetworkErrorException; {:try_start_20 .. :try_end_20} :catch_f
    .catchall {:try_start_20 .. :try_end_20} :catchall_2

    .line 505
    invoke-static {v0}, Lcom/audible/mobile/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 506
    iget-object v0, p0, Lcom/audible/mobile/downloader/HTTPDownloader;->disconnectExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/audible/mobile/downloader/HTTPDownloader$DisconnectingRunnable;

    invoke-direct {v2, p0, v3, v1}, Lcom/audible/mobile/downloader/HTTPDownloader$DisconnectingRunnable;-><init>(Lcom/audible/mobile/downloader/HTTPDownloader;Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 511
    iget-boolean v0, p0, Lcom/audible/mobile/downloader/HTTPDownloader;->mInterrupted:Z

    if-eqz v0, :cond_24

    .line 512
    invoke-interface {p2}, Lcom/audible/mobile/downloader/interfaces/DownloadHandler;->onInterrupt()V

    :cond_24
    return-object p1

    .line 474
    :cond_25
    :try_start_21
    invoke-direct {p0, p2}, Lcom/audible/mobile/downloader/HTTPDownloader;->handleInterrupt(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 475
    sget-object p1, Lcom/audible/mobile/downloader/interfaces/Downloader$Result;->INTERRUPTED:Lcom/audible/mobile/downloader/interfaces/Downloader$Result;
    :try_end_21
    .catch Ljava/net/SocketTimeoutException; {:try_start_21 .. :try_end_21} :catch_9
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_8
    .catch Lcom/audible/mobile/downloader/NetworkErrorException; {:try_start_21 .. :try_end_21} :catch_f
    .catchall {:try_start_21 .. :try_end_21} :catchall_2

    .line 505
    invoke-static {v0}, Lcom/audible/mobile/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 506
    iget-object v0, p0, Lcom/audible/mobile/downloader/HTTPDownloader;->disconnectExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/audible/mobile/downloader/HTTPDownloader$DisconnectingRunnable;

    invoke-direct {v2, p0, v3, v1}, Lcom/audible/mobile/downloader/HTTPDownloader$DisconnectingRunnable;-><init>(Lcom/audible/mobile/downloader/HTTPDownloader;Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 511
    iget-boolean v0, p0, Lcom/audible/mobile/downloader/HTTPDownloader;->mInterrupted:Z

    if-eqz v0, :cond_26

    .line 512
    invoke-interface {p2}, Lcom/audible/mobile/downloader/interfaces/DownloadHandler;->onInterrupt()V

    :cond_26
    return-object p1

    .line 489
    :cond_27
    :try_start_22
    invoke-interface {p2}, Lcom/audible/mobile/downloader/interfaces/DownloadHandler;->onFinished()V

    .line 490
    sget-object p1, Lcom/audible/mobile/downloader/interfaces/Downloader$Result;->SUCCESS:Lcom/audible/mobile/downloader/interfaces/Downloader$Result;
    :try_end_22
    .catch Lcom/audible/mobile/downloader/NetworkErrorException; {:try_start_22 .. :try_end_22} :catch_f
    .catchall {:try_start_22 .. :try_end_22} :catchall_2

    .line 505
    invoke-static {v0}, Lcom/audible/mobile/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 506
    iget-object v0, p0, Lcom/audible/mobile/downloader/HTTPDownloader;->disconnectExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/audible/mobile/downloader/HTTPDownloader$DisconnectingRunnable;

    invoke-direct {v2, p0, v3, v1}, Lcom/audible/mobile/downloader/HTTPDownloader$DisconnectingRunnable;-><init>(Lcom/audible/mobile/downloader/HTTPDownloader;Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 511
    iget-boolean v0, p0, Lcom/audible/mobile/downloader/HTTPDownloader;->mInterrupted:Z

    if-eqz v0, :cond_28

    .line 512
    invoke-interface {p2}, Lcom/audible/mobile/downloader/interfaces/DownloadHandler;->onInterrupt()V

    :cond_28
    return-object p1

    :catch_8
    move-exception p1

    .line 486
    :try_start_23
    new-instance v2, Lcom/audible/mobile/downloader/NetworkErrorException;

    sget-object v4, Lcom/audible/mobile/downloader/NetworkError;->ERROR_RESPONSE_CONTENT:Lcom/audible/mobile/downloader/NetworkError;

    invoke-direct {v2, v4, p1}, Lcom/audible/mobile/downloader/NetworkErrorException;-><init>(Lcom/audible/mobile/downloader/NetworkError;Ljava/lang/Throwable;)V

    throw v2

    :catch_9
    move-exception p1

    .line 484
    new-instance v2, Lcom/audible/mobile/downloader/NetworkErrorException;

    sget-object v4, Lcom/audible/mobile/downloader/NetworkError;->TIMEOUT:Lcom/audible/mobile/downloader/NetworkError;

    invoke-direct {v2, v4, p1}, Lcom/audible/mobile/downloader/NetworkErrorException;-><init>(Lcom/audible/mobile/downloader/NetworkError;Ljava/lang/Throwable;)V

    throw v2

    :catch_a
    move-exception p1

    .line 345
    new-instance v2, Lcom/audible/mobile/downloader/NetworkErrorException;

    sget-object v4, Lcom/audible/mobile/downloader/NetworkError;->CONNECTING:Lcom/audible/mobile/downloader/NetworkError;

    invoke-direct {v2, v4, p1}, Lcom/audible/mobile/downloader/NetworkErrorException;-><init>(Lcom/audible/mobile/downloader/NetworkError;Ljava/lang/Throwable;)V

    throw v2

    :catch_b
    move-exception p1

    .line 343
    new-instance v2, Lcom/audible/mobile/downloader/NetworkErrorException;

    sget-object v4, Lcom/audible/mobile/downloader/NetworkError;->TIMEOUT:Lcom/audible/mobile/downloader/NetworkError;

    invoke-direct {v2, v4, p1}, Lcom/audible/mobile/downloader/NetworkErrorException;-><init>(Lcom/audible/mobile/downloader/NetworkError;Ljava/lang/Throwable;)V

    throw v2

    :catch_c
    move-exception p1

    .line 313
    new-instance v2, Lcom/audible/mobile/downloader/NetworkErrorException;

    sget-object v4, Lcom/audible/mobile/downloader/NetworkError;->CONNECTING:Lcom/audible/mobile/downloader/NetworkError;

    invoke-direct {v2, v4, p1}, Lcom/audible/mobile/downloader/NetworkErrorException;-><init>(Lcom/audible/mobile/downloader/NetworkError;Ljava/lang/Throwable;)V

    throw v2

    :catch_d
    move-exception p1

    .line 311
    new-instance v2, Lcom/audible/mobile/downloader/NetworkErrorException;

    sget-object v4, Lcom/audible/mobile/downloader/NetworkError;->TIMEOUT:Lcom/audible/mobile/downloader/NetworkError;

    invoke-direct {v2, v4, p1}, Lcom/audible/mobile/downloader/NetworkErrorException;-><init>(Lcom/audible/mobile/downloader/NetworkError;Ljava/lang/Throwable;)V

    throw v2

    :catch_e
    move-exception p1

    .line 263
    new-instance v2, Lcom/audible/mobile/downloader/NetworkErrorException;

    sget-object v4, Lcom/audible/mobile/downloader/NetworkError;->SETUP_ERROR:Lcom/audible/mobile/downloader/NetworkError;

    invoke-direct {v2, v4, p1}, Lcom/audible/mobile/downloader/NetworkErrorException;-><init>(Lcom/audible/mobile/downloader/NetworkError;Ljava/lang/Throwable;)V

    throw v2
    :try_end_23
    .catch Lcom/audible/mobile/downloader/NetworkErrorException; {:try_start_23 .. :try_end_23} :catch_f
    .catchall {:try_start_23 .. :try_end_23} :catchall_2

    :catchall_2
    move-exception p1

    goto :goto_f

    :catch_f
    move-exception p1

    move-object v6, v0

    goto :goto_a

    :catchall_3
    move-exception p1

    move-object v3, v0

    goto :goto_f

    :catch_10
    move-exception p1

    move-object v3, v0

    move-object v6, v3

    :goto_a
    move-object v0, v1

    goto :goto_c

    :catch_11
    move-exception p1

    goto :goto_b

    :catch_12
    move-exception p1

    move-object v1, v0

    .line 199
    :goto_b
    :try_start_24
    new-instance v2, Lcom/audible/mobile/downloader/NetworkErrorException;

    sget-object v3, Lcom/audible/mobile/downloader/NetworkError;->SETUP_ERROR:Lcom/audible/mobile/downloader/NetworkError;

    invoke-direct {v2, v3, p1}, Lcom/audible/mobile/downloader/NetworkErrorException;-><init>(Lcom/audible/mobile/downloader/NetworkError;Ljava/lang/Throwable;)V

    throw v2
    :try_end_24
    .catch Lcom/audible/mobile/downloader/NetworkErrorException; {:try_start_24 .. :try_end_24} :catch_10
    .catchall {:try_start_24 .. :try_end_24} :catchall_3

    :catchall_4
    move-exception p1

    move-object v1, v0

    move-object v3, v1

    goto :goto_f

    :catch_13
    move-exception p1

    move-object v3, v0

    move-object v6, v3

    .line 493
    :goto_c
    :try_start_25
    sget-object v1, Lcom/audible/mobile/downloader/HTTPDownloader;->logger:Lorg/slf4j/Logger;

    const-string v2, "Exception while downloading content"

    invoke-interface {v1, v2, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 494
    invoke-virtual {p1}, Lcom/audible/mobile/downloader/NetworkErrorException;->getNetworkError()Lcom/audible/mobile/downloader/NetworkError;

    move-result-object v1

    invoke-interface {p2, v1, p1}, Lcom/audible/mobile/downloader/interfaces/DownloadHandler;->onError(Lcom/audible/mobile/downloader/NetworkError;Lcom/audible/mobile/downloader/NetworkErrorException;)V

    .line 496
    invoke-virtual {p1}, Lcom/audible/mobile/downloader/NetworkErrorException;->getNetworkError()Lcom/audible/mobile/downloader/NetworkError;

    move-result-object p1

    invoke-virtual {p1}, Lcom/audible/mobile/downloader/NetworkError;->isFatal()Z

    move-result p1

    if-eqz p1, :cond_29

    sget-object p1, Lcom/audible/mobile/downloader/interfaces/Downloader$Result;->FATAL_ERROR:Lcom/audible/mobile/downloader/interfaces/Downloader$Result;

    goto :goto_d

    :cond_29
    sget-object p1, Lcom/audible/mobile/downloader/interfaces/Downloader$Result;->ERROR:Lcom/audible/mobile/downloader/interfaces/Downloader$Result;
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_5

    .line 505
    :goto_d
    invoke-static {v6}, Lcom/audible/mobile/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 506
    iget-object v1, p0, Lcom/audible/mobile/downloader/HTTPDownloader;->disconnectExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/audible/mobile/downloader/HTTPDownloader$DisconnectingRunnable;

    invoke-direct {v2, p0, v3, v0}, Lcom/audible/mobile/downloader/HTTPDownloader$DisconnectingRunnable;-><init>(Lcom/audible/mobile/downloader/HTTPDownloader;Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 511
    iget-boolean v0, p0, Lcom/audible/mobile/downloader/HTTPDownloader;->mInterrupted:Z

    if-eqz v0, :cond_2a

    .line 512
    invoke-interface {p2}, Lcom/audible/mobile/downloader/interfaces/DownloadHandler;->onInterrupt()V

    :cond_2a
    return-object p1

    :catchall_5
    move-exception p1

    move-object v1, v0

    :goto_e
    move-object v0, v6

    .line 505
    :goto_f
    invoke-static {v0}, Lcom/audible/mobile/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 506
    iget-object v0, p0, Lcom/audible/mobile/downloader/HTTPDownloader;->disconnectExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/audible/mobile/downloader/HTTPDownloader$DisconnectingRunnable;

    invoke-direct {v2, p0, v3, v1}, Lcom/audible/mobile/downloader/HTTPDownloader$DisconnectingRunnable;-><init>(Lcom/audible/mobile/downloader/HTTPDownloader;Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 511
    iget-boolean v0, p0, Lcom/audible/mobile/downloader/HTTPDownloader;->mInterrupted:Z

    if-eqz v0, :cond_2b

    .line 512
    invoke-interface {p2}, Lcom/audible/mobile/downloader/interfaces/DownloadHandler;->onInterrupt()V

    .line 514
    :cond_2b
    throw p1
.end method

.method protected getDefaultUserAgent()Ljava/lang/String;
    .locals 1

    .line 602
    invoke-static {}, Lcom/audible/mobile/downloader/NetworkingDefaults;->getInstance()Lcom/audible/mobile/downloader/NetworkingDefaults;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audible/mobile/downloader/NetworkingDefaults;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected logErrorResponseBody(Ljava/lang/String;)V
    .locals 2

    .line 570
    sget-object v0, Lcom/audible/mobile/downloader/HTTPDownloader;->logger:Lorg/slf4j/Logger;

    const-string v1, "Server error response: {}"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected openUrl(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    return-object p1
.end method

.method protected readErrorResponseBody(Ljava/net/HttpURLConnection;Lcom/audible/mobile/downloader/interfaces/DownloadHandler;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/mobile/downloader/NetworkErrorException;
        }
    .end annotation

    .line 528
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 532
    :catch_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_0

    .line 537
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/audible/mobile/downloader/HTTPDownloader;->wrapGZIPStream(Ljava/net/HttpURLConnection;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p2

    .line 538
    invoke-direct {p0, p2}, Lcom/audible/mobile/downloader/HTTPDownloader;->readLines(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 542
    invoke-static {p2}, Lcom/audible/mobile/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 540
    :catch_1
    :try_start_2
    sget-object p1, Lcom/audible/mobile/downloader/HTTPDownloader;->logger:Lorg/slf4j/Logger;

    const-string v0, "Unable to read server error response"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 542
    invoke-static {p2}, Lcom/audible/mobile/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    :goto_1
    invoke-static {p2}, Lcom/audible/mobile/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 543
    throw p1

    :cond_0
    :goto_2
    const/4 p1, 0x0

    return-object p1

    :catch_2
    move-exception p1

    .line 530
    new-instance p2, Lcom/audible/mobile/downloader/NetworkErrorException;

    sget-object v0, Lcom/audible/mobile/downloader/NetworkError;->TIMEOUT:Lcom/audible/mobile/downloader/NetworkError;

    invoke-direct {p2, v0, p1}, Lcom/audible/mobile/downloader/NetworkErrorException;-><init>(Lcom/audible/mobile/downloader/NetworkError;Ljava/lang/Throwable;)V

    throw p2
.end method
