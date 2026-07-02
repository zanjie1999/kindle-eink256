.class public Lcom/amazon/sitb/android/updater/series/SeriesWebRequestResponseHandler;
.super Ljava/lang/Object;
.source "SeriesWebRequestResponseHandler.java"

# interfaces
.implements Lcom/amazon/kindle/krx/download/IHttpResponseInputStreamHandler;


# static fields
.field private static final CONTENT_ENCODING_HEADER:Ljava/lang/String; = "Content-Encoding"

.field private static final EXPIRES_HEADER:Ljava/lang/String; = "Expires"

.field private static final GZIP:Ljava/lang/String; = "gzip"

.field private static final log:Lcom/amazon/sitb/android/ISamplingLogger;


# instance fields
.field private clockService:Lcom/amazon/sitb/android/services/ClockService;

.field private final currentAsin:Ljava/lang/String;

.field private expiryDate:Ljava/util/Date;

.field private gzipped:Z

.field private messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private parser:Lcom/amazon/sitb/android/updater/series/SeriesInfoJsonParser;

.field private responseHandler:Lcom/amazon/sitb/android/updater/RequestExecutorService$ResponseHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    invoke-static {}, Lcom/amazon/sitb/android/impl/LoggerManager;->getInstance()Lcom/amazon/sitb/android/impl/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/amazon/sitb/android/updater/series/SeriesWebRequestResponseHandler;

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/impl/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    sput-object v0, Lcom/amazon/sitb/android/updater/series/SeriesWebRequestResponseHandler;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazon/sitb/android/updater/RequestExecutorService$ResponseHandler;Lcom/amazon/kindle/krx/events/IMessageQueue;Lcom/amazon/sitb/android/updater/series/SeriesInfoJsonParser;Lcom/amazon/sitb/android/services/ClockService;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/amazon/sitb/android/updater/series/SeriesWebRequestResponseHandler;->expiryDate:Ljava/util/Date;

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/amazon/sitb/android/updater/series/SeriesWebRequestResponseHandler;->gzipped:Z

    .line 45
    iput-object p1, p0, Lcom/amazon/sitb/android/updater/series/SeriesWebRequestResponseHandler;->currentAsin:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/amazon/sitb/android/updater/series/SeriesWebRequestResponseHandler;->responseHandler:Lcom/amazon/sitb/android/updater/RequestExecutorService$ResponseHandler;

    .line 47
    iput-object p3, p0, Lcom/amazon/sitb/android/updater/series/SeriesWebRequestResponseHandler;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 48
    iput-object p4, p0, Lcom/amazon/sitb/android/updater/series/SeriesWebRequestResponseHandler;->parser:Lcom/amazon/sitb/android/updater/series/SeriesInfoJsonParser;

    .line 49
    iput-object p5, p0, Lcom/amazon/sitb/android/updater/series/SeriesWebRequestResponseHandler;->clockService:Lcom/amazon/sitb/android/services/ClockService;

    return-void
.end method

.method private getMaxAge()J
    .locals 7

    .line 104
    iget-object v0, p0, Lcom/amazon/sitb/android/updater/series/SeriesWebRequestResponseHandler;->expiryDate:Ljava/util/Date;

    const-wide/32 v1, 0x927c0

    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iget-object v0, p0, Lcom/amazon/sitb/android/updater/series/SeriesWebRequestResponseHandler;->clockService:Lcom/amazon/sitb/android/services/ClockService;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/services/ClockService;->now()J

    move-result-wide v5

    sub-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-gtz v0, :cond_0

    return-wide v1

    :cond_0
    return-wide v3

    :cond_1
    return-wide v1
.end method


# virtual methods
.method public getResponseHeaderNames()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "Content-Encoding"

    const-string v1, "Expires"

    .line 55
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onDownloadComplete(ILcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;)V
    .locals 3

    .line 61
    sget-object v0, Lcom/amazon/sitb/android/updater/series/SeriesWebRequestResponseHandler;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const-string p1, "onDownloadComplete(%d, %s)"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public onInputStream(Ljava/io/InputStream;)V
    .locals 4

    .line 88
    iget-object v0, p0, Lcom/amazon/sitb/android/updater/series/SeriesWebRequestResponseHandler;->parser:Lcom/amazon/sitb/android/updater/series/SeriesInfoJsonParser;

    iget-boolean v1, p0, Lcom/amazon/sitb/android/updater/series/SeriesWebRequestResponseHandler;->gzipped:Z

    invoke-direct {p0}, Lcom/amazon/sitb/android/updater/series/SeriesWebRequestResponseHandler;->getMaxAge()J

    move-result-wide v2

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/amazon/sitb/android/updater/series/SeriesInfoJsonParser;->parse(Ljava/io/InputStream;ZJ)Lcom/amazon/sitb/android/SeriesInfo;

    move-result-object p1

    .line 89
    sget-object v0, Lcom/amazon/sitb/android/updater/series/SeriesWebRequestResponseHandler;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RESPONSE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->info(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/amazon/sitb/android/updater/series/SeriesWebRequestResponseHandler;->responseHandler:Lcom/amazon/sitb/android/updater/RequestExecutorService$ResponseHandler;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/updater/RequestExecutorService$ResponseHandler;->responseReceived(Z)V

    if-eqz p1, :cond_1

    .line 93
    iget-object v0, p0, Lcom/amazon/sitb/android/updater/series/SeriesWebRequestResponseHandler;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/sitb/android/event/SeriesInfoUpdatedEvent;

    iget-object v2, p0, Lcom/amazon/sitb/android/updater/series/SeriesWebRequestResponseHandler;->currentAsin:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Lcom/amazon/sitb/android/event/SeriesInfoUpdatedEvent;-><init>(Ljava/lang/String;Lcom/amazon/sitb/android/SeriesInfo;)V

    invoke-static {v0, v1}, Lcom/amazon/sitb/android/utils/EventUtils;->publishExternalEvent(Lcom/amazon/kindle/krx/events/IMessageQueue;Lcom/amazon/kindle/krx/events/IEvent;)V

    :cond_1
    return-void
.end method

.method public onResponseHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 67
    sget-object v0, Lcom/amazon/sitb/android/updater/series/SeriesWebRequestResponseHandler;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string v3, "onResponseHeader(%s, %s)"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    const-string v0, "Content-Encoding"

    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "gzip"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iput-boolean v2, p0, Lcom/amazon/sitb/android/updater/series/SeriesWebRequestResponseHandler;->gzipped:Z

    goto :goto_0

    :cond_0
    const-string v0, "Expires"

    .line 72
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 76
    :try_start_0
    invoke-static {p2}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/sitb/android/updater/series/SeriesWebRequestResponseHandler;->expiryDate:Ljava/util/Date;
    :try_end_0
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public onStatusCode(I)V
    .locals 0

    return-void
.end method
