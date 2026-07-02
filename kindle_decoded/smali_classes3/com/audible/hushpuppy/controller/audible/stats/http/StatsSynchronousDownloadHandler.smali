.class public final Lcom/audible/hushpuppy/controller/audible/stats/http/StatsSynchronousDownloadHandler;
.super Lcom/audible/mobile/downloader/handler/InMemoryDownloadHandler;
.source "StatsSynchronousDownloadHandler.java"


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private httpResponseCode:I

.field private httpResponseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsSynchronousDownloadHandler;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsSynchronousDownloadHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 48
    new-instance v0, Lcom/audible/hushpuppy/common/misc/CountDownLatchFactory;

    invoke-direct {v0}, Lcom/audible/hushpuppy/common/misc/CountDownLatchFactory;-><init>()V

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsSynchronousDownloadHandler;-><init>(Lcom/audible/mobile/framework/Factory1;)V

    return-void
.end method

.method constructor <init>(Lcom/audible/mobile/framework/Factory1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/framework/Factory1<",
            "Ljava/util/concurrent/CountDownLatch;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Lcom/audible/mobile/downloader/handler/InMemoryDownloadHandler;-><init>()V

    const-string v0, "factory can\'t be null."

    .line 60
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 61
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/audible/mobile/framework/Factory1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/CountDownLatch;

    iput-object p1, p0, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsSynchronousDownloadHandler;->latch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public getResult(Lcom/audible/hushpuppy/controller/audible/stats/http/IStatsResponseConverter;Lcom/audible/mobile/domain/Time;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/audible/hushpuppy/controller/audible/stats/http/IStatsResponseConverter<",
            "TT;>;",
            "Lcom/audible/mobile/domain/Time;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsSynchronousDownloadHandler;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-interface {p2}, Lcom/audible/mobile/domain/Time;->getAmount()J

    move-result-wide v2

    invoke-interface {p2}, Lcom/audible/mobile/domain/Time;->getUnit()Ljava/util/concurrent/TimeUnit;

    move-result-object p2

    invoke-virtual {v1, v2, v3, p2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 119
    sget-object p2, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsSynchronousDownloadHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Converting response."

    invoke-interface {p2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 120
    iget p2, p0, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsSynchronousDownloadHandler;->httpResponseCode:I

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsSynchronousDownloadHandler;->httpResponseHeaders:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/audible/mobile/downloader/handler/InMemoryDownloadHandler;->getBytes()[B

    move-result-object v2

    invoke-interface {p1, p2, v1, v2}, Lcom/audible/hushpuppy/controller/audible/stats/http/IStatsResponseConverter;->convertResponse(ILjava/util/Map;[B)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 122
    :cond_0
    sget-object p1, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsSynchronousDownloadHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Connection timeout! Returning null result."

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 125
    sget-object p2, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsSynchronousDownloadHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Thread interrupted while waiting for response."

    invoke-interface {p2, v1, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public onCancelled()V
    .locals 2

    .line 100
    invoke-super {p0}, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->onCancelled()V

    .line 101
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsSynchronousDownloadHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Handler onCancelled."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsSynchronousDownloadHandler;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onError(Lcom/audible/mobile/downloader/NetworkError;Lcom/audible/mobile/downloader/NetworkErrorException;)V
    .locals 0

    .line 84
    invoke-super {p0, p1, p2}, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->onError(Lcom/audible/mobile/downloader/NetworkError;Lcom/audible/mobile/downloader/NetworkErrorException;)V

    .line 85
    sget-object p1, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsSynchronousDownloadHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Handler onError."

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 86
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsSynchronousDownloadHandler;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onFinished()V
    .locals 2

    .line 76
    invoke-super {p0}, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->onFinished()V

    .line 77
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsSynchronousDownloadHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Handler onFinished."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsSynchronousDownloadHandler;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onInterrupt()V
    .locals 2

    .line 92
    invoke-super {p0}, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->onInterrupt()V

    .line 93
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsSynchronousDownloadHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Handler onInterrupt."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsSynchronousDownloadHandler;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onReceivedHeaders(ILjava/util/Map;)Lcom/audible/mobile/downloader/interfaces/ServerResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/audible/mobile/downloader/interfaces/ServerResponse;"
        }
    .end annotation

    .line 67
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsSynchronousDownloadHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Receiving headers - responseCode = %s, headers = %s"

    invoke-interface {v0, v2, v1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 68
    iput p1, p0, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsSynchronousDownloadHandler;->httpResponseCode:I

    .line 69
    iput-object p2, p0, Lcom/audible/hushpuppy/controller/audible/stats/http/StatsSynchronousDownloadHandler;->httpResponseHeaders:Ljava/util/Map;

    .line 70
    invoke-super {p0, p1, p2}, Lcom/audible/mobile/downloader/handler/DownloadHandlerDecorator;->onReceivedHeaders(ILjava/util/Map;)Lcom/audible/mobile/downloader/interfaces/ServerResponse;

    move-result-object p1

    return-object p1
.end method
